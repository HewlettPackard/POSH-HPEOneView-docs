<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVUplinkSet
<p>
Create a new Uplink Set.

### SYNTAX
<p>
<pre><code>New-HPOVUplinkSet [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt;[ [-Type] &lt;String&gt;] [-Networks] &lt;Array&gt; [-NativeEthNetwork] &lt;Object&gt;[ [-NetworkSets] &lt;array&gt;][ [-CopyNetworksFromNetworkSet] &lt;SwitchParameter&gt;] [-UplinkPorts] &lt;Array&gt;[ [-EthMode] &lt;String&gt;][ [-LacpTimer] &lt;String&gt;][ [-PrimaryPort] &lt;String&gt;][ [-ConsistencyChecking] &lt;string&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVUplinkSet [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt;[ [-Type] &lt;String&gt;] [-Networks] &lt;Array&gt; [-UplinkPorts] &lt;Array&gt; [-fcUplinkSpeed] &lt;String&gt;[ [-EnableTrunking] &lt;Boolean&gt;][ [-ConsistencyChecking] &lt;string&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Interconnect uplinks are grouped into an uplink set and managed as a unit, with an assigned set of one or more networks. The traffic carried over the uplinks is determined by the network assignment of the uplink set. Uplink sets can support either Ethernet or Fibre Channel networks. Depending on the type of the assigned networks, uplink sets can support both an automatic and a selective failover or distribution strategy. The uplink port state is monitored, which contributes to the overall reachability status of the assigned networks. For each port belonging to the uplink set, the assigned port speed can be monitored.
Uplink Sets can be created for Logical Interconnect Groups or Logical Interconnects.  When creating a new Uplink Set, either the Logical Interconnect Group or Logical Interconnect must exist.
Please know that the UplinkPorts parameter syntax is different between HPE BladeSystem and HPE Synergy Virtual Connect.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConsistencyChecking &lt;string&gt;<p>
Use to indicate if the group policy will be tracked to with the deployed and configured resource. Allowed values:

	* None
	* Exact

Default: Exact

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CopyNetworksFromNetworkSet &lt;SwitchParameter&gt;<p>
When specifying the -NetworkSets parameter, you can choose to copy the networks from the associated set(s) only.  This will not set the Uplink Set to track the network set(s).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableTrunking &lt;Boolean&gt;<p>
Use this parameter to enable FC port trunking.  This parameter is only supported with HPE 16Gb or newer Virtual Connect Fibre Channel fabric modules.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EthMode &lt;String&gt;<p>
Aliases [-usEthMode]
Sets the LACP mode on the uplink ports. Valid for ETHERNET Uplinks only. Accepted Values:

	* Auto (Default)
	* Failover

<table><tbody><tr><td>Aliases</td><td>usEthMode</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-li, -lig]
Either a Logical Interconnect Group (Get-HPOVLogicalInterconnectGroup) or Logical Interconnect (Get-HPOVLogicalInterconnect) resource object.

<table><tbody><tr><td>Aliases</td><td>li, lig, ligName, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LacpTimer &lt;String&gt;<p>
Set the LACP Timer value, which sets the lacpdu frequecy to the LACP peer.  Accepted values:

	* Long 
	* Short (Default)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Short</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-usName]
Logical Uplink set Name

<table><tbody><tr><td>Aliases</td><td>usName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NativeEthNetwork &lt;Object&gt;<p>
Aliases [-usNativeEthNetwork, -Native, -PVID]
The valid name of the Native Ethernet Network that is a member of the usNetworks parameter.

<table><tbody><tr><td>Aliases</td><td>usNativeEthNetwork, Native, PVID</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NetworkSets &lt;array&gt;<p>
Use this to specify one or more network sets to track the network configuration.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Networks &lt;Array&gt;<p>
Aliases [-usNetworks]
Array of Ethernet Network Names

<table><tbody><tr><td>Aliases</td><td>usNetworks</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrimaryPort &lt;String&gt;<p>
Specify the Primary Uplink Port when EthMode is set to Failover.  Parameter is not valid when EthMode parameter is set to Auto.

Example: "Bay1:X1"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Aliases [-usType]
Uplink set Type.  Accepted values are 

	* Ethernet (Default)
	* FibreChannel
	* Tunnel
	* Untagged
	* ImageStreamer

ImageStreamer is only supported with Synergy infrastructure.  When assigning an Ethernet Network to an ImageStreamer Uplink Set, the network resource must be a Tagged Ethernet Network.

<table><tbody><tr><td>Aliases</td><td>usType</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UplinkPorts &lt;Array&gt;<p>
Aliases [-usUplinkPorts]
Array of uplink ports with "BAYID:FacePlatePortID".  When configuring a Synergy infrastructure, the Uplink Port format needs to be "EnclosureID:BayID:FacePlatePortID".

FlexFabric e.g. @("BAY1:X1","BAY1:X2") or "BAY1:X5","BAY2:X5"
VC Fibre Channel e.g. @("BAY3:1","BAY3:2") or "BAY3:1","BAY3:2"
Synergy VC Ethernet e.g. "Enclosure1:Bay3:Q1","Enclosure1:Bay3:Q2","Enclosure2:Bay6:Q1","Enclosure2:Bay6:Q2"
Synergy VC Sub-Interface e.g. "Enclosure1:Bay3:Q1.1","Enclosure1:Bay3:Q2.1","Enclosure2:Bay6:Q1.2","Enclosure2:Bay6:Q2.2"
Synergy VC FC Primary Port e.g. "Bay2:Q1","Bay2:Q2" or "Bay5:Q1","Bay5:Q2"
Synergy VC FC Sub-Interface e.g. "Bay2:Q1.1","Bay2:Q2.1" or "Bay5:Q1.2","Bay5:Q2.2"

<table><tbody><tr><td>Aliases</td><td>usUplinkPorts</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -fcUplinkSpeed &lt;String&gt;<p>
Specify the Fibre Channel Uplink Port speed.  Accepted values:

	* Auto (Default)
	* 2
	* 4
	* 8

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>faslse</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect Resource from Get-HPOVLogicalInterconnect

 _**HPOneView.Networking.LogicalInterconnectGroup [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect Group Resource from Get-HPOVLogicalInterconnectGroup



### Return Values

_**HPOneView.Appliance.TaskResource {System.Management.Automation.PSCustomObject}**_

 

Async Task Resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnectGroup -Name "LIG Prod" | New-HPOVUplinkSet -Name "Uplink Set 1" -Type Ethernet -Networks "RED","BLUE","GREEN" -NativeEthNetwork "RED" -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"
</pre>
To Create an Ethernet Uplink Template


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ethNets = "Net1","Net2","Net3" | Get-HPOVNetwork -Type Ethernet
Get-HPOVLogicalInterconnectGroup -Name "LIG Prod" | New-HPOVUplinkSet -Name "Uplink Set 1" -Type Ethernet -Networks $ethNets -NativeEthNetwork $ethNets[0] -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"

</pre>
Get the network resource objects, and define a new Uplink Set template that will be assigned to the Logical Interconnect Group resource.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$LIGProd = Get-HPOVLogicalInterconnectGroup -Name "LIG Prod"
New-HPOVUplinkSet -Resource $LIGProd -Name "Fabric A" -Type FibreChannel -Networks "FABRIC_A" -UplinkPorts "BAY1:X1","BAY1:X2"

</pre>
To Create a Fibre Channel Uplink Template for c-Class or HPE Synergy VC FlexFabric modules.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVLogicalInterconnect -Name "Encl1 LIG Prod" | New-HPOVUplinkSet -Name "New Uplink Set" -Type Ethernet -Networks "RED","BLUE","GREEN" -NativeEthNetwork "RED" -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"
</pre>
Add a new Uplink Set to an existing Logical Interconnect resource.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$MlagNetworks = Get-HPOVNetwork -Type Ethernet -Name "My MLAG Network*"
Get-HPOVLogicalInterconnectGroup -Name "My Synergy Prod LIG" | New-HPOVUplinkSet -Name "MLAG UplinkSet" -Type Ethernet -Networks $MlagNetworks -NativeEthNetwork ($MlagNetworks | ? vlanid -eq 144) -UplinkPorts "Enclosure1:BAY3:Q1","Enclosure1:BAY3:Q2","Enclosure2:BAY6:Q1","Enclosure2:BAY6:Q2" -EthMode "Auto"

</pre>
Create a Synergy MLAG Uplink Set using 40Gb capable ports.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
$MlagNetworks = Get-HPOVNetwork -Type Ethernet -Name "My MLAG Network*"
Get-HPOVLogicalInterconnectGroup -Name "My Synergy Prod LIG" | New-HPOVUplinkSet -Name "MLAG UplinkSet" -Type Ethernet -Networks $MlagNetworks -NativeEthNetwork ($MlagNetworks | ? vlanid -eq 144) -UplinkPorts "Enclosure1:BAY3:Q1.1","Enclosure1:BAY3:Q2.1","Enclosure2:BAY6:Q1.1","Enclosure2:BAY6:Q2.1" -EthMode "Auto"

</pre>
Create a Synergy MLAG Uplink Set using 10Gb subports of QSFP transceiver slots.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
$ImageStreamerDeploymentNetworkObject = Get-HPOVNetwork -Name "Deployment Network" -ErrorAction Stop
Get-HPOVLogicalInterconnectGroup -Name "My Synergy VC+ImageStreamer LIG" -ErrorAction Stop | New-HPOVUplinkSet -Name "Image Streamer Uplink Set" -Type ImageStreamer -Networks $ImageStreamerDeploymentNetworkObject -UplinkPorts "Enclosure1:Bay3:Q3.1","Enclosure1:Bay3:Q4.1","Enclosure2:Bay6:Q3.1","Enclosure2:Bay6:Q4.1"</pre>
Create a Synergy ImageStreamer Uplink Set.



### Related Links

* [Get-HPOVUplinkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUplinkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVUplinkSet
<p>
Create a new Uplink Set.

### SYNTAX
<p>
<pre><code>New-HPOVUplinkSet [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt;[ [-Type] &lt;String&gt;] [-Networks] &lt;Array&gt; [-NativeEthNetwork] &lt;Object&gt; [-UplinkPorts] &lt;Array&gt;[ [-EthMode] &lt;String&gt;][ [-LacpTimer] &lt;String&gt;][ [-PrimaryPort] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVUplinkSet [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt;[ [-Type] &lt;String&gt;] [-Networks] &lt;Array&gt; [-UplinkPorts] &lt;Array&gt; [-fcUplinkSpeed] &lt;String&gt;[ [-EnableTrunking] &lt;Boolean&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Interconnect uplinks are grouped into an uplink set and managed as a unit, with an assigned set of one or more networks. The traffic carried over the uplinks is determined by the network assignment of the uplink set. Uplink sets can support either Ethernet or Fibre Channel networks. Depending on the type of the assigned networks, uplink sets can support both an automatic and a selective failover or distribution strategy. The uplink port state is monitored, which contributes to the overall reachability status of the assigned networks. For each port belonging to the uplink set, the assigned port speed can be monitored.
Uplink Sets can be created for Logical Interconnect Groups or Logical Interconnects.  When creating a new Uplink Set, either the Logical Interconnect Group or Logical Interconnect must exist.
Please know that the UplinkPorts parameter syntax is different between HPE BladeSystem and HPE Synergy Virtual Connect.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableTrunking &lt;Boolean&gt;<p>
Use this parameter to enable FC port trunking.  This parameter is only supported with HPE 16Gb or newer Virtual Connect Fibre Channel fabric modules.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EthMode &lt;String&gt;<p>
Aliases [-usEthMode]
Sets the LACP mode on the uplink ports. Valid for ETHERNET Uplinks only. Accepted Values:

	* Auto (Default)
	* Failover

<table><tbody><tr><td>Aliases</td><td>usEthMode</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-li, -lig]
Either a Logical Interconnect Group (Get-HPOVLogicalInterconnectGroup) or Logical Interconnect (Get-HPOVLogicalInterconnect) resource object.

<table><tbody><tr><td>Aliases</td><td>li, lig, ligName, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LacpTimer &lt;String&gt;<p>
Set the LACP Timer value, which sets the lacpdu frequecy to the LACP peer.  Accepted values:

	* Long 
	* Short (Default)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Short</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-usName]
Logical Uplink set Name

<table><tbody><tr><td>Aliases</td><td>usName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NativeEthNetwork &lt;Object&gt;<p>
Aliases [-usNativeEthNetwork, -Native, -PVID]
The valid name of the Native Ethernet Network that is a member of the usNetworks parameter.

<table><tbody><tr><td>Aliases</td><td>usNativeEthNetwork, Native, PVID</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Networks &lt;Array&gt;<p>
Aliases [-usNetworks]
Array of Ethernet Network Names

<table><tbody><tr><td>Aliases</td><td>usNetworks</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrimaryPort &lt;String&gt;<p>
Specify the Primary Uplink Port when EthMode is set to Failover.  Parameter is not valid when EthMode parameter is set to Auto.

Example: "Bay1:X1"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Aliases [-usType]
Uplink set Type.  Accepted values are 

	* Ethernet (Default)
	* FibreChannel
	* Tunnel
	* Untagged
	* ImageStreamer

ImageStreamer is only supported with Synergy infrastructure.  When assigning an Ethernet Network to an ImageStreamer Uplink Set, the network resource must be a Tagged Ethernet Network.

<table><tbody><tr><td>Aliases</td><td>usType</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UplinkPorts &lt;Array&gt;<p>
Aliases [-usUplinkPorts]
Array of uplink ports with "BAYID:FacePlatePortID".  When configuring a Synergy infrastructure, the Uplink Port format needs to be "EnclosureID:BayID:FacePlatePortID".

FlexFabric e.g. @("BAY1:X1","BAY1:X2") or "BAY1:X5","BAY2:X5"
VC Fibre Channel e.g. @("BAY3:1","BAY3:2") or "BAY3:1","BAY3:2"
Synergy VC Ethernet e.g. "Enclosure1:Bay3:Q1","Enclosure1:Bay3:Q2","Enclosure2:Bay6:Q1","Enclosure2:Bay6:Q2"
Synergy VC Sub-Interface e.g. "Enclosure1:Bay3:Q1.1","Enclosure1:Bay3:Q2.1","Enclosure2:Bay6:Q1.2","Enclosure2:Bay6:Q2.2"
Synergy VC FC Primary Port e.g. "Bay2:Q1","Bay2:Q2" or "Bay5:Q1","Bay5:Q2"
Synergy VC FC Sub-Interface e.g. "Bay2:Q1.1","Bay2:Q2.1" or "Bay5:Q1.2","Bay5:Q2.2"

<table><tbody><tr><td>Aliases</td><td>usUplinkPorts</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -fcUplinkSpeed &lt;String&gt;<p>
Specify the Fibre Channel Uplink Port speed.  Accepted values:

	* Auto (Default)
	* 2
	* 4
	* 8

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>faslse</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect Resource from Get-HPOVLogicalInterconnect

 _**HPOneView.Networking.LogicalInterconnectGroup [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect Group Resource from Get-HPOVLogicalInterconnectGroup



### Return Values

_**HPOneView.Appliance.TaskResource {System.Management.Automation.PSCustomObject}**_

 

Async Task Resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnectGroup -Name "LIG Prod" | New-HPOVUplinkSet -Name "Uplink Set 1" -Type Ethernet -Networks "RED","BLUE","GREEN" -NativeEthNetwork "RED" -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"
</pre>
To Create an Ethernet Uplink Template


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ethNets = "Net1","Net2","Net3" | Get-HPOVNetwork -Type Ethernet
Get-HPOVLogicalInterconnectGroup -Name "LIG Prod" | New-HPOVUplinkSet -Name "Uplink Set 1" -Type Ethernet -Networks $ethNets -NativeEthNetwork $ethNets[0] -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"

</pre>
Get the network resource objects, and define a new Uplink Set template that will be assigned to the Logical Interconnect Group resource.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$LIGProd = Get-HPOVLogicalInterconnectGroup -Name "LIG Prod"
New-HPOVUplinkSet -Resource $LIGProd -Name "Fabric A" -Type FibreChannel -Networks "FABRIC_A" -UplinkPorts "BAY1:X1","BAY1:X2"

</pre>
To Create a Fibre Channel Uplink Template for c-Class or HPE Synergy VC FlexFabric modules.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVLogicalInterconnect -Name "Encl1 LIG Prod" | New-HPOVUplinkSet -Name "New Uplink Set" -Type Ethernet -Networks "RED","BLUE","GREEN" -NativeEthNetwork "RED" -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"
</pre>
Add a new Uplink Set to an existing Logical Interconnect resource.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$MlagNetworks = Get-HPOVNetwork -Type Ethernet -Name "My MLAG Network*"
Get-HPOVLogicalInterconnectGroup -Name "My Synergy Prod LIG" | New-HPOVUplinkSet -Name "MLAG UplinkSet" -Type Ethernet -Networks $MlagNetworks -NativeEthNetwork ($MlagNetworks | ? vlanid -eq 144) -UplinkPorts "Enclosure1:BAY3:Q1","Enclosure1:BAY3:Q2","Enclosure2:BAY6:Q1","Enclosure2:BAY6:Q2" -EthMode "Auto"

</pre>
Create a Synergy MLAG Uplink Set using 40Gb capable ports.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
$MlagNetworks = Get-HPOVNetwork -Type Ethernet -Name "My MLAG Network*"
Get-HPOVLogicalInterconnectGroup -Name "My Synergy Prod LIG" | New-HPOVUplinkSet -Name "MLAG UplinkSet" -Type Ethernet -Networks $MlagNetworks -NativeEthNetwork ($MlagNetworks | ? vlanid -eq 144) -UplinkPorts "Enclosure1:BAY3:Q1.1","Enclosure1:BAY3:Q2.1","Enclosure2:BAY6:Q1.1","Enclosure2:BAY6:Q2.1" -EthMode "Auto"

</pre>
Create a Synergy MLAG Uplink Set using 10Gb subports of QSFP transceiver slots.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
$ImageStreamerDeploymentNetworkObject = Get-HPOVNetwork -Name "Deployment Network" -ErrorAction Stop
Get-HPOVLogicalInterconnectGroup -Name "My Synergy VC+ImageStreamer LIG" -ErrorAction Stop | New-HPOVUplinkSet -Name "Image Streamer Uplink Set" -Type ImageStreamer -Networks $ImageStreamerDeploymentNetworkObject -UplinkPorts "Enclosure1:Bay3:Q3.1","Enclosure1:Bay3:Q4.1","Enclosure2:Bay6:Q3.1","Enclosure2:Bay6:Q4.1"</pre>
Create a Synergy ImageStreamer Uplink Set.



### Related Links

* [Get-HPOVUplinkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUplinkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVUplinkSet
<p>
Create a new Uplink Set.

### SYNTAX
<p>
<pre><code>New-HPOVUplinkSet [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Type] &lt;String&gt; [-Networks] &lt;Array&gt; [-NativeEthNetwork] &lt;Object&gt; [-UplinkPorts] &lt;Array&gt; [-EthMode] &lt;String&gt; [-LacpTimer] &lt;String&gt; [-PrimaryPort] &lt;String&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVUplinkSet [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Type] &lt;String&gt; [-Networks] &lt;Array&gt; [-UplinkPorts] &lt;Array&gt; [-fcUplinkSpeed] &lt;String&gt;[ [-EnableTrunking] &lt;bool&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Interconnect uplinks are grouped into an uplink set and managed as a unit, with an assigned set of one or more networks. The traffic carried over the uplinks is determined by the network assignment of the uplink set. Uplink sets can support either Ethernet or Fibre Channel networks. Depending on the type of the assigned networks, uplink sets can support both an automatic and a selective failover or distribution strategy. The uplink port state is monitored, which contributes to the overall reachability status of the assigned networks. For each port belonging to the uplink set, the assigned port speed can be monitored.
Uplink Sets can be created for Logical Interconnect Groups or Logical Interconnects.  When creating a new Uplink Set, either the Logical Interconnect Group or Logical Interconnect must exist.
Please know that the UplinkPorts parameter syntax is different between HPE BladeSystem and HPE Synergy Virtual Connect.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableTrunking &lt;bool&gt;<p>
Applicable only for Fibre Channel uplinks from the Virtual Connect Fibre Channel 16Gb or newer modules.  The adjacent fibre channel switch must be a Brocade switch.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EthMode &lt;String&gt;<p>
Aliases [-usEthMode]
Sets the LACP mode on the uplink ports. Valid for ETHERNET Uplinks only. Accepted Values:

	* Auto (Default)
	* Failover

<table><tbody><tr><td>Aliases</td><td>usEthMode</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-li, -lig]
Either a Logical Interconnect Group (Get-HPOVLogicalInterconnectGroup) or Logical Interconnect (Get-HPOVLogicalInterconnect) resource object.

<table><tbody><tr><td>Aliases</td><td>li, lig, ligName, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LacpTimer &lt;String&gt;<p>
Set the LACP Timer value, which sets the lacpdu frequecy to the LACP peer.  Accepted values:

	* Long 
	* Short (Default)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Short</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-usName]
Logical Uplink set Name

<table><tbody><tr><td>Aliases</td><td>usName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NativeEthNetwork &lt;Object&gt;<p>
Aliases [-usNativeEthNetwork, -Native, -PVID]
The valid name of the Native Ethernet Network that is a member of the usNetworks parameter.

<table><tbody><tr><td>Aliases</td><td>usNativeEthNetwork, Native, PVID</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Networks &lt;Array&gt;<p>
Aliases [-usNetworks]
Array of Ethernet Network Names

<table><tbody><tr><td>Aliases</td><td>usNetworks</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrimaryPort &lt;String&gt;<p>
Specify the Primary Uplink Port when EthMode is set to Failover.  Parameter is not valid when EthMode parameter is set to Auto.

Example: "Bay1:X1"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Aliases [-usType]
Uplink set Type.  Accepted values are 

	* Ethernet (Default)
	* FibreChannel
	* Tunnel
	* Untagged
	* ImageStreamer

ImageStreamer is only supported with Synergy infrastructure.  When assigning an Ethernet Network to an ImageStreamer Uplink Set, the network resource must be a Tagged Ethernet Network.

<table><tbody><tr><td>Aliases</td><td>usType</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UplinkPorts &lt;Array&gt;<p>
Aliases [-usUplinkPorts]
Array of uplink ports with "BAYID:FacePlatePortID".  When configuring a Synergy infrastructure, the Uplink Port format needs to be "EnclosureID:BayID:FacePlatePortID".

FlexFabric e.g. @("BAY1:X1","BAY1:X2") or "BAY1:X5","BAY2:X5"
VC Fibre Channel e.g. @("BAY3:1","BAY3:2") or "BAY3:1","BAY3:2"
Synergy VC Ethernet e.g. "Enclosure1:Bay3:Q1","Enclosure1:Bay3:Q2","Enclosure2:Bay6:Q1","Enclosure2:Bay6:Q2"
Synergy VC Sub-Interface e.g. "Enclosure1:Bay3:Q1.1","Enclosure1:Bay3:Q2.1","Enclosure2:Bay6:Q1.2","Enclosure2:Bay6:Q2.2"
Synergy VC FC Primary Port e.g. "Bay2:Q1","Bay2:Q2" or "Bay5:Q1","Bay5:Q2"
Synergy VC FC Sub-Interface e.g. "Bay2:Q1.1","Bay2:Q2.1" or "Bay5:Q1.2","Bay5:Q2.2"

<table><tbody><tr><td>Aliases</td><td>usUplinkPorts</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -fcUplinkSpeed &lt;String&gt;<p>
Specify the Fibre Channel Uplink Port speed.  Accepted values:

	* Auto (Default)
	* 2
	* 4
	* 8

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect Resource from Get-HPOVLogicalInterconnect

 _**HPOneView.Networking.LogicalInterconnectGroup [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect Group Resource from Get-HPOVLogicalInterconnectGroup



### Return Values

_**HPOneView.Appliance.TaskResource {System.Management.Automation.PSCustomObject}**_

 

Async Task Resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnectGroup -Name "LIG Prod" | New-HPOVUplinkSet -Name "Uplink Set 1" -Type Ethernet -Networks "RED","BLUE","GREEN" -NativeEthNetwork "RED" -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"
</pre>
To Create an Ethernet Uplink Template


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ethNets = "Net1","Net2","Net3" | Get-HPOVNetwork -Type Ethernet
Get-HPOVLogicalInterconnectGroup -Name "LIG Prod" | New-HPOVUplinkSet -Name "Uplink Set 1" -Type Ethernet -Networks $ethNets -NativeEthNetwork $ethNets[0] -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"

</pre>
Get the network resource objects, and define a new Uplink Set template that will be assigned to the Logical Interconnect Group resource.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$LIGProd = Get-HPOVLogicalInterconnectGroup -Name "LIG Prod"
New-HPOVUplinkSet -Resource $LIGProd -Name "Fabric A" -Type FibreChannel -Networks "FABRIC_A" -UplinkPorts "BAY1:X1","BAY1:X2"

</pre>
To Create a Fibre Channel Uplink Template for VC FlexFabric modules.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVLogicalInterconnect -Name "Encl1 LIG Prod" | New-HPOVUplinkSet -Name "New Uplink Set" -Type Ethernet -Networks "RED","BLUE","GREEN" -NativeEthNetwork "RED" -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"
</pre>
Add a new Uplink Set to an existing Logical Interconnect resource.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$MlagNetworks = Get-HPOVNetwork -Type Ethernet -Name "My MLAG Network*"
Get-HPOVLogicalInterconnectGroup -Name "My Synergy Prod LIG" | New-HPOVUplinkSet -Name "MLAG UplinkSet" -Type Ethernet -Networks $MlagNetworks -NativeEthNetwork ($MlagNetworks | ? vlanid -eq 144) -UplinkPorts "Enclosure1:BAY3:Q1","Enclosure1:BAY3:Q2","Enclosure2:BAY6:Q1","Enclosure2:BAY6:Q2" -EthMode "Auto"

</pre>
Create a Synergy MLAG Uplink Set using 40Gb capable ports.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
$MlagNetworks = Get-HPOVNetwork -Type Ethernet -Name "My MLAG Network*"
Get-HPOVLogicalInterconnectGroup -Name "My Synergy Prod LIG" | New-HPOVUplinkSet -Name "MLAG UplinkSet" -Type Ethernet -Networks $MlagNetworks -NativeEthNetwork ($MlagNetworks | ? vlanid -eq 144) -UplinkPorts "Enclosure1:BAY3:Q1.1","Enclosure1:BAY3:Q2.1","Enclosure2:BAY6:Q1.1","Enclosure2:BAY6:Q2.1" -EthMode "Auto"

</pre>
Create a Synergy MLAG Uplink Set using 10Gb subports of QSFP transceiver slots.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
$ImageStreamerDeploymentNetworkObject = Get-HPOVNetwork -Name "Deployment Network" -ErrorAction Stop
Get-HPOVLogicalInterconnectGroup -Name "My Synergy VC+ImageStreamer LIG" -ErrorAction Stop | New-HPOVUplinkSet -Name "Image Streamer Uplink Set" -Type ImageStreamer -Networks $ImageStreamerDeploymentNetworkObject -UplinkPorts "Enclosure1:Bay3:Q3.1","Enclosure1:Bay3:Q4.1","Enclosure2:Bay6:Q3.1","Enclosure2:Bay6:Q4.1"</pre>
Create a Synergy ImageStreamer Uplink Set.



### Related Links

* [Get-HPOVUplinkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUplinkSet)


***
<div align=right><a href="#Top">Top</a></div>
