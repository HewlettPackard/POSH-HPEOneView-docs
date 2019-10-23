<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVDataCenter
<p>
Remove a datacenter resource.

### SYNTAX
<p>
<pre><code>Remove-HPOVDataCenter [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A data center represents a physically contiguous area in which racks containing IT equipment are located.
For example, you have IT equipment in two rooms or on separate floors. You could create a data center for each of these areas.
Each server, enclosure, or power distribution device in your data center can report its power requirements, but it can be difficult to understand the power and cooling requirements for your data center as a whole. The appliance enables you to bring power and cooling management of your servers, enclosures, and power delivery devices together in a single management system.
When you initialize the appliance for the first time, it creates a data center named Datacenter 1. The appliance provides this data center as a place to visualize your racks. You can rename or edit this data center to match the values and layout of your data center, you can use it as the basis for a planned data center model, or you can delete this data center without adverse effects.

This Cmdlet will remove 1 or more datacenter resources from an appliance.  Removing a datacenter resource will not delete or remove associated resources, like Racks.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Datacenter object, from Get-HPOVDataCenter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Facilities.DataCenter**_

 Datacenter resource from Get-HPOVDataCenter.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Object with status confirmation the resource was deleted.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVDataCenter -Name DC2 | Remove-HPOVDataCenter</pre>
Remove "DC2" datacenter resource from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVDataCenter | Remove-HPOVDataCenter</pre>
Remove Datacenter resources from the appliance.



### Related Links

* [Get-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVDataCenter)
* [New-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVDataCenter)
* [Set-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenter)
* [Set-HPOVDataCenterRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenterRemoteSupport)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVDataCenter
<p>
Remove a datacenter resource.

### SYNTAX
<p>
<pre><code>Remove-HPOVDataCenter [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A data center represents a physically contiguous area in which racks containing IT equipment are located.
For example, you have IT equipment in two rooms or on separate floors. You could create a data center for each of these areas.
Each server, enclosure, or power distribution device in your data center can report its power requirements, but it can be difficult to understand the power and cooling requirements for your data center as a whole. The appliance enables you to bring power and cooling management of your servers, enclosures, and power delivery devices together in a single management system.
When you initialize the appliance for the first time, it creates a data center named Datacenter 1. The appliance provides this data center as a place to visualize your racks. You can rename or edit this data center to match the values and layout of your data center, you can use it as the basis for a planned data center model, or you can delete this data center without adverse effects.

This Cmdlet will remove 1 or more datacenter resources from an appliance.  Removing a datacenter resource will not delete or remove associated resources, like Racks.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Datacenter object, from Get-HPOVDataCenter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Facilities.DataCenter**_

 Datacenter resource from Get-HPOVDataCenter.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Object with status confirmation the resource was deleted.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVDataCenter -Name DC2 | Remove-HPOVDataCenter</pre>
Remove "DC2" datacenter resource from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVDataCenter | Remove-HPOVDataCenter</pre>
Remove Datacenter resources from the appliance.



### Related Links

* [Get-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVDataCenter)
* [New-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVDataCenter)
* [Set-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenter)
* [Set-HPOVDataCenterRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenterRemoteSupport)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVDataCenter
<p>
Remove a datacenter resource.

### SYNTAX
<p>
<pre><code>Remove-HPOVDataCenter [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A data center represents a physically contiguous area in which racks containing IT equipment are located.
For example, you have IT equipment in two rooms or on separate floors. You could create a data center for each of these areas.
Each server, enclosure, or power distribution device in your data center can report its power requirements, but it can be difficult to understand the power and cooling requirements for your data center as a whole. The appliance enables you to bring power and cooling management of your servers, enclosures, and power delivery devices together in a single management system.
When you initialize the appliance for the first time, it creates a data center named Datacenter 1. The appliance provides this data center as a place to visualize your racks. You can rename or edit this data center to match the values and layout of your data center, you can use it as the basis for a planned data center model, or you can delete this data center without adverse effects.

This Cmdlet will remove 1 or more datacenter resources from an appliance.  Removing a datacenter resource will not delete or remove associated resources, like Racks.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Datacenter object, from Get-HPOVDataCenter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Facilities.DataCenter**_

 Datacenter resource from Get-HPOVDataCenter.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Object with status confirmation the resource was deleted.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVDataCenter -Name DC2 | Remove-HPOVDataCenter</pre>
Remove "DC2" datacenter resource from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVDataCenter | Remove-HPOVDataCenter</pre>
Remove Datacenter resources from the appliance.



### Related Links

* [Get-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVDataCenter)
* [New-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVDataCenter)
* [Set-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenter)
* [Set-HPOVDataCenterRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenterRemoteSupport)


***
<div align=right><a href="#Top">Top</a></div>
