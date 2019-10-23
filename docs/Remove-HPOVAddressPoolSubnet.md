<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVAddressPoolSubnet
<p>
Delete an IPv4 Subnet Pool from an appliance.

### SYNTAX
<p>
<pre><code>Remove-HPOVAddressPoolSubnet [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to remove one or more IPv4 Subnet Pools and associated Address Pool Ranges from one or more appliances.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Subnet, -IPv4Subnet]
The IPv4 Subnet Pool resource Object.  Can be accepted via pipeline input.

<table><tbody><tr><td>Aliases</td><td>Subnet, IPv4Subnet</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.IPAddressSubnet [System.Management.Automation.PSCustomObject]**_

 IPv4 or IPv6 Subnet Pool from Get-HPOVAddressPoolSubnet



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Result of resource removal



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAddressPoolSubnet | Remove-HPOVAddressPoolSubnet
</pre>
Remove all IPv4 Subnet Address Pools from any connected appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAddressPoolSubnet 192.168.20.0 | Remove-HPOVAddressPoolSubnet
</pre>
Remove "192.168.20.0" IPv4 Subnet Address Pool from MyAppliance.domain.com.



### Related Links

* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVAddressPoolSubnet
<p>
Delete an IPv4 Subnet Pool from an appliance.

### SYNTAX
<p>
<pre><code>Remove-HPOVAddressPoolSubnet [-IPv4Subnet] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to remove one or more IPv4 Subnet Pools and associated Address Pool Ranges from one or more appliances.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Subnet &lt;Object&gt;<p>
Aliases [-Subnet]
The IPv4 Subnet Pool resource Object.  Can be accepted via pipeline input.

<table><tbody><tr><td>Aliases</td><td>Subnet</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.IPv4AddressSubnet [System.Management.Automation.PSCustomObject]**_

 IPv4 Subnet Pool from Get-HPOVAddressPoolSubnet



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Result of resource removal



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAddressPoolSubnet | Remove-HPOVAddressPoolSubnet
</pre>
Remove all IPv4 Subnet Address Pools from any connected appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAddressPoolSubnet 192.168.20.0 | Remove-HPOVAddressPoolSubnet
</pre>
Remove "192.168.20.0" IPv4 Subnet Address Pool from MyAppliance.domain.com.



### Related Links

* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVAddressPoolSubnet
<p>
Delete an IPv4 Subnet Pool from an appliance.

### SYNTAX
<p>
<pre><code>Remove-HPOVAddressPoolSubnet [-IPv4Subnet] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to remove one or more IPv4 Subnet Pools and associated Address Pool Ranges from one or more appliances.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Subnet &lt;Object&gt;<p>
Aliases [-Subnet]
The IPv4 Subnet Pool resource Object.  Can be accepted via pipeline input.

<table><tbody><tr><td>Aliases</td><td>Subnet</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.IPv4AddressSubnet [System.Management.Automation.PSCustomObject]**_

 IPv4 Subnet Pool from Get-HPOVAddressPoolSubnet



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Result of resource removal



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAddressPoolSubnet | Remove-HPOVAddressPoolSubnet
</pre>
Remove all IPv4 Subnet Address Pools from any connected appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAddressPoolSubnet 192.168.20.0 | Remove-HPOVAddressPoolSubnet
</pre>
Remove "192.168.20.0" IPv4 Subnet Address Pool from MyAppliance.domain.com.



### Related Links

* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
