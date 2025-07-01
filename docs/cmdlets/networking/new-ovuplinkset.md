---
description: Create a new Uplink Set.
---

# New-OVUplinkSet

## Syntax

```powershell
New-OVUplinkSet
    [-InputObject] <Object>
    [-Name] <String>
    [-Type] <String>
    [-Networks <Array>]
    [-NativeEthNetwork <Object>]
    [-NetworkSets <array>]
    [-CopyNetworksFromNetworkSet]
    [-UplinkPorts <Array>]
    [-EthMode <String>]
    [-LacpTimer <String>]
    [-LacpLoadbalancingMode <String>]
    [-LacpFailoverTrigger <String>]
    [-LacpDistributeUplinkPorts <Bool>]
    [-LacpFailoverBandwidthThreshold <Int>]
    [-LacpFailoverActiveMemberThreshold <Int>]
    [-PrimaryPort <String>]
    [-DCBXOverride <bool>]
    [-RoCEVersion <String[]>]
    [-ConsistencyChecking <String>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVUplinkSet
    [-Name] <String>
    [-Type] <String>
    [-Passthru]
    [-InputObject <Object>]
    [-Networks <Array>]
    [-NativeEthNetwork <Object>]
    [-NetworkSets <array>]
    [-CopyNetworksFromNetworkSet]
    [-UplinkPorts <Array>]
    [-EthMode <String>]
    [-LacpTimer <String>]
    [-LacpLoadbalancingMode <String>]
    [-LacpFailoverTrigger <String>]
    [-LacpDistributeUplinkPorts <Bool>]
    [-LacpFailoverBandwidthThreshold <Int>]
    [-LacpFailoverActiveMemberThreshold <Int>]
    [-PrimaryPort <String>]
    [-DCBXOverride <bool>]
    [-RoCEVersion <String[]>]
    [-PortSpeed <String>]
    [-FecMode <String>]
    [-FcUplinkSpeed <String>]
    [-EnableTrunking <Boolean>]
    [-ConsistencyChecking <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVUplinkSet
    [-InputObject] <Object>
    [-Name] <String>
    [-Type] <String>
    [-Networks <Array>]
    [-UplinkPorts <Array>]
    [-PortSpeed <String>]
    [-FecMode <String>]
    [-FcUplinkSpeed <String>]
    [-EnableTrunking <Boolean>]
    [-ConsistencyChecking <String>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Interconnect uplinks are grouped into an uplink set and managed as a unit, with an assigned set of one or more networks. The traffic carried over the uplinks is determined by the network assignment of the uplink set. Uplink sets can support either Ethernet or Fibre Channel networks. Depending on the type of the assigned networks, uplink sets can support both an automatic and a selective failover or distribution strategy. The uplink port state is monitored, which contributes to the overall reachability status of the assigned networks. For each port belonging to the uplink set, the assigned port speed can be monitored.

Uplink Sets can be created for Logical Interconnect Groups or Logical Interconnects.  When creating a new Uplink Set, either the Logical Interconnect Group or Logical Interconnect must exist.

Please know that the UplinkPorts parameter syntax is different between HPE BladeSystem and HPE Synergy Virtual Connect.

???+ info
    Minimum required privileges: Infrastructure administrator, Network administrator

## Examples

###  Example 1 

```powershell
Get-OVLogicalInterconnectGroup -Name "LIG Prod" | New-OVUplinkSet -Name "Uplink Set 1" -Type Ethernet -Networks "RED","BLUE","GREEN" -NativeEthNetwork "RED" -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"
```

To Create an Ethernet Uplink Template

###  Example 2 

```powershell
$ethNets = "Net1","Net2","Net3" | Get-OVNetwork -Type Ethernet
Get-OVLogicalInterconnectGroup -Name "LIG Prod" | New-OVUplinkSet -Name "Uplink Set 1" -Type Ethernet -Networks $ethNets -NativeEthNetwork $ethNets[0] -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"
```

Get the network resource objects, and define a new Uplink Set template that will be assigned to the Logical Interconnect Group resource.

###  Example 3 

```powershell
$LIGProd = Get-OVLogicalInterconnectGroup -Name "LIG Prod"
New-OVUplinkSet -Resource $LIGProd -Name "Fabric A" -Type FibreChannel -Networks "FABRIC_A" -UplinkPorts "BAY1:X1","BAY1:X2"
```

To Create a Fibre Channel Uplink Template for c-Class or HPE Synergy VC FlexFabric modules.

###  Example 4 

```powershell
Get-OVLogicalInterconnect -Name "Encl1 LIG Prod" | New-OVUplinkSet -Name "New Uplink Set" -Type Ethernet -Networks "RED","BLUE","GREEN" -NativeEthNetwork "RED" -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"
```

Add a new Uplink Set to an existing Logical Interconnect resource.

###  Example 5 

```powershell
$MlagNetworks = Get-OVNetwork -Type Ethernet -Name "My MLAG Network*"
Get-OVLogicalInterconnectGroup -Name "My Synergy Prod LIG" | New-OVUplinkSet -Name "MLAG UplinkSet" -Type Ethernet -Networks $MlagNetworks -NativeEthNetwork ($MlagNetworks | ? vlanid -eq 144) -UplinkPorts "Enclosure1:BAY3:Q1","Enclosure1:BAY3:Q2","Enclosure2:BAY6:Q1","Enclosure2:BAY6:Q2" -EthMode "Auto"
```

Create a Synergy MLAG Uplink Set using 40Gb capable ports.

###  Example 6 

```powershell
$MlagNetworks = Get-OVNetwork -Type Ethernet -Name "My MLAG Network*"
Get-OVLogicalInterconnectGroup -Name "My Synergy Prod LIG" | New-OVUplinkSet -Name "MLAG UplinkSet" -Type Ethernet -Networks $MlagNetworks -NativeEthNetwork ($MlagNetworks | ? vlanid -eq 144) -UplinkPorts "Enclosure1:BAY3:Q1.1","Enclosure1:BAY3:Q2.1","Enclosure2:BAY6:Q1.1","Enclosure2:BAY6:Q2.1" -EthMode "Auto"
```

Create a Synergy MLAG Uplink Set using 10Gb subports of QSFP transceiver slots.

###  Example 7 

```powershell
$ImageStreamerDeploymentNetworkObject = Get-OVNetwork -Name "Deployment Network" -ErrorAction Stop
Get-OVLogicalInterconnectGroup -Name "My Synergy VC+ImageStreamer LIG" -ErrorAction Stop | New-OVUplinkSet -Name "Image Streamer Uplink Set" -Type ImageStreamer -Networks $ImageStreamerDeploymentNetworkObject -UplinkPorts "Enclosure1:Bay3:Q3.1","Enclosure1:Bay3:Q4.1","Enclosure2:Bay6:Q3.1","Enclosure2:Bay6:Q4.1"
```

Create a Synergy ImageStreamer Uplink Set.

###  Example 8 

```powershell
$ROCENet           = Get-OVNetwork -Name ROCE-Net1
$lig               = Get-OVLogicalInterconnectGroup -Name "LE1-Default Ethernet LIG"
$ROCEUplinkPorts   = "Enclosure1:Bay3:Q3","Enclosure2:Bay6:Q3"
$ROCEUplinkSetName = "ROCE_US1"

