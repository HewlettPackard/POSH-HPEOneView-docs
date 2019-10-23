<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVAddressPoolSubnet
<p>
Retrieve Address Subnet Pool information.

### SYNTAX
<p>
<pre><code>Get-HPOVAddressPoolSubnet [-NetworkId] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Using this Cmdlet will display the configured IPv4 Subnet Address Pool(s) configured on an HPE OneView appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NetworkId &lt;String&gt;<p>
Specify the Network ID of the subnet in order to filter the results.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  This Cmdlet does not support pipeline operations.**_

 



### Return Values

_**HPOneView.Appliance.IPAddressSubnet [System.Management.Automation.PSCustomObject]**_

 

Single IPv4 Subnet Address Pool Range.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.IPAddressSubnet&gt;**_

 

Collection of IPv4 Subnet Address Pool Range(s).



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAddressPoolSubnet
Appliance            Network ID   Subnet Mask   Gateway        DNS Server                   Domain Name       Ranges
---------            ----------   -----------   -------        ----------                   -----------       ------
hpov-tot1.domain.com 172.20.0.0   255.255.0.0   172.20.0.1     {10.250.33.12, 10.250.34.80} domain.com        Prod1
hpov-tot1.domain.com 192.168.20.0 255.255.255.0 192.168.20.254 {10.250.33.12, 10.250.34.80} vlan20.domain.lab VLAN20Prod
hpov-tot1.domain.com 192.168.10.0 255.255.255.0 192.168.10.254 {10.250.33.12, 10.250.34.80} domain.lab        VLAN10 Prod

</pre>
Get the configured IPv4 Address Pools from all appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAddressPoolSubnet -NetworkId 192.168.20.0
Appliance            Network ID   Subnet Mask   Gateway        DNS Server                   Domain Name       Ranges
---------            ----------   -----------   -------        ----------                   -----------       ------
hpov-tot1.domain.com 192.168.20.0 255.255.255.0 192.168.20.254 {10.250.33.12, 10.250.34.80} vlan20.domain.lab VLAN20Prod

</pre>
Get the specified IPv4 Address Pool from all appliances.



### Related Links

* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVAddressPoolSubnet
<p>
Retrieve Address Subnet Pool information.

### SYNTAX
<p>
<pre><code>Get-HPOVAddressPoolSubnet [-NetworkId] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Using this Cmdlet will display the configured IPv4 Subnet Address Pool(s) configured on an HPE OneView appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NetworkId &lt;String&gt;<p>
Specify the Network ID of the subnet in order to filter the results.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  This Cmdlet does not support pipeline operations.**_

 



### Return Values

_**HPOneView.Appliance.IPv4AddressSubnet [System.Management.Automation.PSCustomObject]**_

 

Single IPv4 Subnet Address Pool Range.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.IPv4AddressSubnet&gt;**_

 

Collection of IPv4 Subnet Address Pool Range(s).



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAddressPoolSubnet
Appliance            Network ID   Subnet Mask   Gateway        DNS Server                   Domain Name       Ranges
---------            ----------   -----------   -------        ----------                   -----------       ------
hpov-tot1.domain.com 172.20.0.0   255.255.0.0   172.20.0.1     {10.250.33.12, 10.250.34.80} domain.com        Prod1
hpov-tot1.domain.com 192.168.20.0 255.255.255.0 192.168.20.254 {10.250.33.12, 10.250.34.80} vlan20.domain.lab VLAN20Prod
hpov-tot1.domain.com 192.168.10.0 255.255.255.0 192.168.10.254 {10.250.33.12, 10.250.34.80} domain.lab        VLAN10 Prod

</pre>
Get the configured IPv4 Address Pools from all appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAddressPoolSubnet -NetworkId 192.168.20.0
Appliance            Network ID   Subnet Mask   Gateway        DNS Server                   Domain Name       Ranges
---------            ----------   -----------   -------        ----------                   -----------       ------
hpov-tot1.domain.com 192.168.20.0 255.255.255.0 192.168.20.254 {10.250.33.12, 10.250.34.80} vlan20.domain.lab VLAN20Prod

</pre>
Get the specified IPv4 Address Pool from all appliances.



### Related Links

* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVAddressPoolSubnet
<p>
Retrieve Address Subnet Pool information.

### SYNTAX
<p>
<pre><code>Get-HPOVAddressPoolSubnet [-NetworkId] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Using this Cmdlet will display the configured IPv4 Subnet Address Pool(s) configured on an HPE OneView appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NetworkId &lt;String&gt;<p>
Specify the Network ID of the subnet in order to filter the results.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  This Cmdlet does not support pipeline operations.**_

 



### Return Values

_**HPOneView.Appliance.IPv4AddressSubnet [System.Management.Automation.PSCustomObject]**_

 

Single IPv4 Subnet Address Pool Range.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.IPv4AddressSubnet&gt;**_

 

Collection of IPv4 Subnet Address Pool Range(s).



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAddressPoolSubnet
Appliance            Network ID   Subnet Mask   Gateway        DNS Server                   Domain Name       Ranges
---------            ----------   -----------   -------        ----------                   -----------       ------
hpov-tot1.domain.com 172.20.0.0   255.255.0.0   172.20.0.1     {10.250.33.12, 10.250.34.80} domain.com        Prod1
hpov-tot1.domain.com 192.168.20.0 255.255.255.0 192.168.20.254 {10.250.33.12, 10.250.34.80} vlan20.domain.lab VLAN20Prod
hpov-tot1.domain.com 192.168.10.0 255.255.255.0 192.168.10.254 {10.250.33.12, 10.250.34.80} domain.lab        VLAN10 Prod

</pre>
Get the configured IPv4 Address Pools from all appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAddressPoolSubnet -NetworkId 192.168.20.0
Appliance            Network ID   Subnet Mask   Gateway        DNS Server                   Domain Name       Ranges
---------            ----------   -----------   -------        ----------                   -----------       ------
hpov-tot1.domain.com 192.168.20.0 255.255.255.0 192.168.20.254 {10.250.33.12, 10.250.34.80} vlan20.domain.lab VLAN20Prod

</pre>
Get the specified IPv4 Address Pool from all appliances.



### Related Links

* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
