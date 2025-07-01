---
description: Retrieve address pool information.
---

# Get-OVAddressPool

## Syntax

```powershell
Get-OVAddressPool
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

???+ info
    Minimum required privileges: Network administrator 
(virtual MAC addresses and virtual WWNs), Infrastructure administrator (all ID types)
## Examples

###  Example 1 

```powershell
Get-OVAddressPool
```

Get the address pools.

###  Example 2 

```powershell
Get-OVAddressPool -type vmac
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

=== "HPEOneView.Appliance.AddressPool [System.Management.Automation.PSCustomObject]"
    Single address pool and its contents.
    

=== "System.Collections.ArrayList <HPEOneView.Appliance.AddressPool>"
    Collection of address pools and their contents.
    

## Related Links

* [Get-OVAddressPoolRange](get-ovaddresspoolrange.md)
* [Get-OVAddressPoolSubnet](get-ovaddresspoolsubnet.md)
* [New-OVAddressPoolRange](new-ovaddresspoolrange.md)
* [New-OVAddressPoolSubnet](new-ovaddresspoolsubnet.md)
* [Remove-OVAddressPoolRange](remove-ovaddresspoolrange.md)
* [Remove-OVAddressPoolSubnet](remove-ovaddresspoolsubnet.md)
* [Set-OVAddressPoolSubnet](set-ovaddresspoolsubnet.md)
