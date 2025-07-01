---
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
    [-UplinkSetName] <Hashtable>
    [-MonitoredPorts] <Hashtable>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Port monitoring provides the ability to analyze traffic passing through monitored ports by mirroring the traffic from one port to another port on one switch or a switch connected to a network analyzer. The Network analyzer port is the destination for the mirrored traffic. The network analyzer port (the mirrored-to uplink port or downlink port) is for the downlink server ports within a single enclosure. There is a single mirrored-to port per logical interconnect.

The Network analyzer port must be provisioned to an uplink set of both the logical interconnect and its parent logical interconnect group. Downlink port mirroring is only supported on the physical ports. Once a connection is established to any one of the physical ports on the Mezzanine adapter, then all the ports on that adapter change to Flex mode, and therefore cannot be used as analyzer ports.

Port monitoring is supported only on a physical port and applied only to a downlink port. You can configure port monitoring on a logical interconnect only with the interconnect modules that are in configured state. Ports that are mirrored are known as monitored ports or mirror-from-port. Port where the packets are copied is known as analyzer port or mirror-to-port. The physical interconnect modules of a logical interconnect contain all the port monitoring configurations. To configure port monitoring, specify one or more source ports along with a destination port. The destination port is also known as mirror-to port (MTP).

The MTP receives a copy of the ingress or egress traffic as configured on monitored source ports. The monitored port mirrors the ingress or egress traffic. To monitor the Ethernet traffic direction from a source port, select one of the following options:
    
* To server: To monitor only ingress traffic.
* From server: To monitor only egress traffic.
* Both: To monitor both ingress and egress traffic.

Virtual Connect module uplink ports must not be used as a destination for these externally generated traffic types:

* Switched Port Analyzer (SPAN)
* Remote Switch Port Analyzer (RSPAN)
* Any other mirrored type traffic

Interconnects
----------------------------------------------------------------------------------------------------------------
You can monitor up to 60 downlink server ports on a logical interconnect. To analyze the Ethernet traffic on monitored ports, use either local port monitoring or remote port monitoring.

HPE Virtual Connect SE 40Gb F8 Module for HPE Synergy and HPE Virtual Connect SE 100Gb F32 Module for HPE Synergy
----------------------------------------------------------------------------------------------------------------
You can configure uplink ports as monitored ports to mirror ingress, egress, or traffic in both directions. Ingress is the traffic flowing to the uplink port. Egress is the traffic flowing from the uplink port.

* Uplink ports and downlink ports can be monitored for both local and remote port monitoring.
* The same uplink port cannot be configured as both analyzer and monitored port.
* Only uplinks that are part of an uplink set can be configured for monitoring.

Removing a monitored port from existing uplink set is not allowed. The port monitoring must be disabled to remove the monitored port from the uplink set.

HPE Virtual Connect SE 100Gb F32 Module for HPE Synergy
----------------------------------------------------------------------------------------------------------------
Use the Analyzer port speed option to configure the speed of the network analyzer port.

For example, if you want to operate an HPE Virtual Connect SE 100Gb F32 Module for HPE Synergy having 25 GB per second speed at a speed of 10 GB per second, you must set the Analyzer port speed to 10 GB per second.

Similarly, you can configure the Forward Error Correction (FEC) mode using the Analyzer port FEC mode option. You can customize both the analyzer port speed and FEC mode based on the hardware requirement.

???+ info
    Minimum required privileges: Infrastructure administrator or Network administrator
    

## Examples

###  Example 1 

```powershell
$LogicalInterconnect = Get-OVLogicalInterconnect -Name "Encl1-Default VC FF LIG"
$MonitoredPorts      = @(
    @{Port = "Enclosure1:Bay3:D2"; Direction = "MonitoredToServer"}, 
    @{Port = "Enclosure1:Bay3:D3"; Direction = "MonitoredFromServer"}, 
    @{Port = "Enclosure2:Bay6:D7"; Direction = "Both"} 

)

Enable-OVLogicalInterconnectPortMonitoring -InputObject $LogicalInterconnect -AnalyzerPort "Enclosure1:Bay3:Q1.1" -MonitoredPorts $MonitoredPorts
```

Enable port monitoring for the specific logical interconnect.

