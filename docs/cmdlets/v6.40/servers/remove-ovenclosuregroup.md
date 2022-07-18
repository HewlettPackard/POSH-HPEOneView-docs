---
description: Remove an enclosure group.
---

# Remove-OVEnclosureGroup

## Syntax

```powershell
Remove-OVEnclosureGroup
    [-InputObject] <Object>
    [-ApplianceConnection] <Array>
    [-Force]
    [<CommonParameters>]
```

## Description

Deletes an enclosure group from the appliance.
An enclosure group cannot be deleted if any enclosures are currently part of that enclosure group.

## Examples

###  Example 1 

```powershell
$resp = Remove-OVEnclosureGroup -enclosureGroup "My-EG" -force
```

Force-remove the enclosure group specifed by name.

###  Example 2 

```powershell
$eg = Get-OVEnclosureGroup -name "My-EG"
Remove-OVEnclosureGroup $enclosureGroup -confirm:$false
```

Remove the enclosure group specifed by $eg. Disable confirmation prompt.

###  Example 3 

```powershell
Get-OVEnclosureGroup | Remove-OVEnclosureGroup
```

Search for all enclosure groups and remove them from appliance.

## Parameters

### -InputObject &lt;Object&gt;

The Enclosure Group object(s), name(s) or uri(s) to be removed from management.

| Aliases | uri, name, EnclosureGroup, Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Specify to forceably remove the resource from the appliance.

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

_**System.Collections.ArrayList**_

Collection of Enclosure Resource Objects

_**HPEOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

Single Enclosure Grou Resource Object

## Return Values

_**System.Management.Automation.PSCustomObject**_

A PSCustomObject is returned indicating successful removal of the resource

## Related Links

* [Get-OVEnclosureGroup](get-ovenclosuregroup.md)
* [New-OVEnclosureGroup](new-ovenclosuregroup.md)
* [Set-OVEnclosureGroup](set-ovenclosuregroup.md)
