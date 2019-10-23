<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVAddressPool
<p>
Retrieve Address Pool information.

### SYNTAX
<p>
<pre><code>Get-HPOVAddressPool [-Type] &lt;Array&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will get the avilable and configured Address Pools, and their associated Ranges from the appliance.  Currently, the appliance supports the following Address Pools:
    
	* VMAC
	* VWWN
	* VSN
	* IPv4
    
You can specify one, some or all of the Pool types.  A Range switch is provided to include the associated Range objects.  A report switch is provided to display a report of each Address Pool type.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;Array&gt;<p>
The Address Pool type.  Accepted values are VMAC, VWWN, VSN, IPv4, or All.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>all</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AddressPool [System.Management.Automation.PSCustomObject]**_

 

Single Address Pool and its contents.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.AddressPool&gt;**_

 

Collection of Address Pools and their contents.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAddressPool
</pre>
Get the address pools.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAddressPool -type vmac
</pre>
Get the vmac address pool.



### Related Links

* [Get-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolRange)
* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange)
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVAddressPool
<p>
Retrieve Address Pool information.

### SYNTAX
<p>
<pre><code>Get-HPOVAddressPool [-Type] &lt;Array&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will get the avilable and configured Address Pools, and their associated Ranges from the appliance.  Currently, the appliance supports the following Address Pools:
    
	* VMAC
	* VWWN
	* VSN
	* IPv4
    
You can specify one, some or all of the Pool types.  A Range switch is provided to include the associated Range objects.  A report switch is provided to display a report of each Address Pool type.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;Array&gt;<p>
The Address Pool type.  Accepted values are VMAC, VWWN, VSN, IPv4, or All.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>all</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AddressPool [System.Management.Automation.PSCustomObject]**_

 

Single Address Pool and its contents.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.AddressPool&gt;**_

 

Collection of Address Pools and their contents.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAddressPool
</pre>
Get the address pools.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAddressPool -type vmac
</pre>
Get the vmac address pool.



### Related Links

* [Get-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolRange)
* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange)
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVAddressPool
<p>
Retrieve Address Pool information.

### SYNTAX
<p>
<pre><code>Get-HPOVAddressPool [-Type] &lt;Array&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will get the avilable and configured Address Pools, and their associated Ranges from the appliance.  Currently, the appliance supports the following Address Pools:
    
	* VMAC
	* VWWN
	* VSN
	* IPv4
    
You can specify one, some or all of the Pool types.  A Range switch is provided to include the associated Range objects.  A report switch is provided to display a report of each Address Pool type.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;Array&gt;<p>
The Address Pool type.  Accepted values are VMAC, VWWN, VSN, IPv4, or All.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>all</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AddressPool [System.Management.Automation.PSCustomObject]**_

 

Single Address Pool and its contents.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.AddressPool&gt;**_

 

Collection of Address Pools and their contents.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAddressPool
</pre>
Get the address pools.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAddressPool -type vmac
</pre>
Get the vmac address pool.



### Related Links

* [Get-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolRange)
* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange)
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
