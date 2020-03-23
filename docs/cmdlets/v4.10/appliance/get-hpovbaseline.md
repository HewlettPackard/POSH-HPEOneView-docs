---
description: Retrieve available SPP Baseline information.
---

# Get-HPOVBaseline

## Syntax

```text
Get-HPOVBaseline
    [-File <String>]
    [-Scope <Object>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```text
Get-HPOVBaseline
    [-SppName <String>]
    [-Version <String>]
    [-Scope <Object>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```text
Get-HPOVBaseline
    [-HotfixesOnly]
    [-Scope <Object>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Retrieves the list of SPPs that have been uploaded to the appliance, and their detail.  You can examine the included components and their versions reported by the baseline.

Please note that any file name that contains the . (period, CHAR46) character will be replaced with _ (underscore, CHAR95).

Example: My.Spp.To.Upload.201605.iso will become My_Spp_To_Upload_201605.iso.

## Examples

###  Example 1 

```text
$sppCollection = Get-HPOVBaseline

```

Retrieves all SPP objects from the appliance and stores them in the sppCollection object

###  Example 2 

```text
$sppObject = Get-HPOVBaseline -Filename SPP2012060B.2012_0525.1.iso

```

Retrieves an SPP object with the filename SPP2012060B.2012_0525.1.iso

###  Example 3 

```text
$sppObject = Get-HPOVBaseline -SppName "HP Service Pack for ProLiant"

```

Retrieves an SPP object with the SPP Name "HP Service Pack for ProLiant"

## Parameters

### -File &lt;String&gt;

Aliases [-isoFileName, `-FileName`]

The ISO file name of an SPP.

| Aliases | isoFileName, FileName |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SppName &lt;String&gt;

The SPP/Baseline Name.

| Aliases | name |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Version &lt;String&gt;

If multiple SPP/Baselines with the same name exist, use the Version parameter to filter to the specific SPP/Baseline version.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -HotfixesOnly &lt;SwitchParameter&gt;

Display only the available Hotfixes present with in the repository.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* `[HPOneView.Appliance.ScopeCollection]`
	* `[HPOneView.Appliance.ConnectionPermission]`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `AllResourcesInScope` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.Baseline [System.Management.Automation.PSCustomObject]**_

Single SPP resource object

_**System.Collections.ArrayList  (HPOneView.Appliance.Baseline)**_

Multiple SPP resource objects

_**The firmware-baseline object or collection of firmware-baseline objects if no sppFile is provided in the command.**_



## Related Links

* [Add-HPOVBaseline](add-hpovbaseline.md)
* [Get-HPOVBaselineRepository](get-hpovbaselinerepository.md)
* [Remove-HPOVBaseline](remove-hpovbaseline.md)
* [Show-HPOVBaselineRepositorySize](show-hpovbaselinerepositorysize.md)