$UplinkSetParams = @{

    InputObject  = $lig;
    Name         = $ROCEUplinkSetName;
    Type         = "Ethernet";
    Networks     = $ROCENet;
    UplinkPorts  = $ROCEUplinkPorts
    DCBxOverride = $true;
    ROCEVersion  = "ROCEV2"

}

New-OVUplinkSet @UplinkSetParams
```

Create a RoCEv2 uplink set for a logical interconnect group.

## Parameters

### -InputObject &lt;Object&gt;

Either a Logical Interconnect Group (`Get-OVLogicalInterconnectGroup`) or Logical Interconnect (`Get-OVLogicalInterconnect`) resource object.

| Aliases | li, lig, ligName, Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Logical Uplink set Name

| Aliases | usName |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Type &lt;String&gt;

Uplink set Type.  Accepted values are 

* Ethernet (Default)
* FibreChannel
* Tunnel
* Untagged
* ImageStreamer

ImageStreamer is only supported with Synergy infrastructure.  When assigning an Ethernet Network to an ImageStreamer Uplink Set, the network resource must be a Tagged Ethernet Network.

| Aliases | usType |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Networks &lt;Array&gt;

Array of Ethernet Network Names

| Aliases | usNetworks |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | @() |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NativeEthNetwork &lt;Object&gt;

The valid name of the Native Ethernet Network that is a member of the usNetworks parameter.

| Aliases | usNativeEthNetwork, Native, PVID |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UplinkPorts &lt;Array&gt;

Array of uplink ports with "BAYID:FacePlatePortID".  When configuring a Synergy infrastructure, the Uplink Port format needs to be "EnclosureID:BayID:FacePlatePortID".

FlexFabric `[e.g]`. @("BAY1:X1","BAY1:X2") or "BAY1:X5","BAY2:X5"
VC Fibre Channel `[e.g]`. @("BAY3:1","BAY3:2") or "BAY3:1","BAY3:2"
Synergy VC Ethernet `[e.g]`. "Enclosure1:Bay3:Q1","Enclosure1:Bay3:Q2","Enclosure2:Bay6:Q1","Enclosure2:Bay6:Q2"
Synergy VC Sub-Interface `[e.g]`. "Enclosure1:Bay3:Q1.1","Enclosure1:Bay3:Q2.1","Enclosure2:Bay6:Q1.2","Enclosure2:Bay6:Q2.2"
Synergy VC FC Primary Port `[e.g]`. "Bay2:Q1","Bay2:Q2" or "Bay5:Q1","Bay5:Q2"
Synergy VC FC Sub-Interface `[e.g]`. "Bay2:Q1.1","Bay2:Q2.1" or "Bay5:Q1.2","Bay5:Q2.2"

| Aliases | usUplinkPorts |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | @() |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EthMode &lt;String&gt;

Sets the LACP mode on the uplink ports. Valid for ETHERNET Uplinks only. Accepted Values:

* Auto (Default)
* Failover

| Aliases | usEthMode |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Auto |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LacpTimer &lt;String&gt;

Set the LACP Timer value, which sets the lacpdu frequecy to the LACP peer.  Accepted values:

* Long 
* Short (Default)

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Short |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PrimaryPort &lt;String&gt;

Specify the Primary Uplink Port when EthMode is set to Failover.  Parameter is not valid when EthMode parameter is set to Auto.

Example: "Bay1:X1"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -fcUplinkSpeed &lt;String&gt;

Specify the Fibre Channel Uplink Port speed.  Accepted values:

* Auto (Default)
* 2
* 4
* 8

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Auto |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableTrunking &lt;Boolean&gt;

Use this parameter to enable FC port trunking.  This parameter is only supported with HPE 16Gb or newer Virtual Connect Fibre Channel fabric modules.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | false |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | false |
| Accept pipeline input? | true (ByPropertyName) |
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

### -ConsistencyChecking &lt;String&gt;

Use to indicate if the group policy will be tracked to with the deployed and configured resource. Allowed values:

* None
* Exact

Default: Exact

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -CopyNetworksFromNetworkSet &lt;SwitchParameter&gt;

When specifying the `-NetworkSets` parameter, you can choose to copy the networks from the associated set(s) only.  This will not set the Uplink Set to track the network set(s).

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NetworkSets &lt;array&gt;

Use this to specify one or more network sets to track the network configuration.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LacpLoadbalancingMode &lt;String&gt;

When configuring Synergy Virtual Connect uplink sets, the LACP load balancing algorithm can be modified.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Passthru &lt;SwitchParameter&gt;

Use this parameter to return a helper object with the New-OVLogicalInterconnectGroup `-UplinkSet` parameter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LacpDistributeUplinkPorts &lt;Bool&gt;

The distribution of LACP uplink ports is supported on HPE Virtual Connect SE 40Gb F8 Module for HPE Synergy and HPE Virtual Connect SE 100Gb F32 Module for HPE Synergy interconnects.

When the LacpDistributeUplinkPorts parameter is used, the active and standby uplink ports are distributed across the stacked interconnects within the logical interconnect. The distribution of active ports occurs when the number of uplink ports is more than 16 in an uplink set.

LACP distribute uplink ports is applicable for Ethernet networks. This option is enabled by default for new uplink sets.

???+ info
    The port distribution depends on the number of ports added from each interconnect module.  Please see the HPE OneView Online Help for more details on uplink port distribution.


| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LacpFailoverActiveMemberThreshold &lt;Int&gt;

Use to specify a value of 1 through 16, when the `-LacpFailoverTrigger` parameter is set to 'FailoverActiveMemberThreshold'.

???+ warning
    Failover from active to standby uplinks will cause a brief interruption in the network and storage connectivity.


| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LacpFailoverBandwidthThreshold &lt;Int&gt;

Use to specify a value of 1 through 100 % (percent), when the `-LacpFailoverTrigger` parameter is set to 'FailoverBandwidthThreshold'.

???+ warning
    Failover from active to standby uplinks will cause a brief interruption in the network and storage connectivity.


| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LacpFailoverTrigger &lt;String&gt;

LACP failover trigger is only applicable to the Ethernet uplink sets in the active-standby configuration when there is no link aggregation configured on the top-of-rack (ToR) switches or an uplink set is configured without MLAG. In this case, all traffic to the compute modules will pass through the active set of uplink ports. Link failover trigger defines failover policy for when traffic will be redirected to the standby uplink ports. In case of failover trigger based on bandwidth/uplink count, link failover can be triggered either by reduction in active uplink bandwidth or increase in standby uplink bandwidth.

Allowed values:

	* AllActiveUplinksOffline
	* FailoverActiveMemberThreshold
	* FailoverBandwidthThreshold

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FecMode &lt;String&gt;

Specify the forward error correction mode.  This paraemter is only supported with Virtual Connect SE 100Gb F32 Module for Synergy modules.  When configuring, the following values are supported with parent ports:

	* Auto
	* Cl74
	* Cl108
	* None

The following values are supported with sub-ports:

	* Auto
	* Cl74
	* Cl91
	* None

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PortSpeed &lt;String&gt;

The allowed uplink port speed by the fabric module and traceiver type.  When specifying a port speed, this value will be set for all ports.  This parameter applies to Ethernet or FCoE uplink ports only.  Allowed values:

	* Auto
	* 100M
	* 1G
	* 10G
	* 40G
	* 100G

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DCBXOverride &lt;bool&gt;

Use to override the DCBx protocol version.  Use the RoCEVersion parameter to specify which RoCE version should be used.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RoCEVersion &lt;String[]&gt;

Specify which RoCE version should be used.

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

=== "HPEOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]"
    Logical Interconnect Resource from Get-OVLogicalInterconnect
    

=== "HPEOneView.Networking.LogicalInterconnectGroup [System.Management.Automation.PSCustomObject]"
    Logical Interconnect Group Resource from Get-OVLogicalInterconnectGroup
    

## Return Values

=== "HPEOneView.Appliance.TaskResource {System.Management.Automation.PSCustomObject}"
    Async Task Resource object
    

## Related Links

* [Get-OVUplinkSet](get-ovuplinkset.md)
