# This is used to validate the source JSON is valid.
# Should use Pester unit tests to validate the structure of each JSON files.

Write-Host $PSScriptRoot

$ExpectedDirectories = @(
    'source',
    'docs'
)

$ExpectedJsonRootPropertiesFormat = [Ordered]@{
    Version     = "String";
    LibraryGuid = "StringGUID";
    Cmdlets     = "Array"
}

$ExpectedCmdletFormat = [Ordered]@{
    Name     = "String";
    Category = "String";
    Contents = "PSCustomObject"
}

$ExpectedSubContentsFormat = [Ordered]@{
    Synopsis     = "String";
    Description  = "String";
    Parameters   = "Array";
    InputTypes   = "Array";
    ReturnValues = "Array";
    Examples     = "Array";
    RelatedLinks = "Array";
    Syntax       = "Array"
}

$ExpectedParameterFormat = [Ordered]@{
    Name             = 'String';
    Description      = "String";
    DataType         = "String";
    Required         = "Boolean";
    DefaultValue     = "String";
    Aliases          = "String";
    PipelineInput    = "String";
    SupportsWildcard = "Boolean"
}

$ExpectedSyntaxFormat = [Ordered]@{
    Name     = "String";
    Required = "Boolean"
}

$ExpectedInputTypeFormat = [Ordered]@{
    Value = "String";
    Text  = "String"
}

$ExpectedReturnValueFormat = [Ordered]@{
    Value = "String";
    Text  = "String"
}

$ExpectedExampleFormat = [Ordered]@{
    Title       = "String";
    Code        = "String";
    Description = "String"
}

$ExpectedRelatedLinkFormat = [Ordered]@{
    Uri  = "String"
    Text = "String"
}

$AllowedPipelineInputValueTypes = @(
    'false',
    'true (ByValue)',
    'true (ByPropertyName)'
)

$ExpectedNullValueTypes = @(
    'DefaultValue',
    'Default'
)

$ExpectedOnlineRelatedLinkBaseUri = 'https://hpe-docs.gitbook.io/posh-hponeview/cmdlets/v'

$RepoParentDirectory          = $PSScriptRoot + ("{0}..{0}" -f [IO.Path]::DirectorySeparatorChar)
$SourceDirectory              = Join-Path $RepoParentDirectory "source"
$ApprovedCmdletCategoriesFile = Join-Path $SourceDirectory "ApprovedCategories.json"
$DeprecatedCmdletsFile        = Join-Path $SourceDirectory "DeprecatedCmdlets.json"
$SourceJsonFiles              = [System.IO.Directory]::GetFiles($SourceDirectory, "HPOneView.*.json")
$ApprovedCmdletCategories     = [System.IO.File]::ReadAllLines($ApprovedCmdletCategoriesFile, [System.Text.Encoding]::UTF8) | ConvertFrom-Json
$DeprecatedCmdlets            = [System.IO.File]::ReadAllLines($DeprecatedCmdletsFile, [System.Text.Encoding]::UTF8) | ConvertFrom-Json

# Filter out Library versions that are no longer supported
ForEach ($version in $DeprecatedCmdlets.Versions) {

    $SourceJsonFiles

}

if ($null -eq $SourceJsonFiles) {

    Throw ("Source JSON files missing or not found in expected path '{0}'" -f ($RepoParentDirectory + "source"))

}

Describe "Test repo directory structure" {

    ForEach ($Directory in $ExpectedDirectories) {

        It "Will validate required '$Directory' directory exists" {

            $RepoParentDirectory + [IO.Path]::DirectorySeparatorChar + $Directory | Should -Exist

        }

    }

}

