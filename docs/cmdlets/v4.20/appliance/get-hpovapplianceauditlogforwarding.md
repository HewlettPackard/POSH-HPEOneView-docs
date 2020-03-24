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

HPE OneView can forward the internal audit log entries to a remote syslog server, in standard Syslog format.  This cmdlet will return the current status, remote Syslog destination and port currently configured on the appliance.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator
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

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.AuditLogForwardingConfig**_

The appliance audit log forwarding configuration.

## Related Links

* [Set-HPOVApplianceAuditLogForwarding](set-hpovapplianceauditlogforwarding.md)
* [Test-HPOVApplianceAuditLogForwarding](test-hpovapplianceauditlogforwarding.md)
