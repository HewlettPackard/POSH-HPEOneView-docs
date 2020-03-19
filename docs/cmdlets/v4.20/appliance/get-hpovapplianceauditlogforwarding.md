﻿---
description: 
---

# Get-HPOVApplianceAuditLogForwarding

## Syntax

```text
Get-HPOVApplianceAuditLogForwarding
    [<CommonParameters>]
```

## Description

HPE OneView can forward the internal audit log entries to a remote syslog server, in standard Syslog format.  This cmdlet will return the current status, remote Syslog destination and port currently configured on the appliance.

Required permissions: Infrastructure administrator
## Examples

###  Example 1 

```text
Get-HPOVApplianceAuditLogForwarding

```

Get the appliance audit log configuration.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
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