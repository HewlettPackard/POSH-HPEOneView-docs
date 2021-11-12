---
description: Remove pending or staged appliance update.
---

# Remove-OVPendingUpdate

## Syntax

```powershell
Remove-OVPendingUpdate
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Remove a pending or staged appliance update that prevents the appliance from operating normally or the administrator would like to update the appliance with a different update file.

## Examples

###  Example 1 

```powershell
Remove-OVPendingUpdate
```

Remove any found pending update any connectioned appliances.

###  Example 2 

```powershell
Remove-OVPendingUpdate
```

Remove any found pending update specified appliance connection.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**None.**_

 None

## Related Links

* [Get-OVPendingUpdate](get-ovpendingupdate.md)
