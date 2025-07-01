---
description: Modify an existing Datacenter resource.
---

# Set-OVDataCenter

## Syntax

```powershell
Set-OVDataCenter
    [-InputObject] <Object>
    [-Name] <String>
    [-Width] <Float>
    [-Depth] <Float>
    [-Millimeters]
    [-ElectricalDerating <Int>]
    [-ElectricalDeratingType <String>]
    [-DefaultVoltage <Int>]
    [-Currency <String>]
    [-PowerCosts <Float>]
    [-CoolingCapacity <Int>]
    [-CoolingMultiplier <Float>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A data center represents a physically contiguous area in which racks containing IT equipment are located.
For example, you have IT equipment in two rooms or on separate floors. You could create a data center for each of these areas.
Each server, enclosure, or power distribution device in your data center can report its power requirements, but it can be difficult to understand the power and cooling requirements for your data center as a whole. The appliance enables you to bring power and cooling management of your servers, enclosures, and power delivery devices together in a single management system.
When you initialize the appliance for the first time, it creates a data center named Datacenter 1. The appliance provides this data center as a place to visualize your racks. You can rename or edit this data center to match the values and layout of your data center, you can use it as the basis for a planned data center model, or you can delete this data center without adverse effects.

This Cmdlet will create a new datacenter.  You will need to specify the Name and dimensions.  Optionally, you can override the default Electrical Derating, default voltage, local currency (which will aid in power calculation costs) and power cooling capacity.  Remote Support settings can only be set when Remote Support has been enabled and configured on the appliance.  If omitting Remote Support location settings, then the datacenter will default to the default location set. 

## Examples

###  Example 1 

```powershell
$DataCenter1Name = "LA DC 12"

$DataCenter1Width = 30

$DataCenter1Depth = 30

$DataCenter1Voltage = 220

$DataCenter1PowerCosts = 0.07

$DataCenter1CoolingCapacity = 250

New-OVDataCenter -Name $DataCenter1Name -Width $DataCenter1Width -Depth $DataCenter1Depth -DefaultVoltage $DataCenter1Voltage -PowerCosts $DataCenter1PowerCosts -CoolingCapacity $DataCenter1CoolingCapacity
```

Create new "LA DC 12" datacenter.

###  Example 2 

```powershell
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
    PrimaryContact   = (Get-OVRemoteSupportContact -Name "Joe Ellis" -EA Stop)
    SecondaryContact = (Get-OVRemoteSupportContact -Name "Brandon Pear" -EA Stop)

}
New-OVDataCenter @NewDC2Params
```

Create a new datacenter with Remote Support settings.

## Parameters

### -InputObject &lt;Object&gt;

Datacenter object from Get-OVDataCenter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

A name to identify the data center. Must not exceed 255 characters; no leading spaces.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Width &lt;Float&gt;

Width of the datacenter, in (US) Feet.  Maximum of 50 meters (164.042 feet).  Millimeters can be used, which requires the `-Millimeters` switch parameter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Depth &lt;Float&gt;

Depth of the datacenter, in (US) Feet.  Maximum of 50 meters (164.042 feet).  Millimeters can be used, which requires the `-Millimeters` switch parameter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Millimeters &lt;SwitchParameter&gt;

If specifying millimeter value for Width and Depth, this parameter is required.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ElectricalDerating &lt;Int&gt;

If Custom ElectricalDetratingType is set to Custom, specify a value between 20-100%.

Default: 20%

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 20 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ElectricalDeratingType &lt;String&gt;

The percentage below the rated maximum power dissipation at which the devices are operated, accounting for case/body temperature, ambient temperature, and type of cooling.

You can specify a derating percentage by choosing Custom, or you can choose not to apply derating to the rated maximum power dissipation by specifying None.

Default: NA/Jp

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | NA/Jp |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DefaultVoltage &lt;Int&gt;

The default power line voltage for the data center.

Default: 220

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 220 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Currency &lt;String&gt;

The currency unit for energy costs.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | USD |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PowerCosts &lt;Float&gt;

The energy cost per kWh, specified by the Currency.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -CoolingCapacity &lt;Int&gt;

The maximum cooling capacity for the data center, in KW. The appliance analyzes heat generation using this value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -CoolingMultiplier &lt;Float&gt;

The ratio of cooling cost to power cost for the data center.

This value represents the relative cost of cooling the system compared to the cost of powering the system. The default value of 1.5 indicates that it costs 1.5 times as much to cool the system as it does to power the system.

Default:  1.5

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 1.5 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PrimaryContact &lt;Object&gt;

Primary Remote Support Contact object from Get-OVRemoteSupportContact defined on the appliance.

| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -SecondaryContact &lt;Object&gt;

Secondary Remote Support Contact object from Get-OVRemoteSupportContact defined on the appliance.  Must not be the same value as the Primary Contact.

| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -Address1 &lt;String&gt;

Address of datacenter.

| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -Address2 &lt;String&gt;

Optional address line.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -City &lt;String&gt;

City of residence for the datacenter.

| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -State &lt;String&gt;

State/province of residence for the datacenter.

| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -PostCode &lt;String&gt;

Postal code for the datacenter.

| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -Country &lt;String&gt;

Country of residence for the datacenter.

| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -TimeZone &lt;String&gt;

Time Zone of residence for the datacenter.

| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Facilities.DataCenter"
    Newly created datacenter.
    

## Related Links

* [Get-OVDataCenter](get-ovdatacenter.md)
* [New-OVDataCenter](new-ovdatacenter.md)
* [Remove-OVDataCenter](remove-ovdatacenter.md)
* [Set-OVDataCenterRemoteSupport](../appliance/set-ovdatacenterremotesupport.md)
