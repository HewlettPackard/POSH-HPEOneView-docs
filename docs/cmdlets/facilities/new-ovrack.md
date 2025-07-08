---
description: Create a new facilities Rack.
---

# New-OVRack

## Syntax

```powershell
New-OVRack
    [-Name] <String>
    [-ThermalLimit <Int>]
    [-SerialNumber <String>]
    [-PartNumber <String>]
    [-Model <>]
    [-Depth <Int>]
    [-Height <Int>]
    [-UHeight <Int>]
    [-Width <Int>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A rack is a physical structure that contains IT equipment such as enclosures, servers, power delivery devices, and unmanaged devices (an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages.

When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack (width, height, and depth), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

This Cmdlet will create a new rack resource, which brings it under the management of the appliance, and creates a diagram that depicts the rack and its slots. After you add the rack, you can configure the layout of the devices in it by adding, removing, and repositioning the devices.

???+ info
    Minimum required privileges: Infrastructure administrator or Server administrator

## Examples

###  Example 1 

```powershell
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
New-OVRack @Params
```

Create new "Rack-230" rack resource.

## Parameters

### -Name &lt;String&gt;

Name of resource.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ThermalLimit &lt;Int&gt;

Thermal limit supported by the rack, in BTU"s.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SerialNumber &lt;String&gt;

Serial number of the rack resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PartNumber &lt;String&gt;

Part number of the rack resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Depth &lt;Int&gt;

Rack depth, in millimeters.

Default: 1000

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 1000 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Height &lt;Int&gt;

Height of rack, in millimeters.

Default: 2004

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 2004 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UHeight &lt;Int&gt;

The rack unit height of the rack.

Default: 40

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 220 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Width &lt;Int&gt;

Width of rack, in millimeters.

Default: 600

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 600 |
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

### -Model &lt;&gt;

Provide the model of the rack to add.

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
    Newly created rack.
    

## Related Links

* [Add-OVRackManager](../servers/add-ovrackmanager.md)
* [Add-OVRackToDataCenter](add-ovracktodatacenter.md)
* [Get-OVRack](get-ovrack.md)
* [Get-OVRackManager](../servers/get-ovrackmanager.md)
* [Get-OVRackMember](get-ovrackmember.md)
* [Remove-OVRack](remove-ovrack.md)
* [Remove-OVRackManager](../servers/remove-ovrackmanager.md)
* [Remove-OVRackMember](remove-ovrackmember.md)
* [Set-OVRackMemberLocation](set-ovrackmemberlocation.md)
* [Update-OVRackManager](../servers/update-ovrackmanager.md)
