---
description: Remove a Logical Enclosure.
---

# Remove-HPOVLogicalEnclosure

## Syntax

```text
Remove-HPOVLogicalEnclosure
    [-InputObject] <>
    [-ApplianceConnection] <>
    [-Force <>]
    [<CommonParameters>]
```

## Description

This Cmdlet willRemove a Logical Enclosure.  Removing a Logical Enclosure is only supported with Synergy.  If a C7000 Enclosure needs to be removed, use the Remove-HPOVEnclosure Cmdlet.

## Examples

###  Example 1 

```text
Get-HPOVLogicalEnclosure LogicalEnclosure1 | Remove-HPOVLogicalEnclosure
```

Remove "LogicalEnclosure1" Logical Enclosure resource.

## Parameters

### -InputObject &lt;&gt;

Provide the Logical Enclosure name, URI or Object, or `[System.Collections.ArrayList` ] of names, URIs or Objects to remove.

| Aliases | uri, name, le, Resource |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Force &lt;&gt;

Forcefully remove the Logical Enclosure resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;&gt;



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

_**HPOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]**_

Single Logical Enclosure resource

_**System.Collections.ArrayList**_

Multiple Logical Enclosure resources

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object

## Related Links

* [Get-HPOVLogicalEnclosure](get-hpovlogicalenclosure.md)
* [New-HPOVLogicalEnclosure](new-hpovlogicalenclosure.md)
* [Set-HPOVLogicalEnclosure](set-hpovlogicalenclosure.md)
* [Update-HPOVLogicalEnclosure](update-hpovlogicalenclosure.md)
* [Update-HPOVLogicalEnclosureFirmware](../networking/update-hpovlogicalenclosurefirmware.md)
