<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVRack
<p>
Create a new facilities Rack.

### SYNTAX
<p>
<pre><code>New-HPOVRack [-Name] &lt;String&gt;[ [-ThermalLimit] &lt;Int&gt;][ [-SerialNumber] &lt;String&gt;][ [-PartNumber] &lt;String&gt;][ [-Model] &lt;&gt;][ [-Depth] &lt;Int&gt;][ [-Height] &lt;Int&gt;][ [-UHeight] &lt;Int&gt;][ [-Width] &lt;Int&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack is a physical structure that contains IT equipment such as enclosures, servers, power delivery devices, and unmanaged devices (an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages.

When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack (width, height, and depth), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

This Cmdlet will create a new Rack resource.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Depth &lt;Int&gt;<p>
Rack depth, in millimeters.

Default: 1000

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1000</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Height &lt;Int&gt;<p>
Height of rack, in millimeters.

Default: 2004

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>2004</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Model &lt;&gt;<p>
Provide the model of the rack to add.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PartNumber &lt;String&gt;<p>
Part number of the rack resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SerialNumber &lt;String&gt;<p>
Serial number of the rack resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ThermalLimit &lt;Int&gt;<p>
Thermal limit supported by the rack, in BTU"s.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UHeight &lt;Int&gt;<p>
The rack unit height of the rack.

Default: 40

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>220</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Width &lt;Int&gt;<p>
Width of rack, in millimeters.

Default: 600

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>600</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Facilities.Rack**_

 

Newly created rack.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Params = @{

	Name         = "Rack-230";
	ThermalLimit = 10000;
	SerialNumber = "AABB1122CCDD";
	PartNumber   = "AF046A";
	Depth        = 1075;
	Height       = 2032;
	UHeight      = 42;
	Width        = 600

}
New-HPOVRack @Params</pre>
Create new "Rack-230" rack resource.



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Add-HPOVRackToDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackToDataCenter)
* [Get-HPOVRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRack)
* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Get-HPOVRackMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackMember)
* [Remove-HPOVRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRack)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)
* [Remove-HPOVRackMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackMember)
* [Set-HPOVRackMemberLocation](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRackMemberLocation)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVRack
<p>
Create a new facilities Rack.

### SYNTAX
<p>
<pre><code>New-HPOVRack [-Name] &lt;String&gt;[ [-ThermalLimit] &lt;Int&gt;][ [-SerialNumber] &lt;String&gt;][ [-PartNumber] &lt;String&gt;][ [-Model] &lt;&gt;][ [-Depth] &lt;Int&gt;][ [-Height] &lt;Int&gt;][ [-UHeight] &lt;Int&gt;][ [-Width] &lt;Int&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack is a physical structure that contains IT equipment such as enclosures, servers, power delivery devices, and unmanaged devices (an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages.

When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack (width, height, and depth), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

This Cmdlet will create a new Rack resource.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Depth &lt;Int&gt;<p>
Rack depth, in millimeters.

Default: 1000

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1000</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Height &lt;Int&gt;<p>
Height of rack, in millimeters.

Default: 2004

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>2004</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Model &lt;&gt;<p>
Provide the model of the rack to add.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PartNumber &lt;String&gt;<p>
Part number of the rack resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SerialNumber &lt;String&gt;<p>
Serial number of the rack resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ThermalLimit &lt;Int&gt;<p>
Thermal limit supported by the rack, in BTU"s.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UHeight &lt;Int&gt;<p>
The rack unit height of the rack.

Default: 40

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>220</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Width &lt;Int&gt;<p>
Width of rack, in millimeters.

Default: 600

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>600</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Facilities.Rack**_

 

Newly created rack.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Params = @{

	Name         = "Rack-230";
	ThermalLimit = 10000;
	SerialNumber = "AABB1122CCDD";
	PartNumber   = "AF046A";
	Depth        = 1075;
	Height       = 2032;
	UHeight      = 42;
	Width        = 600

}
New-HPOVRack @Params</pre>
Create new "Rack-230" rack resource.



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Add-HPOVRackToDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackToDataCenter)
* [Get-HPOVRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRack)
* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Get-HPOVRackMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackMember)
* [Remove-HPOVRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRack)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)
* [Remove-HPOVRackMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackMember)
* [Set-HPOVRackMemberLocation](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRackMemberLocation)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVRack
<p>
Create a new facilities Rack.

### SYNTAX
<p>
<pre><code>New-HPOVRack [-Name] &lt;String&gt;[ [-ThermalLimit] &lt;Int&gt;][ [-SerialNumber] &lt;String&gt;][ [-PartNumber] &lt;String&gt;][ [-Model] &lt;&gt;][ [-Depth] &lt;Int&gt;][ [-Height] &lt;Int&gt;][ [-UHeight] &lt;Int&gt;][ [-Width] &lt;Int&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack is a physical structure that contains IT equipment such as enclosures, servers, power delivery devices, and unmanaged devices (an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages.

When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack (width, height, and depth), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

This Cmdlet will create a new Rack resource.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Depth &lt;Int&gt;<p>
Rack depth, in millimeters.

Default: 1000

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1000</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Height &lt;Int&gt;<p>
Height of rack, in millimeters.

Default: 2004

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>2004</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Model &lt;&gt;<p>
Provide the model of the rack to add.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PartNumber &lt;String&gt;<p>
Part number of the rack resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SerialNumber &lt;String&gt;<p>
Serial number of the rack resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ThermalLimit &lt;Int&gt;<p>
Thermal limit supported by the rack, in BTU"s.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UHeight &lt;Int&gt;<p>
The rack unit height of the rack.

Default: 40

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>220</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Width &lt;Int&gt;<p>
Width of rack, in millimeters.

Default: 600

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>600</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Facilities.Rack**_

 

Newly created rack.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Params = @{

	Name         = "Rack-230";
	ThermalLimit = 10000;
	SerialNumber = "AABB1122CCDD";
	PartNumber   = "AF046A";
	Depth        = 1075;
	Height       = 2032;
	UHeight      = 42;
	Width        = 600

}
New-HPOVRack @Params</pre>
Create new "Rack-230" rack resource.



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Add-HPOVRackToDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackToDataCenter)
* [Get-HPOVRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRack)
* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Get-HPOVRackMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackMember)
* [Remove-HPOVRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRack)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)
* [Remove-HPOVRackMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackMember)
* [Set-HPOVRackMemberLocation](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRackMemberLocation)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
