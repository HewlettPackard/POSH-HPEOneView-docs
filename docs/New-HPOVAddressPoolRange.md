<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVAddressPoolRange
<p>
Create an Address Range.

### SYNTAX
<p>
<pre><code>New-HPOVAddressPoolRange [-PoolType] &lt;String&gt; [-RangeType] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVAddressPoolRange [-IPSubnet] &lt;Object Object&gt; [-Name] &lt;String&gt; [-Start] &lt;String&gt; [-End] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVAddressPoolRange [-PoolType] &lt;String&gt; [-RangeType] &lt;String&gt; [-Start] &lt;String&gt; [-End] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will assist with creating a new Address Pool Range.  The support Address Pool Types are MAC Addresses (VMAC), Fibre Channel/FCoE World Wide Name (VWWN), Server Serial Number (VSN), and IPv4 Address Pools (IPv4).

When creating new Address Pool Ranges, the Generated Range Type will allocate 1,048,576 MAC or WWN addresses, whereas it will allocate 46,656 Serial Numbers.

If you specify a Custom Range Type, you must specify a range of addresses no smaller than 128, and no more than 1,048,576 per range.

Custom Address Ranges must adhere to the following format rules:

	* The MAC Address must be IEEE Compliant, and the format must be XH:XX:XX:XX:XX:XX, where H must be 0, 2, 4, 6, 8, A, C or E.

    Example:  12:22:33:44:55:00

	* The WWN Address must be IEEE compliant, and the format must be 10:00:XH:XX:XX:XX:XX:XX, where H must be 0, 2, 4, 6, 8, A, C or E.

    Example:  10:00:6C:9F:06:B0:00:00

	* The Serial Number addresses must start with VCU, and cannot contain more than 10 characters total.

    Example:  VCU1234567

IPv4 Address Subnets do not support Auto Generated, as the RangeType parameter is not required.  When creating a new IPv4 Address Subnet, you must provide a unique Name, Subnet Mask (CIDR [e.g. 24] or IPv4 Address Value [e.g. 255.255.255.0]), Start and End IPv4 Address, Gateway and Domain Name.  DNS Servers are optional.  To add more Address Ranges to a Subnet after creating it, please use the Add-HPOVAddressRange CMDLET.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). 

When attempting to create a new IPv4 Address Pool/Subnet, only a single HPOneView.Appliance.Connection object or Name property value is allowed.  If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -End &lt;String&gt;<p>
The ending address in the range.  Cannot overlap with other address ranges, and should be unique within the datacenter/infrastructure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPSubnet &lt;Object Object&gt;<p>
[Aliases -IPv4Subnet] 

The IPv4 Subnet that the new IPv4 Range will be assigned to.  Start and End values must be within the Network ID and Subnet value of the IPv4 Address Subnet Pool. 

<table><tbody><tr><td>Aliases</td><td>Subnet, IPv4Subnet, IPv6Subnet</td></tr><tr><td>Required?</td><td>true True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Provide the IPv4Address Pool Range Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PoolType &lt;String&gt;<p>
Specify the Pool Type the new Range will be assinged to.  Accepted values are:

	* VMAC
	* VWWN
	* VSN

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RangeType &lt;String&gt;<p>
The type of Address Range to create (not applicable for IPv4 Address Pools/Subnets).  Accepted values are:

	* Generated
	* Custom

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Generated</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;String&gt;<p>
The starting address in the range.  Cannot overlap with other address ranges, and should be unique within the datacenter/infrastructure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.IPAddressSubnet [System.Management.Automation.PSCustomObject]**_

 IPv4 Address Subnet resource object from Get-HPOVAddressPoolSubnet



### Return Values

_**HPOneView.Appliance.AddressPoolRange [System.Management.Automation.PSCustomObject]**_

 

Newly created and assigned Address Pool Range resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:> New-HPOVAddressPoolRange -PoolType vmac -RangeType Generated
</pre>
Create a new Appliance generated VMAC Pool Range.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
PS C:> New-HPOVAddressPoolRange -PoolType vwwn -RangeType Custom -Start 10:00:6C:9F:06:B0:00:00 -End 10:00:6C:9F:06:BF:FF:FF
</pre>
Create a new VWWN Address Pool Range with the custom addresses, for the MyAppliance1.domain.com appliance connection.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
PS C:> Get-HPOVAddressPoolSubnet -NetworkId 192.168.20.0 | New-HPOVAddressPoolRange -Name "VLAN20 Mgmt" -Start 192.168.20.100 -end 192.168.20.200
</pre>
Create a new IPv4 Address Pool Range, for the MyAppliance1.domain.com appliance connection.



