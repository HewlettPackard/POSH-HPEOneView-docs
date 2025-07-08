---
description: Create new Logical Interconnect Group.
---

# New-OVLogicalInterconnectGroup

## Syntax

```powershell
New-OVLogicalInterconnectGroup
    [-Name] <String>
    [-Bays] <Hashtable>
    [-InterconnectConsistencyChecking <String>]
    [-EnableIgmpSnooping <Boolean>]
    [-IgmpIdleTimeoutInterval <Int32>]
    [-IgmpSnoopingConsistencyChecking <String>]
    [-EnableFastMacCacheFailover <Boolean>]
    [-MacRefreshInterval <Int32>]
    [-EnableNetworkLoopProtection <Boolean>]
    [-EnablePauseFloodProtection <Boolean>]
    [-EnableLLDPTagging <Boolean>]
    [-EnableEnhancedLLDPTLV <Boolean>]
    [-LldpAddressingMode <Boolean>]
    [-SNMP <Object>]
    [-SNMPConsistencyChecking <String>]
    [-SnmpV1]
    [-SnmpV3]
    [-SnmpV3User <HPEOneView.Appliance.SnmpV3User>]
    [-InternalNetworks <Array>]
    [-InternalNetworkConsistencyChecking <String>]
    [-QosConfiguration <Object>]
    [-QoSConsistencyChecking <String>]
    [-UplinkSet <Hashtable[]>]
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

```powershell
New-OVLogicalInterconnectGroup
    [-Name] <String>
    [-FrameCount] <Int32>
    [-InterconnectBaySet] <Int32>
    [-FabricModuleType] <String>
    [-Bays] <Hashtable>
    [-InterconnectConsistencyChecking <String>]
    [-FabricRedundancy <String>]
    [-DownlinkSpeedMode <String>]
    [-EnableCutThroughSwitching <Bool>]
    [-EnableStormControl <Bool>]
    [-StormControlPacketsPerSecondThreshold <Int>]
    [-StormControlPollingInterval <Int>]
    [-EnableDdns <Bool>]
    [-DdnsDomainNameSuffix <String>]
    [-EnableIgmpSnooping <Boolean>]
    [-IgmpVLANs <String>]
    [-IgmpIdleTimeoutInterval <Int32>]
    [-IgmpMulticastFloodPrevention <Bool>]
    [-IgmpProxyReporting <Bool>]
    [-IgmpSnoopingConsistencyChecking <String>]
    [-EnableNetworkLoopProtection <Boolean>]
    [-EnableLLDPTagging <Boolean>]
    [-EnableEnhancedLLDPTLV <Boolean>]
    [-LldpAddressingMode <Boolean>]
    [-SNMP <Object>]
    [-SNMPConsistencyChecking <String>]
    [-SnmpV1]
    [-SnmpV3]
    [-SnmpV3User <HPEOneView.Appliance.SnmpV3User>]
    [-InternalNetworks <Array>]
    [-InternalNetworkConsistencyChecking <String>]
    [-QosConfiguration <Object>]
    [-QoSConsistencyChecking <String>]
    [-UplinkSet <Hashtable[]>]
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

