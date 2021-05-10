---
description: Disable remote syslog.
---

# Disable-OVRemoteSyslog

## Syntax

```text
Disable-OVRemoteSyslog
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView.  This Cmdlet handles disabling the remote syslog configuration.  Only a single destination can be set.  When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, Server administrator
{% endhint %}

## Examples

###  Example 1 

```text
Disable-OVRemoteSyslog
```

Disable remote syslog configuration on all connected appliances.

###  Example 2 

```text
Disable-OVRemoteSyslog -ApplianceConnection appliance1.domain.com -Async | Wait-OVTaskComplete
```

Disable remote syslog configuration on the specific connected appliance.

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

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

If successful, returns Appliance Async Task object to monitor.

_**System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>**_

Collection of Appliance Async Task objects to monitor.

## Related Links

* [Enable-OVRemoteSyslog](enable-ovremotesyslog.md)
* [Get-OVRemoteSyslog](get-ovremotesyslog.md)
* [Set-OVRemoteSyslog](set-ovremotesyslog.md)