###  Example 2 

```powershell
Get-OVLogicalInterconnect -Name "LE1-Default VC LIG" | Enable-OVLogicalInterconnectPortMonitoring -AnalyzerPort "Enclosure1:Bay3:Q1.1" -MonitoredPorts @{Port = "Enclosure1:Bay3:d1"; Direction = "Both"}, @{Port = "Enclosure2:Bay6:d1"; Direction = "Both"}
```

Enable port monitoring for the specific logical interconnect.

###  Example 3 

```powershell
$UplinkSetName           = "RSPAN Analyzer"
$UplinkSetPort           = "Enclosure1:Bay3:Q6.1"
$LogicalInterconnectName = "Encl1-Default VC FF LIG"
$RSPANNetworkName        = "RSPAN Network"
$RSPANNetworkVlanID      = "411"

If (-not ($RSPANNetwork = Get-OVNetwork -Name $RSPANNetworkName -Type Ethernet -ErrorAction SilentlyContinue)) {

    New-OVNetwork -Name $RSPANNetworkName -VlanID $RSPANNetworkVlanID

}

# Get the logical interconnect resource
$LogicalInterconnect      = Get-OVLogicalInterconnect -Name $LogicalInterconnectName -ErrorAction Stop

# Get the associated logical interconnect group resource from the logical interconnect
$LogicalInterconnectGroup = Get-OVLogicalInterconnectGroup -InputObject $LogicalInterconnect

# Add a new uplink set to the LIG associated with the LI
$UplinkSetParams = @{

    InputObject = $LogicalInterconnectGroup;
    Name        = $UplinkSetName;
    Type        = 'Ethernet';
    Networks    = $RSPANNetwork;
    UplinkPorts = $UplinkSetPort

}

# Create the new uplink set to the logical interconnect group
New-OVUplinkSet @UplinkSetParams

# Update the LI from parent
Update-OVLogicalInterconnect -InputObject $LogicalInterconnect

# Configure port monitoring with the new uplink set configuration
$MonitoredPorts      = @(
    @{Port = "Enclosure1:Bay3:D2"; Direction = "MonitoredToServer"}, 
    @{Port = "Enclosure1:Bay3:D3"; Direction = "MonitoredFromServer"}, 
    @{Port = "Enclosure2:Bay6:D7"; Direction = "Both"} 

)

Enable-OVLogicalInterconnectPortMonitoring -InputObject $LogicalInterconnect -UplinkSetName $UplinkSetName -MonitoredPorts $MonitoredPorts
```

Configure remote session (RSPAN) port monitoring.

## Parameters

### -AnalyzerPort &lt;Object&gt;

Specifies the network analyzer port (the mirrored-to uplink port) for the downlink server ports within a single enclosure. There is a single "mirrored-to port" per logical interconnect.  The port string value format must be "EnclosureID:BayID:FaceplateName"

Example: "Enclosure2:Bay6:Q1.1"


| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
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

An Array of Hashtable or PSCustomObject containing the desired port to monitor.  The "Port" property format must be "EnclosureID:BayID:ServerDownlinkPortID".  The ServerDownlinkPortID must be the full physical port, as port monitoring mirrors the entire downlink port, regardless the number of FlexNICs configured.

Example: @{Port = "Enclosure1:Bay1:D2"; Direction = "toserver"}

The "Direction" property value must be one of the following:

* MonitoredToServer
* MonitoredFromServer
* Both

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UplinkSetName &lt;Hashtable&gt;

The name of the uplink set provisioned to the specified logical interconnect resource provided in the InputObject parameter.  The uplink set must:

* Be provisioned to both the logical interconnect and its associated parent logical interconnect group.
* Contain a singular, tagged Ethernet network.
* The Ethernet network must not be assigned to any server profile connections, or other uplink sets.
* The uplink set must only contain a single uplink port.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]"
    Logical Interconnect resource object from Get-OVLogicalInterconnect
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for configuring port monitoring on the requested logical intercinnect.
    

## Related Links

* [Disable-OVLogicalInterconnectPortMonitoring](disable-ovlogicalinterconnectportmonitoring.md)
* [Get-OVLogicalInterconnectPortMonitoring](get-ovlogicalinterconnectportmonitoring.md)
