---
description: Remove Standby Composer node.
---

# Remove-HPOVStandbyComposerNode

## Syntax

```text
Remove-HPOVStandbyComposerNode
    [<CommonParameters>]
```

## Description

This Cmdlet will help remove the Standby Composer node from the Synergy management ring. In order to remove the Active node from the Synergy management ring, you first must use the Enable-HPOVComposerHANode Cmdlet to transition the Standby node to the Active role.

## Examples

### Example 1

```text
Remove-HPOVStandbyComposerNode
```

Remove the Standby Composer node in the default Appliance Connection.

## Parameters

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases \[-Appliance\]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default -eq $true\)\` |
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

The Async task resource of the remove standby node request

_**System.Collections.ArrayList**_ 

Multiple Async task resources

## Related Links

