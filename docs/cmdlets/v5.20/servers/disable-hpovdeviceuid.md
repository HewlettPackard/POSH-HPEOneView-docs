---
description: Disable unit identification (UID) of a device.
---

# Disable-HPOVDeviceUid

## Syntax

```text
Disable-HPOVDeviceUid
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Authorized users can control the unit identification (UID) light on an HPE Synergy frame and its servers, interconnects, and frame link modules through the UI. Illuminating the UID light on the front of a device helps an on-site technician to locate the hardware in the data center.

A UID icon is displayed on the Enclosures screen, the Server Hardware screen, and the Interconnects screen. On the Enclosures screen, the enclosure overview displays the UID icon on its frame link modules, servers, and interconnects.

{% hint style="warning" %}
The UID light blinks automatically to indicate that a critical operation is underway, such as Remote Console access for server hardware or a firmware update. Do not remove power from a device when its UID light is blinking.
{% endhint %}


{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, Server administrator 
{% endhint %}
(for enclosure, server, and frame link module UID lights), Network administrator (for interconnect UID lights)
## Examples

###  Example 1 

```text
Get-HPOVServer "MyEncl, Bay 1" | Disable-HPOVDeviceUid | Wait-HPOVTaskComplete
```

Disable the UID for "MyEncl, Bay 1" server.

## Parameters

### -InputObject &lt;Object&gt;

Resource object to turn off the UID.  Supported resources are server hardware, enclosures and interconnects.

| Aliases | Server, Enclosure, Frame, Resource |
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
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

Server Hardware or Enclosure resource.

_**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

Enclosure resource.

_**HPOneView.Networking.Interconnect [System.Management.Automation.PSCustomObject]**_

Interconnect resource.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

If successful, returns Appliance Async Task object to monitor.

## Related Links

* [Enable-HPOVDeviceUid](enable-hpovdeviceuid.md)