### Related Links

* [Get-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolRange)
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVAddressPoolRange
<p>
Create an Address Range.

### SYNTAX
<p>
<pre><code>New-HPOVAddressPoolRange [-PoolType] &lt;String&gt; [-RangeType] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVAddressPoolRange [-IPv4Subnet] &lt;Object&gt; [-Name] &lt;String&gt; [-Start] &lt;String&gt; [-End] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVAddressPoolRange [-PoolType] &lt;String&gt; [-RangeType] &lt;String&gt; [-Start] &lt;String&gt; [-End] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will assist with creating a new Address Pool Range.  The support Address Pool Types are MAC Addresses (VMAC), Fibre Channel/FCoE World Wide Name (VWWN), Server Serial Number (VSN), and IPv4 Address Pools (IPv4).

When creating new Address Pool Ranges, the Generated Range Type will allocate 1,048,576 MAC or WWN addresses, whereas it will allocate 46,656 Serial Numbers.

If you specify a Custom Range Type, you must specify a range of addresses no smaller than 128, and no more than 1,048,576 per range.

Custom Address Ranges must adhere to the following format rules:

	* The MAC Address must be IEEE Compliant, and the format must be XH:XX:XX:XX:XX:XX, where H must be 0, 2, 4, 6, 8, A, C or E.

    Example:  12:22:33:44:55:00

	* The WWN Address must be IEEE compliant, and the format must be 10:00:XH:XX:XX:XX:XX:XX, where H must be 0, 2, 4, 6, 8, A, C or E.

    Example:  10:00:6C:9F:06:B0:00:00

	* The Serial Number addresses must start with VCU, and cannot contain more than 10 characters total.

    Example:  VCU1234567

IPv4 Address Subnets do not support Auto Generated, as the RangeType parameter is not required.  When creating a new IPv4 Address Subnet, you must provide a unique Name, Subnet Mask (CIDR [e.g. 24] or IPv4 Address Value [e.g. 255.255.255.0]), Start and End IPv4 Address, Gateway and Domain Name.  DNS Servers are optional.  To add more Address Ranges to a Subnet after creating it, please use the Add-HPOVAddressRange CMDLET.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). 

When attempting to create a new IPv4 Address Pool/Subnet, only a single HPOneView.Appliance.Connection object or Name property value is allowed.  If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -End &lt;String&gt;<p>
The ending address in the range.  Cannot overlap with other address ranges, and should be unique within the datacenter/infrastructure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Subnet &lt;Object&gt;<p>
The IPv4 Subnet that the new IPv4 Range will be assigned to.  Start and End values must be within the Network ID and Subnet value of the IPv4 Address Subnet Pool.

<table><tbody><tr><td>Aliases</td><td>Subnet</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Provide the IPv4Address Pool Range Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PoolType &lt;String&gt;<p>
Specify the Pool Type the new Range will be assinged to.  Accepted values are:

	* VMAC
	* VWWN
	* VSN

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RangeType &lt;String&gt;<p>
The type of Address Range to create (not applicable for IPv4 Address Pools/Subnets).  Accepted values are:

	* Generated
	* Custom

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Generated</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;String&gt;<p>
The starting address in the range.  Cannot overlap with other address ranges, and should be unique within the datacenter/infrastructure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.IPv4AddressSubnet [System.Management.Automation.PSCustomObject]**_

 IPv4 Address Subnet resource object from Get-HPOVAddressPoolSubnet



### Return Values

_**HPOneView.Appliance.AddressPoolRange [System.Management.Automation.PSCustomObject]**_

 

Newly created and assigned Address Pool Range resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:> New-HPOVAddressPoolRange -PoolType vmac -RangeType Generated
</pre>
Create a new Appliance generated VMAC Pool Range.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
PS C:> New-HPOVAddressPoolRange -PoolType vwwn -RangeType Custom -Start 10:00:6C:9F:06:B0:00:00 -End 10:00:6C:9F:06:BF:FF:FF
</pre>
Create a new VWWN Address Pool Range with the custom addresses, for the MyAppliance1.domain.com appliance connection.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
PS C:> Get-HPOVAddressPoolSubnet -NetworkId 192.168.20.0 | New-HPOVAddressPoolRange -Name "VLAN20 Mgmt" -Start 192.168.20.100 -end 192.168.20.200
</pre>
Create a new IPv4 Address Pool Range, for the MyAppliance1.domain.com appliance connection.



