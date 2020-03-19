---
description: Promote Standby Composer node to Active.
---

# Enable-HPOVComposerHANode

## Syntax

```text
Enable-HPOVComposerHANode
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

## Description

This Cmdlet will help transition the Standby Composer node to the Active Role.  Use this Cmdlet in order to perform maintenance on the Active node, or to remove the Active node from the Synergy management ring.  The standby appliance must be accessible to and fully synchronized with the active appliance.

{% hint style="info" %}
The appliance is unavailable during the role exchange and unable to respond to requests while services are reassigned.
{% endhint %}


HPE OneView services will be stopped on the active appliance and restarted on the standby appliance. Operations in progress might fail and need to be restarted.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Software administrator.
{% endhint %}

## Examples

###  Example 1 

```text
Enable-HPOVComposerHANode
```

Transition the Standby Composer node in the default Appliance Connection.

## Parameters

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
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

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

The Async task resource of the role transition request

## Related Links

