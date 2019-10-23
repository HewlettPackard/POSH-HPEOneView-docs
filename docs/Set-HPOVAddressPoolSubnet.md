<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVAddressPoolSubnet
<p>
Update an IPv4 Subnet Pool configuration.

### SYNTAX
<p>
<pre><code>Set-HPOVAddressPoolSubnet [-InputObject] &lt;Object&gt;[ [-SubnetMask] &lt;IPAddress&gt;][ [-Gateway] &lt;IPAddress&gt;][ [-Domain] &lt;String&gt;][ [-DNSServers] &lt;Array&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will assist with updating an existing IPv4 Address Pool.  When updating an IPv4 Address Subnet, you must provide the Subnet Object or Name to modify. Only the Gateway, Domain Name, and DNS Servers can be updated once an IPv4 Subnet has been assigned to a resoruce.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DNSServers &lt;Array&gt;<p>
An array of DNS Server IPv4 Addresses.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Domain &lt;String&gt;<p>
DNS Domain Name of the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Gateway &lt;IPAddress&gt;<p>
IPv4 Address of the default gateway for the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Subnet, -IPv4Subnet]

The IPv4 Subnet resource object to update.

<table><tbody><tr><td>Aliases</td><td>Subnet, IPv4Subnet</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SubnetMask &lt;IPAddress&gt;<p>
IPv4 Subnet Mask of the subnet.  Please know that if the Subnet is associated with another resource (Ethernet Network, Logical Enclosure or Deployment Server), there will be an error as the mask cannot be changed until it is unassociated with the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.IPAddressSubnet [System.Management.Automation.PSCustomObject]**_

 IPv4 Address Subnet



### Return Values

_**HPOneView.Appliance.IPAddressSubnet [System.Management.Automation.PSCustomObject]**_

 

Updated IPv4 Address Subnet



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:> Get-HPOVAddressPoolSubnet 192.168.20.0 | Set-HPOVAddressPoolSubnet -Gateway 192.168.20.1
</pre>
Update the IPv4 Subnet Address Pool"s default gateway to the new address.



### Related Links

* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVAddressPoolSubnet
<p>
Update an IPv4 Subnet Pool configuration.

### SYNTAX
<p>
<pre><code>Set-HPOVAddressPoolSubnet [-InputObject] &lt;Object&gt;[ [-SubnetMask] &lt;IPAddress&gt;][ [-Gateway] &lt;IPAddress&gt;][ [-Domain] &lt;String&gt;][ [-DNSServers] &lt;Array&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will assist with updating an existing IPv4 Address Pool.  When updating an IPv4 Address Subnet, you must provide the Subnet Object or Name to modify. Only the Gateway, Domain Name, and DNS Servers can be updated once an IPv4 Subnet has been assigned to a resoruce.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DNSServers &lt;Array&gt;<p>
An array of DNS Server IPv4 Addresses.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Domain &lt;String&gt;<p>
DNS Domain Name of the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Gateway &lt;IPAddress&gt;<p>
IPv4 Address of the default gateway for the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Subnet, -IPv4Subnet]

The IPv4 Subnet resource object to update.

<table><tbody><tr><td>Aliases</td><td>Subnet, IPv4Subnet</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SubnetMask &lt;IPAddress&gt;<p>
IPv4 Subnet Mask of the subnet.  Please know that if the Subnet is associated with another resource (Ethernet Network, Logical Enclosure or Deployment Server), there will be an error as the mask cannot be changed until it is unassociated with the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.IPv4AddressSubnet [System.Management.Automation.PSCustomObject]**_

 IPv4 Address Subnet



### Return Values

_**HPOneView.Appliance.IPv4AddressSubnet [System.Management.Automation.PSCustomObject]**_

 

Updated IPv4 Address Subnet



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:> Get-HPOVAddressPoolSubnet 192.168.20.0 | Set-HPOVAddressPoolSubnet -Gateway 192.168.20.1
</pre>
Update the IPv4 Subnet Address Pool"s default gateway to the new address.



### Related Links

* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVAddressPoolSubnet
<p>
Update an IPv4 Subnet Pool configuration.

### SYNTAX
<p>
<pre><code>Set-HPOVAddressPoolSubnet [-InputObject] &lt;Object&gt;[ [-SubnetMask] &lt;IPAddress&gt;][ [-Gateway] &lt;IPAddress&gt;][ [-Domain] &lt;String&gt;][ [-DNSServers] &lt;Array&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will assist with updating an existing IPv4 Address Pool.  When updating an IPv4 Address Subnet, you must provide the Subnet Object or Name to modify. Only the Gateway, Domain Name, and DNS Servers can be updated once an IPv4 Subnet has been assigned to a resoruce.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DNSServers &lt;Array&gt;<p>
An array of DNS Server IPv4 Addresses.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Domain &lt;String&gt;<p>
DNS Domain Name of the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Gateway &lt;IPAddress&gt;<p>
IPv4 Address of the default gateway for the subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Subnet, -IPv4Subnet]

The IPv4 Subnet resource object to update.

<table><tbody><tr><td>Aliases</td><td>Subnet, IPv4Subnet</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SubnetMask &lt;IPAddress&gt;<p>
IPv4 Subnet Mask of the subnet.  Please know that if the Subnet is associated with another resource (Ethernet Network, Logical Enclosure or Deployment Server), there will be an error as the mask cannot be changed until it is unassociated with the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.IPv4AddressSubnet [System.Management.Automation.PSCustomObject]**_

 IPv4 Address Subnet



### Return Values

_**HPOneView.Appliance.IPv4AddressSubnet [System.Management.Automation.PSCustomObject]**_

 

Updated IPv4 Address Subnet



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:> Get-HPOVAddressPoolSubnet 192.168.20.0 | Set-HPOVAddressPoolSubnet -Gateway 192.168.20.1
</pre>
Update the IPv4 Subnet Address Pool"s default gateway to the new address.



### Related Links

* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
