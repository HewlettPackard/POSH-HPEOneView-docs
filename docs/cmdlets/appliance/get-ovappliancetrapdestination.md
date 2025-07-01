---
description: Get configured appliance SNMP trap destinations.
---

# Get-OVApplianceTrapDestination

## Syntax

```powershell
Get-OVApplianceTrapDestination
    [-Destination <String>]
    [-Type <String[]>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView can be used as a proxy to forward device traps from servers, enclosures, and Synergy compute modules to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations. Additionally, HPE OneView will also send alerts received from a Synergy Frame Link Module (FLM) as SNMPv1 or SNMPv3 traps to the configured destinations.

Use this Cmdlet to retrieve configured SNMPv1 and/or SNMPv3 appliance trap destinations, configured by an Infrastructure Administrator.

???+ info
    Minimum required privileges: Read only

## Examples

###  Example 1 

```powershell
Get-OVApplianceTrapDestination
```

Get trap destinations from the appliance.

###  Example 2 

```powershell
Get-OVApplianceTrapDestination -Destination 172.17.8.8
```

Get the specific appliance trap destination.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Destination &lt;String&gt;

Filter trap destinations by the destination value.  Supports wildcard.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
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
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.SnmpV1TrapDestination"
    Appliance SNMPv1 trap destination, including trap community and target.
    

=== "HPEOneView.Appliance.SnmpV3TrapDestination"
    Appliance SNMPv3 trap destination, including type, SNMPv3 user and target.
    

## Related Links

* [New-OVApplianceTrapDestination](new-ovappliancetrapdestination.md)
* [Remove-OVApplianceTrapDestination](remove-ovappliancetrapdestination.md)
