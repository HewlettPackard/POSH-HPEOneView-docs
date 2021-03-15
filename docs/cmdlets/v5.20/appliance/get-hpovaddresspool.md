---
description: Retrieve address pool information.
---

# Get-HPOVAddressPool

## Syntax

```text
Get-HPOVAddressPool
    [-Type <String[]>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

An ID pool is a collection of one or more ranges that you can be randomly generate or specify to provide large address spaces. By default, one virtual ID pool each of contiguous MAC addresses, WWNs, and serial numbers are created automatically when you initialize the appliance. The pools are composed of address and ID ranges. You can individually enable or disable a range, or delete any unused ranges. ID pool ranges do not conflict with physical IDs, provided the virtual ranges you create exclude the physical ID ranges.

This Cmdlet will get the available and configured address pools, and their associated Ranges from the appliance. Currently, the appliance supports the following address pools:

    * VMAC
    * VWWN
    * VSN
    * IPv6
    * IPv4

You can specify one, some or all of the Pool types. A Range switch is provided to include the associated Range objects. A report switch is provided to display a report of each address pool type.

{% hint style="info" %}
Minimum required privileges: Network administrator 
{% endhint %}
(virtual MAC addresses and virtual WWNs), Infrastructure administrator (all ID types)
## Examples

###  Example 1 

```text
Get-HPOVAddressPool
```

Get the address pools.

###  Example 2 

```text
Get-HPOVAddressPool -type vmac
```

Get the vmac address pool.

## Parameters

### -Type &lt;String[]&gt;

The address pool type.  Accepted values are VMAC, VWWN, VSN, IPv4, IPv6, or All.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | all |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPOneView.Appliance.AddressPool [System.Management.Automation.PSCustomObject]**_

Single address pool and its contents.

_**System.Collections.ArrayList <HPOneView.Appliance.AddressPool>**_

Collection of address pools and their contents.

## Related Links

* [Get-HPOVAddressPoolRange](get-hpovaddresspoolrange.md)
* [Get-HPOVAddressPoolSubnet](get-hpovaddresspoolsubnet.md)
* [New-HPOVAddressPoolRange](new-hpovaddresspoolrange.md)
* [New-HPOVAddressPoolSubnet](new-hpovaddresspoolsubnet.md)
* [Remove-HPOVAddressPoolRange](remove-hpovaddresspoolrange.md)
* [Remove-HPOVAddressPoolSubnet](remove-hpovaddresspoolsubnet.md)
* [Set-HPOVAddressPoolSubnet](set-hpovaddresspoolsubnet.md)
