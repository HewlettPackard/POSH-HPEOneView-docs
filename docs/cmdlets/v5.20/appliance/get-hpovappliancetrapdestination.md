---
description: Get configured appliance SNMP trap destinations.
---

# Get-HPOVApplianceTrapDestination

## Syntax

```text
Get-HPOVApplianceTrapDestination
    [-Destination <String>]
    [-Type <String[]>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView can be used as a proxy to forward device traps from servers, enclosures, and Synergy compute modules to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations. Additionally, HPE OneView will also send alerts received from a Synergy Frame Link Module (FLM) as SNMPv1 or SNMPv3 traps to the configured destinations.

Use this Cmdlet to retrieve configured SNMPv1 and/or SNMPv3 appliance trap destinations, configured by an Infrastructure Administrator.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

## Examples

###  Example 1 

```text
Get-HPOVApplianceTrapDestination
```

Get trap destinations from the appliance.

###  Example 2 

```text
Get-HPOVApplianceTrapDestination -Destination 172.17.8.8
```

Get the specific appliance trap destination.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Destination &lt;String&gt;

Filter trap destinations by the destination value.  Supports wildcard.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Type &lt;String[]&gt;

Filter based on SNMP version.  Supported values:

    * SNMPv1
    *SNMPv3

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.SnmpV1TrapDestination**_

Appliance SNMPv1 trap destination, including trap community and target.

_**HPOneView.Appliance.SnmpV3TrapDestination**_

Appliance SNMPv3 trap destination, including type, SNMPv3 user and target.

## Related Links

* [New-HPOVApplianceTrapDestination](new-hpovappliancetrapdestination.md)
* [Remove-HPOVApplianceTrapDestination](remove-hpovappliancetrapdestination.md)
