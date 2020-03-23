﻿---
description: Remove Directory Group.
---

# Remove-HPOVLdapGroup

## Syntax

```text
Remove-HPOVLdapGroup
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Remove Directory Group(s) from the appliance. Can provide Group Name or Object for removal.

## Examples

###  Example 1 

```text
Remove-HPOVLdapGroup -Group "My Directory Group1"

```

Remove "My Directroy Group1" from the appliance.

###  Example 2 

```text
Get-HPOVLdapGroup | Remove-HPOVLdapGroup

```

Get all groups and remove them from all connected appliances.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-g, `-Group`, `-Name`]

Configured Directory Group Name.

| Aliases | g, Group, Name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
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

* [Get-HPOVLdapGroup](get-hpovldapgroup.md)
* [New-HPOVLdapGroup](new-hpovldapgroup.md)
* [Set-HPOVLdapGroupRole](set-hpovldapgrouprole.md)
* [Show-HPOVLdapGroups](show-hpovldapgroups.md)