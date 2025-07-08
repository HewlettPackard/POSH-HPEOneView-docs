---
description: Modify the reserved VLAN range for HPE Synergy.
---

# Set-OVReservedVlanRange

## Syntax

```powershell
Set-OVReservedVlanRange
    [-Start] <Int>
    [-Length] <Int>
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

For the maximum number of VLANs per physical downlink port, see the HPE OneView Support Matrix for HPE Synergy.

Creating and managing a reserved VLAN pool

A reserved VLAN pool is unique within a fabric, but independently allocated within each logical interconnect. The reserved range is identical across all logical interconnects within a fabric. The remaining VLANs (outside of the pool) are shared among all the logical interconnects within the fabric.

For HPE OneView running embedded on a HPE Synergy 12000 Frame, the default range starts at 3967 and the size is 128. The minimum size of the pool must be 60 VLANs to ensure the pool is not exhausted.

The size of the pool cannot exceed 128 VLANs.

???+ info
    Minimum required privileges:  Infrastructure administrator, Network administrator

## Examples

###  Example 1 

```powershell
Set-OVReservedVlanRange -Start 2700 -Length 128
```

Change the reserved VLAN range to start at 2700, and end at 2828.

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

### -Length &lt;Int&gt;

Must not exceed 128.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Start &lt;Int&gt;

The starting VLAN ID.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for configuring port monitoring on the requested logical intercinnect.
    

## Related Links

* [Get-OVReservedVlanRange](../networking/get-ovreservedvlanrange.md)
