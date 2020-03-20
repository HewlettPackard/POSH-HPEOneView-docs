---
description: Retrieve Power Device (iPDU) resource(s).
---

# Get-HPOVPowerDevice

## Syntax

```text
Get-HPOVPowerDevice
    [-Name <String>]
    [-Type <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Obtain a collection of power device resources which have the specified name, and display the information about the power device.

## Examples

### Example 1

```text
$powerDevices = Get-HPOVPowerDevice
```

Return all the power devices managed by this appliance.

### Example 2

```text
$powerDeviceA = Get-HPOVPowerDevice "iPDU_A"
```

Return the power device resource with name "iPDU\_A".

## Parameters

### -Name &lt;String&gt;

The name of the power device resource to be returned. All power device resources will be returned if omitted.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Type &lt;String&gt;

Filter the Power Delivery Device type. Allowed values:

* HPIpduCore
* HPIpduAcModule
* LoadSegment
* HPIpduOutletBar
* HPIpduOutlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.PowerDeliveryDevice \[System.Management.Automation.PSCustomObject\]**_

The matching power device resources

_**System.Collections.ArrayList**_ 

The matching power device resources

## Related Links

* [Add-HPOVPowerDevice](add-hpovpowerdevice.md)
* [Add-HPOVPowerDeviceConnection](add-hpovpowerdeviceconnection.md)
* [New-HPOVPowerDevice](new-hpovpowerdevice.md)
* [Remove-HPOVPowerDevice](remove-hpovpowerdevice.md)

