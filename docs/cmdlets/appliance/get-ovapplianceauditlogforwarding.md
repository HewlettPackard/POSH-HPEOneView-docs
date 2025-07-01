---
description: Get the appliance remote Syslog audit log forwarding configuration.
---

# Get-OVApplianceAuditLogForwarding

## Syntax

```powershell
Get-OVApplianceAuditLogForwarding
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Audit log forwarding enables the Infrastructure administrator to forward audit logs to remote Security Information and Event Management (SIEM) systems. Such systems enable centralized audit compliance, monitoring, log analysis, and controlled retention policies.

The forwarding protocol used is the standard UDP-based syslog protocol described in RFC5424 and RFC5426. The syslog protocol is supported by all common syslog servers such as rsyslog, syslog-ng and SIEM products.

???+ info
     Ensure that any firewalls between HPE OneView and the remote syslog server allow UDP traffic. The default UDP port used is 514.


As audit log entries are forwarded over UDP, the entries are not encrypted and delivery is not guaranteed. Even when you have HPE OneView and all managed devices on a dedicated, isolated management LAN, forwarding audit log entries to external systems can pose a security risk. In an environment where encryption is required, use the REST API /rest/audit-logs to schedule a job to download the appliance audit logs. 

This Cmdlet will return the current status, remote Syslog destination and port currently configured on the appliance.

???+ info
    Minimum required privileges: Infrastructure administrator.

## Examples

###  Example 1 

```powershell
Get-OVApplianceAuditLogForwarding
```

Get the appliance audit log configuration.

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.AuditLogForwardingConfig"
    The appliance audit log forwarding configuration.
    

## Related Links

* [Set-OVApplianceAuditLogForwarding](set-ovapplianceauditlogforwarding.md)
* [Test-OVApplianceAuditLogForwarding](test-ovapplianceauditlogforwarding.md)
