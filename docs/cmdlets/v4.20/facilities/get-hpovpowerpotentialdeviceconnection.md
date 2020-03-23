---
description: Retrieve Power Device (mPDU/Rack PDU) Potentail Connections
---

# Get-HPOVPowerPotentialDeviceConnection

## Syntax

```text
Get-HPOVPowerPotentialDeviceConnection
    [-PowerDevice] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Obtain a collection of potential managed and unmanaged device power connections for the provided power device resoruce.  The returned value(s) will include the potential power connections that can be manually associated when not using iPDU devices.

## Examples

###  Example 1 

```text
Get-HPOVPowerDevice "iPDU_A" | Get-HPOVPowerPotentialDeviceConnection

```

Return the potential power device connections for the "iPDU_A" power delivery device.

###  Example 2 

```text
Get-HPOVPowerPotentialDeviceConnection "iPDU_A"

```

Return the potential power device connections for the "iPDU_A" power delivery device.

## Parameters

### -PowerDevice &lt;Object&gt;

The name of the power device resource.  Can provide Name, URI or Object.

| Aliases | uri, name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.Management.Automation.PSCustomObject**_

Potential managed/unmanaged device Power Delivery Device connection object

## Return Values

_**System.Collections.ArrayList**_

Collection of matching potential power device connection objects

## Related Links

