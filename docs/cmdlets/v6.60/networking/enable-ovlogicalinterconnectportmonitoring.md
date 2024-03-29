﻿---
description: Enable port monitoring for a logical interconnect.
---

# Enable-OVLogicalInterconnectPortMonitoring

## Syntax

```powershell
Enable-OVLogicalInterconnectPortMonitoring
    [-InputObject] <Object>
    [-AnalyzerPort] <Object>
    [-MonitoredPorts] <Hashtable>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```powershell
Enable-OVLogicalInterconnectPortMonitoring
    [-InputObject] <Object>
    [-MonitoredPorts] <Hashtable>
    [-UplinkSetName] <Hashtable>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Port monitoring enables you to send a copy of every Ethernet or Fibre Channel frame coming in and going out of a downlink (server-facing) port to another port. To evaluate network traffic between ports, you can connect debugging equipment, such as a network analyzer. This capability is important in a server environment where there is limited physical access to the network interfaces on the servers. 

*  You cannot use Virtual Connect to forward captured traffic to a server. For more information, see the HPE Virtual Connect for c-Class BladeSystem User Guide in the Hewlett Packard Enterprise Information Library. 
*  You can configure one network analyzer port (the uplink port) for up to 16 downlink server ports within a logical interconnect. 
*  The HPE Virtual Connect 16Gb 24-Port Fibre Channel Module monitors 1 downlink server port. 
*  HPE Virtual Connect 16Gb 24-Port Fibre Channel Module firmware must be 4.00 or later 

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator or Network administrator
{% endhint %}

## Examples

###  Example 1 

```powershell
$LogicalInterconnect = Get-OVLogicalInterconnect -Name "Encl1-Default VC FF LIG"
Enable-OVLogicalInterconnectPortMonitoring -InputObject $LogicalInterconnect -AnalyzerPort "Bay1:Q1.1" -MonitoredPorts @{Port = "Bay1:d2"; Direction = "toserver"}, @{Port = "Bay1:D3"; Direction = "MonitoredFromServer"}, @{Port = "Bay2:D7"; Direction = "Both"}
```

Enable port monitoring for the specific logical interconnect.

###  Example 2 

```powershell
Get-OVLogicalInterconnect -Name "LE1-Default VC LIG" | Enable-OVLogicalInterconnectPortMonitoring -AnalyzerPort "Enclosure1:Bay3:Q1.1" -MonitoredPorts @{Port = "Enclosure1:Bay3:d1"; Direction = "Both"}, @{Port = "Enclosure1:Bay6:d1"; Direction = "Both"}
```

Enable port monitoring for the specific logical interconnect.

## Parameters

### -AnalyzerPort &lt;Object&gt;

Specifies the network analyzer port (the mirrored-to uplink port) for the downlink server ports within a single enclosure. There is a single "mirrored-to port" per logical interconnect.

Allowed string value:  "Bay1:X6" or "Enclosure1:Bay6:Q1.1"

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

HPEOneView.Networking.LogicalInterconnect from Get-OVLogicalInterconnect.

| Aliases | uri, li, name, Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -MonitoredPorts &lt;Hashtable&gt;

An Array of Hashtable or PSCustomObject with the following format:

@{Port = "Bay1:D2"; Direction = "toserver"}

The "Port" property format must be "BayID:ServerDownlinkPortID".  For HPE Synergy, the "Port" property must be "EnclosureID:BayID:ServerDownlinkPortID".

The "Direction" property value must be one of the following:

* ToServer
* FromServer
* Both

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -UplinkSetName &lt;Hashtable&gt;

Only supported with HPE Synergy logical interconnect resources. The name of the uplink set provisioned to the specified logical interconnect resource provided in the InputObject parameter.  The uplink set must:

* Be provisioned to both the logical interconnect and its associated parent logical interconnect group.
* Contain a singular, tagged Ethernet network.
* The Ethernet network must not be assigned to any server profile connections, or other uplink sets.
* The uplink set must only contain a single uplink port.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

Logical Interconnect resource object from Get-OVLogicalInterconnect

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object for configuring port monitoring on the requested logical intercinnect.

## Related Links

* [Disable-OVLogicalInterconnectPortMonitoring](disable-ovlogicalinterconnectportmonitoring.md)
* [Get-OVLogicalInterconnectPortMonitoring](get-ovlogicalinterconnectportmonitoring.md)
