---
description: Configure remote syslog.
---

# Set-OVRemoteSyslog

## Syntax

```powershell
Set-OVRemoteSyslog
    [-Destination] <IPAddress>
    [-Port] <Int32>
    [-SendTestMessage]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView.  This Cmdlet handles setting or updating the remote syslog configuration.  Only a single destination can be set.  When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.

## Examples

###  Example 1 

```powershell
Set-OVRemoteSyslog -Destination 10.150.20.1 -SendTestMessage -Async | Wait-OVTaskComplete
```

Set the remote syslog to the provided destination, using the default destination TCP port, and send a test message for all connected appliances.

## Parameters

### -Destination &lt;IPAddress&gt;

Destination IPv4 Address of the Remote SysLog.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Port &lt;Int32&gt;

The destination TCP port.

Default value: 514

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 514 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SendTestMessage &lt;SwitchParameter&gt;

Use to generate a syslog test message after the managed endpoint has finished configuring.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
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

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

If successful, returns Appliance Async Task object to monitor

_**System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>**_

Collection of Appliance Async Task objects to monitor

## Related Links

* [Disable-OVRemoteSyslog](disable-ovremotesyslog.md)
* [Enable-OVRemoteSyslog](enable-ovremotesyslog.md)
* [Get-OVRemoteSyslog](get-ovremotesyslog.md)
