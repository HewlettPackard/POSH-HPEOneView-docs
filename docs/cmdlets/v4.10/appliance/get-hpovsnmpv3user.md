---
description: Get defined SNMPv3 user from appliance.
---

# Get-HPOVSnmpV3User

## Syntax

```text
Get-HPOVSnmpV3User
    [-Name <String>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView can be used as a proxy to forward device traps from servers and enclosures \(OA\) to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations.

Appliance SNMP settings allow you to add destinations to which the traps need to be forwarded. You can configure each destination as an SNMPv1 or SNMPv3 destination, depending on whether the traps are sent in SNMPv1 or SNMPv3 formats.

Additionally, if you have Gen6 or Gen7 servers being monitored by HPE OneView in your environment, you can configure the read community string that HPE OneView uses for monitoring these servers with SNMPv1.

{% hint style="info" %}
To configure SNMP trap forwarding for network devices \(interconnects and switches\), use the New-HPOVSnmpV3User and include it within the New-HPOVSnmpConfiguration Cmdlet.
{% endhint %}

Privileges: Infrastructure administrator

## Examples

### Example 1

```text
Get-HPOVSnmpV3User
```

Get the defined SNMPv3 users on the appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Aliases \[-Appliance\]

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### -Name &lt;String&gt;

Filter for the SNMPv3 user. Supports wildcard characters.

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

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.SnmpV3User**_

Appliance SNMPv3 user object.

## Related Links

* [New-HPOVSnmpV3User](../library/new-hpovsnmpv3user.md)
* [Remove-HPOVSnmpV3User](../library/remove-hpovsnmpv3user.md)

