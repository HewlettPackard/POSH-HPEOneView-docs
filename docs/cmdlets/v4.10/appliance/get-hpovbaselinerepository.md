---
description: Retrieve available baseline repository information.
---

# Get-HPOVBaselineRepository

## Syntax

```text
Get-HPOVBaselineRepository
    [<CommonParameters>]
```

## Description

This Cmdlet will return all configured baseline repositoryies by default. Only a single External Repository can be defined per appliance.

## Examples

### Example 1

```text
$Repositories = Get-HPOVBaselineRepository
```

Retrieves all repository objects from the appliance.

### Example 2

```text
Get-HPOVBaselineRepository -Type External
```

Retrieves only the configured external repository on the appliance.

## Parameters

### -Name &lt;String&gt;

Return the repository with the name or matching name.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Type &lt;String&gt;

Specify "Internal" or "External" to filter the repository type.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Aliases \[-Appliance\]

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.BaselineRepository \[System.Management.Automation.PSCustomObject\]**_

Either and Internal or External repository object

_**System.Collections.ArrayList**_ 

Multiple resource objects

_**The configured baseline repositories are returned if no parameters are provided.**_

## Related Links

* [Show-HPOVBaselineRepositorySize](show-hpovbaselinerepositorysize.md)

