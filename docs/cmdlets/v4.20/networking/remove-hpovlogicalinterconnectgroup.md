---
description: Remove a Logical Interconnect Group.
---

# Remove-HPOVLogicalInterconnectGroup

## Syntax

```text
Remove-HPOVLogicalInterconnectGroup
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-force]
    [<CommonParameters>]
```

## Description

Removes a Logical Interconnect Group from appliance management

## Examples

###  Example 1 

```text
$lig = Get-HPOVLogicalInterconnectGroup -Name "My-LIG"
Remove-HPOVLogicalInterconnectGroup $lig -confirm:$false
```

Remove the logical interconnect group specifed by $lig. Disable confirmation prompt.

###  Example 2 

```text
Get-HPOVLogicalInterconnectGroup | Remove-HPOVLogicalInterconnectGroup

```

Search for all logical interconnect groups and remove them from all connected appliances.

## Parameters

### -InputObject &lt;Object&gt;

The logical interconnect group object(s), name(s) or uris(s) to be removed from management.

| Aliases | uri, name, Lig, Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -force &lt;SwitchParameter&gt;

Invoke switch `force-delete` the resource when OneView can no longer communicate with the resource and removal is needed. Force remove succeeds even if there are network connectivity issues or resource errors.  `-Force` is not a PowerShell option, rather an HPE OneView API feature.  This does not override the `-Confirm` PowerShell option.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.String**_

Logical Interconnect Group Name or URI

_**System.Management.Automation.PSCustomObject**_

Logical Interconnect Group resource object

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Removal Task

## Related Links

* [Get-HPOVLogicalInterconnectGroup](get-hpovlogicalinterconnectgroup.md)
* [New-HPOVLogicalInterconnectGroup](new-hpovlogicalinterconnectgroup.md)
