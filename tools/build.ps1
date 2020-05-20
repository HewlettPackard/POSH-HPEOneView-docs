# This script is the main script to execute for a new doc build
$ParentScriptPath = Split-Path $MyInvocation.MyCommand.Path -parent

# Call Update-SummaryJson.ps1 first, so that any new Cmdlets within the source are found, they are added to summary.json
Try
{

    Write-Host "-- Updating summary.json (Update-SummaryJson.ps1)" -ForegroundColor Yellow -NoNewline
    & (Join-Path $ParentScriptPath "Update-SummaryJson.ps1")

    Write-Host " --> DONE!" -ForegroundColor Green

}

Catch
{

    Write-Host " --> FAILED!" -ForegroundColor Red

    throw $_

}

# Call ConverTo-SummaryMarkdown.ps1 to generate the summary.md file that Github.io uses to build the site navigation
Try
{

    Write-Host "-- Converting summary.json to summary.md (ConvertTo-SummaryMarkdow.ps1)" -ForegroundColor Yellow -NoNewline
    & (Join-Path $ParentScriptPath "ConvertTo-SummaryMarkdown.ps1")

    Write-Host " --> DONE!" -ForegroundColor Green

}

Catch
{

    Write-Host " --> FAILED!" -ForegroundColor Red

    throw $_

}

# Lastlyt, call Build-OnlineUserDocumentation.ps1 to build the updated markdown source for Gitbook.io to render
Try
{

    Write-Host "-- Building online markdown pages (Build-OnlineUserDocumentation.ps1)" -ForegroundColor Yellow -NoNewline
    & (Join-Path $ParentScriptPath "Build-OnlineUserDocumentation.ps1")

    Write-Host " --> DONE!" -ForegroundColor Green

}

Catch
{

    Write-Host " --> FAILED!" -ForegroundColor Red

    throw $_

}