```powershell
New-OVLogicalInterconnectGroup
    [-Import] <Object>
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet provides the ability to create a Logical Interconnect Group.  Bays 1 and 2 are required, and need to be identical.

## Examples

###  Example 1 

```powershell
$Dest1 = New-OVSnmpTrapDestination -Destination mysnmpserver.domain.local -Community MyR3adcommun1ty -SnmpFormat SNMPv1 -TrapSeverities critical,warning
$Dest2 = New-OVSnmpTrapDestination 10.44.120.9 MyR3adcommun1ty SNMPv1 critical,warning legacy "Other","PortStatus","PortThresholds" "Other","PortStatus"
$SnmpConfig = New-OVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22" -TrapDestinations $Dest1,$Dest2
$Bays = @{1 = "FlexFabric";2 = "FlexFabric"}
New-OVLogicalInterconnectGroup "FlexFabric Production 1" -bays $Bays -snmp $SnmpConfig
```

Create a Logical Interconnect Group with VC FlexFabric modules in Bays 1 and 2, and SNMP Settings

###  Example 2 

```powershell
$InternalNetworks = Get-OVNetwork -Name "My Internal VLANs*"
New-OVLogicalInterconnectGroup -Name "Synergy VC Prod" -FrameCount 3 -InterconnectBaySet 3 -FabricModuleType "SEVC40F8" -Bays @{Frame1 = @{Bay3 = "SEVC40f8" ; Bay6 = "SE20ILM"};Frame2 = @{Bay3 = "SE20ILM"; Bay6 = "SEVC40f8" };Frame3 = @{Bay3 = "SE20ILM"; Bay6 = "SE20ILM"}} -FabricRedundancy "HighlyAvailable" -InternalNetworks $InternalNetworks
```

Create a Synergy Virtual Connect multi-Frame Logical Interconnect Group resource, using Bay Set 3 and Synergy 20Gb Satellite modules.

###  Example 3 

```powershell
New-OVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -enableIgmpSnooping $True -igmpIdleTimeoutInterval 300 -LoopProtect $True
```

Create a Logical Interconnect Group with VC Flex10/10D in Bays 1 and 2, FlexFabric modules in Bays 3 and 4, Enable IGMP Snooping, IGMP Idle timeout and LoopProtect

###  Example 4 

```powershell
New-OVLogicalInterconnectGroup -Name "Synergy SAS Prod" -FrameCount 1 -InterconnectBaySet 1 -FabricModuleType "SAS" -Bays @{Frame1 = @{Bay1 = "SE12SAS" ; Bay4 = "SE12SAS"}}
```

Create a Synergy SAS Logical Interconnect Group resource.

###  Example 5 

```powershell
New-OVLogicalInterconnectGroup -Name "Synergy VC FC Prod" -FrameCount 1 -InterconnectBaySet 2 -FabricModuleType "SEVCFC" -Bays @{Frame1 = @{Bay2 = "SEVC16GbFC" ; Bay5 = "SEVC16GbFC"}}
```

Create a Synergy Virtual Connect Fibre Channel Logical Interconnect Group resource.

###  Example 6 

```powershell
New-OVLogicalInterconnectGroup -import c:\dir\mylig.json
```

Create a Logical Interconnect Group by using a JSON formatted input file.

## Parameters

### -Name &lt;String&gt;

The Logical Interconnect Group Name

| Aliases | ligname |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FrameCount &lt;Int32&gt;

The number of Synergy Frames to participate in the Logical Stack.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InterconnectBaySet &lt;Int32&gt;

Which Synergy Interconnect Bay Set ID will the interconnects be populated in.  Allowed value:

* 1 - Interconnect Bay set 1 & 4
* 2 - Interconnect Bay set 2 & 5
* 3 - Interconnect Bay set 3 & 6

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FabricModuleType &lt;String&gt;

Specify the Synergy Fabric Module type the Logical Interconnect Group will be modeled for.  Allowed value:

*  SEVC100F32 - Virtual Connect SE 100Gb F32 Module for Synergy
*  SEVC40F8 - Virtual Connect SE 40Gb F8 Module for Synergy
* SEVCFC or SEVC16GbFC - Virtual Connect SE 16Gb FC Module for Synergy
* SEVC32FC - Virtual Connect SE 32Gb FC Module for Synergy
* SAS - Synergy 12Gb SAS Connection Module

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Bays &lt;Hashtable&gt;

HPE BladeSystem C7000 Support - A `[System.Collections.Hashtable]` object of each Interconnect Bay.  Accepted values are:

* FlexFabric - HPE VC FlexFabric 10Gb/24-Port Module
* Flex10     - HPE VC Flex-10 Enet Module
* Flex1010D  - HPE VC Flex-10/10D Module
* Flex2040f8 - HPE VC FlexFabric-20/40 F8 Module
* VCFC20     - HPE VC 8Gb 20-Port FC Module
* VCFC24     - HPE VC 8Gb 24-Port FC Module
* FEX        - Cisco Fabric Extender for HPE BladeSystem
        
`[E.g]`. @{1 = "Flex10";2 = "Flex10";3 = "FlexFabric";4 = "Flexfabric";5 = "";6 = "";7 = "";8 = "";}   

HPE Synergy Support - A `[System.Collection.Hashtable]` object, with Frame and Fabric Bay definitions.  Accepted values are:

* SEVC100F32   - Virtual Connect SE 40Gb F8 Module for Synergy

* SEVC40f8   - Virtual Connect SE 40Gb F8 Module for Synergy
* SEVCFC or SEVC16GbFC - Virtual Connect SE 16Gb FC Module for Synergy
* SE20ILM    - Synergy 20Gb Interconnect Link Module
* SE10ILM    - Synergy 10Gb Interconnect Link Module
* SE12SAS    - Synergy 12Gb SAS Connection Module

$Bays = @{ Frame1 = @{Bay3 = "SEVC40f8"; Bay6 = "SE20ILM"}; Frame2 = @{Bay3 = "SE20ILM"; Bay6 = "SEVC40f8"} }

???+ info
    When configuring Synergy SAS Connection Module, no other device bays can be specified, and only a Single Frame can be configured.


| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -FabricRedundancy &lt;String&gt;

Define the expected Synergy Fabric Interconnect Redundancy type.  Allowed value:

* HighlyAvailable
* Redundant
* ASide
* BSide

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Redundant |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableIgmpSnooping &lt;Boolean&gt;

The IGMP snooping feature allows interconnects to monitor the IGMP IP multicast membership activities and configure hardware Layer 2 switching behavior of multicast traffic to optimize network resource usage. Currently, only IGMP v1 and v2 (RFC 2236) are supported.
        
Default value: Disabled

| Aliases | IGMPSnoop |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IgmpIdleTimeoutInterval &lt;Int32&gt;

The Group Membership Interval value, as specified by the IGMP v2 specification (RFC 2236).
For optimum network resource usage, set the timeout interval to match your network"s multicast router settings.
        
Data type:  Numeric; unit of measure is seconds
Default value:  260
Required: Yes, if IGMP snooping is enabled

| Aliases | IGMPIdle |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 260 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableFastMacCacheFailover &lt;Boolean&gt;

When an uplink that was in standby mode becomes active, it can take several minutes for external Ethernet interconnects to recognize that the server blades can now be reached on this newly active connection.  Enabling Fast MAC Cache Failover causes Ethernet packets to be transmitted on the newly active connection, which enables the external Ethernet interconnects to identify the new connection (and update their MAC caches).  The transmission sequence is repeated a few times at the MAC refresh interval and completes in about 1 minute.

Default value:  Enabled

| Aliases | FastMAC |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | True |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MacRefreshInterval &lt;Int32&gt;

The time interval at which MAC caches are refreshed
        
Data type:  Numeric; unit of measure is seconds
Default value: 5

| Aliases | FastMACRefresh |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 5 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableNetworkLoopProtection &lt;Boolean&gt;

Enables or disables network loop protection.

Network loop protection:

The loop protection feature enables detection of loops on downlink ports, which can be Flex-10 logical ports or physical ports. The feature applies when Device Control Channel (DCC) protocol is running on the Flex-10 port. If DCC is not available, the feature applies to the physical downlink port.

Network loop protection uses two methods to detect loops:

1. It periodically injects a special probe frame into the VC domain and monitors downlink ports for the looped back probe frame. If this special probe frame is detected on downlink ports, the port is considered to cause the loop condition.

2. It monitors and intercepts common loop detection frames used in other switches. In network environments where the upstream switches send loop detection frames, the VC interconnects must ensure that any downlink loops do not cause these frames to be sent back to the uplink ports. Even though the probe frames ensure loops are detected, there is a small time window depending on the probe frame transmission interval in which the loop detection frames from the external switch might loop through down link ports and reach uplink ports. By intercepting the external loop detection frames on downlinks, the possibility of triggering loop protection on the upstream switch is eliminated. When network loop protection is enabled, VC interconnects intercept loop detection frames from various switch vendors, such as Cisco and HPE Networking.

When the network loop protection feature is enabled, any probe frame or other supported loop detection frame received on a downlink port is considered to be causing the network loop, and the port is disabled immediately until an administrative action is taken. The administrative action involves resolving the loop condition and clearing the loop protection error condition. The loop detected status on a port can be cleared by un-assigning all networks from the profile connect corresponding to the port in the loop detected state.

The SNMP agent supports trap generation when a loop condition is detected or cleared.

Default value: Enabled

| Aliases | LoopProtect |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | True |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnablePauseFloodProtection &lt;Boolean&gt;

Enables or disables pause flood protection.

Pause flood protection:

Ethernet switch interfaces use pause frame based flow control mechanisms to control data flow. When a pause frame is received on a flow control enabled interface, the transmit operation is stopped for the pause duration specified in the pause frame. All other frames destined for this interface are queued up. If another pause frame is received before the previous pause timer expires, the pause timer is refreshed to the new pause duration value. If a steady stream of pause frames is received for extended periods of time, the transmit queue for that interface continues to grow until all queuing resources are exhausted. This condition severely impacts the switch operation on other interfaces. In addition, all protocol operations on the switch are impacted because of the inability to transmit protocol frames. Both port pause and priority-based pause frames can cause the same resource exhaustion condition.

VC interconnects provide the ability to monitor server downlink ports for pause flood conditions and take protective action by disabling the port. The default polling interval is 10 seconds and is not customer configurable. The SNMP agent supports trap generation when a pause flood condition is detected or cleared.

This feature operates at the physical port level. When a pause flood condition is detected on a Flex-10 physical port, all Flex-10 logical ports associated with physical ports are disabled. When the pause flood protection feature is enabled, this feature detects pause flood conditions on server downlink ports and disables the port. The port remains disabled until an administrative action is taken. The administrative action involves the following steps:

1. Resolve the issue with the NIC on the server causing the continuous pause generation. This might include updating the NIC firmware and device drivers.

Rebooting the server might not clear the pause flood condition if the cause of the pause flood condition is in the NIC firmware. In this case, the server must be completely disconnected from the power source to reset the NIC firmware.

2. Re-enable the disabled ports on the VC interconnect modules.

Default value: Enabled

| Aliases | PauseProtect |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | True |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableLLDPTagging &lt;Boolean&gt;

When enabled, tagged LLDP frames are transmitted over downlink ports to server hardware. The management IP address of the interconnect in the lowest numbered bay location in the logical interconnect will be advertised as the LLDP management address TLV.

This parameter is only available for 2.00.07 or newer appliances.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableEnhancedLLDPTLV &lt;Boolean&gt;

When enabled, the enclosure name and serial number are encapsulated in the Chassis ID TLV LLDPDU transmitted by interconnect uplink ports.

This parameter is only available for 2.00.07 or newer appliances.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LldpAddressingMode &lt;Boolean&gt;

Specify the IP address format type to support.  Allowed values:

* IPv4
* IPv6
* IPv4AndIPv6

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SNMP &lt;Object&gt;

SNMP Settings to define SNMP configruation.  Use New-OVSnmpConfiguration and New-OVSnmpTrapDestination Cmdlets to create the necessary SNMP Configuration object.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InternalNetworks &lt;Array&gt;

An Array collection of Networks that will be marked as Internal only.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -QosConfiguration &lt;Object&gt;

A collection of QOS configurations that are created using the New-OVQosConfig helper Cmdlet.

| Aliases | qos, QosConfig |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Import &lt;Object&gt;

Specify JSON source file to create Logical Interconnect Group.

| Aliases | i |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;HPEOneView.Appliance.ScopeCollection[]&gt;

Provide an `[HPEOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the Add-OVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpV1 &lt;SwitchParameter&gt;

Specify the SNMP version type is SNMPv1.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpV3 &lt;SwitchParameter&gt;

Specify the SNMP version type is SNMPv3.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpV3User &lt;HPEOneView.Appliance.SnmpV3User&gt;

Provide the SNMPv3 user object from New-OVSnmpV3User.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InterconnectConsistencyChecking &lt;String&gt;

Use to indicate if the group policy will be tracked to with the deployed and configured resource. Allowed values:

* None
* Exact

Default: Exact

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InternalNetworkConsistencyChecking &lt;String&gt;

Use to indicate if the group policy will be tracked to with the deployed and configured resource. Allowed values:

* None
* Exact

Default: Exact

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -QoSConsistencyChecking &lt;String&gt;

Use to indicate if the group policy will be tracked to with the deployed and configured resource. Allowed values:

* None
* Exact

Default: Exact

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SNMPConsistencyChecking &lt;String&gt;

Use to indicate if the group policy will be tracked to with the deployed and configured resource. Allowed values:

* None
* Exact

Default: Exact

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DdnsDomainNameSuffix &lt;String&gt;

When enabled, Domain Name System (DNS) server will be updated automatically when either the IP address or hostname change for the interconnect module.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DownlinkSpeedMode &lt;String&gt;

Specify the port downlink speed to be configured for HPE Virtual Connect SE 100Gb F32 module for Synergy.

Allowed values:

* 25
* 50

Default: 25

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableCutThroughSwitching &lt;Bool&gt;

Enables or disables the Cut-Through switching mode. When enabled, the switch starts forwarding the frame as soon as the switch has read the destination details in the packet header. When enabled, Pause flood protection is disabled.

???+ info
    This option is available for HPE Virtual Connect SE 100Gb F32 Module for HPE Synergy.


    Default value:  Disabled

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableDdns &lt;Bool&gt;

When enabled, Domain Name System (DNS) server will be updated automatically when either the IP address or hostname change for the interconnect module.  Must provide `-DdnsDomainNameSuffix` parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableStormControl &lt;Bool&gt;

Enables or disables the suppression of excessive inbound broadcast, multicast, or DLF (Destination Lookup Failure) packets when a threshold is reached.

Default value:  Disabled

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IgmpVLANs &lt;String&gt;

Specify values or range of VLAN IDs, from 1-4094, associated with networks defined in the logical interconnect. Use comma or hyphens as separator, for example: 10-15, 52, 100-200.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StormControlPacketsPerSecondThreshold &lt;Int&gt;

The Storm Control packet threshold at which traffic is suppressed.

Valid range: 1-262143 packets per second

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StormControlPollingInterval &lt;Int&gt;

When enabling Storm Control, Specify a value between 5 and 30 seconds.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UplinkSet &lt;Hashtable[]&gt;

A collection of uplink sets from New-OVUplinkSet using the `-Passthru` parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IgmpMulticastFloodPrevention &lt;Bool&gt;

By default, unregistered IGMP multicast traffic traversing VC Ethernet modules are flooded on the configured Ethernet network. The IGMP multicast flood prevention option prevents the flooding of unregistered multicast. The IGMP multicast flood prevention setting is effective only when IGMP snooping is enabled for all or a subset of VLANs. When enabled, unregistered multicast traffic from uplinks is dropped and traffic from the server ports is redirected to the active uplink port. IGMP multicast flood prevention is disabled by default.

The IGMP multicast flood prevention option is supported only on the following interconnects:
*  HPE Virtual Connect SE 100Gb F32 Module for HPE Synergy
*  HPE Virtual Connect SE 40Gb F8 Module for HPE Synergy

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IgmpProxyReporting &lt;Bool&gt;

IGMP snooping with proxy reporting or report suppression actively filters the IGMP packets reducing the load on the multicast router. The IGMP proxy reporting is effective only when IGMP snooping is enabled for all or a subset of VLANs. The IGMP proxy reporting is enabled by default.

The IGMP proxy reporting option is supported only on the following interconnects:
*  HPE Virtual Connect SE 100Gb F32 Module for HPE Synergy
*  HPE Virtual Connect SE 40Gb F8 Module for HPE Synergy

You can enable or disable the IGMP proxy reporting configuration on the Logical Interconnect or Logical Interconnect Groups screen.
*  Enabled ($True) - The host reports are filtered to minimize traffic to the upstream multicast router.
*  Disabled ($False) - The host reports are not filtered. All the host reports are forwarded to the upstream multicast router.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IgmpSnoopingConsistencyChecking &lt;String&gt;

Use to override the consistency checking for the policy.  Allowed values:

* Exact
* None

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "System.Collections.Hashtable"
    Hashtable containing Interconnect Bay layout and associated interconnect module
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Logical Interconnect Group creation async task
    

## Related Links

* [Get-OVLogicalInterconnectGroup](get-ovlogicalinterconnectgroup.md)
* [Remove-OVLogicalInterconnectGroup](remove-ovlogicalinterconnectgroup.md)
