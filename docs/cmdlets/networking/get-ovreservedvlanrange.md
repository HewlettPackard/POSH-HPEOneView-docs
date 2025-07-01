---
description: Get the reserved VLAN range for HPE Synergy.
---

# Get-OVReservedVlanRange

## Syntax

```powershell
Get-OVReservedVlanRange
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A reserved VLAN pool is a range of VLANs used for allocation of non-tagged networks:

* Tunnel
* Untagged
* Fibre Channel (FC)

Tagged networks and FCoE networks use VLANs outside of the reserved pool. You cannot use a reserved VLAN for tagged or FCoE networks.

The VLAN pool allows the number of available VLANs to be segregated between tagged and non-tagged networks. Because non-tagged networks use VLANs for internal translation resources, a reserved VLAN pool can provide a sufficient number of VLANs available for allocation of those internal VLANs. In addition, the reserved pool range removes the need for translation resources to be used on tagged networks.

For the maximum number of VLANs per physical downlink port, see the HPE OneView Support Matrix for HPE Synergy (https://www.hpe.com/info/synergy-docs).

Use this Cmdlet to get the configured reserved VLAN range pool.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVReservedVlanRange
```

Get the defined reserved VLAN range on the connected HPE Synergy appliance.

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

=== "HPEOneView.Networking.ReservedVlanRange"
    The reserved VLAN range object
    

## Related Links

* [Set-OVReservedVlanRange](../appliance/set-ovreservedvlanrange.md)
