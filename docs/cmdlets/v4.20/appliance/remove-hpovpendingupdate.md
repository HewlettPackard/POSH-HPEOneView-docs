﻿---
description: Remove pending or staged appliance update.
---

# Remove-HPOVPendingUpdate

## Syntax

```text
Remove-HPOVPendingUpdate
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Remove a pending or staged appliance update that prevents the appliance from operating normally or the administrator would like to update the appliance with a different update file.

## Examples

###  Example 1 

```text
Remove-HPOVPendingUpdate

```

Remove any found pending update any connectioned appliances.

###  Example 2 

```text
Remove-HPOVPendingUpdate

```

Remove any found pending update specified appliance connection.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**None.**_


 None

## Related Links

* [Get-HPOVPendingUpdate](get-hpovpendingupdate.md)
