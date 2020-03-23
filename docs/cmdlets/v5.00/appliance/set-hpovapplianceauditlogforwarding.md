---
description: Modify remote Syslog audit log forwarding.
---

# Set-HPOVApplianceAuditLogForwarding

## Syntax

```text
Set-HPOVApplianceAuditLogForwarding
    [-Enable]
    [-ComputerName] <string[]>
    [-Port <int>]
    [-RemoveComputerName <string[]>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Set-HPOVApplianceAuditLogForwarding
    [-Disable]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

HPE OneView can forward the internal audit log entries to a remote syslog server, in standard Syslog format. This Cmdlet will chnage the current status, remote Syslog destination and port to be configured on the appliance.

Required permissions: Infrastructure administrator

## Examples

### Example 1

```text
Set-HPOVApplianceAuditLogForwarding -Enable -ComputerName MyTargetHost1.domain.com
```

Enable appliance remote Syslog audit log forwarding to the specified host.

### Example 2

```text
Set-HPOVApplianceAuditLogForwarding -Enable -ComputerName MyTargetHost1.domain.com, MyTargetHost2.domain.com -Port 5514
```

Enable appliance remote Syslog audit log forwarding to the specified hosts and custom UDP target port.

### Example 3

```text
Set-HPOVApplianceAuditLogForwarding -RemoveComputerName MyTargetHost2.domain.com
```

Remove the specified host from the existing remote Syslog audit log forwarding configuration.

### Example 4

```text
Set-HPOVApplianceAuditLogForwarding -Disable
```

Disable remote Syslog audit log forwarding configuration.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### -ComputerName &lt;string\[\]&gt;

The target remote Syslog server IP Address or FQDN.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Port &lt;int&gt;

The target remote Syslog server port if not using the default 514/UDP port.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RemoveComputerName &lt;string\[\]&gt;

Specify one or more remote Syslog server IP Address or FQDN to remove from the configuration.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Disable &lt;SwitchParameter&gt;

Using this parameter will disable remote Syslog audit log forwarding on the specified appliance.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Enable &lt;SwitchParameter&gt;

Using this parameter will enable remote Syslog audit log forwarding on the specified appliance.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.AuditLogForwardingConfig**_

The appliance audit log forwarding configuration.

## Related Links

* [Get-HPOVApplianceAuditLogForwarding](get-hpovapplianceauditlogforwarding.md)
* [Test-HPOVApplianceAuditLogForwarding](test-hpovapplianceauditlogforwarding.md)

