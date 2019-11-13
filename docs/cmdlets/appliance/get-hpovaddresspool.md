---
description: Retrieve Address Pool information.
---

# Get-HPOVAddressPool

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVAddressPool [[-Type] <String[]>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

An ID pool is a collection of one or more ranges that you can be randomly generate or specify to provide large address spaces. By default, one virtual ID pool each of contiguous MAC addresses, WWNs, and serial numbers are created automatically when you initialize the appliance. The pools are composed of address and ID ranges. You can individually enable or disable a range, or delete any unused ranges. ID pool ranges do not conflict with physical IDs, provided the virtual ranges you create exclude the physical ID ranges.

This Cmdlet will get the available and configured Address Pools, and their associated Ranges from the appliance. Currently, the appliance supports the following Address Pools:

* VMAC
* VWWN
* VSN
* IPv6
* IPv4

You can specify one, some or all of the Pool types. A Range switch is provided to include the associated Range objects. A report switch is provided to display a report of each Address Pool type.

Required Privileges: Network administrator \(virtual MAC addresses and virtual WWNs\), Infrastructure administrator \(all ID types\)

### Parameters

#### -ApplianceConnection &lt;Object&gt;

 Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Type &lt;String\[\]&gt; 

The Address Pool type. Accepted values are VMAC, VWWN, VSN, IPv4, IPv6, or All.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | all |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.AddressPool \[System.Management.Automation.PSCustomObject\]**_

Single Address Pool and its contents.

_**System.Collections.ArrayList &lt;HPOneView.Appliance.AddressPool&gt;**_

Collection of Address Pools and their contents.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVAddressPool
```

Get the address pools.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVAddressPool -type vmac
```

Get the vmac address pool. 

### Related Links

* [Get-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolRange) 
* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet) 
* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange) 
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet) 
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange) 
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet) 
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVAddressPool [[-Type] <String[]>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

An ID pool is a collection of one or more ranges that you can be randomly generate or specify to provide large address spaces. By default, one virtual ID pool each of contiguous MAC addresses, WWNs, and serial numbers are created automatically when you initialize the appliance. The pools are composed of address and ID ranges. You can individually enable or disable a range, or delete any unused ranges. ID pool ranges do not conflict with physical IDs, provided the virtual ranges you create exclude the physical ID ranges.

This Cmdlet will get the available and configured Address Pools, and their associated Ranges from the appliance. Currently, the appliance supports the following Address Pools:

* VMAC
* VWWN
* VSN
* IPv4

You can specify one, some or all of the Pool types. A Range switch is provided to include the associated Range objects. A report switch is provided to display a report of each Address Pool type.

Required Privileges: Network administrator \(virtual MAC addresses and virtual WWNs\), Infrastructure administrator \(all ID types\)

### Parameters

#### -ApplianceConnection &lt;Object&gt;

 Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Type &lt;String\[\]&gt; 

The Address Pool type. Accepted values are VMAC, VWWN, VSN, IPv4, or All.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | all |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.AddressPool \[System.Management.Automation.PSCustomObject\]**_

Single Address Pool and its contents.

_**System.Collections.ArrayList &lt;HPOneView.Appliance.AddressPool&gt;**_

Collection of Address Pools and their contents.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVAddressPool
```

Get the address pools.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVAddressPool -type vmac
```

Get the vmac address pool. 

### Related Links

* [Get-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolRange) 
* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet) 
* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange) 
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet) 
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange) 
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet) 
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVAddressPool [[-Type] <String[]>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

An ID pool is a collection of one or more ranges that you can be randomly generate or specify to provide large address spaces. By default, one virtual ID pool each of contiguous MAC addresses, WWNs, and serial numbers are created automatically when you initialize the appliance. The pools are composed of address and ID ranges. You can individually enable or disable a range, or delete any unused ranges. ID pool ranges do not conflict with physical IDs, provided the virtual ranges you create exclude the physical ID ranges.

This Cmdlet will get the available and configured Address Pools, and their associated Ranges from the appliance. Currently, the appliance supports the following Address Pools:

* VMAC
* VWWN
* VSN
* IPv4

You can specify one, some or all of the Pool types. A Range switch is provided to include the associated Range objects. A report switch is provided to display a report of each Address Pool type.

Required Privileges: Network administrator \(virtual MAC addresses and virtual WWNs\), Infrastructure administrator \(all ID types\)

### Parameters

#### -ApplianceConnection &lt;Object&gt;

 Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Type &lt;String\[\]&gt; 

The Address Pool type. Accepted values are VMAC, VWWN, VSN, IPv4, or All.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | all |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.AddressPool \[System.Management.Automation.PSCustomObject\]**_

Single Address Pool and its contents.

_**System.Collections.ArrayList &lt;HPOneView.Appliance.AddressPool&gt;**_

Collection of Address Pools and their contents.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVAddressPool
```

Get the address pools.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVAddressPool -type vmac
```

Get the vmac address pool. 

### Related Links

* [Get-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolRange) 
* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet) 
* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange) 
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet) 
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange) 
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet) 
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)



