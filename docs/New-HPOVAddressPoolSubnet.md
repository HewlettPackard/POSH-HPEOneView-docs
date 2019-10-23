<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVAddressPoolSubnet
<p>
Create an IPv4 Subnet Pool.

### SYNTAX
<p>
<pre><code>New-HPOVAddressPoolSubnet [-NetworkId] &lt;IPAddress&gt; [-SubnetMask] &lt;String&gt; [-Gateway] &lt;IPAddress&gt; [-Domain] &lt;String&gt; [-DNSServers] &lt;Array&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will assist with creating a new IPv4 Address Pool.  When creating a new IPv4 Address Subnet, you must provide the Network ID, Subnet Mask (CIDR [e.g. 24] or IPv4 Address Value [e.g. 255.255.255.0]), Gateway and Domain Name.  DNS Servers are optional.
	
To add IPv4 Address Ranges to a Subnet after creating it, please use the New-HPOVAddressPoolRange CMDLET.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DNSServers &lt;Array&gt;<p>
An array of DNS Server IPv4 Addresses.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Domain &lt;String&gt;<p>
DNS Domain Name of the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Gateway &lt;IPAddress&gt;<p>
IPv4 Address of the default gateway for the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NetworkId &lt;IPAddress&gt;<p>
The IPv4 Network ID value of the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SubnetMask &lt;String&gt;<p>
CIDR [e.g. 24] or IPv4 Address Value [e.g. 255.255.255.0]

<table><tbody><tr><td>Aliases</td><td>PrefixLength</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.IPAddressSubnet [System.Management.Automation.PSCustomObject]**_

 

Newly created IPv4 Address Subnet



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:> New-HPOVAddressPoolSubnet -NetworkID 192.168.10.0 -Subnetmask 24 -Gateway 192.168.10.254 -Domain vlan10.domain.com -DNSServers 10.250.33.12,10.250.34.80
</pre>
Create a new IPv4 Address Pool with the specified values.



### Related Links

* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVAddressPoolSubnet
<p>
Create an IPv4 Subnet Pool.

### SYNTAX
<p>
<pre><code>New-HPOVAddressPoolSubnet [-NetworkId] &lt;IPAddress&gt; [-SubnetMask] &lt;String&gt; [-Gateway] &lt;IPAddress&gt; [-Domain] &lt;String&gt; [-DNSServers] &lt;Array&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will assist with creating a new IPv4 Address Pool.  When creating a new IPv4 Address Subnet, you must provide the Network ID, Subnet Mask (CIDR [e.g. 24] or IPv4 Address Value [e.g. 255.255.255.0]), Gateway and Domain Name.  DNS Servers are optional.
	
To add IPv4 Address Ranges to a Subnet after creating it, please use the New-HPOVAddressPoolRange CMDLET.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DNSServers &lt;Array&gt;<p>
An array of DNS Server IPv4 Addresses.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Domain &lt;String&gt;<p>
DNS Domain Name of the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Gateway &lt;IPAddress&gt;<p>
IPv4 Address of the default gateway for the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NetworkId &lt;IPAddress&gt;<p>
The IPv4 Network ID value of the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SubnetMask &lt;String&gt;<p>
CIDR [e.g. 24] or IPv4 Address Value [e.g. 255.255.255.0]

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.IPv4AddressSubnet [System.Management.Automation.PSCustomObject]**_

 

Newly created IPv4 Address Subnet



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:> New-HPOVAddressPoolSubnet -NetworkID 192.168.10.0 -Subnetmask 24 -Gateway 192.168.10.254 -Domain vlan10.domain.com -DNSServers 10.250.33.12,10.250.34.80
</pre>
Create a new IPv4 Address Pool with the specified values.



### Related Links

* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVAddressPoolSubnet
<p>
Create an IPv4 Subnet Pool.

### SYNTAX
<p>
<pre><code>New-HPOVAddressPoolSubnet [-NetworkId] &lt;IPAddress&gt; [-SubnetMask] &lt;String&gt; [-Gateway] &lt;IPAddress&gt; [-Domain] &lt;String&gt; [-DNSServers] &lt;Array&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will assist with creating a new IPv4 Address Pool.  When creating a new IPv4 Address Subnet, you must provide the Network ID, Subnet Mask (CIDR [e.g. 24] or IPv4 Address Value [e.g. 255.255.255.0]), Gateway and Domain Name.  DNS Servers are optional.
	
To add IPv4 Address Ranges to a Subnet after creating it, please use the New-HPOVAddressPoolRange CMDLET.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DNSServers &lt;Array&gt;<p>
An array of DNS Server IPv4 Addresses.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Domain &lt;String&gt;<p>
DNS Domain Name of the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Gateway &lt;IPAddress&gt;<p>
IPv4 Address of the default gateway for the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NetworkId &lt;IPAddress&gt;<p>
The IPv4 Network ID value of the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SubnetMask &lt;String&gt;<p>
CIDR [e.g. 24] or IPv4 Address Value [e.g. 255.255.255.0]

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.IPv4AddressSubnet [System.Management.Automation.PSCustomObject]**_

 

Newly created IPv4 Address Subnet



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:> New-HPOVAddressPoolSubnet -NetworkID 192.168.10.0 -Subnetmask 24 -Gateway 192.168.10.254 -Domain vlan10.domain.com -DNSServers 10.250.33.12,10.250.34.80
</pre>
Create a new IPv4 Address Pool with the specified values.



### Related Links

* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