### Related Links

* [Get-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolRange)
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVAddressPoolRange
<p>
Create an Address Range.

### SYNTAX
<p>
<pre><code>New-HPOVAddressPoolRange [-PoolType] &lt;String&gt; [-RangeType] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVAddressPoolRange [-IPv4Subnet] &lt;Object&gt; [-Name] &lt;String&gt; [-Start] &lt;String&gt; [-End] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVAddressPoolRange [-PoolType] &lt;String&gt; [-RangeType] &lt;String&gt; [-Start] &lt;String&gt; [-End] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will assist with creating a new Address Pool Range.  The support Address Pool Types are MAC Addresses (VMAC), Fibre Channel/FCoE World Wide Name (VWWN), Server Serial Number (VSN), and IPv4 Address Pools (IPv4).

When creating new Address Pool Ranges, the Generated Range Type will allocate 1,048,576 MAC or WWN addresses, whereas it will allocate 46,656 Serial Numbers.

If you specify a Custom Range Type, you must specify a range of addresses no smaller than 128, and no more than 1,048,576 per range.

Custom Address Ranges must adhere to the following format rules:

	* The MAC Address must be IEEE Compliant, and the format must be XH:XX:XX:XX:XX:XX, where H must be 0, 2, 4, 6, 8, A, C or E.

    Example:  12:22:33:44:55:00

	* The WWN Address must be IEEE compliant, and the format must be 10:00:XH:XX:XX:XX:XX:XX, where H must be 0, 2, 4, 6, 8, A, C or E.

    Example:  10:00:6C:9F:06:B0:00:00

	* The Serial Number addresses must start with VCU, and cannot contain more than 10 characters total.

    Example:  VCU1234567

IPv4 Address Subnets do not support Auto Generated, as the RangeType parameter is not required.  When creating a new IPv4 Address Subnet, you must provide a unique Name, Subnet Mask (CIDR [e.g. 24] or IPv4 Address Value [e.g. 255.255.255.0]), Start and End IPv4 Address, Gateway and Domain Name.  DNS Servers are optional.  To add more Address Ranges to a Subnet after creating it, please use the Add-HPOVAddressRange CMDLET.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). 

When attempting to create a new IPv4 Address Pool/Subnet, only a single HPOneView.Appliance.Connection object or Name property value is allowed.  If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -End &lt;String&gt;<p>
The ending address in the range.  Cannot overlap with other address ranges, and should be unique within the datacenter/infrastructure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Subnet &lt;Object&gt;<p>
The IPv4 Subnet that the new IPv4 Range will be assigned to.  Start and End values must be within the Network ID and Subnet value of the IPv4 Address Subnet Pool.

<table><tbody><tr><td>Aliases</td><td>Subnet</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Provide the IPv4Address Pool Range Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PoolType &lt;String&gt;<p>
Specify the Pool Type the new Range will be assinged to.  Accepted values are:

	* VMAC
	* VWWN
	* VSN

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RangeType &lt;String&gt;<p>
The type of Address Range to create (not applicable for IPv4 Address Pools/Subnets).  Accepted values are:

	* Generated
	* Custom

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Generated</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;String&gt;<p>
The starting address in the range.  Cannot overlap with other address ranges, and should be unique within the datacenter/infrastructure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.IPv4AddressSubnet [System.Management.Automation.PSCustomObject]**_

 IPv4 Address Subnet resource object from Get-HPOVAddressPoolSubnet



### Return Values

_**HPOneView.Appliance.AddressPoolRange [System.Management.Automation.PSCustomObject]**_

 

Newly created and assigned Address Pool Range resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:> New-HPOVAddressPoolRange -PoolType vmac -RangeType Generated
</pre>
Create a new Appliance generated VMAC Pool Range.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
PS C:> New-HPOVAddressPoolRange -PoolType vwwn -RangeType Custom -Start 10:00:6C:9F:06:B0:00:00 -End 10:00:6C:9F:06:BF:FF:FF
</pre>
Create a new VWWN Address Pool Range with the custom addresses, for the MyAppliance1.domain.com appliance connection.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
PS C:> Get-HPOVAddressPoolSubnet -NetworkId 192.168.20.0 | New-HPOVAddressPoolRange -Name "VLAN20 Mgmt" -Start 192.168.20.100 -end 192.168.20.200
</pre>
Create a new IPv4 Address Pool Range, for the MyAppliance1.domain.com appliance connection.



### Related Links

* [Get-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolRange)
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange)


***
<div align=right><a href="#Top">Top</a></div>
