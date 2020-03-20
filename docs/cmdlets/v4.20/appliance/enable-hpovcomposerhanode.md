---
description: Promote Standby Composer node to Active.
---

# Enable-HPOVComposerHANode

## Syntax

```text
Enable-HPOVComposerHANode
    [-ApplianceConnection] <Object>
    [-Async]
    [<CommonParameters>]
```

## Description

This Cmdlet will help transition the Standby Composer node to the Active Role. Use this Cmdlet in order to perform maintenance on the Active node, or to remove the Active node from the Synergy management ring.

## Examples

### Example 1

```text
Enable-HPOVComposerHANode
```

Transition the Standby Composer node in the default Appliance Connection.

### Example 2

```text
Enable-HPOVComposerHANode
```

Transition the Standby Composer node in the specific Appliance Connection.

## Parameters

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value.

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

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

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

The Async task resource of the role transition request

_**System.Collections.ArrayList**_ 

Multiple Async task resources.

## Related Links

