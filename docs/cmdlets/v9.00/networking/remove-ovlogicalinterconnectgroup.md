---
description: Remove a Logical Interconnect Group.
---

# Remove-OVLogicalInterconnectGroup

## Syntax

```powershell
Remove-OVLogicalInterconnectGroup
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-Force]
    [<CommonParameters>]
```

## Description

Removes a Logical Interconnect Group from appliance management

## Examples

###  Example 1 

```powershell
$lig = Get-OVLogicalInterconnectGroup -Name "My-LIG"
Remove-OVLogicalInterconnectGroup $lig -confirm:$false
```

Remove the logical interconnect group specifed by $lig. Disable confirmation prompt.

###  Example 2 

```powershell
Get-OVLogicalInterconnectGroup | Remove-OVLogicalInterconnectGroup
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

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Invoke switch force-delete the resource when OneView can no longer communicate with the resource and removal is needed. Force remove succeeds even if there are network connectivity issues or resource errors.  `-Force` is not a PowerShell option, rather an HPE OneView API feature.  This does not override the `-Confirm` PowerShell option.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
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

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Removal Task

## Related Links

* [Get-OVLogicalInterconnectGroup](get-ovlogicalinterconnectgroup.md)
* [New-OVLogicalInterconnectGroup](new-ovlogicalinterconnectgroup.md)
