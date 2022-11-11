---
description: Refresh a new Logical Switch resource.
---

# Update-OVLogicalSwitch

## Syntax

```powershell
Update-OVLogicalSwitch
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

## Description

A logical switch is based on a logical switch group configuration. If the logical switch transitions to an "Inconsistent with group state", due to changes in either the logical switch or the logical switch group, this Cmdlet will update (or refresh) the logical switch configuration based on the logical switch group and return to a consistent state. Minimum required privileges: Infrastructure administrator or Network administrator 

## Examples

###  Example 1 

```powershell
Get-OVLogicalSwitch | Update-OVLogicalSwitch
```

Update all logical switch resources found on the default appliance connection.

###  Example 2 

```powershell
Get-OVLogicalSwitch -Name "My Logical Switch 1" | Update-OVLogicalSwitch -confirm:$false
```

Update the "My Logical Switch 1" resource.

## Parameters

### -InputObject &lt;Object&gt;

The Logical Switch resource Name or Object to update.

| Aliases | LS, LogicalSwitch |
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

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

_**HPEOneView.Networking.LogicalSwitch [System.Management.Automation.PSCustomObject]**_

Logical Switch resource.

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

The async task resource object to monitor (if `-Async` was used) or results.

_**System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>**_

Collection of Update Logical Switch async task resources.

## Related Links

* [Get-OVLogicalSwitch](get-ovlogicalswitch.md)
* [Get-OVLogicalSwitchGroup](get-ovlogicalswitchgroup.md)
* [New-OVLogicalSwitch](new-ovlogicalswitch.md)
* [New-OVLogicalSwitchGroup](new-ovlogicalswitchgroup.md)
* [Remove-OVLogicalSwitch](remove-ovlogicalswitch.md)
* [Remove-OVLogicalSwitchGroup](remove-ovlogicalswitchgroup.md)
