---
description: Add rack resource to DataCenter.
---

# Add-HPOVRackToDataCenter

## Syntax

```text
Add-HPOVRackToDataCenter
    [-InputObject] <Object>
    [-DataCenter] <Object>
    [-X <Int32>]
    [-Y <Int32>]
    [-Millimeters]
    [-Rotate <Int>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Add a rack resource to a defined DataCenter object.

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

### -InputObject &lt;Object&gt;

The Rack object from `Get-HPOVRack`.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -DataCenter &lt;Object&gt;

The DataCenter object from `Get-HPOVDataCenter`.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -X &lt;Int32&gt;

The X coordinate in the DC.  Value can be in US Feet or Millimeters.  If specying Millimeters, you need to include the `-Millimeters` switch parameter.  Feet will be converted to Millimeters.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `0` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Y &lt;Int32&gt;

The Y coordinate in the DC.  Value can be in US Feet or Millimeters.  If specying Millimeters, you need to include the `-Millimeters` switch parameter.  Feet will be converted to Millimeters.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `0` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Rotate &lt;Int&gt;

Specify the degree rotation of the rack.
Allowed range 0 to 360

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `0` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Millimeters &lt;SwitchParameter&gt;

If X and/or Y are in Millimeters, you must include this parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

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

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

Rack resource object from [`Get-HPOVRack`](get-hpovrack.md).


## Return Values

_**HPOneView.Facilities.DataCenter [System.Management.Automation.PSCustomObject]**_

Updated DataCenter object with the newly added Rack resource in the contents property.

## Related Links

