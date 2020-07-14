# Update-SummaryJson.ps1
# This script will create the SUMMARY.json, which is required to creating the SUMMARY.md file used by Gitbook.io for a map of documents

$CurrentPath = Split-Path $MyInvocation.MyCommand.Path -parent

$SummaryJson = [System.IO.File]::ReadAllLines($CurrentPath + '\..\docs\summary.json', [System.Text.Encoding]::UTF8) | ConvertFrom-Json

$SourceJsonFiles = [System.IO.Directory]::GetFiles($CurrentPath + "\..\source", "HPEOneView.*.json")

if (-not $SourceJsonFiles.Count)
{

    Throw ("Source JSON files missing or not found in expected path '{0}'" -f ($CurrentPath + "\..\source"))

}

else
{

    Write-Progress -Id 1 -Activity "Update summary.json with new source content mapping." -PercentComplete 0

    $f = 1

    ForEach ($File in $SourceJsonFiles)
    {

        $FileName = "{0}\{1}\{2}" -f $File.Split("\")[-3], $File.Split("\")[-2], $File.Split("\")[-1]

        Write-Progress -id 1 -Activity "Update summary.json with new source content mapping." -Status ("[{0}/{1}] {2}" -f $f, $SourceJsonFiles.Count, $FileName) -PercentComplete ($f / $SourceJsonFiles.Count * 100)

        # Read the source JSON file
        $CmdletsJson = ([System.IO.File]::ReadAllLines($File, [System.Text.Encoding]::UTF8)) | ConvertFrom-Json

        # Get the library version from the Version property
        $CmdletLibraryVersion = 'v{0}.{1:00}' -f ([Version]$CmdletsJson.Version).Major, ([Version]$CmdletsJson.Version).Minor

        if (-not ($SummaryJson."Table of contents"."Command Reference".PSObject.Properties | ? Name -eq $CmdletLibraryVersion))
        {

            $SummaryJson."Table of contents"."Command Reference" | Add-Member -NotePropertyName $CmdletLibraryVersion -NotePropertyValue @{}

            $barSortedProps = [PSCustomObject][Ordered]@{dir = "cmdlets"}

            $SummaryJson.'Table of contents'.'Command Reference' | Get-Member -Type NoteProperty | Sort-Object Name -Descending | Where-Object name -ne "dir" | ForEach-Object {
                 Add-Member -InputObject $barSortedProps -Type NoteProperty -Name $_.Name -Value $SummaryJson.'Table of contents'.'Command Reference'.$($_.Name) }

            $SummaryJson.'Table of contents'.'Command Reference' = $barSortedProps

        }

        $FinalDirectorySummary = [PSCustomObject]@{$CmdletLibraryVersion = [PSCustomObject]@{dir = $CmdletLibraryVersion} }

        $Categories = ($CmdletsJson.Cmdlets | Select-Object Category -Unique -ExpandProperty Category | Sort-Object)

        $Cat = 1

        ForEach ($Category in $Categories)
        {

            Write-Progress -id 2 -ParentId 1 -Activity "Process Cmdlet categories" -Status ("[{0}/{1}] {2}" -f $Cat, $Categories.Count, $Category) -PercentComplete ($Cat / $Categories.Count * 100)

            $FinalDirectorySummary.$CmdletLibraryVersion | Add-Member -NotePropertyName $Category -NotePropertyValue ([PSCustomObject]@{})

            # Add the directory name to the top
            Add-Member -InputObject $FinalDirectorySummary."$CmdletLibraryVersion"."$Category" -NotePropertyName dir -NotePropertyValue $Category.ToLower()

            $c = 1

            $Cmdlets =  ($CmdletsJson.Cmdlets | Where-Object Category -eq $Category | Sort-Object Name)

            ForEach ($Cmdlet in $Cmdlets)
            {

                Write-Progress -id 3 -ParentId 2 -Activity "Process Cmdlets" -Status ("[{0}/{1}] {2}" -f $c, $Cmdlets.Count, $Cmdlet.Name) -PercentComplete ($C / $Cmdlets.Count * 100)

                # Add the child member of document pages
                $FinalDirectorySummary.$CmdletLibraryVersion.$Category | Add-Member -NotePropertyName $Cmdlet.Name -NotePropertyValue "$($Cmdlet.Name.ToLower()).md"

                $c++

            }

            Write-Progress -id 3 -ParentId 2 -Activity "Process Cmdlets" -Completed

            $Cat++

        }

        Write-Progress -id 2 -ParentId 1 -Activity "Process Cmdlet categories" -Completed

        $SummaryJson."Table of contents"."Command Reference"."$CmdletLibraryVersion" = $FinalDirectorySummary."$CmdletLibraryVersion"

        $f++

    }

    Write-Progress -Id 1 -Activity "Update summary.json with new source content mapping." -Status "Writing final SUMMARY.json file."

    $FinalSummary = $SummaryJson | ConvertTo-Json -Depth 99

    [System.IO.File]::WriteAllLines($CurrentPath + '\..\docs\summary.json', $FinalSummary, [System.Text.Encoding]::UTF8)

    Write-Progress -Id 1 -Activity "Update summary.json with new source content mapping." -Completed

}