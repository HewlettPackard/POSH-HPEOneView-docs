---
description: Generate test audit log forward message.
---

# Test-HPOVApplianceAuditLogForwarding

## Syntax

```text
Test-HPOVApplianceAuditLogForwarding
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will generate a syslog message to test connectivity to the appliance configured remote Syslog server.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator
{% endhint %}

## Examples

###  Example 1 

```text
Test-HPOVApplianceAuditLogForwarding
```

Generate audit log test message.

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

## Related Links

* [Get-HPOVApplianceAuditLogForwarding](get-hpovapplianceauditlogforwarding.md)
* [Set-HPOVApplianceAuditLogForwarding](set-hpovapplianceauditlogforwarding.md)
