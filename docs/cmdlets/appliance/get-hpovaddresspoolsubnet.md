---
description: Retrieve address pool subnet information.
---

# Get-HPOVAddressPoolSubnet

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVAddressPoolSubnet [[-NetworkId] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

An ID pool is a collection of one or more ranges that you can be randomly generate or specify to provide large address spaces. By default, one virtual ID pool each of contiguous MAC addresses, WWNs, and serial numbers are created automatically when you initialize the appliance. The pools are composed of address and ID ranges. You can individually enable or disable a range, or delete any unused ranges. ID pool ranges do not conflict with physical IDs, provided the virtual ranges you create exclude the physical ID ranges.

IPv4 or IPv6 address pools can be used in a variety of application. Create an IPv4 or IPv6 subnet with one or more IPv4 or IPv6 address ranges you define. To assign static IP addresses to device bays, associate these IP ranges with an enclosure group, in which case IP addresses are assigned to the iLOs of server hardware populating these bays. IP ranges are also associated with interconnect bays, in which case IP addresses are assigned to the interconnect modules. Interconnects and iLOs share the same IP address pool.

Associate an IPv4 or IPv6 subnet with an Ethernet network. If this is an iSCSI network used as a deployment network, Image Streamer appliances can consume an IP address from one of the ranges for management of the appliance.

Use this Cmdlet to retrieve the configured IPv4 or IPv6 address pool subnets.

{% hint style="info" %}
Required Privileges: Network administrator, Infrastructure administrator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -NetworkId &lt;String&gt; 

Specify the Network ID of the subnet in order to filter the results.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. This Cmdlet does not support pipeline operations.**_

### Return Values

_**HPOneView.Appliance.IPAddressSubnet \[System.Management.Automation.PSCustomObject\]**_

IPv4 or IPv6 subnet address pool range.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVAddressPoolSubnet
```

Get the configured IPv4 and IPv6 address pools.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVAddressPoolSubnet -NetworkId 192.168.20.0
```

Get the specified IPv4 address pool.

### Related Links

* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet) 
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet) 
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVAddressPoolSubnet [[-NetworkId] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

An ID pool is a collection of one or more ranges that you can be randomly generate or specify to provide large address spaces. By default, one virtual ID pool each of contiguous MAC addresses, WWNs, and serial numbers are created automatically when you initialize the appliance. The pools are composed of address and ID ranges. You can individually enable or disable a range, or delete any unused ranges. ID pool ranges do not conflict with physical IDs, provided the virtual ranges you create exclude the physical ID ranges.

IPv4 address pools can be used in a variety of application. Create an IPv4 subnet with one or more IPv4 address ranges you define. To assign static IP addresses to device bays, associate these IP ranges with an enclosure group, in which case IP addresses are assigned to the iLOs of server hardware populating these bays. IP ranges are also associated with interconnect bays, in which case IP addresses are assigned to the interconnect modules. Interconnects and iLOs share the same IP address pool.

Associate an IPv4 subnet with an Ethernet network. If this is an iSCSI network used as a deployment network, Image Streamer appliances can consume an IP address from one of the ranges for management of the appliance.

Use this Cmdlet to retrieve the configured IPv4 address pool subnets.

{% hint style="info" %}
Required Privileges: Network administrator, Infrastructure administrator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -NetworkId &lt;String&gt; 

Specify the Network ID of the subnet in order to filter the results.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. This Cmdlet does not support pipeline operations.**_

### Return Values

_**HPOneView.Appliance.IPAddressSubnet \[System.Management.Automation.PSCustomObject\]**_

IPv4 subnet address pool range.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVAddressPoolSubnet
```

Get the configured IPv4 address pools.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVAddressPoolSubnet -NetworkId 192.168.20.0
```

Get the specified IPv4 address pool.

### Related Links

* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet) 
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet) 
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVAddressPoolSubnet [[-NetworkId] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

An ID pool is a collection of one or more ranges that you can be randomly generate or specify to provide large address spaces. By default, one virtual ID pool each of contiguous MAC addresses, WWNs, and serial numbers are created automatically when you initialize the appliance. The pools are composed of address and ID ranges. You can individually enable or disable a range, or delete any unused ranges. ID pool ranges do not conflict with physical IDs, provided the virtual ranges you create exclude the physical ID ranges.

IPv4 address pools can be used in a variety of application. Create an IPv4 subnet with one or more IPv4 address ranges you define. To assign static IP addresses to device bays, associate these IP ranges with an enclosure group, in which case IP addresses are assigned to the iLOs of server hardware populating these bays. IP ranges are also associated with interconnect bays, in which case IP addresses are assigned to the interconnect modules. Interconnects and iLOs share the same IP address pool.

Associate an IPv4 subnet with an Ethernet network. If this is an iSCSI network used as a deployment network, Image Streamer appliances can consume an IP address from one of the ranges for management of the appliance.

Use this Cmdlet to retrieve the configured IPv4 address pool subnets.

{% hint style="info" %}
Required Privileges: Network administrator, Infrastructure administrator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -NetworkId &lt;String&gt; 

Specify the Network ID of the subnet in order to filter the results.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. This Cmdlet does not support pipeline operations.**_

### Return Values

_**HPOneView.Appliance.IPAddressSubnet \[System.Management.Automation.PSCustomObject\]**_

IPv4 subnet address pool range.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVAddressPoolSubnet
```

Get the configured IPv4 address pools.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVAddressPoolSubnet -NetworkId 192.168.20.0
```

Get the specified IPv4 address pool.

### Related Links

* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet) 
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet) 
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)

