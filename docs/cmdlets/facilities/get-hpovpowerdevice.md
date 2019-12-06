---
description: Retrieve Power Device (iPDU) resource(s).
---

# Get-HPOVPowerDevice

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVPowerDevice [[-Name] <String>] [[-Type] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Power delivery devices provide power to IT hardware. A typical power topology in a data center includes power delivery devices such as power feeds, breaker panels, branch circuits, and power distribution units \(PDUs\), as well as the load segments, outlet bars, and outlet components of these devices. Adding your power delivery devices to the appliance enables power management using thermal limits, rated capacity, and derated capacity.

This Cmdlet will retrieve the following classes of devices:

* Intelligent Power Distribution Units \(iPDUs\), which the appliance can automatically discover and control.
* Other power delivery devices that the appliance cannot discover. By manually adding these devices to the appliance, they become available for tracking, inventory, and power management purposes.

Regardless of how power delivery devices are added to the appliance, the appliance automatically generates the same types of analysis \(capacity, redundancy, and configuration\). For iPDUs, the appliance gathers statistical data and reports errors.

Connectivity and synchronization with the appliance

The appliance monitors the connectivity status of iPDUs. If the appliance loses connectivity with an iPDU, an alert displays until connectivity is restored. The appliance will try to resolve connectivity issues and clear the alert automatically, but if it cannot, you must resolve the issue and manually refresh the iPDU to bring it in synchronization with the appliance.

The appliance also monitors iPDU to remain synchronized with changes to hardware and power connections. However, some changes to devices made outside of the control of the appliance \(from iLO or the OA, for example\) may cause them to become out of synchronization with the appliance. You may have to manually refresh devices that lose synchronization with the appliance.

{% hint style="info" %}
Hewlett Packard Enterprise recommends that you do not use iLO or the OA to make changes to a device. Making changes to a device from its iLO or OA could cause it to lose synchronization with the appliance.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the power device resource to be returned. All power device resources will be returned if omitted.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Type &lt;String&gt; 

Filter the Power Delivery Device type. Allowed values:

* HPIpduCore
* HPIpduAcModule
* LoadSegment
* HPIpduOutletBar
* HPIpduOutlet.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.PowerDeliveryDevice \[System.Management.Automation.PSCustomObject\]**_

The matching power device resources

_**System.Collections.ArrayList &lt;HPOneView.PowerDeliveryDevice&gt;**_

The matching power device resources

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$powerDevices = Get-HPOVPowerDevice
```

Return all the power devices managed by this appliance.

```text
 -------------------------- EXAMPLE 2 --------------------------
$powerDeviceA = Get-HPOVPowerDevice -Name "iPDU_A"
```

Return the power device resource with name "iPDU\_A". 

### Related Links 

* [Add-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDevice) 
* [Add-HPOVPowerDeviceConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDeviceConnection) 
* [New-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVPowerDevice) 
* [Remove-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPowerDevice) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVPowerDevice [[-Name] <String>] [[-Type] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Power delivery devices provide power to IT hardware. A typical power topology in a data center includes power delivery devices such as power feeds, breaker panels, branch circuits, and power distribution units \(PDUs\), as well as the load segments, outlet bars, and outlet components of these devices. Adding your power delivery devices to the appliance enables power management using thermal limits, rated capacity, and derated capacity.

This Cmdlet will retrieve the following classes of devices:

* Intelligent Power Distribution Units \(iPDUs\), which the appliance can automatically discover and control.
* Other power delivery devices that the appliance cannot discover. By manually adding these devices to the appliance, they become available for tracking, inventory, and power management purposes.

Regardless of how power delivery devices are added to the appliance, the appliance automatically generates the same types of analysis \(capacity, redundancy, and configuration\). For iPDUs, the appliance gathers statistical data and reports errors.

Connectivity and synchronization with the appliance

The appliance monitors the connectivity status of iPDUs. If the appliance loses connectivity with an iPDU, an alert displays until connectivity is restored. The appliance will try to resolve connectivity issues and clear the alert automatically, but if it cannot, you must resolve the issue and manually refresh the iPDU to bring it in synchronization with the appliance.

The appliance also monitors iPDU to remain synchronized with changes to hardware and power connections. However, some changes to devices made outside of the control of the appliance \(from iLO or the OA, for example\) may cause them to become out of synchronization with the appliance. You may have to manually refresh devices that lose synchronization with the appliance.

{% hint style="info" %}
Hewlett Packard Enterprise recommends that you do not use iLO or the OA to make changes to a device. Making changes to a device from its iLO or OA could cause it to lose synchronization with the appliance.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the power device resource to be returned. All power device resources will be returned if omitted.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Type &lt;String&gt; 

Filter the Power Delivery Device type. Allowed values:

* HPIpduCore
* HPIpduAcModule
* LoadSegment
* HPIpduOutletBar
* HPIpduOutlet.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.PowerDeliveryDevice \[System.Management.Automation.PSCustomObject\]**_

The matching power device resources

_**System.Collections.ArrayList &lt;HPOneView.PowerDeliveryDevice&gt;**_

The matching power device resources

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$powerDevices = Get-HPOVPowerDevice
```

Return all the power devices managed by this appliance.

```text
 -------------------------- EXAMPLE 2 --------------------------
$powerDeviceA = Get-HPOVPowerDevice -Name "iPDU_A"
```

Return the power device resource with name "iPDU\_A". 

### Related Links 

* [Add-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDevice) 
* [Add-HPOVPowerDeviceConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDeviceConnection) 
* [New-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVPowerDevice) 
* [Remove-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPowerDevice) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVPowerDevice [[-Name] <String>] [[-Type] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Power delivery devices provide power to IT hardware. A typical power topology in a data center includes power delivery devices such as power feeds, breaker panels, branch circuits, and power distribution units \(PDUs\), as well as the load segments, outlet bars, and outlet components of these devices. Adding your power delivery devices to the appliance enables power management using thermal limits, rated capacity, and derated capacity.

This Cmdlet will retrieve the following classes of devices:

* Intelligent Power Distribution Units \(iPDUs\), which the appliance can automatically discover and control.
* Other power delivery devices that the appliance cannot discover. By manually adding these devices to the appliance, they become available for tracking, inventory, and power management purposes.

Regardless of how power delivery devices are added to the appliance, the appliance automatically generates the same types of analysis \(capacity, redundancy, and configuration\). For iPDUs, the appliance gathers statistical data and reports errors.

Connectivity and synchronization with the appliance

The appliance monitors the connectivity status of iPDUs. If the appliance loses connectivity with an iPDU, an alert displays until connectivity is restored. The appliance will try to resolve connectivity issues and clear the alert automatically, but if it cannot, you must resolve the issue and manually refresh the iPDU to bring it in synchronization with the appliance.

The appliance also monitors iPDU to remain synchronized with changes to hardware and power connections. However, some changes to devices made outside of the control of the appliance \(from iLO or the OA, for example\) may cause them to become out of synchronization with the appliance. You may have to manually refresh devices that lose synchronization with the appliance.

{% hint style="info" %}
Hewlett Packard Enterprise recommends that you do not use iLO or the OA to make changes to a device. Making changes to a device from its iLO or OA could cause it to lose synchronization with the appliance.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the power device resource to be returned. All power device resources will be returned if omitted.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Type &lt;String&gt; 

Filter the Power Delivery Device type. Allowed values:

* HPIpduCore
* HPIpduAcModule
* LoadSegment
* HPIpduOutletBar
* HPIpduOutlet.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.PowerDeliveryDevice \[System.Management.Automation.PSCustomObject\]**_

The matching power device resources

_**System.Collections.ArrayList &lt;HPOneView.PowerDeliveryDevice&gt;**_

The matching power device resources

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$powerDevices = Get-HPOVPowerDevice
```

Return all the power devices managed by this appliance.

```text
 -------------------------- EXAMPLE 2 --------------------------
$powerDeviceA = Get-HPOVPowerDevice -Name "iPDU_A"
```

Return the power device resource with name "iPDU\_A". 

### Related Links 

* [Add-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDevice) 
* [Add-HPOVPowerDeviceConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDeviceConnection) 
* [New-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVPowerDevice) 
* [Remove-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPowerDevice) 


