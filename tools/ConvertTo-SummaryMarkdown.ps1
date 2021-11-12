# ConvertTo-SummaryMarkdown.ps1
# This script will create the SUMMARY.md that Gitbook.io uses for a document map, by reading the source SUMMARY.json file.
# Use the Update-SummaryJson.ps1 script to ensure the summary JSON is kept in sync with the source library documentation JSON files.

function ProcessSubProperty ($Indent = $null, [PSCustomObject]$Property, $Directory)
{

    $FinalString = $Results = $null

    $SubStringBuilder = [System.Collections.ArrayList]::new()

    ForEach ($SubLevel in ($Property.PSObject.Members | Where-Object MemberType -eq 'NoteProperty'))
    {

        if ($SubLevel.Name -ne 'Dir')
        {

            if ($SubLevel.Value -is [String])
            {

                $FinalString = $Indent + ($MarkdownTableItem -f $SubLevel.Name, ($Directory + '/' + $SubLevel.Value.ToLower()))

                [void]$SubStringBuilder.Add($FinalString)

            }

            else
            {

                $ParentDirectory = $Directory + '/' + $SubLevel.Value.Dir

                $FinalString = $Indent + ($MarkdownTableItem -f $SubLevel.Name, ($ParentDirectory + "/README.md"))

                [void]$SubStringBuilder.Add($FinalString)

                $Results = ProcessSubProperty -Indent ($Indent + $IndentPadding) -Property $SubLevel.Value -Directory $ParentDirectory

                ForEach ($r in $Results)
                {

                    [void]$SubStringBuilder.Add($r)

                }

            }

        }

    }

    Return $SubStringBuilder

}

$CurrentPath = Split-Path $MyInvocation.MyCommand.Path -parent
$MarkdownTableItem = '* [{0}]({1})'
$MarkdownL1TableItem = '* {0}'
$MarkdownL2TableItem = '  * [{0}]({1})'
$IndentPadding = '  '

$StringBuilder = [System.Collections.ArrayList]::new()

# Build header
[void]$StringBuilder.Add('# Table of content' + [System.Environment]::NewLine)

$SummaryJsonFile = '{0}\..\docs\summary.json' -f $CurrentPath
$SummaryMarkdownFile = '{0}\..\docs\SUMMARY.md' -f $CurrentPath
$SummarySourceJson = ([System.IO.File]::ReadAllLines($SummaryJsonFile, [System.Text.Encoding]::UTF8)) | ConvertFrom-Json

# Process Table of Contents
ForEach ($TopLevel in ($SummarySourceJson."Table of contents".PSObject.Members | Where-Object MemberType -eq 'NoteProperty'))
{

    $FinalString = $Results = $null

    if ($TopLevel.Value -is [PSCustomObject])
    {

        $FinalString = $MarkdownTableItem -f  $TopLevel.Name, ($TopLevel.Value.Dir + "/README.md")

        [void]$StringBuilder.Add($FinalString)

        $Results = ProcessSubProperty -Indent $IndentPadding -Property $TopLevel.Value -Directory $TopLevel.Value.Dir

        ForEach ($r in $Results)
        {

            [void]$StringBuilder.Add($r)

        }

    }

    else
    {

        if ($TopLevel.Value.ToUpper().StartsWith("README"))
        {

            $Value = $TopLevel.Value

        }

        else
        {

            $Value = $TopLevel.Value.ToLower()

        }

        $FinalString = $MarkdownTableItem -f $TopLevel.Name, $Value

        [void]$StringBuilder.Add($FinalString)

    }

}

# Process About
[void]$StringBuilder.Add([System.Environment]::NewLine + '## About' + [System.Environment]::NewLine)

ForEach ($TopLevel in ($SummarySourceJson.About.PSObject.Members | Where-Object MemberType -eq 'NoteProperty'))
{

    $FinalString = $Results = $null

    if ($TopLevel.Value -is [Array])
    {

        $FinalString = $MarkdownL1TableItem -f $TopLevel.Name
        [void]$StringBuilder.Add($FinalString)

        ForEach ($subItem in $TopLevel.Value)
        {

            $FinalString = $MarkdownL2TableItem -f $subItem.PSObject.Properties.Name, ($subItem.PSObject.Properties.Value.ToLower())
            [void]$StringBuilder.Add($FinalString)

        }

    }

    else
    {

        $FinalString = $MarkdownTableItem -f $TopLevel.Name, ($TopLevel.Value.ToLower())

        [void]$StringBuilder.Add($FinalString)

    }

}

[System.IO.File]::WriteAllLines($SummaryMarkdownFile, $StringBuilder.ToArray(), [System.Text.Encoding]::UTF8)