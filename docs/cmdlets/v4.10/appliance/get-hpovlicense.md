---
description: Gets the installed licenses on the appliance.
---

# Get-HPOVLicense

## Syntax

```text
Get-HPOVLicense
    [-Type] <String>
    [-State] <String>
    [-Summary]
    [-Report]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will retrieve licenses installed on the appliance.  You can use this to get an inventory of what"s installed and what licenses are consumed.

## Examples

###  Example 1 

```text
Get-HPOVLicense

Product   : HPE OneView Advanced
Type      : Permanent
Capacity  : 64
Allocated : 30
Available : 34
Nodes     : {Encl2, bay 7, Encl2, bay 4, Encl2, bay 13, Encl1, bay 8...}


```

Retrieve all installed license objects on the connected appliance(s).

## Parameters

### -Type &lt;String&gt;

Specify the type of License to retrieve.  Valid options are "HP_ONE_VIEW" or "HP_ONE_VIEW_WO_ILO".

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -State &lt;String&gt;

Specify the license state to retrieve.  Valid options are "Unlicensed" or "Permanent".

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Summary &lt;SwitchParameter&gt;

Display a condensed summary view of the installed or required licenses.  This does not return a License object that can be used with Remove-HPOVLicense.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Report &lt;SwitchParameter&gt;

PARAMETER IS BEING DEPRECATED.

Generate a report of installed or required licenses, their type and assigned Nodes.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.License**_

HPE OneView License


## Related Links

* [New-HPOVLicense](new-hpovlicense.md)
* [Remove-HPOVLicense](remove-hpovlicense.md)
