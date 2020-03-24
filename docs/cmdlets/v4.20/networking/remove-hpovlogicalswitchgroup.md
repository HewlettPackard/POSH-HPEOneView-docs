---
description: Remove a new Logical Switch Group resource.
---

# Remove-HPOVLogicalSwitchGroup

## Syntax

```text
Remove-HPOVLogicalSwitchGroup
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [-Force]
    [<CommonParameters>]
```

## Description

This Cmdlet will remove the configured Logical Switch Group from the requested appliance(s).  You cannot delete a logical switch group while it is being used by one or more logical switches. To delete the logical switch group, first delete the logical switches using the logical switch group.
 Minimum required privileges: Infrastructure administrator or Network administrator 

## Examples

###  Example 1 

```text
Get-HPOVLogicalSwitchGroup | Remove-HPOVLogicalSwitchGroup
```

Remove all logical switch group resources found on the default appliance connection.

###  Example 2 

```text
Get-HPOVLogicalSwitchGroup -Name "My Logical Switch Group Policy 1" | Remove-HPOVLogicalSwitchGroup -confirm:$false
```

Remove the "My Logical SwitchGroup Policy 1" resource.

## Parameters

### -InputObject &lt;Object&gt;

The Logical Switch resource Name or Object to update.

| Aliases | ls, LogicalSwitchGroup |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;

Bypass the confirmation prompt, and process all of the objects.

| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Force remove resource, even if there are communication problems.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Networking.LogicalSwitchGroup [System.Management.Automation.PSCustomObject]**_

Logical Switch Group resource.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

The async task resource object results.

_**System.Collections.ArrayList <HPOneView.Appliance.TaskResource>**_

Collection of remove Logical Switch async task resources.

## Related Links

* [Get-HPOVLogicalSwitchGroup](get-hpovlogicalswitchgroup.md)
* [New-HPOVLogicalSwitchGroup](new-hpovlogicalswitchgroup.md)
