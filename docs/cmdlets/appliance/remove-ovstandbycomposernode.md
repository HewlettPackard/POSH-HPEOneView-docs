---
description: Remove Standby Composer node.
---

# Remove-OVStandbyComposerNode

## Syntax

```powershell
Remove-OVStandbyComposerNode
    [-ApplianceConnection] <Object>
    [-Async]
    [<CommonParameters>]
```

## Description

This Cmdlet will help remove the Standby Composer node from the Synergy management ring.  In order to remove the Active node from the Synergy management ring, you first must use the Enable-OVComposerHANode Cmdlet to transition the Standby node to the Active role.

## Examples

###  Example 1 

```powershell
Remove-OVStandbyComposerNode
```

Remove the Standby Composer node in the default Appliance Connection.

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

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default -eq $true) |
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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    The Async task resource of the remove standby node request
    

=== "System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>"
    Multiple Async task resources
    

## Related Links

