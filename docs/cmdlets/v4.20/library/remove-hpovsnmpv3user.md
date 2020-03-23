---
description: Remove SNMPv3 user from appliance.
---

# Remove-HPOVSnmpV3User

## Syntax

```text
Remove-HPOVSnmpV3User
    [-InputObject] <HPOneView.Appliance.SnmpV3User>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView can be used as a proxy to forward device traps from servers and enclosures (OA) to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations.

Appliance SNMP settings allow you to add destinations to which the traps need to be forwarded. You can configure each destination as an SNMPv1 or SNMPv3 destination, depending on whether the traps are sent in SNMPv1 or SNMPv3 formats. 

Additionally, if you have Gen6 or Gen7 servers being monitored by HPE OneView in your environment, you can configure the read community string that HPE OneView uses for monitoring these servers with SNMPv1. 

{% hint style="info" %}
To configure SNMP trap forwarding for network devices (interconnects and switches), use the New-HPOVSnmpV3User and include it within the New-HPOVSnmpConfiguration Cmdlet.
{% endhint %}


Privileges: Infrastructure administrator

## Examples

###  Example 1 

```text
$Snmpv3User = Get-HPOVSnmpV3User -Name Tr@pUser -ErrorAction Stop | Remove-HPOVSnmpV3User

```

Remove the specific SNMPv3 user account on the appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;

Override confirmation prompt.

| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;HPOneView.Appliance.SnmpV3User&gt;

SNMPv3 user account from `Get-HPOVSnmpV3User`.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.SnmpV3User**_

Appliance SNMPv3 user account from [`Get-HPOVSnmpV3User`](../appliance/get-hpovsnmpv3user.md).

## Return Values

_**System.Management.Automation.PSCustomObject**_

Success message of deleted resource.

## Related Links

* [Get-HPOVSnmpV3User](../appliance/get-hpovsnmpv3user.md)
* [New-HPOVSnmpV3User](new-hpovsnmpv3user.md)
