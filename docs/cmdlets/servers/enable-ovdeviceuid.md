---
description: Enable unit identification (UID) of a device.
---

# Enable-OVDeviceUid

## Syntax

```powershell
Enable-OVDeviceUid
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Authorized users can control the unit identification (UID) light on an HPE Synergy frame and its servers, interconnects, and frame link modules through the UI. Illuminating the UID light on the front of a device helps an on-site technician to locate the hardware in the data center.

A UID icon is displayed on the Enclosures screen, the Server Hardware screen, and the Interconnects screen. On the Enclosures screen, the enclosure overview displays the UID icon on its frame link modules, servers, and interconnects.

Use this Cmdlet to enable the UID light on a resource.

???+ info
    The UID light blinks automatically to indicate that a critical operation is underway, such as Remote Console access for server hardware or a firmware update. Do not remove power from a device when its UID light is blinking.


???+ info
    Minimum required privileges: Infrastructure administrator, Server administrator 
(for enclosure, server, and frame link module UID lights), Network administrator (for interconnect UID lights)
## Examples

###  Example 1 

```powershell
Get-OVServer -Name "MyEncl, Bay 1" | Enable-OVDeviceUid | Wait-OVTaskComplete
```

Enable the UID for "MyEncl, Bay 1" server.

## Parameters

### -InputObject &lt;Object&gt;

Resource object to turn on the UID.  Supported resources are Server Hardware and Enclosures.

| Aliases | Server, Enclosure, Frame, Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

=== "HPEOneView.ServerHardware [System.Management.Automation.PSCustomObject] or HPEOneView.Enclosure [System.Management.Automation.PSCustomObject]"
    Server Hardware or Enclosure resource.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    If successful, returns Appliance Async Task object to monitor.
    

=== "System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>"
    Collection of Appliance Async Task objects to monitor.
    

## Related Links

* [Disable-OVDeviceUid](disable-ovdeviceuid.md)
