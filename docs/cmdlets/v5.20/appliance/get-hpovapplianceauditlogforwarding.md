---
description: Get the appliance remote Syslog audit log forwarding configuration.
---

# Get-HPOVApplianceAuditLogForwarding

## Syntax

```text
Get-HPOVApplianceAuditLogForwarding
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Audit log forwarding enables the Infrastructure administrator to forward audit logs to remote Security Information and Event Management (SIEM) systems. Such systems enable centralized audit compliance, monitoring, log analysis, and controlled retention policies.

The forwarding protocol used is the standard UDP-based syslog protocol described in RFC5424 and RFC5426. The syslog protocol is supported by all common syslog servers such as rsyslog, syslog-ng and SIEM products.

{% hint style="info" %}
 Ensure that any firewalls between HPE OneView and the remote syslog server allow UDP traffic. The default UDP port used is 514.
{% endhint %}


As audit log entries are forwarded over UDP, the entries are not encrypted and delivery is not guaranteed. Even when you have HPE OneView and all managed devices on a dedicated, isolated management LAN, forwarding audit log entries to external systems can pose a security risk. In an environment where encryption is required, use the REST API /rest/audit-logs to schedule a job to download the appliance audit logs. 

This Cmdlet will return the current status, remote Syslog destination and port currently configured on the appliance.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator.
{% endhint %}

## Examples

###  Example 1 

```text
Get-HPOVApplianceAuditLogForwarding
```

Get the appliance audit log configuration.

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.AuditLogForwardingConfig**_

The appliance audit log forwarding configuration.

## Related Links

* [Set-HPOVApplianceAuditLogForwarding](set-hpovapplianceauditlogforwarding.md)
* [Test-HPOVApplianceAuditLogForwarding](test-hpovapplianceauditlogforwarding.md)
