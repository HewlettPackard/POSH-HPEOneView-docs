---
description: Retrieve address pool subnet information.
---

# Get-OVAddressPoolSubnet

## Syntax

```powershell
Get-OVAddressPoolSubnet
    [-NetworkId <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

An ID pool is a collection of one or more ranges that you can be randomly generate or specify to provide large address spaces. By default, one virtual ID pool each of contiguous MAC addresses, WWNs, and serial numbers are created automatically when you initialize the appliance. The pools are composed of address and ID ranges. You can individually enable or disable a range, or delete any unused ranges. ID pool ranges do not conflict with physical IDs, provided the virtual ranges you create exclude the physical ID ranges.

IPv4 or IPv6 address pools can be used in a variety of application.  Create an IPv4 or IPv6 subnet with one or more IPv4 or IPv6 address ranges you define. To assign static IP addresses to device bays, associate these IP ranges with an enclosure group, in which case IP addresses are assigned to the iLOs of server hardware populating these bays. IP ranges are also associated with interconnect bays, in which case IP addresses are assigned to the interconnect modules. Interconnects and iLOs share the same IP address pool.

Associate an IPv4 or IPv6 subnet with an Ethernet network. If this is an iSCSI network used as a deployment network, Image Streamer appliances can consume an IP address from one of the ranges for management of the appliance.

Use this Cmdlet to retrieve the configured IPv4 or IPv6 address pool subnets.

???+ info
    Minimum required privileges: Network administrator, Infrastructure administrator

## Examples

###  Example 1 

```powershell
Get-OVAddressPoolSubnet
```

Get the configured IPv4 and IPv6 address pools.

###  Example 2 

```powershell
Get-OVAddressPoolSubnet -NetworkId 192.168.20.0
```

Get the specified IPv4 address pool.

## Parameters

### -NetworkId &lt;String&gt;

Specify the Network ID of the subnet in order to filter the results.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

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

None.  This Cmdlet does not support pipeline operations.


## Return Values

=== "HPEOneView.Appliance.IPAddressSubnet [System.Management.Automation.PSCustomObject]"
    Single IPv4 Subnet address pool range.
    

=== "System.Collections.ArrayList <HPEOneView.Appliance.IPAddressSubnet>"
    Collection of IPv4 Subnet address pool range(s).
    

## Related Links

* [New-OVAddressPoolSubnet](new-ovaddresspoolsubnet.md)
* [Remove-OVAddressPoolSubnet](remove-ovaddresspoolsubnet.md)
* [Set-OVAddressPoolSubnet](set-ovaddresspoolsubnet.md)
