---
description: Get the configured remote syslog settings.
---

# Get-HPOVRemoteSyslog

## Syntax

```text
Get-HPOVRemoteSyslog
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView. This Cmdlet handles disabling the remote syslog configuration. Only a single destination can be set. When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.

{% hint style="info" %}
Minimum required privileges: Read-
{% endhint %}
only
## Examples

###  Example 1 

```text
Get-HPOVRemoteSyslog
Appliance             Destination Port Enabled

---------             ----------- ---- -------
appliance1.domain.com                  False
appliance2.domain.com 10.150.20.1 514  True
```

Get the current configuration from all connected appliances.

###  Example 2 

```text
Get-HPOVRemoteSyslog -ApplianceConnection appliance1.domain.com

Appliance             Destination Port Enabled
---------             ----------- ---- -------
appliance1.domain.com                  False
```

Get the current configuration from specified connected appliance.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

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

_**HPOneView.RemoteSyslog [System.Management.Automation.PSCustomObject]**_

If successful, returns Appliance Syslog settings

_**System.Collections.ArrayList <HPOneView.RemoteSyslog>**_

Collection of Appliance Syslog settings

## Related Links

* [Disable-HPOVRemoteSyslog](disable-hpovremotesyslog.md)
* [Enable-HPOVRemoteSyslog](enable-hpovremotesyslog.md)
* [Set-HPOVRemoteSyslog](set-hpovremotesyslog.md)
