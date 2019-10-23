<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVResource
<p>
Create a new resource.

### SYNTAX
<p>
<pre><code>New-HPOVResource [-Uri] &lt;String&gt; [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Create a new resource by passing the URI and the resource details in the form of a PowerShell hashtable.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The new resource that is to be created

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Uri &lt;String&gt;<p>
The location where the new object is to be created, using the HTTP POST method.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Resource object to create



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The newly created resource, or async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVResource /rest/ethernet-networks @{vlanId=2000; purpose="General"; name="VLAN 2000"; smartLink=$true; privateNetwork=$false; type="ethernet-networkV2"}
</pre>
Create a new Ethernet Network, "VLAN 2000".



### Related Links

* [Add-HPOVResourceToLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToLabel)
* [Add-HPOVResourceToRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToRack)
* [Add-HPOVResourceToScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToScope)
* [Remove-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResource)
* [Remove-HPOVResourceFromLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromLabel)
* [Remove-HPOVResourceFromScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromScope)
* [Set-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVResource)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVResource
<p>
Create a new resource.

### SYNTAX
<p>
<pre><code>New-HPOVResource [-Uri] &lt;String&gt; [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Create a new resource by passing the URI and the resource details in the form of a PowerShell hashtable.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The new resource that is to be created

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Uri &lt;String&gt;<p>
The location where the new object is to be created, using the HTTP POST method.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Resource object to create



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The newly created resource, or async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVResource /rest/ethernet-networks @{vlanId=2000; purpose="General"; name="VLAN 2000"; smartLink=$true; privateNetwork=$false; type="ethernet-networkV2"}
</pre>
Create a new Ethernet Network, "VLAN 2000".



### Related Links

* [Add-HPOVResourceToLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToLabel)
* [Add-HPOVResourceToRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToRack)
* [Add-HPOVResourceToScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToScope)
* [Remove-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResource)
* [Remove-HPOVResourceFromLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromLabel)
* [Remove-HPOVResourceFromScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromScope)
* [Set-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVResource)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVResource
<p>
Create a new resource.

### SYNTAX
<p>
<pre><code>New-HPOVResource [-Uri] &lt;String&gt; [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Create a new resource by passing the URI and the resource details in the form of a PowerShell hashtable.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The new resource that is to be created

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Uri &lt;String&gt;<p>
The location where the new object is to be created, using the HTTP POST method.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Resource object to create



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The newly created resource, or async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVResource /rest/ethernet-networks @{vlanId=2000; purpose="General"; name="VLAN 2000"; smartLink=$true; privateNetwork=$false; type="ethernet-networkV2"}
</pre>
Create a new Ethernet Network, "VLAN 2000".



### Related Links

* [Add-HPOVResourceToLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToLabel)
* [Add-HPOVResourceToRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToRack)
* [Add-HPOVResourceToScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVResourceToScope)
* [Remove-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResource)
* [Remove-HPOVResourceFromLabel](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromLabel)
* [Remove-HPOVResourceFromScope](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVResourceFromScope)
* [Set-HPOVResource](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVResource)


***
<div align=right><a href="#Top">Top</a></div>
