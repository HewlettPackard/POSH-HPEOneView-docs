# This script is used to build the online user documentation.

[CmdLetBinding ()]
Param
(

    # [Parameter (Mandatory, HelpMessage = "Provide the full path to the CmdletHelp JSON source to process.")]
    [Parameter (Mandatory = $False, HelpMessage = "Provide the full path to the POSH-HPEOneView-docs repo directory.")]
    [ValidateNotNullorEmpty()]
    # [System.IO.FileInfo]$Path = ((Split-Path $MyInvocation.MyCommand.Path -parent) + '\..\source\HPEOneView.1000_CmdletHelp.json'),
    [System.IO.DirectoryInfo]$Path = "$HOME\OneDrive\Documents\GIT\GitHub\POSH-HPEOneView-docs",

    # [Parameter (Mandatory = $false, HelpMessage = "Provide the root directory path to save the generated help markdown files to.")]
    # [ValidateNotNullorEmpty()]
    # [String]$Destination = ((Split-Path $MyInvocation.MyCommand.Path -parent) + '\..\'),

    [Parameter (Mandatory, HelpMessage = "Provide the documentation version to build, which corresponds to a specific branch.")]
    [ValidateNotNullorEmpty()]
    [String]$Version

)

$Script:FindTabbedItemListRegexPattern             = [System.Text.RegularExpressions.RegEx]::new('\s{4}\*\s', [System.Text.RegularExpressions.RegexOptions]::Multiline)
$Script:FindParameterRegexPattern                  = [System.Text.RegularExpressions.RegEx]::new('(?<=\s)-\w+', [System.Text.RegularExpressions.RegexOptions]::Multiline)
$Script:FindVariableRegexPattern                   = [System.Text.RegularExpressions.RegEx]::new('(?:\$(\S+))', [System.Text.RegularExpressions.RegexOptions]::Multiline)
$Script:FindCmdletRegexPattern                     = [System.Text.RegularExpressions.RegEx]::new('\b(?<=\s\()\w*-\w*\b(?!`)(?<!-\))', [System.Text.RegularExpressions.RegexOptions]::Multiline)
$Script:FindFullyQualifiedClassWithoutBracePattern = [System.Text.RegularExpressions.RegEx]::new('(?<=\s)([a-zA-Z]+[.])+[a-zA-Z]+', [System.Text.RegularExpressions.RegexOptions]::Multiline)
$Script:FindFullyQualifiedClassPattern             = [System.Text.RegularExpressions.RegEx]::new('(?<=\s)\[([a-zA-Z]+[.])+[a-zA-Z]+[\]]?', [System.Text.RegularExpressions.RegexOptions]::Multiline)
$Script:FindAboutTopicReferencePattern             = [System.Text.RegularExpressions.RegEx]::new('(?<=\s)about_\w+', [System.Text.RegularExpressions.RegexOptions]::Multiline -bor [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
$Script:MinimumPermissionsPattern                  = [System.Text.RegularExpressions.RegEx]::new("(?:^Minimum required privileges:[\s\w*.,-]+)", [System.Text.RegularExpressions.RegexOptions]::Multiline)
$Script:NoteMessagePattern                         = [System.Text.RegularExpressions.RegEx]::new("(?:^NOTE: (?'subtext'[\s\w]+.+)(?'table'\n*(\s{1,4}\*.+\n)+)?)", [System.Text.RegularExpressions.RegexOptions]::Multiline -bor [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
$Script:WarningMessagePattern                      = [System.Text.RegularExpressions.RegEx]::new("(?:^WARNING: (?'subtext'[\s\w]+.+)(?'table'\n*(\s{1,4}\*.+\n)+)?)", [System.Text.RegularExpressions.RegexOptions]::Multiline -bor [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
$Script:CriticalMessagePattern                     = [System.Text.RegularExpressions.RegEx]::new("(?:^CRITICAL: (?'subtext'[\s\w]+.+))", [System.Text.RegularExpressions.RegexOptions]::Multiline -bor [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
$Script:ParentLinkableAssociatedLinks              = [Ordered]@{
    '[${Global:ConnectedSessions}]'          = '../../about/about_appliance_connections.md';
    '${Global:ConnectedSessions}'            = '../../about/about_appliance_connections.md';
    'about_appliance_connections'            = '../../about/about_appliance_connections.md'
    'about_Appliance_Connection_Permissions' = '../../about/about_appliance_connection_permissions.md';
    'about_two_factor_authentication'        = '../../about/about_two_factor_authentication.md'
}

$H1 = "# "
$H2 = "## "
$H3 = "### "
$script:Indent = '    '

$StartSyntax = '```powershell'
$EndSyntax   = '```{0}' -f [System.Environment]::NewLine

$ParameterType = '&lt;{0}&gt;'

enum HintStyleEnum
{

    info;
    warning;
    danger

}

class DisplayHint
{

    static [string]$StartHintStyle = '???+ {0}{1}'
    static [string]$Indent = '    '

    static [String] Build ([HintStyleEnum]$HintStyleEnum, [String]$Description)
    {

        $FinalString = [System.Text.StringBuilder]::new()

        $_StartHintStyle = [DisplayHint]::StartHintStyle -f $HintStyleEnum, [System.Environment]::NewLine
        [void]$FinalString.Append($_StartHintStyle)

        # Need to split the $Description into individual lines so $Indent can be inserted as a prefix to each line
        $DescriptionLines = $Description -split '\n'

        ForEach ($line in $DescriptionLines)
        {

            $NumberOfIndents = $line.StartsWith("*") ? [DisplayHint]::Indent + [DisplayHint]::Indent : [DisplayHint]::Indent

            $_Line = '{0}{1}{2}' -f $NumberOfIndents, $line, [System.Environment]::NewLine
            [void]$FinalString.Append($_Line)

        }

        # This code shouldn't be needed, but it is here just in case
        # [void]$FinalString.Append($Description + [System.Environment]::NewLine)

        return $FinalString.ToString()

    }

}

# This class is used to build the tabs for Input Types and Return Values
# It is used to create the tab entries for the documentation.

class Tabs
{

    static [string]$NewTab           = '=== "{0}"' 
    static [string]$TabText          = '{0}{1}'

    static [string] BuildTabEntry ([string]$Title, [string[]]$Description, [string]$CmdletName)
    {

        $TempDescriptionString = [System.Text.StringBuilder]::new()
        $TempTableString       = [System.Text.StringBuilder]::new()
        $FinalString           = [System.Text.StringBuilder]::new()

        $_NewTab = [Tabs]::NewTab -f $Title
        [void]$FinalString.AppendLine($_NewTab)
      
        # Process each line to provided FindVariableRegexPattern and replace the variables with a single tick
        ForEach ($line in ($Description -split '\n'))
        {

            # It is plain text and not part of a table we are looking for
            if (-not ($line.ToString().StartsWith("    =") -or $line.ToString().StartsWith("    -") -or $line.ToString().StartsWith("    |") -or $line.ToString().StartsWith("\n")))
            {

                # Find variables in the description and encase with the single tick
                $_Line = $Script:FindVariableRegexPattern.Replace($line.ToString(), "```$0``")

                $_Line = LinkifyString -String $_Line -CmdletName $CmdletName

                # Add the processed line to the final string
                [void]$TempDescriptionString.AppendLine($_Line)

            }

            else
            {
            
                [void]$TempTableString.AppendLine($line.Trim())
            
            }

        }

        # Replace the table in the Return text with one that will format correctly in mkdocs
        if ($CmdletName -eq 'Connect-OVMgmt')
        {

            # This regular express looks to match a markdown table format of "| some text | some text | some text |"
            $Table = [regex]::Matches($TempTableString.ToString(), '^\|\s\w+\s+\|\s\w+\s+\|\s[\w\/\.\s]+\|', [System.Text.RegularExpressions.RegexOptions]::Multiline).Value 

            if ($null -ne $Table)
            {

                For ($t = 0; $t -le $Table.Count; $t++)
                {

                    if ($t -eq 1)
                    {
                        [void]$TempDescriptionString.AppendLine('| :--- | :--- | :--- |')
                    }
                    else
                    {
                        [void]$TempDescriptionString.AppendLine($Table[$t])
                    }
                }

            }

        }

        # Split the description into lines so that it can be processed
        # Remove all empty space before each line, and then add a 4 space indentation to prefix
        ForEach ($line in ($TempDescriptionString.ToString() -split '\n'))
        {

            $_Line = [Tabs]::TabText -f $script:Indent, $line.ToString().Trim()
            [void]$FinalString.AppendLine($_Line)

        }

        return $FinalString.ToString()

    }

}

class InputTypes : Tabs
{

    [string] static BuildTabs([string[]]$InputTypes)
    {

        $FinalString = [System.Collections.ArrayList]::new()

        [void]$FinalString.Add([InputTypes]::StartTabsDisplay)

        ForEach ($input in $InputTypes)
        {

            $_InputString = [InputTypes]::BuildTabEntry($input.value, $input.Text)

            [void]$FinalString.Add($_InputString)

        }

        [void]$FinalString.Add([InputTypes]::EndTabsDisplay)

        return $FinalString

    }

}

class ReturnValues : Tabs
{

    [string] static BuildTabs([string[]]$InputTypes)
    {

        $FinalString = $null

        ForEach ($input in $InputTypes)
        {


        }

        return $FinalString

    }

}

class ParameterEntry
{

    static [string]$Table       = '| Aliases | {0} |{5}| :--- | :--- |{5}| Required? | {1} |{5}| Position? | Named |{5}| Default value | {2} |{5}| Accept pipeline input? | {3} |{5}| Accept wildcard characters? | {4} |'
    static [string]$Description = '{0}{1}'

    static [string] BuildDescriptionAndTable ([Object]$Parameter)
    {

        $FindTabbedItemListRegexPattern = [System.Text.RegularExpressions.RegEx]::new('\s{4}\*\s', [System.Text.RegularExpressions.RegexOptions]::Multiline)

        $FinalString = [System.Text.StringBuilder]::new()

        # Look for parameter references, which start with hyphen
        $_Description = $Script:FindParameterRegexPattern.Replace($Parameter.Description, '`$0`')

        # Look for Cmdlet name reference
        $_Description = $Script:FindCmdletRegexPattern.Replace($_Description, '`$0`')

        # Look for tabbed item lists to fix issue with Gitbook handling
        $_Description = $FindTabbedItemListRegexPattern.Replace($_Description, "* ")

        # Look for fully qualified class names without [] braces
        $_Description = $Script:FindFullyQualifiedClassWithoutBracePattern.Replace($_Description, '[$0]')

        # Look for fully qualified class names with [] braces
        $_Description = $Script:FindFullyQualifiedClassPattern.Replace($_Description, '`$0`')

        if (($Script:NoteMessagePattern.Match($_Description)).Success)
        {

            $NoteMessageReplace = [DisplayHint]::Build([HintStyleEnum]::info, '${subtext}${table}')
            $_Description = $Script:NoteMessagePattern.Replace($_Description, $NoteMessageReplace)

        }

        if (($Script:WarningMessagePattern.Match($_Description)).Success)
        {

            $WarningMessageReplace = [DisplayHint]::Build([HintStyleEnum]::warning, '${subtext}${table}')
            $_Description = $Script:WarningMessagePattern.Replace($_Description, $WarningMessageReplace)

        }

        if (($Script:CriticalMessagePattern.Match($_Description)).Success)
        {

            $CriticalNoteMessageReplace = [DisplayHint]::Build([HintStyleEnum]::danger, '${subtext}')
            $_Description = $Script:CriticalMessagePattern.Replace($_Description, $CriticalNoteMessageReplace)

        }

        $FinalDescription = [ParameterEntry]::Description -f $_Description, [System.Environment]::NewLine
        [void]$FinalString.AppendLine($FinalDescription)

        $DefaultValue = $null

        if (-not [String]::IsNullOrEmpty($Parameter.DefaultValue))
        {

            if ($Parameter.DefaultValue -is [String])
            {

                $DefaultValue = '{0}' -f $Parameter.DefaultValue.Replace('|', '&vert;')

            }

            else
            {

                $DefaultValue = '{0}' -f $Parameter.DefaultValue

            }

        }

        $FinalTable = [ParameterEntry]::Table -f $Parameter.Aliases, [Convert]::ToBoolean($Parameter.Required), $DefaultValue, $Parameter.PipelineInput, $Parameter.SupportsWildcard, [System.Environment]::NewLine
        [void]$FinalString.AppendLine($FinalTable)

        return $FinalString.ToString()

    }

}

function LinkifyString ([String]$String, [String]$CmdletName)
{

    $UpdatedString = $String

    if (($FindParameterRegexPattern.Matches($UpdatedString)).Success)
    {

        $UpdatedString = $FindParameterRegexPattern.Replace($UpdatedString, '`$0`')

    }

    ForEach ($HelpTopicReference in $FindAboutTopicReferencePattern.Matches($UpdatedString))
    {

        $ReplaceString = "[`{0}`]({1})" -f $HelpTopicReference.Value, $ParentLinkableAssociatedLinks[$HelpTopicReference.Value]
        $UpdatedString = $FindAboutTopicReferencePattern.Replace($UpdatedString, $ReplaceString)

    }

    $Match = $FindCmdletRegexPattern.Match($UpdatedString)

    $Offset = 0

    While ($Match.Success)
    {

        # Need to skip hyphenated strings and GET-OV/GET-HPOV which is referenced in Remove-OVResource/Remove-HPOVResource Cmdlet, that are found with the regex
        if ($Match.Value.ToUpper().Contains('-HPOV') -or $Match.Value.ToUpper().Contains('-OV') -and ('Get-OV', 'Get-HPOV' -notcontains $Match.Value))
        {

            $FoundCmdletName          = $Match.Value
            $CmdletCategory           = ($script:LibraryJsonContents.Cmdlets | Where-Object Name -eq $CmdletName).Category
            $AssociatedCmdlet         = $script:LibraryJsonContents.Cmdlets | Where-Object Name -eq $FoundCmdletName

            if ([String]::IsNullOrEmpty($AssociatedCmdlet))
            {

                $ErrorMessage = 'Unable to linkafy string {0} that was found in {1} Cmdlet.' -f $FoundCmdletName, $CmdletName
                Write-Error $ErrorMessage

            }

            else
            {

                $AssociatedCmdletCategory = $AssociatedCmdlet.Category

                $AssociatedLinkRelativeUri = "{0}.md" -f $FoundCmdletName.ToLower()

                "    --> Linkify string: {0}" -f $FoundCmdletName | Write-Verbose

                if ($CmdletCategory -ne $AssociatedCmdletCategory)
                {

                    $AssociatedLinkRelativeUri = "../{0}/{1}" -f $AssociatedCmdletCategory.ToLower(), $AssociatedLinkRelativeUri

                }

                $LinkafyText = '[`{0}`]({1})' -f $FoundCmdletName, $AssociatedLinkRelativeUri

                $FinalStringBuilder = [System.Text.StringBuilder]::new()
                [void]$FinalStringBuilder.Append($UpdatedString.Substring(0, ($Match.Index + $Offset)))
                [void]$FinalStringBuilder.Append($LinkafyText)
                [void]$FinalStringBuilder.Append($UpdatedString.Substring(($Match.Index + $Offset) + $Match.length));
                $UpdatedString = $FinalStringBuilder.ToString();

                $Offset = $Offset + ($LinkafyText.Length - $Match.length)

            }

        }

        $Match = $Match.NextMatch()

    }

    return $UpdatedString #+ [System.Environment]::NewLine

}

# Path paraemter should be the full path to a valid HPEOneView.*.json file.  Test for the existence of the file.
if (-not (Test-Path $Path))
{

    $Message = "The path '{0}' does not exist.  Please check the path and try again." -f $Path
    throw [Management.Automation.ErrorRecord]::new(([System.InvalidOperationException]::new($Message)), 'PathNotFound', 'ResourceUnavailable', 'HelpJSONSource')

}

# Test to ensure $Path is a valid git repository first
if (-not (Test-Path (Join-Path $Path ".git")))
{

    $Message = "The path '{0}' is not a valid git repository.  Please check the path and try again." -f $Path
    throw [Management.Automation.ErrorRecord]::new(([System.InvalidOperationException]::new($Message)), 'NotAGitRepository', 'ResourceUnavailable', 'HelpJSONSource')

}

# Push into the path provided
Push-Location $Path

# Check for any pending changes in the git repository
if (git status --porcelain | Where-Object { $_ -ne '' })
{

    $Message = "There are pending changes in the git repository at '{0}'.  Please commit or stash your changes before running this script." -f $Path
    throw [Management.Automation.ErrorRecord]::new(([System.InvalidOperationException]::new($Message)), 'PendingChanges', 'ResourceUnavailable', 'HelpJSONSource')

}

# Check if the requested branch exists in the git repository.  If not, throw an error.
$BranchExists = git branch --list $Version

if (-not $BranchExists)
{

    $Message = "The branch '{0}' does not exist in the git repository at '{1}'.  Please check the branch name and try again." -f $Version, $Path
    throw [Management.Automation.ErrorRecord]::new(([System.InvalidOperationException]::new($Message)), 'BranchNotFound', 'ResourceUnavailable', 'HelpJSONSource')

}

# Check if the command mike exists.  If not, throw an error.
if (-not (Get-Command mike -ErrorAction SilentlyContinue))
{

    $Message = "The command 'mike' (used for mkdocs versioning) is not installed.  Please install 'mike' to build the online user documentation."
    throw [Management.Automation.ErrorRecord]::new(([System.InvalidOperationException]::new($Message)), 'MikeNotFound', 'ResourceUnavailable', 'HelpJSONSource')

}

# Use git checkout to switch to the requested branch
git -C $Path checkout $Version | Out-Null

# Check if the checkout was successful
if ($LASTEXITCODE -ne 0)
{

    $Message = "Failed to checkout branch '{0}' in the git repository at '{1}'.  Please check the branch name and try again." -f $Version, $Path
    throw [Management.Automation.ErrorRecord]::new(([System.InvalidOperationException]::new($Message)), 'CheckoutFailed', 'ResourceUnavailable', 'HelpJSONSource')

}

$SourceJsonFile = $Path


$RepoParentDirectory          = $PSScriptRoot + ("{0}..{0}" -f [IO.Path]::DirectorySeparatorChar)
$SourceDirectory              = Join-Path $RepoParentDirectory "source"
$ApprovedCmdletCategoriesFile = Join-Path $SourceDirectory "ApprovedCategories.json"
$DeprecatedCmdletsFile        = Join-Path $SourceDirectory "DeprecatedCmdlets.json"
$SourceJsonFileName           = "HPEOneView.{0}_CmdletHelp.json" -f $Version.Replace('.', '')
$SourceJsonFile               = Join-Path $SourceDirectory $SourceJsonFileName
$JsonFullPath                 = Resolve-Path $SourceJsonFile
$ApprovedCmdletCategories     = [System.IO.File]::ReadAllLines($ApprovedCmdletCategoriesFile, [System.Text.Encoding]::UTF8) | ConvertFrom-Json
$DeprecatedCmdlets            = [System.IO.File]::ReadAllLines($DeprecatedCmdletsFile, [System.Text.Encoding]::UTF8) | ConvertFrom-Json

# Test to ensure the JSON file exists
if (-not (Test-Path $JsonFullPath))
{

    $Message = "The JSON file '{0}' does not exist.  Please check the path and try again." -f $JsonFullPath
    throw [Management.Automation.ErrorRecord]::new(([System.InvalidOperationException]::new($Message)), 'JsonFileNotFound', 'ResourceUnavailable', 'HelpJSONSource')

}

# Clear the ..\docs\cmdlets directory before processing the JSON source file
if (Test-Path (Join-Path $Path "docs\cmdlets"))
{

    Write-Verbose ("Removing existing documentation files from '{0}' directory." -f $Path)
    Remove-Item -Path (Join-Path $Path "docs\cmdlets") -Recurse -Force -Confirm:$false

}

$script:LibraryJsonContents = [System.IO.File]::ReadAllLines($JsonFullPath) | ConvertFrom-Json
$Version                    = '{0}.{1:00}' -f ([Version]$LibraryJsonContents.Version).Major, ([Version]$LibraryJsonContents.Version).Minor

$c                   = 0

$Activity = 'Processing HPEOneView {0} Cmdlets' -f $Version

# Need to process through all of the documented Cmdlets, getting the Syntax for parameterSetNames, parameter pipeline and waldcard support
ForEach ($Cmdlet in $script:LibraryJsonContents.Cmdlets)
{

    if (-not [String]::IsNullOrEmpty($Cmdlet))
    {

        # Document format:
        #    Description 'field'
        #    Syntax
        #    Description
        #    Examples
        #    Parameters
        #    Input Types
        #    Return Values

        Write-Progress -Activity $Activity -Status ('[{0}/{1}] {2}' -f $c, $LibraryJsonContents.Cmdlets.Count, $Cmdlet.Name) -PercentComplete (($c / $LibraryJsonContents.Cmdlets.Count) * 100)

        "Processing: {0}" -f $Cmdlet.Name | Write-Verbose

        $FinalPathDirectory = '{0}\docs\cmdlets\{1}' -f $Destination, $Cmdlet.Category.ToLower()
        $FinalPathString = '{0}\{1}.md' -f $FinalPathDirectory, $Cmdlet.Name.ToLower()

        if (-not(Test-Path $FinalPathDirectory))
        {

            New-Item -Path $FinalPathDirectory -ItemType Directory | Out-Null

        }

        $FinalMarkdownOutput = [System.Collections.ArrayList]::new()

        #    Description 'field'
        [void]$FinalMarkdownOutput.Add('---')

        $GitBookDescriptionHeader = 'description: {0}' -f $Cmdlet.Contents.Synopsis.Replace('[', '\[').Replace(']','\]')
        [void]$FinalMarkdownOutput.Add($GitBookDescriptionHeader)
        [void]$FinalMarkdownOutput.Add(('---' + [System.Environment]::NewLine))

        #    Cmdlet title
        $TitleHeader = '{0}{1}{2}' -f $H1, $Cmdlet.Name, [System.Environment]::NewLine
        [void]$FinalMarkdownOutput.Add($TitleHeader)

        #    Syntax
        $SyntaxSectionHeader = '{0}Syntax{1}' -f $H2, [System.Environment]::NewLine
        [void]$FinalMarkdownOutput.Add($SyntaxSectionHeader)

        ForEach ($SyntaxCol in $Cmdlet.Contents.Syntax)
        {

            [void]$FinalMarkdownOutput.Add($StartSyntax)

            $CmdletSyntax = [System.Text.StringBuilder]::new()

            $CmdletSyntaxHeader = "{0}{1}" -f $Cmdlet.Name, [System.Environment]::NewLine
            [void]$CmdletSyntax.Append($CmdletSyntaxHeader)

            ForEach ($SyntaxParameter in $SyntaxCol)
            {

                $ParameterDef = $Cmdlet.Contents.Parameters | Where-Object Name -eq $SyntaxParameter.Name

                "    --> Processing Cmdlet syntax parameter: {0}" -f $ParameterDef.Name | Write-Verbose

                $CmdletParameterName = '[-{0}' -f $SyntaxParameter.Name

                if ($ParameterDef.DataType -eq 'SwitchParameter')
                {

                    $CmdletParameterType = ''

                }

                else
                {

                    $CmdletParameterType = ' <{0}>' -f $ParameterDef.DataType

                }

                # If parameter is required, the brace needs to be around the parameter name
                if ([Convert]::ToBoolean($SyntaxParameter.Required))
                {

                    $CmdletParameterString = '{0}]{1}' -f $CmdletParameterName, $CmdletParameterType

                }

                # Else, the brace needs to be around the syntax parameter entry
                else
                {

                    $CmdletParameterString = '{0}{1}]' -f $CmdletParameterName, $CmdletParameterType

                }

                $CmdletParameterString = '{0}{1}{2}' -f $Indent, $CmdletParameterString, [System.Environment]::NewLine

                [void]$CmdletSyntax.Append($CmdletParameterString)

            }

            $CommonParametersParam = '{0}[<CommonParameters>]' -f $Indent
            [void]$CmdletSyntax.Append($CommonParametersParam)

            [void]$FinalMarkdownOutput.Add($CmdletSyntax.ToString())
            [void]$FinalMarkdownOutput.Add($EndSyntax)

        }

        #    Description
        $DescriptionSectionHeader = '{0}Description{1}' -f $H2, [System.Environment]::NewLine
        [void]$FinalMarkdownOutput.Add($DescriptionSectionHeader)

        #    Process DESCRIPTION MINIMUM PERMISSIONS
        $Description = $Cmdlet.Contents.Description

        $UpdatedDescription = LinkifyString -String $Description -CmdletName $Cmdlet.Name

        if (($MinimumPermissionsPattern.Match($UpdatedDescription)).Success)
        {

            $UpdatedText        = [DisplayHint]::Build([HintStyleEnum]::info, $MinimumPermissionsPattern.Match($UpdatedDescription).Value)
            $UpdatedDescription = $MinimumPermissionsPattern.Replace($UpdatedDescription, $UpdatedText)

        }

        else
        {

            $UpdatedDescription = $Description + [System.Environment]::NewLine

        }

        #    Process DESCRIPTION NOTE: messages
        # Embed Gitbook "info" icon when NOTE: exists in the description
        if (($NoteMessagePattern.Match($UpdatedDescription)).Success)
        {

            $NoteMessageReplace = [DisplayHint]::Build([HintStyleEnum]::info, '${subtext}${table}')
            $UpdatedDescription = $NoteMessagePattern.Replace($UpdatedDescription, $NoteMessageReplace)

        }

        # Embed Gitbook "warning" icon when WARNING: exists in the description
        if (($WarningMessagePattern.Match($UpdatedDescription)).Success)
        {

            $WarningMessageReplace = [DisplayHint]::Build([HintStyleEnum]::warning, '${subtext}${table}')
            $UpdatedDescription = $WarningMessagePattern.Replace($UpdatedDescription, $WarningMessageReplace)

        }

        # Embed Gitbook "danger" icon when CRITICAL: exists in the description
        if (($CriticalMessagePattern.Match($UpdatedDescription)).Success)
        {

            $CriticalMessageReplace = [DisplayHint]::Build([HintStyleEnum]::danger, '${subtext}')
            $UpdatedDescription = $CriticalMessagePattern.Replace($UpdatedDescription, $CriticalMessageReplace)

        }

        # This is to fix the item list issue with Gitbook, where it treats `t* as code instead of an item list
        $UpdatedDescription = $FindTabbedItemListRegexPattern.Replace($UpdatedDescription, "* ")

        [void]$FinalMarkdownOutput.Add($UpdatedDescription)

        $ExamplesSectionHeader = '{0}Examples{1}' -f $H2, [System.Environment]::NewLine
        [void]$FinalMarkdownOutput.Add($ExamplesSectionHeader)

        #    EXAMPLES
        ForEach ($Example in $Cmdlet.Contents.Examples)
        {

            $ExampleItemHeader = '{0}{1}{2}' -f $H3, $Example.Title.Replace('-', $null).Replace('EXAMPLE', 'Example'), [System.Environment]::NewLine
            [void]$FinalMarkdownOutput.Add($ExampleItemHeader)

            [void]$FinalMarkdownOutput.Add($StartSyntax)
            [void]$FinalMarkdownOutput.Add($Example.Code)
            [void]$FinalMarkdownOutput.Add($EndSyntax)

            # Look for parameter references, which start with hyphen
            $_Description = $Script:FindParameterRegexPattern.Replace($Example.Description, '`$0`')

            # Look for Cmdlet name reference
            $_Description = $Script:FindCmdletRegexPattern.Replace($_Description, '`$0`')

            # Look for fully qualified class names without [] braces
            $_Description = $Script:FindFullyQualifiedClassWithoutBracePattern.Replace($_Description, '[$0]')

            # Look for fully qualified class names with [] braces
            $_Description = $Script:FindFullyQualifiedClassPattern.Replace($_Description, '`$0`')

            $FinalDescription = '{0}{1}' -f $_Description, [System.Environment]::NewLine

            [void]$FinalMarkdownOutput.Add($FinalDescription)

        }

        #    PARAMETERS
        $ParametersSectionHeader = '{0}Parameters{1}' -f $H2, [System.Environment]::NewLine
        [void]$FinalMarkdownOutput.Add($ParametersSectionHeader)

        ForEach ($Parameter in $Cmdlet.Contents.Parameters)
        {

            $Type = $ParameterType -f $Parameter.DataType

            $_Header = '{0}-{1} {2}{3}' -f $H3, $Parameter.Name, $Type, [System.Environment]::NewLine
            [void]$FinalMarkdownOutput.Add($_Header)

            $Table = [ParameterEntry]::BuildDescriptionAndTable($Parameter)
            [void]$FinalMarkdownOutput.Add($Table)

        }

        # Insert CommonParameters
        $_Header = '{0}&lt;CommonParameters&gt;{1}' -f $H3, [System.Environment]::NewLine
        [void]$FinalMarkdownOutput.Add($_Header)

        $CommonParametersDescription = "This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\){0}" -f [System.Environment]::NewLine
        [void]$FinalMarkdownOutput.Add($CommonParametersDescription)

        #    INPUT TYPES
        $InputTypesSectionHeader = '{0}Input Types{1}' -f $H2, [System.Environment]::NewLine
        [void]$FinalMarkdownOutput.Add($InputTypesSectionHeader)

        ForEach ($Type in $Cmdlet.Contents.InputTypes)
        {

            # If the type is None, then skip creating a table view
            if (-not $Type.Value.StartsWith('None.'))
            {

                [Tabs]::BuildTabEntry($Type.Value, $Type.Text, $Cmdlet.Name) | ForEach-Object { 
                
                    [void]$FinalMarkdownOutput.Add($_) 
                
                }

            }

            else
            {
        
                [void]$FinalMarkdownOutput.Add($Type.Value)
                [void]$FinalMarkdownOutput.Add([System.Environment]::NewLine)
            
            }

        }

        #    RETURN VALUES
        $ReturnValuesSectionHeader = '{0}Return Values{1}' -f $H2, [System.Environment]::NewLine
        [void]$FinalMarkdownOutput.Add($ReturnValuesSectionHeader)

        ForEach ($Return in $Cmdlet.Contents.ReturnValues)
        {

            # Need to figure out if there are many empty trailing lines in the ReturnValues text, as only a single line is needed
            $GeneratedReturnText = [Tabs]::BuildTabEntry($Return.Value, $Return.Text, $Cmdlet.Name)
            # $GeneratedReturnText = $GeneratedReturnText -replace '(\n\s*){2,}', [System.Environment]::NewLine
            [void]$FinalMarkdownOutput.Add($GeneratedReturnText)                   

        }

        #    RELATED LINKS
        $RelatedLinksSectionHeader = '{0}Related Links{1}' -f $H2, [System.Environment]::NewLine
        [void]$FinalMarkdownOutput.Add($RelatedLinksSectionHeader)

        ForEach ($Link in ($Cmdlet.Contents.RelatedLinks | Where-Object Text -notmatch 'Online:'))
        {

            "    --> Adding associated link: {0}" -f $Link.Text | Write-Verbose
            if ($Script:ParentLinkableAssociatedLinks.GetEnumerator().Name -contains $Link.Text)
            {

                $AssociatedLinkRelativeUri = $Script:ParentLinkableAssociatedLinks[$Link.Text]

            }

            else
            {

                $AssociatedLinkCmdlet = $script:LibraryJsonContents.Cmdlets | Where-Object Name -eq $Link.Text

                if ([String]::IsNullOrEmpty($AssociatedLinkCmdlet))
                {

                    $Message = "Unable to find associated link '{0}' to '{1}' Cmdlet." -f $Link.Text, $Cmdlet.Name
                    $PSCmdlet.WriteError([Management.Automation.ErrorRecord]::new(([System.InvalidOperationException]::new($Message), 'RelatedLinkNotFound', 'ResourceUnavailable', 'HelpJSONSource')))

                }

                else
                {

                    if (-not [String]::IsNullOrEmpty($Link.Uri) -and -not $Link.Uri.StartsWith('https://'))
                    {

                        $AssociatedLinkRelativeUri = $Link.Uri

                    }

                    else
                    {

                        $AssociatedLinkRelativeUri = "{0}.md" -f $AssociatedLinkCmdlet.Name.ToLower()

                        # Check if the Category is the same. If not, then the relative and parent directory needs to be in the URI
                        if ($AssociatedLinkCmdlet.Category -ne $Cmdlet.Category)
                        {

                            $AssociatedLinkRelativeUri = "../{0}/{1}" -f $AssociatedLinkCmdlet.Category.ToLower(), $AssociatedLinkRelativeUri

                        }

                    }

                }

            }

            $RelatedLinkString = '* [{0}]({1})' -f $Link.Text, $AssociatedLinkRelativeUri
            [void]$FinalMarkdownOutput.Add($RelatedLinkString)

        }

        [System.IO.File]::WriteAllLines($FinalPathString, $FinalMarkdownOutput.ToArray(), [System.Text.Encoding]::UTF8)

    }

    $c++

}

Write-Progress -Activity $Activity -Completed

# Use mike list to get the list of versions in the repository
$MikeListOutput = mike list --json | ConvertFrom-Json

# Execute the mike command to build the online user documentation
$MikeCommand = "mike deploy --update {0} --allow-empty" -f $Version
$MikeVersionExists = $MikeListOutput | Where-Object version -eq $Version 

if ($MikeVersionExists.aliases -contains "latest")
{

    $MikeCommand += " --update-aliases latest"

}

Invoke-Expression $MikeCommand

if ($LASTEXITCODE -ne 0)
{

    $Message = "Failed to deploy the online user documentation. Please check the command output for more details."
    throw [Management.Automation.ErrorRecord]::new(([System.InvalidOperationException]::new($Message), 'MikeDeployFailed', 'ResourceUnavailable', 'HelpJSONSource'))

}

# Use git add to save the changes to the current branch and verify the command was successful
git add -A #| Out-Null
if ($LASTEXITCODE -ne 0)
{

    $Message = "Failed to add changes to the git repository at '{0}'. Please check the command output for more details." -f $Path
    throw [Management.Automation.ErrorRecord]::new(([System.InvalidOperationException]::new($Message), 'GitAddFailed', 'ResourceUnavailable', 'HelpJSONSource'))

}

