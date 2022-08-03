---
description: Create an Address Range.
---

# New-OVAddressPoolRange

## Syntax

```powershell
New-OVAddressPoolRange
    [-PoolType] <String>
    [-RangeType] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
New-OVAddressPoolRange
    [-IPSubnet] <Object>
    [-Name] <String>
    [-Start] <String>
    [-End] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
New-OVAddressPoolRange
    [-PoolType] <String>
    [-RangeType] <String>
    [-Start] <String>
    [-End] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will assist with creating a new address pool range.  The support address pool Types are MAC Addresses (VMAC), Fibre Channel/FCoE World Wide Name (VWWN), Server Serial Number (VSN), and IPv4 address pools (IPv4).

When creating new address pool ranges, the Generated Range Type will allocate 1,048,576 MAC or WWN addresses, whereas it will allocate 46,656 Serial Numbers.

If you specify a Custom Range Type, you must specify a range of addresses no smaller than 128, and no more than 1,048,576 per range.

Custom Address Ranges must adhere to the following format rules:

* The MAC Address must be IEEE Compliant, and the format must be XH:XX:XX:XX:XX:XX, where H must be 0, 2, 4, 6, 8, A, C or E.

    Example:  12:22:33:44:55:00

* The WWN Address must be IEEE compliant, and the format must be 10:00:XH:XX:XX:XX:XX:XX, where H must be 0, 2, 4, 6, 8, A, C or E.

    Example:  10:00:6C:9F:06:B0:00:00

* The Serial Number addresses must start with VCU, and cannot contain more than 10 characters total.

    Example:  VCU1234567

IPv4 Address Subnets do not support Auto Generated, as the RangeType parameter is not required.  When creating a new IPv4 Address Subnet, you must provide a unique Name, Subnet Mask (CIDR [e.g. 24] or IPv4 Address Value [e.g. 255.255.255.0]), Start and End IPv4 Address, Gateway and Domain Name.  DNS Servers are optional.  To add more Address Ranges to a Subnet after creating it, please use the New-OVAddressPoolRange Cmdlet.

## Examples

###  Example 1 

```powershell
PS C:> New-OVAddressPoolRange -PoolType vmac -RangeType Generated
```

Create a new Appliance generated VMAC Pool Range.

###  Example 2 

```powershell
PS C:> New-OVAddressPoolRange -PoolType vwwn -RangeType Custom -Start 10:00:6C:9F:06:B0:00:00 -End 10:00:6C:9F:06:BF:FF:FF
```

Create a new VWWN address pool range with the custom addresses, for the MyAppliance1.domain.com appliance connection.

###  Example 3 

```powershell
PS C:> Get-OVAddressPoolSubnet -NetworkId 192.168.20.0 | New-OVAddressPoolRange -Name "VLAN20 Mgmt" -Start 192.168.20.100 -end 192.168.20.200
```

Create a new IPv4 address pool range, for the MyAppliance1.domain.com appliance connection.

## Parameters

### -IPSubnet &lt;Object&gt;

[Aliases `-IPv4Subnet`] 

The IPv4 Subnet that the new IPv4 Range will be assigned to.  Start and End values must be within the Network ID and Subnet value of the IPv4 Address Subnet Pool.

| Aliases | Subnet, IPv4Subnet, IPv6Subnet |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -PoolType &lt;String&gt;

Specify the Pool Type the new Range will be assinged to.  Accepted values are:

* VMAC
* VWWN
* VSN

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RangeType &lt;String&gt;

The type of Address Range to create (not applicable for IPv4 address pools/Subnets).  Accepted values are:

* Generated
* Custom

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | Generated |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Provide the IPv4address pool range Name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Start &lt;String&gt;

The starting address in the range.  Cannot overlap with other address ranges, and should be unique within the datacenter/infrastructure.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -End &lt;String&gt;

The ending address in the range.  Cannot overlap with other address ranges, and should be unique within the datacenter/infrastructure.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). 

When attempting to create a new IPv4 address pool/Subnet, only a single `[HPEOneView.Appliance.Connection]` object or Name property value is allowed.  If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Appliance.IPAddressSubnet [System.Management.Automation.PSCustomObject]**_

IPv4 Address Subnet resource object from Get-OVAddressPoolSubnet

## Return Values

_**HPEOneView.Appliance.AddressPoolRange [System.Management.Automation.PSCustomObject]**_

Newly created and assigned address pool range resource object

## Related Links

* [Get-OVAddressPoolRange](get-ovaddresspoolrange.md)
* [Remove-OVAddressPoolRange](remove-ovaddresspoolrange.md)
