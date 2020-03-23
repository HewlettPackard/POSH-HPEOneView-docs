---
description: Disable UID of a device.
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

This Cmdlet will disable the UID of a managed or monitored resource, and only supports objects.  Use Get-HPOVServer or Get-HPOVEnclosure to retrieve the required resource(s), which can be passed via the pipeline.

## Examples

###  Example 1 

```text
Get-HPOVServer "MyEncl, Bay 1" | Disable-HPOVDeviceUid | Wait-HPOVTaskComplete

```

Disable the UID for "MyEncl, Bay 1" server.

## Parameters

### -InputObject &lt;Object&gt;

Resource object to turn off the UID.  Supported resources are Server Hardware and Enclosures.

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
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject] or HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

Server Hardware or Enclosure resource.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

If successful, returns Appliance Async Task object to monitor.

_**System.Collections.ArrayList <HPOneView.Appliance.TaskResource>**_

Collection of Appliance Async Task objects to monitor.

## Related Links

* [Enable-HPOVDeviceUid](enable-hpovdeviceuid.md)
