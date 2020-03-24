---
description: Remove a new Logical Switch resource.
---

# Remove-HPOVLogicalSwitch

## Syntax

```text
Remove-HPOVLogicalSwitch
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [-Force]
    [-Async]
    [<CommonParameters>]
```

## Description

This Cmdlet will remove the configured Logical Switch from the requested appliance(s).  When you delete a logical switch, HPE OneView no longer manages the physical switches associated with it.
 Minimum required privileges: Infrastructure administrator or Network administrator 

## Examples

###  Example 1 

```text
Get-HPOVLogicalSwitch | Remove-HPOVLogicalSwitch
```

Remove all logical switch resources found on the default appliance connection.

###  Example 2 

```text
Get-HPOVLogicalSwitch -Name "My Logical Switch 1" | Remove-HPOVLogicalSwitch -confirm:$false
```

Remove the "My Logical Switch 1" resource.

## Parameters

### -InputObject &lt;Object&gt;

The Logical Switch resource Name or Object to update.

| Aliases | ls, LogicalSwitch |
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

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
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

_**HPOneView.Networking.LogicalSwitch [System.Management.Automation.PSCustomObject]**_

Logical Switch resource.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

The async task resource object to monitor (if `-Async` was used) or results.

_**System.Collections.ArrayList <HPOneView.Appliance.TaskResource>**_

Collection of remove Logical Switch async task resources.

## Related Links

* [Get-HPOVLogicalSwitch](get-hpovlogicalswitch.md)
* [Get-HPOVLogicalSwitchGroup](get-hpovlogicalswitchgroup.md)
* [New-HPOVLogicalSwitch](new-hpovlogicalswitch.md)
* [New-HPOVLogicalSwitchGroup](new-hpovlogicalswitchgroup.md)
* [Remove-HPOVLogicalSwitchGroup](remove-hpovlogicalswitchgroup.md)
* [Update-HPOVLogicalSwitch](update-hpovlogicalswitch.md)
