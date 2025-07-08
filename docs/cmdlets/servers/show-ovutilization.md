---
description: Report server and enclosure supported utilization metrics.
---

# Show-OVUtilization

## Syntax

## Description

For resources such as Enclosures and Server Hardware, the appliance collects CPU, power, and temperature utilization statistics from the management processors (iLO, OA, FLM). Utilization statistics are not instantaneous-data is gathered and reported every five minutes.

The fields that are displayed in the available statistics vary from component to component.

CPU

Server hardware CPU utilization statistics are gathered from the historical data stored on an iLO every five minutes.

CPU utilization is expressed as a percentage.  A high percentage indicates that one or more processes running on the device are consuming a considerable amount of CPU resources. If the percentage appears frozen at or near 100%, a process might not be responding.

CPU utilziation is only supported with server hardware resources, and are contained within the CPUCurrent, CPUAverage and CPUPeak properties.

Power

Power capacity is the calibrated maximum power that a device can consume. The power utilization metrics refresh every five minutes.

You can see the power utilization data for a component within the objects PowerCurrent, PowerAverage and PowerPeak properties.  The value contained will be in Watts.

Use this data to determine how much power your facility is consuming and the resources that are consuming it. The appliance reports alerts for devices that exceed their power capacity.

PowerCurrent
The current power reported by the device.

PowerAverage
The average amount of power the resource is consuming.

PowerPeak
The peak amount of power consumed by the resource.

Temperature

Temperature utilization graphs display the ambient/inlet air temperature of your data center. The air temperature is detected by sensors embedded on the front of enclosures and other hardware devices.

The operating threshold is 10┬░C to 35┬░C (50┬░F to 95┬░F). When the device reaches a threshold, it generates temperature alerts. The appliance displays these alerts in the notification banner and in the Activity sidebar.

You can see the temperature utilization data for a component within the AmbientTemperature and AmbientTemperatureAverage properties.

???+ info
     The temperature properties are displayed in degrees Celsius or Fahrenheit, depending upon the locale or regional settings of your PC.


## Examples

###  Example 1 

```powershell
Get-OVServer | Show-OVUtilization
```

Get all available server resources, and collect utilization data to report.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliansce.Connection]` object(s) or Name property value(s).

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -InputObject &lt;Object&gt;

A server hardware, server profile or enclosure resource.  IF a server profile is unassigned, it will be skipped.

| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.ServerHardware [System.Management.Automation.PSCustomObject]"
    A server hardware resource from Get-OVServer.
    

=== "HPEOneView.ServerProfile [System.Management.Automation.PSCustomObject]"
    A server profile from Get-OVServerProfile that is assigned to a physical server resource.  If the profile is not assigned to a server hardware resource, it is skipped.
    

=== "HPEOneView.Enclosure [System.Management.Automation.PSCustomObject]"
    An enclosure resource from Get-OVEnclosure.
    

## Return Values

=== "HPEOneView.ServerUtilization"
    Server utilization object.
    
    

=== "HPEOneView.EnclosureUtilization"
    Enclosure utilization object.
    
    

## Related Links

* [Get-OVEnclosure](get-ovenclosure.md)
* [Get-OVServer](get-ovserver.md)
* [Get-OVServerProfile](get-ovserverprofile.md)
