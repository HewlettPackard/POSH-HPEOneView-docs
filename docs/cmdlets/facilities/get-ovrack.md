---
description: Retrieve a defined Rack.
---

# Get-OVRack

## Syntax

```powershell
Get-OVRack
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A rack is a physical structure that contains IT equipment such as enclosures, servers, power delivery devices, and unmanaged devices (an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages. When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack (width, height, and depth), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

This Cmdlet will retrieve all or a specific Rack resource object.

???+ info
    Minimum required privileges: Read only

## Examples

###  Example 1 

```powershell
Get-OVRack
```

Retrieve all defined DataCenters on the appliance.

###  Example 2 

```powershell
Get-OVRack -Name Rack22*
```

Locate all racks objects that begin with "Rack22".

## Parameters

### -Name &lt;String&gt;

Rack name.  Supports wildcard (*) character.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Datacenter &lt;Object&gt;

Filter racks that are a member of a data center.  Provide the data center object from Get-HPOVDatacenter Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Facilities.Rack"
    A Rack resource object.
    

## Related Links

* [Add-OVRackToDataCenter](add-ovracktodatacenter.md)
* [Add-OVResourceToRack](add-ovresourcetorack.md)
* [Get-OVRackMember](get-ovrackmember.md)
* [New-OVRack](new-ovrack.md)
* [Remove-OVRack](remove-ovrack.md)
* [Remove-OVRackMember](remove-ovrackmember.md)
* [Set-OVRackMemberLocation](set-ovrackmemberlocation.md)
