<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVRack
<p>
Retreive a defined Rack.

### SYNTAX
<p>
<pre><code>Get-HPOVRack[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack is a physical structure that contains IT equipment such as enclosures, servers, power delivery devices, and unmanaged devices (an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages.
When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack (width, height, and depth), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

This Cmdlet will retrieve all or a specific Rack resource object.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Rack name.  Supports wildcard (*) character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Facilities.Rack**_

 

A Rack resource object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRack</pre>
Retrieve all defined DataCenters on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVRack -Name Rack22*</pre>
Locate all racks objects that begin with "Rack22".



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Add-HPOVRackToDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackToDataCenter)
* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Get-HPOVRackMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackMember)
* [New-HPOVRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRack)
* [Remove-HPOVRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRack)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)
* [Remove-HPOVRackMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackMember)
* [Set-HPOVRackMemberLocation](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRackMemberLocation)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVRack
<p>
Retreive a defined Rack.

### SYNTAX
<p>
<pre><code>Get-HPOVRack[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack is a physical structure that contains IT equipment such as enclosures, servers, power delivery devices, and unmanaged devices (an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages.
When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack (width, height, and depth), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

This Cmdlet will retrieve all or a specific Rack resource object.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Rack name.  Supports wildcard (*) character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Facilities.Rack**_

 

A Rack resource object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRack</pre>
Retrieve all defined DataCenters on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVRack -Name Rack22*</pre>
Locate all racks objects that begin with "Rack22".



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Add-HPOVRackToDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackToDataCenter)
* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Get-HPOVRackMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackMember)
* [New-HPOVRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRack)
* [Remove-HPOVRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRack)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)
* [Remove-HPOVRackMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackMember)
* [Set-HPOVRackMemberLocation](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRackMemberLocation)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVRack
<p>
Retreive a defined Rack.

### SYNTAX
<p>
<pre><code>Get-HPOVRack[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack is a physical structure that contains IT equipment such as enclosures, servers, power delivery devices, and unmanaged devices (an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages.
When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack (width, height, and depth), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

This Cmdlet will retrieve all or a specific Rack resource object.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Rack name.  Supports wildcard (*) character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Facilities.Rack**_

 

A Rack resource object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRack</pre>
Retrieve all defined DataCenters on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVRack -Name Rack22*</pre>
Locate all racks objects that begin with "Rack22".



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Add-HPOVRackToDataCenter](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackToDataCenter)
* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Get-HPOVRackMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackMember)
* [New-HPOVRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRack)
* [Remove-HPOVRack](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRack)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)
* [Remove-HPOVRackMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackMember)
* [Set-HPOVRackMemberLocation](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRackMemberLocation)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
