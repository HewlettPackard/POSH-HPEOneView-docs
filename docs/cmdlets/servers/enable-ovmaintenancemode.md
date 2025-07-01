---
description: Enable compute resource into maintenance mode.
---

# Enable-OVMaintenanceMode

## Syntax

```powershell
Enable-OVMaintenanceMode
    [-InputObject] <Object>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Performing routine maintenance operations on servers causes many events to be generated on the associated server hardware resource and server profile. If notification features are enabled, the events cause many email notifications. While the maintenance activity is in progress, you might not want to receive all the notifications.

Enabling server maintenance mode prevents the appliance from sending any email notifications that are related to the server hardware and its associated profile. While the notifications are blocked, maintenance mode does not affect normal server or profile operations, and all events generated on the server are seen on the HPE OneView appliance UI.

Disabling maintenance mode causes email notifications to return to normal. No attempt is made to send any events that occurred during the maintenance mode. However, if the health of the server is not OK when maintenance mode is disabled, a single event will be sent, alerting that the server is in a non-healthy state.

???+ info
    Minimum required privileges: Infrastructure administrator, Network administrator

## Examples

###  Example 1 

```powershell
$Server = Get-OVServer -Name "Encl1, bay 1"
Enable-OVMaintenanceMode -InputObject $Server
```

nEnable the maintenance mode state of the specific server resource.

###  Example 2 

```powershell
$ServerProfile = Get-OVServerProfile -Name "My Profile 1"
Enable-OVMaintenanceMode -InputObject $ServerProfile
```

nEnable the maintenance mode state of the specific server resource that is associated with the server profile.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Either a server hardware or server profile resource.

| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.ServerHardware [System.Management.Automation.PSCustomObject]"
    A server hardware resource from the appliance.
    

=== "HPEOneView.ServerProfile [System.Management.Automation.PSCustomObject]"
    A server profile resource from the appliance.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource object to monitor.
    

## Related Links

* [Disable-OVMaintenanceMode](disable-ovmaintenancemode.md)
* [Get-OVServer](get-ovserver.md)
* [Get-OVServerProfile](get-ovserverprofile.md)
