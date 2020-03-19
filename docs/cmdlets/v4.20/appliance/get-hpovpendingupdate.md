---
description: 
---

# Get-HPOVPendingUpdate

## Syntax

```text
Get-HPOVPendingUpdate
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Use this cmdlet to validate a pending update has been staged on an appliance.  If one is present, the update details will be returned to the caller.
## Examples

###  Example 1 

```text
Get-HPOVPendingUpdate

```

Retrieve pending update from all connected appliance sessions.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_



## Return Values

_**HPOneView.Appliance.Update.Pending [System.Management.Automation.PSCustomObject]**_

Pending appliance update

## Related Links

* [Remove-HPOVPendingUpdate](remove-hpovpendingupdate.md)
