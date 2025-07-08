---
description: Get the configured remote syslog settings.
---

# Get-OVRemoteSyslog

## Syntax

```powershell
Get-OVRemoteSyslog
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView. This Cmdlet handles disabling the remote syslog configuration. Only a single destination can be set. When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVRemoteSyslog
Appliance             Destination Port Enabled

---------             ----------- ---- -------
appliance1.domain.com                  False
appliance2.domain.com 10.150.20.1 514  True
```

Get the current configuration from all connected appliances.

###  Example 2 

```powershell
Get-OVRemoteSyslog -ApplianceConnection appliance1.domain.com

Appliance             Destination Port Enabled
---------             ----------- ---- -------
appliance1.domain.com                  False
```

Get the current configuration from specified connected appliance.

## Parameters

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

=== "HPEOneView.RemoteSyslog [System.Management.Automation.PSCustomObject]"
    If successful, returns Appliance Syslog settings
    

=== "System.Collections.ArrayList <HPEOneView.RemoteSyslog>"
    Collection of Appliance Syslog settings
    

## Related Links

* [Disable-OVRemoteSyslog](disable-ovremotesyslog.md)
* [Enable-OVRemoteSyslog](enable-ovremotesyslog.md)
* [Set-OVRemoteSyslog](set-ovremotesyslog.md)
