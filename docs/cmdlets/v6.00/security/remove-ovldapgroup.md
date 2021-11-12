---
description: Remove Directory Group.
---

# Remove-OVLdapGroup

## Syntax

```powershell
Remove-OVLdapGroup
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Remove Directory Group(s) from the appliance. Can provide Group Name or Object for removal.

## Examples

###  Example 1 

```powershell
Remove-OVLdapGroup -Group "My Directory Group1"
```

Remove "My Directroy Group1" from the appliance.

###  Example 2 

```powershell
Get-OVLdapGroup | Remove-OVLdapGroup
```

Get all groups and remove them from all connected appliances.

## Parameters

### -InputObject &lt;Object&gt;

Configured Directory Group Name.

| Aliases | g, Group, Name |
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

_**System.Management.Automation.PSCustomObject**_

Single Group resource object

_**System.Collections.ArrayList**_

Collection of Group resource objects

## Return Values

_**System.Management.Automation.PSCustomObject**_

A PSCustomObject is returned indicating successful removal of the resource

## Related Links

* [Get-OVLdapGroup](get-ovldapgroup.md)
* [New-OVLdapGroup](new-ovldapgroup.md)
* [Set-OVLdapGroupRole](set-ovldapgrouprole.md)
* [Show-OVLdapGroups](show-ovldapgroups.md)
