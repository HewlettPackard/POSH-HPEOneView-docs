---
description: Add supported resource to rack.
---

# Add-HPOVResourceToRack

## Syntax

```text
Add-HPOVResourceToRack
    [-InputObject] <Object>
    [-Rack] <Object>
    [-ULocation] <Int32>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A rack is a physical structure that contains IT equipment such as enclosures, rack managers, servers, power delivery devices, and unmanaged devices (an unmanaged device uses slots in the rack and consumes power or exhausts heat, but it is not managed by the appliance). You can manage your racks and the equipment in them by adding them to the appliance. Having your racks managed by the appliance enables you to use the appliance for space and power planning. The appliance also gathers statistical data and monitors the power and temperature of the racks it manages.

When you add an enclosure to the appliance, it automatically creates a rack and places the enclosure in it. The appliance places into the rack all enclosures connected by management link cables. When enclosures are added, the appliance places them in the rack from top to bottom. When an enclosure is placed in an Intelligent Series Rack, the enclosure slots are automatically detected. For other racks, to accurately depict the layout of your enclosures within the rack you must edit the rack to place the enclosure in the proper slots.

You can use the appliance to view and manage your rack configuration and power delivery topology. You can specify the physical dimensions of the rack (width, height, and depth), the number of U slots, and the location of each piece of equipment in the rack. You can specify the rack PDUs that provide power to the rack, and their physical position in the rack or on either side. You can also describe how the devices in the rack are connected to those PDUs.

The appliance automatically discovers the rack height and rack model for a ProLiant server with Location Discovery Services and updates the physical locations of devices when they are relocated within and between racks for c7000 enclosures.

Using this Cmdlet will add a server, enclosure, unmanaged device or power device reource to a rack object.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Server administrator.
{% endhint %}

## Examples

###  Example 1 

```text
$Rack = Get-HPOVRack -Name MyRack221 -ErrorAction Stop
$Servers = Get-HPOVServers -Name Prod221* -ErrorAction Stop
$_U = 1
ForEach ($Server in $Servers) {
	Add-HPOVResourceToRack -InputObject $Server -Rack $Rack -ULocation $_U
	$_U += $Server.formFactor.Replace("U",$null)
}
```

Add "Prod221" (DL) servers to "MyRack221" rack object, starting at Rack U 1, and increasing the location based on the form factor of the DL servers.

###  Example 2 

```text
$Rack = Get-HPOVRack -Name MyRack222 -ErrorAction Stop
$Enclosures = Get-HPOVEnclosures -Name Encl-Prod* -ErrorAction Stop | ? rackName -eq $Rack.name
$_U = 1
ForEach ($Enclosure in $Enclosures) {
	Add-HPOVResourceToRack -InputObject $Enclosure -Rack $Rack -ULocation $_U
	$_U += 10
}
```

Add Enclosures which the Onboard Administrators report are in "MyRack222", and add them to "MyRack222" rack object, starting at Rack U 1, and increasing the location by 10U.

## Parameters

### -InputObject &lt;Object&gt;

The supported resource object to add.
Supported resource objects are:
	* Enclosures
	* Servers
	* Rack manager
	* Power device
	* Unmanaged device

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Rack &lt;Object&gt;

The Rack object from `Get-HPOVRack`.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ULocation &lt;Int32&gt;

The rack unit location where the resource is located.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

Rack resource object from [`Get-HPOVRack`](get-hpovrack.md).

## Return Values

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

Updated rack object with the newly added resources in the contents property.

## Related Links

* [Get-HPOVDataCenter](get-hpovdatacenter.md)
* [Get-HPOVRack](get-hpovrack.md)
* [Add-HPOVRackToDataCenter](add-hpovracktodatacenter.md)
