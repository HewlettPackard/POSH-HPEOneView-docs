---
description: Retrieve power device (mPDU/Rack PDU) potential connections.
---

# Get-HPOVPowerPotentialDeviceConnection

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVPowerPotentialDeviceConnection [-PowerDevice] <Object> [-ApplianceConnection] <Object> [<CommonParameters>]
```

### Description

Obtain a collection of potential managed and unmanaged device power connections for the provided power device resource. The returned value\(s\) will include the potential power connections that can be manually associated when not using iPDU devices.

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -PowerDevice &lt;Object&gt; 

The name of the power device resource. Can provide Name, URI or Object.

| Aliases | uri, name |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**System.Management.Automation.PSCustomObject**_

Potential managed/unmanaged device Power Delivery Device connection object

### Return Values

_**System.Collections.ArrayList**_

Collection of matching potential power device connection objects

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVPowerDevice -Name "iPDU_A" | Get-HPOVPowerPotentialDeviceConnection
```

Return the potential power device connections for the "iPDU\_A" power delivery device.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVPowerPotentialDeviceConnection -PowerDevice "iPDU_A"
```

Return the potential power device connections for the "iPDU\_A" power delivery device. 

### Related Links

* [Get-HPOVPowerDevice](get-hpovpowerdevice.md#hpe-oneview-5-00-library)

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVPowerPotentialDeviceConnection [-PowerDevice] <Object> [-ApplianceConnection] <Object> [<CommonParameters>]
```

### Description

Obtain a collection of potential managed and unmanaged device power connections for the provided power device resource. The returned value\(s\) will include the potential power connections that can be manually associated when not using iPDU devices.

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -PowerDevice &lt;Object&gt; 

The name of the power device resource. Can provide Name, URI or Object.

| Aliases | uri, name |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**System.Management.Automation.PSCustomObject**_

Potential managed/unmanaged device Power Delivery Device connection object

### Return Values

_**System.Collections.ArrayList**_

Collection of matching potential power device connection objects

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVPowerDevice -Name "iPDU_A" | Get-HPOVPowerPotentialDeviceConnection
```

Return the potential power device connections for the "iPDU\_A" power delivery device.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVPowerPotentialDeviceConnection -PowerDevice "iPDU_A"
```

Return the potential power device connections for the "iPDU\_A" power delivery device. 

### Related Links

* [Get-HPOVPowerDevice](get-hpovpowerdevice.md#hpe-oneview-4-20-library)

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVPowerPotentialDeviceConnection [-PowerDevice] <Object> [-ApplianceConnection] <Object> [<CommonParameters>]
```

### Description

Obtain a collection of potential managed and unmanaged device power connections for the provided power device resource. The returned value\(s\) will include the potential power connections that can be manually associated when not using iPDU devices.

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -PowerDevice &lt;Object&gt; 

The name of the power device resource. Can provide Name, URI or Object.

| Aliases | uri, name |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**System.Management.Automation.PSCustomObject**_

Potential managed/unmanaged device Power Delivery Device connection object

### Return Values

_**System.Collections.ArrayList**_

Collection of matching potential power device connection objects

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVPowerDevice -Name "iPDU_A" | Get-HPOVPowerPotentialDeviceConnection
```

Return the potential power device connections for the "iPDU\_A" power delivery device.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVPowerPotentialDeviceConnection -PowerDevice "iPDU_A"
```

Return the potential power device connections for the "iPDU\_A" power delivery device. 

### Related Links

* [Get-HPOVPowerDevice](get-hpovpowerdevice.md#hpe-oneview-4-10-library)

