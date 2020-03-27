# Update-SummaryJson.ps1
# This script will create the SUMMARY.json, which is required to creating the SUMMARY.md file used by Gitbook.io for a map of documents

$CurrentPath = Split-Path $MyInvocation.MyCommand.Path -parent

$SummaryJson = [System.IO.File]::ReadAllLines($CurrentPath + '\..\docs\summary.json', [System.Text.Encoding]::UTF8) | ConvertFrom-Json

$SourceJsonFiles = [System.IO.Directory]::GetFiles($CurrentPath + "\..\source", "HPOneView.*.json")

if (-not $SourceJsonFiles.Count)
{

    Throw ("Source JSON files missing or not found in expected path '{0}'" -f ($CurrentPath + "\..\source"))

}

else
{

    ForEach ($File in $SourceJsonFiles)
    {

        # Read the source JSON file
        $CmdletsJson = ([System.IO.File]::ReadAllLines($File, [System.Text.Encoding]::UTF8)) | ConvertFrom-Json

        # Get the library version from the Version property
        $CmdletLibraryVersion = 'v{0}.{1:00}' -f ([Version]$CmdletsJson.Version).Major, ([Version]$CmdletsJson.Version).Minor

        $FinalDirectorySummary = [PSCustomObject]@{$CmdletLibraryVersion = [PSCustomObject]@{dir = $CmdletLibraryVersion} }

        ForEach ($Category in ($CmdletsJson.Cmdlets | Select-Object Category -Unique -ExpandProperty Category | Sort-Object))
        {

            $FinalDirectorySummary.$CmdletLibraryVersion | Add-Member -NotePropertyName $Category -NotePropertyValue ([PSCustomObject]@{})

            # Add the directory name to the top
            Add-Member -InputObject $FinalDirectorySummary."$CmdletLibraryVersion"."$Category" -NotePropertyName dir -NotePropertyValue $Category.ToLower()

            ForEach ($Cmdlet in ($CmdletsJson | Where-Object Category -eq $Category | Sort-Object Name))
            {

                # Add the child member of document pages
                $FinalDirectorySummary.$CmdletLibraryVersion.$Category | Add-Member -NotePropertyName $Cmdlet.Name -NotePropertyValue "$($Cmdlet.Name.ToLower()).md"

            }

        }

        $SummaryJson."Table of contents"."Command Reference"."$CmdletLibraryVersion" = $FinalDirectorySummary."$CmdletLibraryVersion"

    }

    $FinalSummary = $SummaryJson | ConvertTo-Json -Depth 99

    [System.IO.File]::WriteAllLines($CurrentPath + '\..\docs\summary.json', $FinalSummary, [System.Text.Encoding]::UTF8)

}