---
description: Enable remote syslog.
---

# Enable-OVRemoteSyslog

## Syntax

```powershell
Enable-OVRemoteSyslog
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView.  This Cmdlet handles enabling the remote syslog configuration.  Only a single destination can be set.  When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.

???+ info
    Minimum required privileges: Infrastructure administrator, Server administrator

## Examples

###  Example 1 

```powershell
Enable-OVRemoteSyslog
```

Enable remote syslog configuration on all connected appliances.

###  Example 2 

```powershell
Enable-OVRemoteSyslog -ApplianceConnection appliance1.domain.com -Async | Wait-OVTaskComplete
```

Enable remote syslog configuration on the specific connected appliance.

## Parameters

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | false |
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

None. You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    If successful, returns Appliance Async Task object to monitor.
    

=== "System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>"
    Collection of Appliance Async Task objects to monitor.
    

## Related Links

* [Disable-OVRemoteSyslog](disable-ovremotesyslog.md)
* [Get-OVRemoteSyslog](get-ovremotesyslog.md)
* [Set-OVRemoteSyslog](set-ovremotesyslog.md)
