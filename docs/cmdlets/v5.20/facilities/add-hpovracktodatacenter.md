---
description: Add rack resource to DataCenter.
---

# Add-HPOVRackToDataCenter

## Syntax

```text
Add-HPOVRackToDataCenter
    [-InputObject] <>
    [-DataCenter] <>
    [-X <>]
    [-Y <>]
    [-Millimeters <>]
    [-Rotate <>]
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

## Description

A rack is a physical structure that contains IT equipment such as enclosures, rack managers, servers, power delivery devices, and unmanaged devices (an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages.

When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack (width, height, and depth), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

{% hint style="info" %}
 When the appliance discovers Intelligent Series Racks, it sets the rack height automatically using the Intelligent Rack Location Discovery Services for c7000 enclosures. For non-intelligent racks or for empty racks, the default rack height is 42U.
{% endhint %}


After adding a rack to the appliance for management, you can add the rack to a data center to visualize the data center layout and to monitor device power and cooling data.

After the rack is under management, you can configure the power delivery topology with redundant and uninterruptible power supplies to the devices in the rack.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Server administrator.
{% endhint %}

## Examples

###  Example 1 

```text
$DC = Get-HPOVDataCenter -Name Houston_DC1 -ErrorAction Stop
$X = 10
$Y = 12
Get-HPOVRack -Name MyRack -ErrorAction Stop | Add-HPOVRackToDataCenter -DataCenter $DC -X $X -Y $Y
```

Add "MyRack" to "Houston_DC1" datacenter object, located at 10",12".

## Parameters

### -InputObject &lt;&gt;

The Rack object from `Get-HPOVRack`.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -DataCenter &lt;&gt;

The DataCenter object from `Get-HPOVDataCenter`.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -X &lt;&gt;

The X coordinate in the DC.  Value can be in US Feet or Millimeters.  If specifying Millimeters, you need to include the `-Millimeters` switch parameter.  Feet will be converted to Millimeters.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Y &lt;&gt;

The Y coordinate in the DC.  Value can be in US Feet or Millimeters.  If specifying Millimeters, you need to include the `-Millimeters` switch parameter.  Feet will be converted to Millimeters.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Rotate &lt;&gt;

Specify the degree rotation of the rack.
Allowed range 0 to 360

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Millimeters &lt;&gt;

If X and/or Y are in Millimeters, you must include this parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

Rack resource object from [`Get-HPOVRack`](get-hpovrack.md).

## Return Values

_**HPOneView.Facilities.DataCenter [System.Management.Automation.PSCustomObject]**_

Updated DataCenter object with the newly added Rack resource in the contents property.

## Related Links

* [Get-HPOVDataCenter](get-hpovdatacenter.md)
* [Get-HPOVRack](get-hpovrack.md)
* [Add-HPOVResourceToRack](add-hpovresourcetorack.md)
