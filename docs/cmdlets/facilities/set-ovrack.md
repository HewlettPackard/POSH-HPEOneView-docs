---
description: Modify an existing rack resource.
---

# Set-OVRack

## Syntax

```powershell
Set-OVRack
    [-InputObject] <Object>
    [-Name <string>]
    [-ThermalLimit <int>]
    [-SerialNumber <string>]
    [-PartNumber <string>]
    [-Model <string>]
    [-Depth <int>]
    [-Height <int>]
    [-UHeight <int>]
    [-Width <int>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A rack is a physical structure that contains IT equipment such as enclosures, servers, power delivery devices, and unmanaged devices (an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages.

When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack (width, height, and depth), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

This Cmdlet will update existing rack resources with updated properties.  This includes updating the name, part number, serial number, model, supported thermal capacity, rack dimensions including rack units, height, width and depth.

???+ info
    Minimum required privileges: Infrastructure administrator or Server administrator

## Examples

###  Example 1 

```powershell
Get-OVRack -Name Rack-1 | Set-OVRack -ThermalLimit 15000

```

Update the specific rack resource thermal limit to 15kW.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Depth &lt;int&gt;

Rack depth, in millimeters.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Height &lt;int&gt;

Height of rack, in millimeters.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The rack object from Get-OVRack.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Model &lt;string&gt;

Provide the model of the rack to add.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Name &lt;string&gt;

Name of resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PartNumber &lt;string&gt;

Part number of the rack resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SerialNumber &lt;string&gt;

Serial number of the rack resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ThermalLimit &lt;int&gt;

Thermal limit supported by the rack, in BTU"s.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UHeight &lt;int&gt;

The rack unit height of the rack.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Width &lt;int&gt;

Width of rack, in millimeters.

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

=== "HPEOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]"
    Rack resource from Get-OVRack.
    

## Return Values

=== "HPEOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]"
    Updated rack resource.
    

## Related Links

* [Add-OVRackManager](../servers/add-ovrackmanager.md)
* [Add-OVRackToDataCenter](add-ovracktodatacenter.md)
* [Get-OVRack](get-ovrack.md)
* [Get-OVRackManager](../servers/get-ovrackmanager.md)
* [Get-OVRackMember](get-ovrackmember.md)
* [New-OVRack](new-ovrack.md)
* [Remove-OVRack](remove-ovrack.md)
* [Remove-OVRackManager](../servers/remove-ovrackmanager.md)
* [Remove-OVRackMember](remove-ovrackmember.md)
* [Set-OVRackMemberLocation](set-ovrackmemberlocation.md)
* [Update-OVRackManager](../servers/update-ovrackmanager.md)
