# Compare-CmdletCategory.ps1
# This script is used to identify what Cmdlets and associated library version JSON source is missing a category.

$NoMatchCmdlets = [System.Collections.ArrayList]::new()

$CurrentPath = Split-Path $MyInvocation.MyCommand.Path -parent

# Get list of all sorce JSON files
$SourceJsonFiles = [System.IO.Directory]::GetFiles($CurrentPath + "\..\source", "HPEOneView.*.json")
$ApprovedCmdletCategories = [System.IO.File]::ReadAllLines($CurrentPath + "\..\source\ApprovedCategories.json", [System.Text.Encoding]::UTF8) | ConvertFrom-Json

if (-not $SourceJsonFiles.Count)
{

    Throw ("Source JSON files missing or not found in expected path '{0}'" -f ($CurrentPath + "\..\source"))

}

else
{

    $AllCmdletJsonSources = [System.Collections.ArrayList]::new()

    ForEach ($File in $SourceJsonFiles)
    {

        $CmdletJsonSource = [System.IO.File]::ReadAllLines($File, [System.Text.Encoding]::UTF8) | ConvertFrom-Json

        ForEach ($Cmdlet in $CmdletJsonSource.Cmdlets)
        {

            $Cmdlet | Add-Member -NotePropertyName Version -NotePropertyValue $CmdletJsonSource.Version -Force

            [void]$AllCmdletJsonSources.Add($Cmdlet)

        }

    }

    # Get all unique Cmdlet Names to then loop through
    $UniqueCmdletNames = $AllCmdletJsonSources | Select-Object -Property Name -Unique | Sort Name

    ForEach ($Cmdlet in $UniqueCmdletNames.Name)
    {

        $CompareCmdlets = $AllCmdletJsonSources | Where-Object Name -eq $Cmdlet

        $Category = $null

        ForEach ($Compare in $CompareCmdlets)
        {

            # Check for non-empty value
            if (-not [String]::IsNullOrEmpty($Compare.Category))
            {

                if ($ApprovedCmdletCategories -notcontains $Compare.Category)
                {

                    $Compare | Add-Member -NotePropertyName Reason -NotePropertyValue ("The '{0}' Cmdlet category '{1}' is not in the list of approved category names." -f $Compare.Name, $Compare.Category) -Force

                    [void]$NoMatchCmdlets.Add($Compare.PSObject.Copy())

                }

                # If not saved $Category, lets add the value
                elseif ([String]::IsNullOrEmpty($Category))
                {

                    $Category = $Compare.Category

                }

                else
                {

                    # Save the compared Cmdlet if category does not match
                    if ($Category -ne $Compare.Category)
                    {

                        $Compare | Add-Member -NotePropertyName Reason -NotePropertyValue ("The '{0}' Cmdlet category '{1}' does not match '{2}'." -f $Compare.Name, $Compare.Category, $Category) -Force

                        [void]$NoMatchCmdlets.Add($Compare.PSObject.Copy())

                    }

                }

            }

            else
            {

                $Compare | Add-Member -NotePropertyName Reason -NotePropertyValue ("The '{0}' Cmdlet has an empty category." -f $Compare.Name) -force

                [void]$NoMatchCmdlets.Add($Compare.PSObject.Copy())

            }

        }

    }

}

if ($NoMatchCmdlets.Count -gt 0)
{

    $NoMatchCmdlets | Format-Table Name, Version, Reason -Wrap

    Throw [Management.Automation.ErrorRecord]::new(([InvalidOperationException]::new("One or more Cmdlets were found to have either an invalid or missing Category property value.")), "MissingOrInvalidCategory", [System.Management.Automation.ErrorCategory]::InvalidOperation, "Cmdlets")

}
