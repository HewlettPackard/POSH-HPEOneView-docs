---
description: Remove a Logical Enclosure.
---

# Remove-OVLogicalEnclosure

## Syntax

```powershell
Remove-OVLogicalEnclosure
    [-InputObject] <Object>
    [-ApplianceConnection] <Array>
    [-Force]
    [<CommonParameters>]
```

## Description

This Cmdlet willRemove a Logical Enclosure.  Removing a Logical Enclosure is only supported with Synergy.  If a C7000 Enclosure needs to be removed, use the Remove-OVEnclosure Cmdlet.

## Examples

###  Example 1 

```powershell
Get-OVLogicalEnclosure LogicalEnclosure1 | Remove-OVLogicalEnclosure
```

Remove "LogicalEnclosure1" Logical Enclosure resource.

## Parameters

### -InputObject &lt;Object&gt;

Provide the Logical Enclosure name, URI or Object, or `[System.Collections.ArrayList` ] of names, URIs or Objects to remove.

| Aliases | uri, name, le, Resource |
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

Forcefully remove the Logical Enclosure resource.

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

_**HPEOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]**_

Single Logical Enclosure resource

_**System.Collections.ArrayList**_

Multiple Logical Enclosure resources

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object

## Related Links

* [Get-OVLogicalEnclosure](get-ovlogicalenclosure.md)
* [New-OVLogicalEnclosure](new-ovlogicalenclosure.md)
* [Set-OVLogicalEnclosure](set-ovlogicalenclosure.md)
* [Update-OVLogicalEnclosure](update-ovlogicalenclosure.md)
* [Update-OVLogicalEnclosureFirmware](../networking/update-ovlogicalenclosurefirmware.md)