ForEach ($File in $SourceJsonFiles) {

    Describe ("Test and validate source Cmdlet JSON file: {0}" -f $File.Split([IO.Path]::DirectorySeparatorChar)[-1]) {

        Context "Validate Json struture" {

            It "Will read source file and validate it conforms to JSON specification" {

                { $script:SourceCmdletFromJson = [System.IO.File]::ReadAllLines($File, [System.Text.Encoding]::UTF8) | ConvertFrom-Json } | Should Not Throw

            }

            # It Will validate source JSON root property
            ForEach ($RootProperty in $ExpectedJsonRootPropertiesFormat.GetEnumerator()) {

                It ("Will validate source JSON root property '{0}' is '[{1}]' type" -f $RootProperty.Name, $RootProperty.Value) {

                    Switch ($RootProperty.Value) {

                        'String' {

                            $script:SourceCmdletFromJson.($RootProperty.Name) | Should BeOfType [String]

                        }

                        'Array' {

                            $script:SourceCmdletFromJson.($RootProperty.Name) -is [System.Collections.IEnumerable] | Should BeTrue

                        }

                        'StringGUID' {

                            $Out = [Guid]::newGuid()
                            [Guid]::TryParse($script:SourceCmdletFromJson.($RootProperty.Name), [ref]$out) | Should BeTrue

                        }

                    }


                }

            }

            ForEach ($script:Cmdlet in $script:SourceCmdletFromJson.Cmdlets) {

                if ($DeprecatedCmdlets.Names -notcontains $script:Cmdlet.Name) {

                    $CmdletContents = $script:Cmdlet.Contents

                    Context ("Process v{0} {1} Cmdlet documentation properties" -f $script:SourceCmdletFromJson.Version, $script:Cmdlet.Name) {

                        ForEach ($Property in $ExpectedCmdletFormat.GetEnumerator()) {

                            It ("Will validate the '{0}' property is Type [{1}]" -f $Property.Name, $Property.Value) {

                                $script:Cmdlet.($Property.Name) | Should BeOfType [$($Property.Value)]

                            }

                            if ($Property.Name -eq 'Category') {

                                It ("Will validate '{0}' is an approved category value" -f $script:Cmdlet.($Property.Name)) {

                                    $ApprovedCmdletCategories | Should Contain $script:Cmdlet.($Property.Name)

                                }

                            }

                            else
                            {

                                It ("Will validate the '{0}' property is not null" -f $Property.Name) {

                                    $script:Cmdlet.($Property.Name) | Should Not BeNullOrEmpty

                                }

                            }

                        }

                        ForEach ($SubProperty in $ExpectedSubContentsFormat.GetEnumerator()) {

                            Context ("Process '{0}' contents property" -f $SubProperty.Name) {

                                It ("Will validate property is of type [{0}]" -f $SubProperty.Value) {

                                    $script:Cmdlet.($Property.Name) | Should BeOfType [$($Property.Value)]

                                }

                                Switch ($SubProperty.Name) {

                                    'Parameters' {

                                        ForEach ($Parameter in $CmdletContents.Parameters) {

                                            It "Will validate no additional parameter properties exist" {

                                                $ExtraParameterProperty = [System.Collections.ArrayList]::new()

                                                $ParameterProperties = $Parameter.PSObject | ? Type -eq 'NoteProperty'

                                                $ParameterProperties | ForEach-Object {

                                                    if ($_.Name -notcontains $ExpectedParameterFormat.Name) {

                                                        [void]$ExtraParameterProperty.Add($_.Name)

                                                    }

                                                }

                                                $ExtraParameterProperty | Should BeNullOrEmpty

                                            }

                                            It ("Will validate no duplicate parameter definitions for '{0}'" -f $Parameter.Name) {

                                                ,@($CmdetContents.Parameters | ? Name -eq $Parameter.Name) | Should HaveCount 1

                                            }

                                            ForEach ($p in $ExpectedParameterFormat.GetEnumerator()) {

                                                It ("Will validate parameter property '{0}' is of type [{1}]" -f $p.Name, $p.Value) {

                                                    $Parameter.($p.Name) | Should BeOfType [$($p.Value)]

                                                }

                                                if ($P.Name -eq 'PipelineInput') {

                                                    It "Will validate PipelineInput value" {

                                                        $AllowedPipelineInputValueTypes | Should Contain $Parameter.($p.Name)

                                                    }

                                                }

                                            }

                                        }

                                    }

                                    'Syntax' {

                                        ForEach ($SyntaxCol in $CmdletContents.Syntax) {

                                            ForEach ($Syntax in $SyntaxCol) {

                                                ForEach ($s in $ExpectedSyntaxFormat.GetEnumerator()) {

                                                    It ("Will validate Syntax '{0}' '{1}' data type" -f $s.Name, $s.Value) {

                                                        $Syntax.($s.Name) | Should BeOfType [$($s.Value)]

                                                    }

                                                    It ("Will validate '{0}' is not null" -f $s.Name) {

                                                        $Syntax.($s.Name) | Should Not BeNullOrEmpty

                                                    }

                                                }

                                            }

                                        }

                                    }

                                    'InputTypes' {

                                        if ($CmdletContents.Parameters | ? PipelineInput -ne 'false') {

                                            ForEach ($InputType in $CmdletContents.InputTypes) {

                                                ForEach ($I in $ExpectedInputTypeFormat.GetEnumerator()) {

                                                    It ("Will validate InputType '{0}' '{1} data type" -f $I.Name, $I.Value) {

                                                        $InputType.($I.Name) | Should BeOfType [$($I.Value)]

                                                    }

                                                    It ("Will validate '{0}' is not null" -f $I.Name) {

                                                        $InputType.($I.Name) | Should Not BeNullOrEmpty

                                                    }

                                                }

                                            }

                                        }

                                    }

                                    'ReturnValues' {

                                        It "Will validate Cmdlet has at least 1 documented return value" {

                                            $CmdletContents.ReturnValues.Count | Should BeGreaterThan 0

                                        }

                                        ForEach ($ReturnValue in $CmdletContents.ReturnValues) {

                                            ForEach ($R in $ExpectedReturnValueFormat.GetEnumerator()) {

                                                It ("Will validate '{0}' '{1} data type" -f $R.Name, $R.Value) {

                                                    $ReturnValue.($R.Name) | Should BeOfType [$($R.Value)]

                                                }

                                                It ("Will validate '{0}' is not null" -f $R.Name) {

                                                    $ReturnValue.($R.Name) | Should Not BeNullOrEmpty

                                                }

                                            }

                                        }

                                    }

                                    'Examples' {

                                        It "Will validate Cmdlet has at least 1 documented example" {

                                            $CmdletContents.Examples.Count | Should BeGreaterThan 0

                                        }

                                        ForEach ($Example in $CmdletContents.Examples) {

                                            ForEach ($E in $ExpectedExampleFormat.GetEnumerator()) {

                                                It ("Will validate example '{0}' '{1}' data type" -f $E.Name, $E.Value) {

                                                    $Example.($E.Name) | Should BeOfType [$($E.Value)]

                                                }

                                                It ("Will validate '{0}' is not null" -f $E.Name) {

                                                    $Example.($E.Name) | Should Not BeNullOrEmpty

                                                }

                                            }

                                        }

                                    }

                                    'RelatedLinks' {

                                        $_R = 1

                                        ForEach ($RelatedLink in $CmdletContents.RelatedLinks) {

                                            $script:TestedUri = $false

                                            ForEach ($R in $ExpectedRelatedLinkFormat.GetEnumerator()) {

                                                switch ($R.Name) {

                                                    'Uri' {

                                                        if (-not [String]::IsNullOrEmpty($RelatedLink.($R.Name))) {

                                                            if ($RelatedLink.($R.Name).ToLower().StartsWith('https')) {

                                                                It ("Will validate '{0}' online URI '{1}' data type" -f $_R, $R.Value) {

                                                                    $RelatedLink.($R.Name) | Should BeOfType [$($R.Value)]

                                                                }

                                                                It ("Will validate '{0}' '{1}' is not null and is a valid HTTP link" -f $_R, $R.Name) {

                                                                    $script:TestedUri = $true

                                                                    [Uri]$Uri = $null

                                                                    [uri]::TryCreate($RelatedLink.($R.Name), [UriKind]::Absolute, [ref]$uri) | Should BeTrue

                                                                }

                                                                It ("Will validate '{0}' URI format") {

                                                                    $Version = "{0}.{1:00}" -f ([Version]$SourceCmdletFromJson.Version).Major, ([Version]$SourceCmdletFromJson.Version).Minor

                                                                    $FinalUpdatedOnlineUri = '{0}{1}{4}{2}{4}{3}.md' -f $ExpectedOnlineRelatedLinkBaseUri, $Version, $script:Cmdlet.category.ToLower(), $script:Cmdlet.Name.ToLower(), [IO.Path]::DirectorySeparatorChar

                                                                    $RelatedLink.($R.Name) | Should BeExactly $FinalUpdatedOnlineUri

                                                                }

                                                            }

                                                        }

                                                        else {

                                                            It ("Will validate '{0}' '{1}' is null" -f $_R, $R.Name) {

                                                                $RelatedLink.($R.Name) | Should BeNullOrEmpty

                                                            }

                                                        }

                                                        break;

                                                    }

                                                    'Text' {

                                                        if (-not $script:TestedUri) {

                                                            It ("Will validate '{0}' non-URI '{1}' data type" -f $_R, $R.Name, $R.Value) {

                                                                $RelatedLink.($R.Name) | Should BeOfType [$($R.Value)]

                                                            }

                                                        }

                                                        break;

                                                    }

                                                    default {


                                                    }

                                                }

                                            }

                                            $_R++

                                        }

                                    }

                                    default {

                                        It "Will validate subproperty is not empty" {

                                            $script:Cmdlet.($Property.Name) | Should Not BeNullOrEmpty

                                        }

                                    }

                                }

                            }

                        }

                    }

                }

            }

        }

    }

}