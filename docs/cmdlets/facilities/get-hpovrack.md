# Get-HPOVRack

 [Library Version 5.00]() [Library Version 4.20]() [Library Version 4.10]() 

### HPE OneView 5.00 Library

## Get-HPOVRack

 Retrieve a defined Rack.

### Synatx

```
Get-HPOVRack [[-Name] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

 A rack is a physical structure that contains IT equipment such as enclosures, servers, power delivery devices, and unmanaged devices \(an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance\). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages. When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack \(width, height, and depth\), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

This Cmdlet will retrieve all or a specific Rack resource object.

### Parameters

-ApplianceConnection &lt;Object&gt; Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-Name &lt;String&gt; Rack name. Supports wildcard \(\*\) character.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Facilities.Rack**_

A Rack resource object.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVRack
```

 Retrieve all defined DataCenters on the appliance.

```
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVRack -Name Rack22*
```

 Locate all racks objects that begin with "Rack22". \#\#\# Related Links \* \[Add-HPOVRackManager\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager\) \* \[Add-HPOVRackToDataCenter\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackToDataCenter\) \* \[Get-HPOVRackManager\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager\) \* \[Get-HPOVRackMember\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackMember\) \* \[New-HPOVRack\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRack\) \* \[Remove-HPOVRack\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRack\) \* \[Remove-HPOVRackManager\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager\) \* \[Remove-HPOVRackMember\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackMember\) \* \[Set-HPOVRackMemberLocation\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRackMemberLocation\) \* \[Update-HPOVRackManager\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager\) \*\*\*[Top]() \#\#\# HPE OneView 4.20 Library \#\# Get-HPOVRack

 Retreive a defined Rack. \#\#\# Synatx

Get-HPOVRack \[\[-Name\] &lt;String&gt;\] \[\[-ApplianceConnection\] &lt;Object&gt;\] \[&lt;CommonParameters&gt;\]

### Description

 A rack is a physical structure that contains IT equipment such as enclosures, servers, power delivery devices, and unmanaged devices \(an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance\). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages. When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack \(width, height, and depth\), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

This Cmdlet will retrieve all or a specific Rack resource object.

### Parameters

-ApplianceConnection &lt;Object&gt; Aliases \[-Appliance\]

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-Name &lt;String&gt; Rack name. Supports wildcard \(\*\) character.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Facilities.Rack**_

A Rack resource object.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVRack
```

 Retrieve all defined DataCenters on the appliance.

```
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVRack -Name Rack22*
```

 Locate all racks objects that begin with "Rack22". \#\#\# Related Links \* \[Add-HPOVRackManager\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager\) \* \[Add-HPOVRackToDataCenter\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackToDataCenter\) \* \[Get-HPOVRackManager\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager\) \* \[Get-HPOVRackMember\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackMember\) \* \[New-HPOVRack\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRack\) \* \[Remove-HPOVRack\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRack\) \* \[Remove-HPOVRackManager\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager\) \* \[Remove-HPOVRackMember\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackMember\) \* \[Set-HPOVRackMemberLocation\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRackMemberLocation\) \* \[Update-HPOVRackManager\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager\) \*\*\*[Top]() \#\#\# HPE OneView 4.10 Library \#\# Get-HPOVRack

 Retreive a defined Rack. \#\#\# Synatx

Get-HPOVRack \[\[-Name\] &lt;String&gt;\] \[\[-ApplianceConnection\] &lt;Object&gt;\] \[&lt;CommonParameters&gt;\]

### Description

 A rack is a physical structure that contains IT equipment such as enclosures, servers, power delivery devices, and unmanaged devices \(an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance\). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages. When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack \(width, height, and depth\), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

This Cmdlet will retrieve all or a specific Rack resource object.

### Parameters

-ApplianceConnection &lt;Object&gt; Aliases \[-Appliance\]

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-Name &lt;String&gt; Rack name. Supports wildcard \(\*\) character.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Facilities.Rack**_

A Rack resource object.

### Examples

```
 -------------------------- EXAMPLE 1 -------------------------- Get-HPOVRack
 -------------------------- EXAMPLE 2 -------------------------- Get-HPOVRack -Name Rack22*
```

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

[Top]()

