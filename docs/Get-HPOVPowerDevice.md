<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVPowerDevice
<p>
Retrieve Power Device (iPDU) resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVPowerDevice[ [-Name] &lt;String&gt;][ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of power device resources which have the specified name, and display the information about the power device.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the power device resource to be returned.  All power device resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Filter the Power Delivery Device type.  Allowed values:

	* HPIpduCore
	* HPIpduAcModule
	* LoadSegment
	* HPIpduOutletBar
	* HPIpduOutlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.PowerDeliveryDevice [System.Management.Automation.PSCustomObject]**_

 

The matching power device resources

 _**System.Collections.ArrayList &lt;HPOneView.PowerDeliveryDevice&gt;**_

 

The matching power device resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$powerDevices = Get-HPOVPowerDevice
</pre>
Return all the power devices managed by this appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$powerDeviceA = Get-HPOVPowerDevice "iPDU_A"
</pre>
Return the power device resource with name "iPDU_A".



### Related Links

* [Add-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDevice)
* [Add-HPOVPowerDeviceConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDeviceConnection)
* [New-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVPowerDevice)
* [Remove-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPowerDevice)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVPowerDevice
<p>
Retrieve Power Device (iPDU) resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVPowerDevice[ [-Name] &lt;String&gt;][ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of power device resources which have the specified name, and display the information about the power device.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the power device resource to be returned.  All power device resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Filter the Power Delivery Device type.  Allowed values:

	* HPIpduCore
	* HPIpduAcModule
	* LoadSegment
	* HPIpduOutletBar
	* HPIpduOutlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.PowerDeliveryDevice [System.Management.Automation.PSCustomObject]**_

 

The matching power device resources

 _**System.Collections.ArrayList &lt;HPOneView.PowerDeliveryDevice&gt;**_

 

The matching power device resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$powerDevices = Get-HPOVPowerDevice
</pre>
Return all the power devices managed by this appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$powerDeviceA = Get-HPOVPowerDevice "iPDU_A"
</pre>
Return the power device resource with name "iPDU_A".



### Related Links

* [Add-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDevice)
* [Add-HPOVPowerDeviceConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDeviceConnection)
* [New-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVPowerDevice)
* [Remove-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPowerDevice)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVPowerDevice
<p>
Retrieve Power Device (iPDU) resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVPowerDevice[ [-Name] &lt;String&gt;][ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of power device resources which have the specified name, and display the information about the power device.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the power device resource to be returned.  All power device resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Filter the Power Delivery Device type.  Allowed values:

	* HPIpduCore
	* HPIpduAcModule
	* LoadSegment
	* HPIpduOutletBar
	* HPIpduOutlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.PowerDeliveryDevice [System.Management.Automation.PSCustomObject]**_

 

The matching power device resources

 _**System.Collections.ArrayList &lt;HPOneView.PowerDeliveryDevice&gt;**_

 

The matching power device resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$powerDevices = Get-HPOVPowerDevice
</pre>
Return all the power devices managed by this appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$powerDeviceA = Get-HPOVPowerDevice "iPDU_A"
</pre>
Return the power device resource with name "iPDU_A".



### Related Links

* [Add-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDevice)
* [Add-HPOVPowerDeviceConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDeviceConnection)
* [New-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVPowerDevice)
* [Remove-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPowerDevice)


***
<div align=right><a href="#Top">Top</a></div>
