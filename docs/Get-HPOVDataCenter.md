<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVDataCenter
<p>
Retreive a defined DataCenter.

### SYNTAX
<p>
<pre><code>Get-HPOVDataCenter[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A data center represents a physically contiguous area in which racks containing IT equipment are located.
For example, you have IT equipment in two rooms or on separate floors. You could create a data center for each of these areas.
Each server, enclosure, or power distribution device in your data center can report its power requirements, but it can be difficult to understand the power and cooling requirements for your data center as a whole. The appliance enables you to bring power and cooling management of your servers, enclosures, and power delivery devices together in a single management system.
When you initialize the appliance for the first time, it creates a data center named Datacenter 1. The appliance provides this data center as a place to visualize your racks. You can rename or edit this data center to match the values and layout of your data center, you can use it as the basis for a planned data center model, or you can delete this data center without adverse effects.

This Cmdlet will retrieve all or a specific DataCenter resource object.  If Remote Support has been enabled on the appliance, the DataCenter object will contain a RemoteSupportLocation property that contains the site location (if different from the Default DataCenter), and both the Primary and Secondary contacts.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
DataCenter name.  Supports wildcard (*) character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Facilities.DataCenter**_

 

A DataCenter resource object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVDataCenter</pre>
Retrieve all defined DataCenters on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVDataCenter -Name DC*</pre>
Locate all DataCenter objects that begin with "DC".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVDataCenter | Select -ExpandProperty RemoteSupportLocation</pre>
Retrieve the Remote Support Location property from the found DataCenter resource objects.



### Related Links

* [New-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVDataCenter)
* [Remove-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVDataCenter)
* [Set-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenter)
* [Set-HPOVDataCenterRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenterRemoteSupport)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVDataCenter
<p>
Retreive a defined DataCenter.

### SYNTAX
<p>
<pre><code>Get-HPOVDataCenter[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A data center represents a physically contiguous area in which racks containing IT equipment are located.
For example, you have IT equipment in two rooms or on separate floors. You could create a data center for each of these areas.
Each server, enclosure, or power distribution device in your data center can report its power requirements, but it can be difficult to understand the power and cooling requirements for your data center as a whole. The appliance enables you to bring power and cooling management of your servers, enclosures, and power delivery devices together in a single management system.
When you initialize the appliance for the first time, it creates a data center named Datacenter 1. The appliance provides this data center as a place to visualize your racks. You can rename or edit this data center to match the values and layout of your data center, you can use it as the basis for a planned data center model, or you can delete this data center without adverse effects.

This Cmdlet will retrieve all or a specific DataCenter resource object.  If Remote Support has been enabled on the appliance, the DataCenter object will contain a RemoteSupportLocation property that contains the site location (if different from the Default DataCenter), and both the Primary and Secondary contacts.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
DataCenter name.  Supports wildcard (*) character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Facilities.DataCenter**_

 

A DataCenter resource object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVDataCenter</pre>
Retrieve all defined DataCenters on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVDataCenter -Name DC*</pre>
Locate all DataCenter objects that begin with "DC".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVDataCenter | Select -ExpandProperty RemoteSupportLocation</pre>
Retrieve the Remote Support Location property from the found DataCenter resource objects.



### Related Links

* [New-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVDataCenter)
* [Remove-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVDataCenter)
* [Set-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenter)
* [Set-HPOVDataCenterRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenterRemoteSupport)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVDataCenter
<p>
Retreive a defined DataCenter.

### SYNTAX
<p>
<pre><code>Get-HPOVDataCenter[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A data center represents a physically contiguous area in which racks containing IT equipment are located.
For example, you have IT equipment in two rooms or on separate floors. You could create a data center for each of these areas.
Each server, enclosure, or power distribution device in your data center can report its power requirements, but it can be difficult to understand the power and cooling requirements for your data center as a whole. The appliance enables you to bring power and cooling management of your servers, enclosures, and power delivery devices together in a single management system.
When you initialize the appliance for the first time, it creates a data center named Datacenter 1. The appliance provides this data center as a place to visualize your racks. You can rename or edit this data center to match the values and layout of your data center, you can use it as the basis for a planned data center model, or you can delete this data center without adverse effects.

This Cmdlet will retrieve all or a specific DataCenter resource object.  If Remote Support has been enabled on the appliance, the DataCenter object will contain a RemoteSupportLocation property that contains the site location (if different from the Default DataCenter), and both the Primary and Secondary contacts.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
DataCenter name.  Supports wildcard (*) character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Facilities.DataCenter**_

 

A DataCenter resource object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVDataCenter</pre>
Retrieve all defined DataCenters on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVDataCenter -Name DC*</pre>
Locate all DataCenter objects that begin with "DC".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVDataCenter | Select -ExpandProperty RemoteSupportLocation</pre>
Retrieve the Remote Support Location property from the found DataCenter resource objects.



### Related Links

* [New-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVDataCenter)
* [Remove-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVDataCenter)
* [Set-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenter)
* [Set-HPOVDataCenterRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenterRemoteSupport)


***
<div align=right><a href="#Top">Top</a></div>
