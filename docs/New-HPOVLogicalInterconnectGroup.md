<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVLogicalInterconnectGroup
<p>
Create new Logical Interconnect Group.

### SYNTAX
<p>
<pre><code>New-HPOVLogicalInterconnectGroup [-Name] &lt;String&gt; [-Bays] &lt;Hashtable&gt;[ [-InterconnectConsistencyChecking] &lt;string&gt;] [-EnableIgmpSnooping] &lt;Boolean&gt; [-IgmpIdleTimeoutInterval] &lt;Int32&gt; [-EnableFastMacCacheFailover] &lt;Boolean&gt; [-MacRefreshInterval] &lt;Int32&gt; [-EnableNetworkLoopProtection] &lt;Boolean&gt; [-EnablePauseFloodProtection] &lt;Boolean&gt; [-EnableLLDPTagging] &lt;Boolean&gt; [-EnableEnhancedLLDPTLV] &lt;Boolean&gt; [-LldpAddressingMode] &lt;Boolean&gt; [-SNMP] &lt;Object&gt;[ [-SNMPConsistencyChecking] &lt;string&gt;][ [-SnmpV1] &lt;SwitchParameter&gt;][ [-SnmpV3] &lt;SwitchParameter&gt;] [-SnmpV3User] &lt;HPOneView.Appliance.SnmpV3User&gt; [-InternalNetworks] &lt;Array&gt;[ [-InternalNetworkConsistencyChecking] &lt;string&gt;] [-QosConfiguration] &lt;Object&gt;[ [-QoSConsistencyChecking] &lt;string&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalInterconnectGroup [-Name] &lt;String&gt; [-FrameCount] &lt;Int32&gt; [-InterconnectBaySet] &lt;Int32&gt; [-FabricModuleType] &lt;String&gt; [-Bays] &lt;Hashtable&gt;[ [-InterconnectConsistencyChecking] &lt;string&gt;] [-FabricRedundancy] &lt;String&gt; [-EnableIgmpSnooping] &lt;Boolean&gt; [-IgmpIdleTimeoutInterval] &lt;Int32&gt; [-EnableNetworkLoopProtection] &lt;Boolean&gt; [-EnableLLDPTagging] &lt;Boolean&gt; [-EnableEnhancedLLDPTLV] &lt;Boolean&gt; [-LldpAddressingMode] &lt;Boolean&gt; [-SNMP] &lt;Object&gt;[ [-SNMPConsistencyChecking] &lt;string&gt;][ [-SnmpV1] &lt;SwitchParameter&gt;][ [-SnmpV3] &lt;SwitchParameter&gt;] [-SnmpV3User] &lt;HPOneView.Appliance.SnmpV3User&gt; [-InternalNetworks] &lt;Array&gt;[ [-InternalNetworkConsistencyChecking] &lt;string&gt;] [-QosConfiguration] &lt;Object&gt;[ [-QoSConsistencyChecking] &lt;string&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalInterconnectGroup [-Import] &lt;Object&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet provides the ability to create a Logical Interconnect Group.  Bays 1 and 2 are required, and need to be identical.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Bays &lt;Hashtable&gt;<p>
HPE BladeSystem C7000 Support - A [System.Collections.Hashtable] object of each Interconnect Bay.  Accepted values are:

	* FlexFabric - HP VC FlexFabric 10Gb/24-Port Module
	* Flex10     - HP VC Flex-10 Enet Module
	* Flex1010D  - HP VC Flex-10/10D Module
	* Flex2040f8 - HP VC FlexFabric-20/40 F8 Module
	* VCFC20     - HP VC 8Gb 20-Port FC Module
	* VCFC24     - HP VC 8Gb 24-Port FC Module
	* FEX        - Cisco Fabric Extender for HP BladeSystem
		
E.g. @{1 = "Flex10";2 = "Flex10";3 = "FlexFabric";4 = "Flexfabric";5 = "";6 = "";7 = "";8 = "";}   

HPE Synergy Support - A [System.Collection.Hashtable] object, with Frame and Fabric Bay definitions.  Accepted values are:

	* SEVC40f8   - Virtual Connect SE 40Gb F8 Module for Synergy
	* SEVC16GbFC - Virtual Connect SE 16Gb FC Module for Synergy
	* SE20ILM    - Synergy 20Gb Interconnect Link Module
	* SE10ILM    - Synergy 10Gb Interconnect Link Module
	* SE12SAS    - Synergy 12Gb SAS Connection Module

$Bays = @{ Frame1 = @{Bay3 = "SEVC40f8"; Bay6 = "SE20ILM"}; Frame2 = @{Bay3 = "SE20ILM"; Bay6 = "SEVC40f8"} }

Note: When configuring Synergy SAS Connection Module, no other device bays can be specified, and only a Single Frame can be configured.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableEnhancedLLDPTLV &lt;Boolean&gt;<p>
When enabled, the enclosure name and serial number are encapsulated in the Chassis ID TLV LLDPDU transmitted by interconnect uplink ports.

This parameter is only available for 2.00.07 or newer appliances.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableFastMacCacheFailover &lt;Boolean&gt;<p>
When an uplink that was in standby mode becomes active, it can take several minutes for external Ethernet interconnects to recognize that the server blades can now be reached on this newly active connection.  Enabling Fast MAC Cache Failover causes Ethernet packets to be transmitted on the newly active connection, which enables the external Ethernet interconnects to identify the new connection (and update their MAC caches).  The transmission sequence is repeated a few times at the MAC refresh interval and completes in about 1 minute.

Default value:  Enabled

<table><tbody><tr><td>Aliases</td><td>FastMAC</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>True</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableIgmpSnooping &lt;Boolean&gt;<p>
The IGMP snooping feature allows interconnects to monitor the IGMP IP multicast membership activities and configure hardware Layer 2 switching behavior of multicast traffic to optimize network resource usage. Currently, only IGMP v1 and v2 (RFC 2236) are supported.
		
Default value: Disabled

<table><tbody><tr><td>Aliases</td><td>IGMPSnoop</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableLLDPTagging &lt;Boolean&gt;<p>
When enabled, tagged LLDP frames are transmitted over downlink ports to server hardware. The management IP address of the interconnect in the lowest numbered bay location in the logical interconnect will be advertised as the LLDP management address TLV.

This parameter is only available for 2.00.07 or newer appliances.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableNetworkLoopProtection &lt;Boolean&gt;<p>
Aliases [-LoopProtect]
Enables or disables network loop protection.

Network loop protection:

The loop protection feature enables detection of loops on downlink ports, which can be Flex-10 logical ports or physical ports. The feature applies when Device Control Channel (DCC) protocol is running on the Flex-10 port. If DCC is not available, the feature applies to the physical downlink port.

Network loop protection uses two methods to detect loops:

1. It periodically injects a special probe frame into the VC domain and monitors downlink ports for the looped back probe frame. If this special probe frame is detected on downlink ports, the port is considered to cause the loop condition.

2. It monitors and intercepts common loop detection frames used in other switches. In network environments where the upstream switches send loop detection frames, the VC interconnects must ensure that any downlink loops do not cause these frames to be sent back to the uplink ports. Even though the probe frames ensure loops are detected, there is a small time window depending on the probe frame transmission interval in which the loop detection frames from the external switch might loop through down link ports and reach uplink ports. By intercepting the external loop detection frames on downlinks, the possibility of triggering loop protection on the upstream switch is eliminated. When network loop protection is enabled, VC interconnects intercept loop detection frames from various switch vendors, such as Cisco and HP Networking.

When the network loop protection feature is enabled, any probe frame or other supported loop detection frame received on a downlink port is considered to be causing the network loop, and the port is disabled immediately until an administrative action is taken. The administrative action involves resolving the loop condition and clearing the loop protection error condition. The loop detected status on a port can be cleared by un-assigning all networks from the profile connect corresponding to the port in the loop detected state.

The SNMP agent supports trap generation when a loop condition is detected or cleared.

Default value: Enabled

<table><tbody><tr><td>Aliases</td><td>LoopProtect</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>True</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnablePauseFloodProtection &lt;Boolean&gt;<p>
Aliases [-PauseProtect]
Enables or disables pause flood protection.

Pause flood protection:

Ethernet switch interfaces use pause frame based flow control mechanisms to control data flow. When a pause frame is received on a flow control enabled interface, the transmit operation is stopped for the pause duration specified in the pause frame. All other frames destined for this interface are queued up. If another pause frame is received before the previous pause timer expires, the pause timer is refreshed to the new pause duration value. If a steady stream of pause frames is received for extended periods of time, the transmit queue for that interface continues to grow until all queuing resources are exhausted. This condition severely impacts the switch operation on other interfaces. In addition, all protocol operations on the switch are impacted because of the inability to transmit protocol frames. Both port pause and priority-based pause frames can cause the same resource exhaustion condition.

VC interconnects provide the ability to monitor server downlink ports for pause flood conditions and take protective action by disabling the port. The default polling interval is 10 seconds and is not customer configurable. The SNMP agent supports trap generation when a pause flood condition is detected or cleared.

This feature operates at the physical port level. When a pause flood condition is detected on a Flex-10 physical port, all Flex-10 logical ports associated with physical ports are disabled. When the pause flood protection feature is enabled, this feature detects pause flood conditions on server downlink ports and disables the port. The port remains disabled until an administrative action is taken. The administrative action involves the following steps:

1. Resolve the issue with the NIC on the server causing the continuous pause generation. This might include updating the NIC firmware and device drivers.

Rebooting the server might not clear the pause flood condition if the cause of the pause flood condition is in the NIC firmware. In this case, the server must be completely disconnected from the power source to reset the NIC firmware.

2. Re-enable the disabled ports on the VC interconnect modules.

Default value: Enabled

<table><tbody><tr><td>Aliases</td><td>PauseProtect</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>True</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FabricModuleType &lt;String&gt;<p>
Specify the Synergy Fabric Module type the Logical Interconnect Group will be modeled for.  Allowed value:

	*  SEVC40F8 - Virtual Connect SE 40Gb F8 Module for Synergy
	* SEVCFC - Virtual Connect SE 16Gb FC Module for Synergy
	* SAS - Synergy 12Gb SAS Connection Module

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FabricRedundancy &lt;String&gt;<p>
Define the expected Synergy Fabric Interconnect Redundancy type.  Allowed value:

	* HighlyAvailable
	* Redundant
	* ASide
	* BSide

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Redundant</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FrameCount &lt;Int32&gt;<p>
The number of Synergy Frames to participate in the Logical Stack.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IgmpIdleTimeoutInterval &lt;Int32&gt;<p>
The Group Membership Interval value, as specified by the IGMP v2 specification (RFC 2236).
For optimum network resource usage, set the timeout interval to match your network"s multicast router settings.
		
Data type:  Numeric; unit of measure is seconds
Default value:  260
Required: Yes, if IGMP snooping is enabled

<table><tbody><tr><td>Aliases</td><td>IGMPIdle</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>260</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Import &lt;Object&gt;<p>
Specify JSON source file to create Logical Interconnect Group.

<table><tbody><tr><td>Aliases</td><td>i</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InterconnectBaySet &lt;Int32&gt;<p>
Which Synergy Interconnect Bay Set ID will the interconnects be populated in.  Allowed value:

	* 1 - Interconnect Bay set 1 & 4
	* 2 - Interconnect Bay set 2 & 5
	* 3 - Interconnect Bay set 3 & 6

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InterconnectConsistencyChecking &lt;string&gt;<p>
Use to indicate if the group policy will be tracked to with the deployed and configured resource. Allowed values:

	* None
	* Exact

Default: Exact

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InternalNetworkConsistencyChecking &lt;string&gt;<p>
Use to indicate if the group policy will be tracked to with the deployed and configured resource. Allowed values:

	* None
	* Exact

Default: Exact

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InternalNetworks &lt;Array&gt;<p>
An Array collection of Networks that will be marked as Internal only.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LldpAddressingMode &lt;Boolean&gt;<p>
Specify the IP address format type to support.  Allowed values:

	* IPv4
	* IPv6
	* IPv4AndIPv6

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MacRefreshInterval &lt;Int32&gt;<p>
The time interval at which MAC caches are refreshed
		
Data type:  Numeric; unit of measure is seconds
Default value: 5

<table><tbody><tr><td>Aliases</td><td>FastMACRefresh</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-LIGName]

The Logical Interconnect Group Name

<table><tbody><tr><td>Aliases</td><td>ligname</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -QoSConsistencyChecking &lt;string&gt;<p>
Use to indicate if the group policy will be tracked to with the deployed and configured resource. Allowed values:

	* None
	* Exact

Default: Exact

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -QosConfiguration &lt;Object&gt;<p>
Aliases [-qos, -QosConfig]
A collection of QOS configurations that are created using the New-HPOVQosConfig helper CMDLET.

<table><tbody><tr><td>Aliases</td><td>qos, QosConfig</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SNMP &lt;Object&gt;<p>
SNMP Settings to define SNMP configruation.  Use New-HPOVSnmpConfiguration and New-HPOVSnmpTrapDestination Cmdlets to create the necessary SNMP Configuration object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SNMPConsistencyChecking &lt;string&gt;<p>
Use to indicate if the group policy will be tracked to with the deployed and configured resource. Allowed values:

	* None
	* Exact

Default: Exact

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV1 &lt;SwitchParameter&gt;<p>
Specify the SNMP version type is SNMPv1.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3 &lt;SwitchParameter&gt;<p>
Specify the SNMP version type is SNMPv3.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3User &lt;HPOneView.Appliance.SnmpV3User&gt;<p>
Provide the SNMPv3 user object from New-HPOVSnmpV3User.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Collections.Hashtable**_

 Hashtable containing Interconnect Bay layout and associated interconnect module



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Logical Interconnect Group creation async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Dest1 = New-HPOVSnmpTrapDestination -Destination mysnmpserver.domain.local -Community MyR3adcommun1ty -SnmpFormat SNMPv1 -TrapSeverities critical,warning
$Dest2 = New-HPOVSnmpTrapDestination 10.44.120.9 MyR3adcommun1ty SNMPv1 critical,warning legacy "Other","PortStatus","PortThresholds" "Other","PortStatus"
$SnmpConfig = New-HPOVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22" -TrapDestinations $Dest1,$Dest2
$Bays = @{1 = "FlexFabric";2 = "FlexFabric"}
New-HPOVLogicalInterconnectGroup "FlexFabric Production 1" -bays $Bays -snmp $SnmpConfig

</pre>
Create a Logical Interconnect Group with VC FlexFabric modules in Bays 1 and 2, and SNMP Settings


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$InternalNetworks = Get-HPOVNetwork -Name "My Internal VLANs*"
New-HPOVLogicalInterconnectGroup -Name "Synergy VC Prod" -FrameCount 3 -InterconnectBaySet 3 -FabricModuleType "SEVC40F8" -Bays @{Frame1 = @{Bay3 = "SEVC40f8" ; Bay6 = "SE20ILM"};Frame2 = @{Bay3 = "SE20ILM"; Bay6 = "SEVC40f8" };Frame3 = @{Bay3 = "SE20ILM"; Bay6 = "SE20ILM"}} -FabricRedundancy "HighlyAvailable" -InternalNetworks $InternalNetworks
</pre>
Create a Synergy Virtual Connect multi-Frame Logical Interconnect Group resource, using Bay Set 3 and Synergy 20Gb Satellite modules.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -enableIgmpSnooping $True -igmpIdleTimeoutInterval 300 -LoopProtect $True
</pre>
Create a Logical Interconnect Group with VC Flex10/10D in Bays 1 and 2, FlexFabric modules in Bays 3 and 4, Enable IGMP Snooping, IGMP Idle timeout and LoopProtect


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
New-HPOVLogicalInterconnectGroup -Name "Synergy SAS Prod" -FrameCount 1 -InterconnectBaySet 1 -FabricModuleType "SAS" -Bays @{Frame1 = @{Bay1 = "SE12SAS" ; Bay4 = "SE12SAS"}}
</pre>
Create a Synergy SAS Logical Interconnect Group resource.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
New-HPOVLogicalInterconnectGroup -Name "Synergy VC FC Prod" -FrameCount 1 -InterconnectBaySet 2 -FabricModuleType "SEVCFC" -Bays @{Frame1 = @{Bay2 = "SEVC16GbFC" ; Bay5 = "SEVC16GbFC"}}
</pre>
Create a Synergy Virtual Connect Fibre Channel Logical Interconnect Group resource.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
New-HPOVLogicalInterconnectGroup -import c:\dir\mylig.json
</pre>
Create a Logical Interconnect Group by using a JSON formatted input file.



### Related Links

* [Get-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectGroup)
* [Remove-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalInterconnectGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVLogicalInterconnectGroup
<p>
Create new Logical Interconnect Group.

### SYNTAX
<p>
<pre><code>New-HPOVLogicalInterconnectGroup [-Name] &lt;String&gt; [-Bays] &lt;Hashtable&gt; [-EnableIgmpSnooping] &lt;Boolean&gt; [-IgmpIdleTimeoutInterval] &lt;Int32&gt; [-EnableFastMacCacheFailover] &lt;Boolean&gt; [-MacRefreshInterval] &lt;Int32&gt; [-EnableNetworkLoopProtection] &lt;Boolean&gt; [-EnablePauseFloodProtection] &lt;Boolean&gt; [-EnableLLDPTagging] &lt;Boolean&gt; [-EnableEnhancedLLDPTLV] &lt;Boolean&gt; [-LldpAddressingMode] &lt;Boolean&gt; [-SNMP] &lt;Object&gt;[ [-SnmpV1] &lt;SwitchParameter&gt;][ [-SnmpV3] &lt;SwitchParameter&gt;] [-SnmpV3User] &lt;HPOneView.Appliance.SnmpV3User&gt; [-InternalNetworks] &lt;Array&gt; [-QosConfiguration] &lt;Object&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalInterconnectGroup [-Name] &lt;String&gt; [-InterconnectBaySet] &lt;Int32&gt; [-FabricModuleType] &lt;String&gt; [-Bays] &lt;Hashtable&gt; [-FrameCount] &lt;Int32&gt; [-FabricRedundancy] &lt;String&gt; [-EnableIgmpSnooping] &lt;Boolean&gt; [-IgmpIdleTimeoutInterval] &lt;Int32&gt; [-EnableNetworkLoopProtection] &lt;Boolean&gt; [-EnableLLDPTagging] &lt;Boolean&gt; [-EnableEnhancedLLDPTLV] &lt;Boolean&gt; [-LldpAddressingMode] &lt;Boolean&gt; [-SNMP] &lt;Object&gt;[ [-SnmpV1] &lt;SwitchParameter&gt;][ [-SnmpV3] &lt;SwitchParameter&gt;] [-SnmpV3User] &lt;HPOneView.Appliance.SnmpV3User&gt; [-InternalNetworks] &lt;Array&gt; [-QosConfiguration] &lt;Object&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalInterconnectGroup [-Import] &lt;Object&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet provides the ability to create a Logical Interconnect Group.  Bays 1 and 2 are required, and need to be identical.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Bays &lt;Hashtable&gt;<p>
HPE BladeSystem C7000 Support - A [System.Collections.Hashtable] object of each Interconnect Bay.  Accepted values are:

	* FlexFabric - HP VC FlexFabric 10Gb/24-Port Module
	* Flex10     - HP VC Flex-10 Enet Module
	* Flex1010D  - HP VC Flex-10/10D Module
	* Flex2040f8 - HP VC FlexFabric-20/40 F8 Module
	* VCFC20     - HP VC 8Gb 20-Port FC Module
	* VCFC24     - HP VC 8Gb 24-Port FC Module
	* FEX        - Cisco Fabric Extender for HP BladeSystem
		
E.g. @{1 = "Flex10";2 = "Flex10";3 = "FlexFabric";4 = "Flexfabric";5 = "";6 = "";7 = "";8 = "";}   

HPE Synergy Support - A [System.Collection.Hashtable] object, with Frame and Fabric Bay definitions.  Accepted values are:

	* SEVC40f8   - Virtual Connect SE 40Gb F8 Module for Synergy
	* SEVC16GbFC - Virtual Connect SE 16Gb FC Module for Synergy
	* SE20ILM    - Synergy 20Gb Interconnect Link Module
	* SE10ILM    - Synergy 10Gb Interconnect Link Module
	* SE12SAS    - Synergy 12Gb SAS Connection Module

$Bays = @{ Frame1 = @{Bay3 = "SEVC40f8"; Bay6 = "SE20ILM"}; Frame2 = @{Bay3 = "SE20ILM"; Bay6 = "SEVC40f8"} }

Note: When configuring Synergy SAS Connection Module, no other device bays can be specified, and only a Single Frame can be configured.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableEnhancedLLDPTLV &lt;Boolean&gt;<p>
When enabled, the enclosure name and serial number are encapsulated in the Chassis ID TLV LLDPDU transmitted by interconnect uplink ports.

This parameter is only available for 2.00.07 or newer appliances.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableFastMacCacheFailover &lt;Boolean&gt;<p>
When an uplink that was in standby mode becomes active, it can take several minutes for external Ethernet interconnects to recognize that the server blades can now be reached on this newly active connection.  Enabling Fast MAC Cache Failover causes Ethernet packets to be transmitted on the newly active connection, which enables the external Ethernet interconnects to identify the new connection (and update their MAC caches).  The transmission sequence is repeated a few times at the MAC refresh interval and completes in about 1 minute.

Default value:  Enabled

<table><tbody><tr><td>Aliases</td><td>FastMAC</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>True</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableIgmpSnooping &lt;Boolean&gt;<p>
The IGMP snooping feature allows interconnects to monitor the IGMP IP multicast membership activities and configure hardware Layer 2 switching behavior of multicast traffic to optimize network resource usage. Currently, only IGMP v1 and v2 (RFC 2236) are supported.
		
Default value: Disabled

<table><tbody><tr><td>Aliases</td><td>IGMPSnoop</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableLLDPTagging &lt;Boolean&gt;<p>
When enabled, tagged LLDP frames are transmitted over downlink ports to server hardware. The management IP address of the interconnect in the lowest numbered bay location in the logical interconnect will be advertised as the LLDP management address TLV.

This parameter is only available for 2.00.07 or newer appliances.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableNetworkLoopProtection &lt;Boolean&gt;<p>
Aliases [-LoopProtect]
Enables or disables network loop protection.

Network loop protection:

The loop protection feature enables detection of loops on downlink ports, which can be Flex-10 logical ports or physical ports. The feature applies when Device Control Channel (DCC) protocol is running on the Flex-10 port. If DCC is not available, the feature applies to the physical downlink port.

Network loop protection uses two methods to detect loops:

1. It periodically injects a special probe frame into the VC domain and monitors downlink ports for the looped back probe frame. If this special probe frame is detected on downlink ports, the port is considered to cause the loop condition.

2. It monitors and intercepts common loop detection frames used in other switches. In network environments where the upstream switches send loop detection frames, the VC interconnects must ensure that any downlink loops do not cause these frames to be sent back to the uplink ports. Even though the probe frames ensure loops are detected, there is a small time window depending on the probe frame transmission interval in which the loop detection frames from the external switch might loop through down link ports and reach uplink ports. By intercepting the external loop detection frames on downlinks, the possibility of triggering loop protection on the upstream switch is eliminated. When network loop protection is enabled, VC interconnects intercept loop detection frames from various switch vendors, such as Cisco and HP Networking.

When the network loop protection feature is enabled, any probe frame or other supported loop detection frame received on a downlink port is considered to be causing the network loop, and the port is disabled immediately until an administrative action is taken. The administrative action involves resolving the loop condition and clearing the loop protection error condition. The loop detected status on a port can be cleared by un-assigning all networks from the profile connect corresponding to the port in the loop detected state.

The SNMP agent supports trap generation when a loop condition is detected or cleared.

Default value: Enabled

<table><tbody><tr><td>Aliases</td><td>LoopProtect</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>True</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnablePauseFloodProtection &lt;Boolean&gt;<p>
Aliases [-PauseProtect]
Enables or disables pause flood protection.

Pause flood protection:

Ethernet switch interfaces use pause frame based flow control mechanisms to control data flow. When a pause frame is received on a flow control enabled interface, the transmit operation is stopped for the pause duration specified in the pause frame. All other frames destined for this interface are queued up. If another pause frame is received before the previous pause timer expires, the pause timer is refreshed to the new pause duration value. If a steady stream of pause frames is received for extended periods of time, the transmit queue for that interface continues to grow until all queuing resources are exhausted. This condition severely impacts the switch operation on other interfaces. In addition, all protocol operations on the switch are impacted because of the inability to transmit protocol frames. Both port pause and priority-based pause frames can cause the same resource exhaustion condition.

VC interconnects provide the ability to monitor server downlink ports for pause flood conditions and take protective action by disabling the port. The default polling interval is 10 seconds and is not customer configurable. The SNMP agent supports trap generation when a pause flood condition is detected or cleared.

This feature operates at the physical port level. When a pause flood condition is detected on a Flex-10 physical port, all Flex-10 logical ports associated with physical ports are disabled. When the pause flood protection feature is enabled, this feature detects pause flood conditions on server downlink ports and disables the port. The port remains disabled until an administrative action is taken. The administrative action involves the following steps:

1. Resolve the issue with the NIC on the server causing the continuous pause generation. This might include updating the NIC firmware and device drivers.

Rebooting the server might not clear the pause flood condition if the cause of the pause flood condition is in the NIC firmware. In this case, the server must be completely disconnected from the power source to reset the NIC firmware.

2. Re-enable the disabled ports on the VC interconnect modules.

Default value: Enabled

<table><tbody><tr><td>Aliases</td><td>PauseProtect</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>True</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FabricModuleType &lt;String&gt;<p>
Specify the Synergy Fabric Module type the Logical Interconnect Group will be modeled for.  Allowed value:

	*  SEVC40F8 - Virtual Connect SE 40Gb F8 Module for Synergy
	* SEVCFC - Virtual Connect SE 16Gb FC Module for Synergy
	* SAS - Synergy 12Gb SAS Connection Module

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FabricRedundancy &lt;String&gt;<p>
Define the expected Synergy Fabric Interconnect Redundancy type.  Allowed value:

	* HighlyAvailable
	* Redundant
	* ASide
	* BSide

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Redundant</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FrameCount &lt;Int32&gt;<p>
The number of Synergy Frames to participate in the Logical Stack.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IgmpIdleTimeoutInterval &lt;Int32&gt;<p>
The Group Membership Interval value, as specified by the IGMP v2 specification (RFC 2236).
For optimum network resource usage, set the timeout interval to match your network"s multicast router settings.
		
Data type:  Numeric; unit of measure is seconds
Default value:  260
Required: Yes, if IGMP snooping is enabled

<table><tbody><tr><td>Aliases</td><td>IGMPIdle</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>260</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Import &lt;Object&gt;<p>
Specify JSON source file to create Logical Interconnect Group.

<table><tbody><tr><td>Aliases</td><td>i</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InterconnectBaySet &lt;Int32&gt;<p>
Which Synergy Interconnect Bay Set ID will the interconnects be populated in.  Allowed value:

	* 1 - Interconnect Bay set 1 & 4
	* 2 - Interconnect Bay set 2 & 5
	* 3 - Interconnect Bay set 3 & 6

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InternalNetworks &lt;Array&gt;<p>
An Array collection of Networks that will be marked as Internal only.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LldpAddressingMode &lt;Boolean&gt;<p>
Specify the IP address format type to support.  Allowed values:

	* IPv4
	* IPv6
	* IPv4AndIPv6

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MacRefreshInterval &lt;Int32&gt;<p>
The time interval at which MAC caches are refreshed
		
Data type:  Numeric; unit of measure is seconds
Default value: 5

<table><tbody><tr><td>Aliases</td><td>FastMACRefresh</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-LIGName]

The Logical Interconnect Group Name

<table><tbody><tr><td>Aliases</td><td>ligname</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -QosConfiguration &lt;Object&gt;<p>
Aliases [-qos, -QosConfig]
A collection of QOS configurations that are created using the New-HPOVQosConfig helper CMDLET.

<table><tbody><tr><td>Aliases</td><td>qos, QosConfig</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SNMP &lt;Object&gt;<p>
SNMP Settings to define SNMP configruation.  Use New-HPOVSnmpConfiguration and New-HPOVSnmpTrapDestination Cmdlets to create the necessary SNMP Configuration object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV1 &lt;SwitchParameter&gt;<p>
Specify the SNMP version type is SNMPv1.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3 &lt;SwitchParameter&gt;<p>
Specify the SNMP version type is SNMPv3.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3User &lt;HPOneView.Appliance.SnmpV3User&gt;<p>
Provide the SNMPv3 user object from New-HPOVSnmpV3User.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Collections.Hashtable**_

 Hashtable containing Interconnect Bay layout and associated interconnect module



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Logical Interconnect Group creation async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Dest1 = New-HPOVSnmpTrapDestination -Destination mysnmpserver.domain.local -Community MyR3adcommun1ty -SnmpFormat SNMPv1 -TrapSeverities critical,warning
$Dest2 = New-HPOVSnmpTrapDestination 10.44.120.9 MyR3adcommun1ty SNMPv1 critical,warning legacy "Other","PortStatus","PortThresholds" "Other","PortStatus"
$SnmpConfig = New-HPOVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22" -TrapDestinations $Dest1,$Dest2
$Bays = @{1 = "FlexFabric";2 = "FlexFabric"}
New-HPOVLogicalInterconnectGroup "FlexFabric Production 1" -bays $Bays -snmp $SnmpConfig

</pre>
Create a Logical Interconnect Group with VC FlexFabric modules in Bays 1 and 2, and SNMP Settings


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$InternalNetworks = Get-HPOVNetwork -Name "My Internal VLANs*"
New-HPOVLogicalInterconnectGroup -Name "Synergy VC Prod" -FrameCount 3 -InterconnectBaySet 3 -FabricModuleType "SEVC40F8" -Bays @{Frame1 = @{Bay3 = "SEVC40f8" ; Bay6 = "SE20ILM"};Frame2 = @{Bay3 = "SE20ILM"; Bay6 = "SEVC40f8" };Frame3 = @{Bay3 = "SE20ILM"; Bay6 = "SE20ILM"}} -FabricRedundancy "HighlyAvailable" -InternalNetworks $InternalNetworks
</pre>
Create a Synergy Virtual Connect multi-Frame Logical Interconnect Group resource, using Bay Set 3 and Synergy 20Gb Satellite modules.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -enableIgmpSnooping $True -igmpIdleTimeoutInterval 300 -LoopProtect $True
</pre>
Create a Logical Interconnect Group with VC Flex10/10D in Bays 1 and 2, FlexFabric modules in Bays 3 and 4, Enable IGMP Snooping, IGMP Idle timeout and LoopProtect


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
New-HPOVLogicalInterconnectGroup -Name "Synergy SAS Prod" -FrameCount 1 -InterconnectBaySet 1 -FabricModuleType "SAS" -Bays @{Frame1 = @{Bay1 = "SE12SAS" ; Bay4 = "SE12SAS"}}
</pre>
Create a Synergy SAS Logical Interconnect Group resource.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
New-HPOVLogicalInterconnectGroup -Name "Synergy VC FC Prod" -FrameCount 1 -InterconnectBaySet 2 -FabricModuleType "SEVCFC" -Bays @{Frame1 = @{Bay2 = "SEVC16GbFC" ; Bay5 = "SEVC16GbFC"}}
</pre>
Create a Synergy Virtual Connect Fibre Channel Logical Interconnect Group resource.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
New-HPOVLogicalInterconnectGroup -import c:\dir\mylig.json
</pre>
Create a Logical Interconnect Group by using a JSON formatted input file.



### Related Links

* [Get-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectGroup)
* [Remove-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalInterconnectGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVLogicalInterconnectGroup
<p>
Create new Logical Interconnect Group.

### SYNTAX
<p>
<pre><code>New-HPOVLogicalInterconnectGroup [-Name] &lt;String&gt; [-Bays] &lt;Hashtable&gt; [-EnableIgmpSnooping] &lt;Boolean&gt; [-IgmpIdleTimeoutInterval] &lt;Int32&gt; [-EnableFastMacCacheFailover] &lt;Boolean&gt; [-MacRefreshInterval] &lt;Int32&gt; [-EnableNetworkLoopProtection] &lt;Boolean&gt; [-EnablePauseFloodProtection] &lt;Boolean&gt; [-EnableLLDPTagging] &lt;Boolean&gt; [-EnableEnhancedLLDPTLV] &lt;Boolean&gt; [-LldpAddressingMode] &lt;Boolean&gt; [-SNMP] &lt;Object&gt;[ [-SnmpV1] &lt;SwitchParameter&gt;][ [-SnmpV3] &lt;SwitchParameter&gt;] [-SnmpV3User] &lt;HPOneView.Appliance.SnmpV3User&gt; [-InternalNetworks] &lt;Array&gt; [-QosConfiguration] &lt;Object&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalInterconnectGroup [-Name] &lt;String&gt; [-FrameCount] &lt;Int32&gt; [-InterconnectBaySet] &lt;Int32&gt; [-FabricModuleType] &lt;String&gt; [-Bays] &lt;Hashtable&gt; [-FabricRedundancy] &lt;String&gt; [-EnableIgmpSnooping] &lt;Boolean&gt; [-IgmpIdleTimeoutInterval] &lt;Int32&gt; [-EnableNetworkLoopProtection] &lt;Boolean&gt; [-EnableLLDPTagging] &lt;Boolean&gt; [-EnableEnhancedLLDPTLV] &lt;Boolean&gt; [-LldpAddressingMode] &lt;Boolean&gt; [-SNMP] &lt;Object&gt;[ [-SnmpV1] &lt;SwitchParameter&gt;][ [-SnmpV3] &lt;SwitchParameter&gt;] [-SnmpV3User] &lt;HPOneView.Appliance.SnmpV3User&gt; [-InternalNetworks] &lt;Array&gt; [-QosConfiguration] &lt;Object&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalInterconnectGroup [-Import] &lt;Object&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet provides the ability to create a Logical Interconnect Group.  Bays 1 and 2 are required, and need to be identical.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Bays &lt;Hashtable&gt;<p>
HPE BladeSystem C7000 Support - A [System.Collections.Hashtable] object of each Interconnect Bay.  Accepted values are:

	* FlexFabric - HP VC FlexFabric 10Gb/24-Port Module
	* Flex10     - HP VC Flex-10 Enet Module
	* Flex1010D  - HP VC Flex-10/10D Module
	* Flex2040f8 - HP VC FlexFabric-20/40 F8 Module
	* VCFC20     - HP VC 8Gb 20-Port FC Module
	* VCFC24     - HP VC 8Gb 24-Port FC Module
	* FEX        - Cisco Fabric Extender for HP BladeSystem
		
E.g. @{1 = "Flex10";2 = "Flex10";3 = "FlexFabric";4 = "Flexfabric";5 = "";6 = "";7 = "";8 = "";}   

HPE Synergy Support - A [System.Collection.Hashtable] object, with Frame and Fabric Bay definitions.  Accepted values are:

	* SEVC40f8   - Virtual Connect SE 40Gb F8 Module for Synergy
	* SEVC16GbFC - Virtual Connect SE 16Gb FC Module for Synergy
	* SE20ILM    - Synergy 20Gb Interconnect Link Module
	* SE10ILM    - Synergy 10Gb Interconnect Link Module
	* SE12SAS    - Synergy 12Gb SAS Connection Module

$Bays = @{ Frame1 = @{Bay3 = "SEVC40f8"; Bay6 = "SE20ILM"}; Frame2 = @{Bay3 = "SE20ILM"; Bay6 = "SEVC40f8"} }

Note: When configuring Synergy SAS Connection Module, no other device bays can be specified, and only a Single Frame can be configured.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableEnhancedLLDPTLV &lt;Boolean&gt;<p>
When enabled, the enclosure name and serial number are encapsulated in the Chassis ID TLV LLDPDU transmitted by interconnect uplink ports.

This parameter is only available for 2.00.07 or newer appliances.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableFastMacCacheFailover &lt;Boolean&gt;<p>
When an uplink that was in standby mode becomes active, it can take several minutes for external Ethernet interconnects to recognize that the server blades can now be reached on this newly active connection.  Enabling Fast MAC Cache Failover causes Ethernet packets to be transmitted on the newly active connection, which enables the external Ethernet interconnects to identify the new connection (and update their MAC caches).  The transmission sequence is repeated a few times at the MAC refresh interval and completes in about 1 minute.

Default value:  Enabled

<table><tbody><tr><td>Aliases</td><td>FastMAC</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>True</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableIgmpSnooping &lt;Boolean&gt;<p>
The IGMP snooping feature allows interconnects to monitor the IGMP IP multicast membership activities and configure hardware Layer 2 switching behavior of multicast traffic to optimize network resource usage. Currently, only IGMP v1 and v2 (RFC 2236) are supported.
		
Default value: Disabled

<table><tbody><tr><td>Aliases</td><td>IGMPSnoop</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableLLDPTagging &lt;Boolean&gt;<p>
When enabled, tagged LLDP frames are transmitted over downlink ports to server hardware. The management IP address of the interconnect in the lowest numbered bay location in the logical interconnect will be advertised as the LLDP management address TLV.

This parameter is only available for 2.00.07 or newer appliances.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableNetworkLoopProtection &lt;Boolean&gt;<p>
Aliases [-LoopProtect]
Enables or disables network loop protection.

Network loop protection:

The loop protection feature enables detection of loops on downlink ports, which can be Flex-10 logical ports or physical ports. The feature applies when Device Control Channel (DCC) protocol is running on the Flex-10 port. If DCC is not available, the feature applies to the physical downlink port.

Network loop protection uses two methods to detect loops:

1. It periodically injects a special probe frame into the VC domain and monitors downlink ports for the looped back probe frame. If this special probe frame is detected on downlink ports, the port is considered to cause the loop condition.

2. It monitors and intercepts common loop detection frames used in other switches. In network environments where the upstream switches send loop detection frames, the VC interconnects must ensure that any downlink loops do not cause these frames to be sent back to the uplink ports. Even though the probe frames ensure loops are detected, there is a small time window depending on the probe frame transmission interval in which the loop detection frames from the external switch might loop through down link ports and reach uplink ports. By intercepting the external loop detection frames on downlinks, the possibility of triggering loop protection on the upstream switch is eliminated. When network loop protection is enabled, VC interconnects intercept loop detection frames from various switch vendors, such as Cisco and HP Networking.

When the network loop protection feature is enabled, any probe frame or other supported loop detection frame received on a downlink port is considered to be causing the network loop, and the port is disabled immediately until an administrative action is taken. The administrative action involves resolving the loop condition and clearing the loop protection error condition. The loop detected status on a port can be cleared by un-assigning all networks from the profile connect corresponding to the port in the loop detected state.

The SNMP agent supports trap generation when a loop condition is detected or cleared.

Default value: Enabled

<table><tbody><tr><td>Aliases</td><td>LoopProtect</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>True</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnablePauseFloodProtection &lt;Boolean&gt;<p>
Aliases [-PauseProtect]
Enables or disables pause flood protection.

Pause flood protection:

Ethernet switch interfaces use pause frame based flow control mechanisms to control data flow. When a pause frame is received on a flow control enabled interface, the transmit operation is stopped for the pause duration specified in the pause frame. All other frames destined for this interface are queued up. If another pause frame is received before the previous pause timer expires, the pause timer is refreshed to the new pause duration value. If a steady stream of pause frames is received for extended periods of time, the transmit queue for that interface continues to grow until all queuing resources are exhausted. This condition severely impacts the switch operation on other interfaces. In addition, all protocol operations on the switch are impacted because of the inability to transmit protocol frames. Both port pause and priority-based pause frames can cause the same resource exhaustion condition.

VC interconnects provide the ability to monitor server downlink ports for pause flood conditions and take protective action by disabling the port. The default polling interval is 10 seconds and is not customer configurable. The SNMP agent supports trap generation when a pause flood condition is detected or cleared.

This feature operates at the physical port level. When a pause flood condition is detected on a Flex-10 physical port, all Flex-10 logical ports associated with physical ports are disabled. When the pause flood protection feature is enabled, this feature detects pause flood conditions on server downlink ports and disables the port. The port remains disabled until an administrative action is taken. The administrative action involves the following steps:

1. Resolve the issue with the NIC on the server causing the continuous pause generation. This might include updating the NIC firmware and device drivers.

Rebooting the server might not clear the pause flood condition if the cause of the pause flood condition is in the NIC firmware. In this case, the server must be completely disconnected from the power source to reset the NIC firmware.

2. Re-enable the disabled ports on the VC interconnect modules.

Default value: Enabled

<table><tbody><tr><td>Aliases</td><td>PauseProtect</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>True</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FabricModuleType &lt;String&gt;<p>
Specify the Synergy Fabric Module type the Logical Interconnect Group will be modeled for.  Allowed value:

	*  SEVC40F8 - Virtual Connect SE 40Gb F8 Module for Synergy
	* SEVCFC - Virtual Connect SE 16Gb FC Module for Synergy
	* SAS - Synergy 12Gb SAS Connection Module

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FabricRedundancy &lt;String&gt;<p>
Define the expected Synergy Fabric Interconnect Redundancy type.  Allowed value:

	* HighlyAvailable
	* Redundant
	* ASide
	* BSide

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Redundant</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FrameCount &lt;Int32&gt;<p>
The number of Synergy Frames to participate in the Logical Stack.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IgmpIdleTimeoutInterval &lt;Int32&gt;<p>
The Group Membership Interval value, as specified by the IGMP v2 specification (RFC 2236).
For optimum network resource usage, set the timeout interval to match your network"s multicast router settings.
		
Data type:  Numeric; unit of measure is seconds
Default value:  260
Required: Yes, if IGMP snooping is enabled

<table><tbody><tr><td>Aliases</td><td>IGMPIdle</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>260</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Import &lt;Object&gt;<p>
Specify JSON source file to create Logical Interconnect Group.

<table><tbody><tr><td>Aliases</td><td>i</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InterconnectBaySet &lt;Int32&gt;<p>
Which Synergy Interconnect Bay Set ID will the interconnects be populated in.  Allowed value:

	* 1 - Interconnect Bay set 1 & 4
	* 2 - Interconnect Bay set 2 & 5
	* 3 - Interconnect Bay set 3 & 6

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InternalNetworks &lt;Array&gt;<p>
An Array collection of Networks that will be marked as Internal only.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LldpAddressingMode &lt;Boolean&gt;<p>
Specify the IP address format type to support.  Allowed values:

	* IPv4
	* IPv6
	* IPv4AndIPv6

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MacRefreshInterval &lt;Int32&gt;<p>
The time interval at which MAC caches are refreshed
		
Data type:  Numeric; unit of measure is seconds
Default value: 5

<table><tbody><tr><td>Aliases</td><td>FastMACRefresh</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-LIGName]

The Logical Interconnect Group Name

<table><tbody><tr><td>Aliases</td><td>ligname</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -QosConfiguration &lt;Object&gt;<p>
Aliases [-qos, -QosConfig]
A collection of QOS configurations that are created using the New-HPOVQosConfig helper CMDLET.

<table><tbody><tr><td>Aliases</td><td>qos, QosConfig</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SNMP &lt;Object&gt;<p>
SNMP Settings to define SNMP configruation.  Use New-HPOVSnmpConfiguration and New-HPOVSnmpTrapDestination Cmdlets to create the necessary SNMP Configuration object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV1 &lt;SwitchParameter&gt;<p>
Specify the SNMP version type is SNMPv1.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3 &lt;SwitchParameter&gt;<p>
Specify the SNMP version type is SNMPv3.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3User &lt;HPOneView.Appliance.SnmpV3User&gt;<p>
Provide the SNMPv3 user object from New-HPOVSnmpV3User.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Collections.Hashtable**_

 Hashtable containing Interconnect Bay layout and associated interconnect module



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Logical Interconnect Group creation async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Dest1 = New-HPOVSnmpTrapDestination -Destination mysnmpserver.domain.local -Community MyR3adcommun1ty -SnmpFormat SNMPv1 -TrapSeverities critical,warning
$Dest2 = New-HPOVSnmpTrapDestination 10.44.120.9 MyR3adcommun1ty SNMPv1 critical,warning legacy "Other","PortStatus","PortThresholds" "Other","PortStatus"
$SnmpConfig = New-HPOVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22" -TrapDestinations $Dest1,$Dest2
$Bays = @{1 = "FlexFabric";2 = "FlexFabric"}
New-HPOVLogicalInterconnectGroup "FlexFabric Production 1" -bays $Bays -snmp $SnmpConfig

</pre>
Create a Logical Interconnect Group with VC FlexFabric modules in Bays 1 and 2, and SNMP Settings


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$InternalNetworks = Get-HPOVNetwork -Name "My Internal VLANs*"
New-HPOVLogicalInterconnectGroup -Name "Synergy VC Prod" -FrameCount 3 -InterconnectBaySet 3 -FabricModuleType "SEVC40F8" -Bays @{Frame1 = @{Bay3 = "SEVC40f8" ; Bay6 = "SE20ILM"};Frame2 = @{Bay3 = "SE20ILM"; Bay6 = "SEVC40f8" };Frame3 = @{Bay3 = "SE20ILM"; Bay6 = "SE20ILM"}} -FabricRedundancy "HighlyAvailable" -InternalNetworks $InternalNetworks
</pre>
Create a Synergy Virtual Connect multi-Frame Logical Interconnect Group resource, using Bay Set 3 and Synergy 20Gb Satellite modules.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -enableIgmpSnooping $True -igmpIdleTimeoutInterval 300 -LoopProtect $True
</pre>
Create a Logical Interconnect Group with VC Flex10/10D in Bays 1 and 2, FlexFabric modules in Bays 3 and 4, Enable IGMP Snooping, IGMP Idle timeout and LoopProtect


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
New-HPOVLogicalInterconnectGroup -Name "Synergy SAS Prod" -FrameCount 1 -InterconnectBaySet 1 -FabricModuleType "SAS" -Bays @{Frame1 = @{Bay1 = "SE12SAS" ; Bay4 = "SE12SAS"}}
</pre>
Create a Synergy SAS Logical Interconnect Group resource.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
New-HPOVLogicalInterconnectGroup -Name "Synergy VC FC Prod" -FrameCount 1 -InterconnectBaySet 2 -FabricModuleType "SEVCFC" -Bays @{Frame1 = @{Bay2 = "SEVC16GbFC" ; Bay5 = "SEVC16GbFC"}}
</pre>
Create a Synergy Virtual Connect Fibre Channel Logical Interconnect Group resource.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
New-HPOVLogicalInterconnectGroup -import c:\dir\mylig.json
</pre>
Create a Logical Interconnect Group by using a JSON formatted input file.



### Related Links

* [Get-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectGroup)
* [Remove-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalInterconnectGroup)


***
<div align=right><a href="#Top">Top</a></div>
