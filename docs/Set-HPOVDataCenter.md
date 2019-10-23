<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVDataCenter
<p>
Modify an existing Datacenter resource.

### SYNTAX
<p>
<pre><code>Set-HPOVDataCenter [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Width] &lt;Float&gt; [-Depth] &lt;Float&gt;[ [-Millimeters] &lt;SwitchParameter&gt;][ [-ElectricalDerating] &lt;Int&gt;][ [-ElectricalDeratingType] &lt;String&gt;][ [-DefaultVoltage] &lt;Int&gt;][ [-Currency] &lt;String&gt;][ [-PowerCosts] &lt;Float&gt;][ [-CoolingCapacity] &lt;Int&gt;][ [-CoolingMultiplier] &lt;Float&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A data center represents a physically contiguous area in which racks containing IT equipment are located.
For example, you have IT equipment in two rooms or on separate floors. You could create a data center for each of these areas.
Each server, enclosure, or power distribution device in your data center can report its power requirements, but it can be difficult to understand the power and cooling requirements for your data center as a whole. The appliance enables you to bring power and cooling management of your servers, enclosures, and power delivery devices together in a single management system.
When you initialize the appliance for the first time, it creates a data center named Datacenter 1. The appliance provides this data center as a place to visualize your racks. You can rename or edit this data center to match the values and layout of your data center, you can use it as the basis for a planned data center model, or you can delete this data center without adverse effects.

This Cmdlet will create a new datacenter.  You will need to specify the Name and dimensions.  Optionally, you can override the default Electrical Derating, default voltage, local currency (which will aid in power calculation costs) and power cooling capacity.  Remote Support settings can only be set when Remote Support has been enabled and configured on the appliance.  If omitting Remote Support location settings, then the datacenter will default to the default location set.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CoolingCapacity &lt;Int&gt;<p>
The maximum cooling capacity for the data center, in KW. The appliance analyzes heat generation using this value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CoolingMultiplier &lt;Float&gt;<p>
The ratio of cooling cost to power cost for the data center.

This value represents the relative cost of cooling the system compared to the cost of powering the system. The default value of 1.5 indicates that it costs 1.5 times as much to cool the system as it does to power the system.

Default:  1.5

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1.5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Currency &lt;String&gt;<p>
The currency unit for energy costs.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>USD</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DefaultVoltage &lt;Int&gt;<p>
The default power line voltage for the data center.

Default: 220

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>220</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Depth &lt;Float&gt;<p>
Depth of the datacenter, in (US) Feet.  Maximum of 50 meters (164.042 feet).  Millimeters can be used, which requires the -Millimeters switch parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ElectricalDerating &lt;Int&gt;<p>
If Custom ElectricalDetratingType is set to Custom, specify a value between 20-100%.

Default: 20%

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>20</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ElectricalDeratingType &lt;String&gt;<p>
The percentage below the rated maximum power dissipation at which the devices are operated, accounting for case/body temperature, ambient temperature, and type of cooling.

You can specify a derating percentage by choosing Custom, or you can choose not to apply derating to the rated maximum power dissipation by specifying None.

Default: NA/Jp

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>NA/Jp</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Datacenter object from Get-HPOVDataCenter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Millimeters &lt;SwitchParameter&gt;<p>
If specifying millimeter value for Width and Depth, this parameter is required.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
A name to identify the data center. Must not exceed 255 characters; no leading spaces.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerCosts &lt;Float&gt;<p>
The energy cost per kWh, specified by the Currency.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Width &lt;Float&gt;<p>
Width of the datacenter, in (US) Feet.  Maximum of 50 meters (164.042 feet).  Millimeters can be used, which requires the -Millimeters switch parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Facilities.DataCenter**_

 

Newly created datacenter.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$DataCenter1Name = "LA DC 12"

$DataCenter1Width = 30

$DataCenter1Depth = 30

$DataCenter1Voltage = 220

$DataCenter1PowerCosts = 0.07

$DataCenter1CoolingCapacity = 250

New-HPOVDataCenter -Name $DataCenter1Name -Width $DataCenter1Width -Depth $DataCenter1Depth -DefaultVoltage $DataCenter1Voltage -PowerCosts $DataCenter1PowerCosts -CoolingCapacity $DataCenter1CoolingCapacity</pre>
Create new "LA DC 12" datacenter.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$NewDCParams = @{

Name             = "Houston DC1";
	Width            = 10668;
	Depth            = 13716;
	Millimeters      = $True;
	DefaultVoltage   = 240e;
	PowerCosts       = 0.10;
	CoolingCapacity  = 350;
	Address1         = "123 Main Place";
	Address2         = "Suite 400";
	City             = "Houston;
	State            = "TX";
	Country          = "US";
	PostCode         = "77002";
	TimeZone         = "US/Central";
	PrimaryContact   = (Get-HPOVRemoteSupportContact -Name "Joe Ellis" -EA Stop)
	SecondaryContact = (Get-HPOVRemoteSupportContact -Name "Brandon Pear" -EA Stop)

}
New-HPOVDataCenter @NewDC2Params</pre>
Create a new datacenter with Remote Support settings.



### Related Links

* [Get-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVDataCenter)
* [New-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVDataCenter)
* [Remove-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVDataCenter)
* [Set-HPOVDataCenterRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenterRemoteSupport)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVDataCenter
<p>
Modify an existing Datacenter resource.

### SYNTAX
<p>
<pre><code>Set-HPOVDataCenter [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Width] &lt;Float&gt; [-Depth] &lt;Float&gt;[ [-Millimeters] &lt;SwitchParameter&gt;][ [-ElectricalDerating] &lt;Int&gt;][ [-ElectricalDeratingType] &lt;String&gt;][ [-DefaultVoltage] &lt;Int&gt;][ [-Currency] &lt;String&gt;][ [-PowerCosts] &lt;Float&gt;][ [-CoolingCapacity] &lt;Int&gt;][ [-CoolingMultiplier] &lt;Float&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A data center represents a physically contiguous area in which racks containing IT equipment are located.
For example, you have IT equipment in two rooms or on separate floors. You could create a data center for each of these areas.
Each server, enclosure, or power distribution device in your data center can report its power requirements, but it can be difficult to understand the power and cooling requirements for your data center as a whole. The appliance enables you to bring power and cooling management of your servers, enclosures, and power delivery devices together in a single management system.
When you initialize the appliance for the first time, it creates a data center named Datacenter 1. The appliance provides this data center as a place to visualize your racks. You can rename or edit this data center to match the values and layout of your data center, you can use it as the basis for a planned data center model, or you can delete this data center without adverse effects.

This Cmdlet will create a new datacenter.  You will need to specify the Name and dimensions.  Optionally, you can override the default Electrical Derating, default voltage, local currency (which will aid in power calculation costs) and power cooling capacity.  Remote Support settings can only be set when Remote Support has been enabled and configured on the appliance.  If omitting Remote Support location settings, then the datacenter will default to the default location set.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CoolingCapacity &lt;Int&gt;<p>
The maximum cooling capacity for the data center, in KW. The appliance analyzes heat generation using this value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CoolingMultiplier &lt;Float&gt;<p>
The ratio of cooling cost to power cost for the data center.

This value represents the relative cost of cooling the system compared to the cost of powering the system. The default value of 1.5 indicates that it costs 1.5 times as much to cool the system as it does to power the system.

Default:  1.5

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1.5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Currency &lt;String&gt;<p>
The currency unit for energy costs.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>USD</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DefaultVoltage &lt;Int&gt;<p>
The default power line voltage for the data center.

Default: 220

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>220</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Depth &lt;Float&gt;<p>
Depth of the datacenter, in (US) Feet.  Maximum of 50 meters (164.042 feet).  Millimeters can be used, which requires the -Millimeters switch parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ElectricalDerating &lt;Int&gt;<p>
If Custom ElectricalDetratingType is set to Custom, specify a value between 20-100%.

Default: 20%

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>20</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ElectricalDeratingType &lt;String&gt;<p>
The percentage below the rated maximum power dissipation at which the devices are operated, accounting for case/body temperature, ambient temperature, and type of cooling.

You can specify a derating percentage by choosing Custom, or you can choose not to apply derating to the rated maximum power dissipation by specifying None.

Default: NA/Jp

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>NA/Jp</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Datacenter object from Get-HPOVDataCenter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Millimeters &lt;SwitchParameter&gt;<p>
If specifying millimeter value for Width and Depth, this parameter is required.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
A name to identify the data center. Must not exceed 255 characters; no leading spaces.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerCosts &lt;Float&gt;<p>
The energy cost per kWh, specified by the Currency.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Width &lt;Float&gt;<p>
Width of the datacenter, in (US) Feet.  Maximum of 50 meters (164.042 feet).  Millimeters can be used, which requires the -Millimeters switch parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Facilities.DataCenter**_

 

Newly created datacenter.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$DataCenter1Name = "LA DC 12"

$DataCenter1Width = 30

$DataCenter1Depth = 30

$DataCenter1Voltage = 220

$DataCenter1PowerCosts = 0.07

$DataCenter1CoolingCapacity = 250

New-HPOVDataCenter -Name $DataCenter1Name -Width $DataCenter1Width -Depth $DataCenter1Depth -DefaultVoltage $DataCenter1Voltage -PowerCosts $DataCenter1PowerCosts -CoolingCapacity $DataCenter1CoolingCapacity</pre>
Create new "LA DC 12" datacenter.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$NewDCParams = @{

Name             = "Houston DC1";
	Width            = 10668;
	Depth            = 13716;
	Millimeters      = $True;
	DefaultVoltage   = 240e;
	PowerCosts       = 0.10;
	CoolingCapacity  = 350;
	Address1         = "123 Main Place";
	Address2         = "Suite 400";
	City             = "Houston;
	State            = "TX";
	Country          = "US";
	PostCode         = "77002";
	TimeZone         = "US/Central";
	PrimaryContact   = (Get-HPOVRemoteSupportContact -Name "Joe Ellis" -EA Stop)
	SecondaryContact = (Get-HPOVRemoteSupportContact -Name "Brandon Pear" -EA Stop)

}
New-HPOVDataCenter @NewDC2Params</pre>
Create a new datacenter with Remote Support settings.



### Related Links

* [Get-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVDataCenter)
* [New-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVDataCenter)
* [Remove-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVDataCenter)
* [Set-HPOVDataCenterRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenterRemoteSupport)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVDataCenter
<p>
Modify an existing Datacenter resource.

### SYNTAX
<p>
<pre><code>Set-HPOVDataCenter [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Width] &lt;Float&gt; [-Depth] &lt;Float&gt;[ [-Millimeters] &lt;SwitchParameter&gt;][ [-ElectricalDerating] &lt;Int&gt;][ [-ElectricalDeratingType] &lt;String&gt;][ [-DefaultVoltage] &lt;Int&gt;][ [-Currency] &lt;String&gt;][ [-PowerCosts] &lt;Float&gt;][ [-CoolingCapacity] &lt;Int&gt;][ [-CoolingMultiplier] &lt;Float&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A data center represents a physically contiguous area in which racks containing IT equipment are located.
For example, you have IT equipment in two rooms or on separate floors. You could create a data center for each of these areas.
Each server, enclosure, or power distribution device in your data center can report its power requirements, but it can be difficult to understand the power and cooling requirements for your data center as a whole. The appliance enables you to bring power and cooling management of your servers, enclosures, and power delivery devices together in a single management system.
When you initialize the appliance for the first time, it creates a data center named Datacenter 1. The appliance provides this data center as a place to visualize your racks. You can rename or edit this data center to match the values and layout of your data center, you can use it as the basis for a planned data center model, or you can delete this data center without adverse effects.

This Cmdlet will create a new datacenter.  You will need to specify the Name and dimensions.  Optionally, you can override the default Electrical Derating, default voltage, local currency (which will aid in power calculation costs) and power cooling capacity.  Remote Support settings can only be set when Remote Support has been enabled and configured on the appliance.  If omitting Remote Support location settings, then the datacenter will default to the default location set.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CoolingCapacity &lt;Int&gt;<p>
The maximum cooling capacity for the data center, in KW. The appliance analyzes heat generation using this value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CoolingMultiplier &lt;Float&gt;<p>
The ratio of cooling cost to power cost for the data center.

This value represents the relative cost of cooling the system compared to the cost of powering the system. The default value of 1.5 indicates that it costs 1.5 times as much to cool the system as it does to power the system.

Default:  1.5

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1.5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Currency &lt;String&gt;<p>
The currency unit for energy costs.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>USD</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DefaultVoltage &lt;Int&gt;<p>
The default power line voltage for the data center.

Default: 220

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>220</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Depth &lt;Float&gt;<p>
Depth of the datacenter, in (US) Feet.  Maximum of 50 meters (164.042 feet).  Millimeters can be used, which requires the -Millimeters switch parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ElectricalDerating &lt;Int&gt;<p>
If Custom ElectricalDetratingType is set to Custom, specify a value between 20-100%.

Default: 20%

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>20</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ElectricalDeratingType &lt;String&gt;<p>
The percentage below the rated maximum power dissipation at which the devices are operated, accounting for case/body temperature, ambient temperature, and type of cooling.

You can specify a derating percentage by choosing Custom, or you can choose not to apply derating to the rated maximum power dissipation by specifying None.

Default: NA/Jp

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>NA/Jp</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Datacenter object from Get-HPOVDataCenter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Millimeters &lt;SwitchParameter&gt;<p>
If specifying millimeter value for Width and Depth, this parameter is required.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
A name to identify the data center. Must not exceed 255 characters; no leading spaces.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerCosts &lt;Float&gt;<p>
The energy cost per kWh, specified by the Currency.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Width &lt;Float&gt;<p>
Width of the datacenter, in (US) Feet.  Maximum of 50 meters (164.042 feet).  Millimeters can be used, which requires the -Millimeters switch parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Facilities.DataCenter**_

 

Newly created datacenter.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$DataCenter1Name = "LA DC 12"

$DataCenter1Width = 30

$DataCenter1Depth = 30

$DataCenter1Voltage = 220

$DataCenter1PowerCosts = 0.07

$DataCenter1CoolingCapacity = 250

New-HPOVDataCenter -Name $DataCenter1Name -Width $DataCenter1Width -Depth $DataCenter1Depth -DefaultVoltage $DataCenter1Voltage -PowerCosts $DataCenter1PowerCosts -CoolingCapacity $DataCenter1CoolingCapacity</pre>
Create new "LA DC 12" datacenter.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$NewDCParams = @{

Name             = "Houston DC1";
	Width            = 10668;
	Depth            = 13716;
	Millimeters      = $True;
	DefaultVoltage   = 240e;
	PowerCosts       = 0.10;
	CoolingCapacity  = 350;
	Address1         = "123 Main Place";
	Address2         = "Suite 400";
	City             = "Houston;
	State            = "TX";
	Country          = "US";
	PostCode         = "77002";
	TimeZone         = "US/Central";
	PrimaryContact   = (Get-HPOVRemoteSupportContact -Name "Joe Ellis" -EA Stop)
	SecondaryContact = (Get-HPOVRemoteSupportContact -Name "Brandon Pear" -EA Stop)

}
New-HPOVDataCenter @NewDC2Params</pre>
Create a new datacenter with Remote Support settings.



### Related Links

* [Get-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVDataCenter)
* [New-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVDataCenter)
* [Remove-HPOVDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVDataCenter)
* [Set-HPOVDataCenterRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVDataCenterRemoteSupport)


***
<div align=right><a href="#Top">Top</a></div>
