---
description: Enable unit identification (UID) of a device.
---

# Enable-HPOVDeviceUid

## HPE OneView 5.00 Library

### Syntax

```text
Enable-HPOVDeviceUid [-InputObject] <Object> [-ApplianceConnection] <Object> [<CommonParameters>]
```

### Description

Authorized users can control the unit identification \(UID\) light on an HPE Synergy frame and its servers, interconnects, and frame link modules through the UI. Illuminating the UID light on the front of a device helps an on-site technician to locate the hardware in the data center.

A UID icon is displayed on the Enclosures screen, the Server Hardware screen, and the Interconnects screen. On the Enclosures screen, the enclosure overview displays the UID icon on its frame link modules, servers, and interconnects.

Use this Cmdlet to enable the UID light on a resource.

{% hint style="warning" %}
The UID light blinks automatically to indicate that a critical operation is underway, such as Remote Console access for server hardware or a firmware update. Do not remove power from a device when its UID light is blinking.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, Server administrator \(for enclosure, server, and frame link module UID lights\), Network administrator \(for interconnect UID lights\)
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Resource object to turn on the UID. Supported resources are Server Hardware and Enclosures.

| Aliases | Server, Enclosure, Frame, Resource |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerHardware \[System.Management.Automation.PSCustomObject\] or HPOneView.Enclosure \[System.Management.Automation.PSCustomObject\]**_

Server Hardware or Enclosure resource.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

If successful, returns Appliance Async Task object to monitor.

_**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

Collection of Appliance Async Task objects to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVServer "MyEncl, Bay 1" | Enable-HPOVDeviceUid | Wait-HPOVTaskComplete
```

Enable the UID for "MyEncl, Bay 1" server. 

### Related Links

* [Disable-HPOVDeviceUid ](disable-hpovdeviceuid.md#hpe-oneview-5-00-library)

## HPE OneView 4.20 Library

### Syntax

```text
Enable-HPOVDeviceUid [-InputObject] <Object> [-ApplianceConnection] <Object> [<CommonParameters>]
```

### Description

Authorized users can control the unit identification \(UID\) light on an HPE Synergy frame and its servers, interconnects, and frame link modules through the UI. Illuminating the UID light on the front of a device helps an on-site technician to locate the hardware in the data center.

A UID icon is displayed on the Enclosures screen, the Server Hardware screen, and the Interconnects screen. On the Enclosures screen, the enclosure overview displays the UID icon on its frame link modules, servers, and interconnects.

Use this Cmdlet to enable the UID light on a resource.

{% hint style="warning" %}
The UID light blinks automatically to indicate that a critical operation is underway, such as Remote Console access for server hardware or a firmware update. Do not remove power from a device when its UID light is blinking.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, Server administrator \(for enclosure, server, and frame link module UID lights\), Network administrator \(for interconnect UID lights\)
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Resource object to turn on the UID. Supported resources are Server Hardware and Enclosures.

| Aliases | Server, Enclosure, Frame, Resource |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerHardware \[System.Management.Automation.PSCustomObject\] or HPOneView.Enclosure \[System.Management.Automation.PSCustomObject\]**_

Server Hardware or Enclosure resource.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

If successful, returns Appliance Async Task object to monitor.

_**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

Collection of Appliance Async Task objects to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVServer "MyEncl, Bay 1" | Enable-HPOVDeviceUid | Wait-HPOVTaskComplete
```

Enable the UID for "MyEncl, Bay 1" server. 

### Related Links

* [Disable-HPOVDeviceUid ](disable-hpovdeviceuid.md#hpe-oneview-4-20-library)

## HPE OneView 4.10 Library

### Syntax

```text
Enable-HPOVDeviceUid [-InputObject] <Object> [-ApplianceConnection] <Object> [<CommonParameters>]
```

### Description

Authorized users can control the unit identification \(UID\) light on an HPE Synergy frame and its servers, interconnects, and frame link modules through the UI. Illuminating the UID light on the front of a device helps an on-site technician to locate the hardware in the data center.

A UID icon is displayed on the Enclosures screen, the Server Hardware screen, and the Interconnects screen. On the Enclosures screen, the enclosure overview displays the UID icon on its frame link modules, servers, and interconnects.

Use this Cmdlet to enable the UID light on a resource.

{% hint style="warning" %}
The UID light blinks automatically to indicate that a critical operation is underway, such as Remote Console access for server hardware or a firmware update. Do not remove power from a device when its UID light is blinking.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, Server administrator \(for enclosure, server, and frame link module UID lights\), Network administrator \(for interconnect UID lights\)
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Resource object to turn on the UID. Supported resources are Server Hardware and Enclosures.

| Aliases | Server, Enclosure, Frame, Resource |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerHardware \[System.Management.Automation.PSCustomObject\] or HPOneView.Enclosure \[System.Management.Automation.PSCustomObject\]**_

Server Hardware or Enclosure resource.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

If successful, returns Appliance Async Task object to monitor.

_**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

Collection of Appliance Async Task objects to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVServer "MyEncl, Bay 1" | Enable-HPOVDeviceUid | Wait-HPOVTaskComplete
```

Enable the UID for "MyEncl, Bay 1" server. 

### Related Links

* [Disable-HPOVDeviceUid ](disable-hpovdeviceuid.md#hpe-oneview-4-10-library)

