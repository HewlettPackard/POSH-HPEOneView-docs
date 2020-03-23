---
description: Get a member device from a defined Rack.
---

# Get-HPOVRackMember

## Syntax

```text
Get-HPOVRackMember
    [-InputObject] <String>
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A rack is a physical structure that contains IT equipment such as enclosures, servers, power delivery devices, and unmanaged devices (an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages.
When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack (width, height, and depth), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

This Cmdlet will retrieve all or a specific Rack resource object. 

## Examples

###  Example 1 

```text
Get-HPOVRack -Name Rack-221 | Get-HPOVRackMember
```

Retrieve all rack members from the specified rack.

###  Example 2 

```text
$Rack = Get-HPOVRack -Name Rack-221
Get-HPOVRackMember -InputObject $Rack -Name ProdDL380*
```

Retrieve rack members that begin with "ProdDL380" within the "Rack-221" rack resource.

## Parameters

### -InputObject &lt;String&gt;

Rack resource from `Get-HPOVRack`.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Name of a member within the Rack.  Supports (*) wildcard character.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Facilities.Rack**_

Rack resource object from [`Get-HPOVRack`](get-hpovrack.md).

## Return Values

_**HPOneView.Facilities.RackMember**_

The individual rack member resource object.

## Related Links

* [Remove-HPOVRackMember](remove-hpovrackmember.md)
* [Set-HPOVRackMemberLocation](set-hpovrackmemberlocation.md)
