---
description: Create a new Uplink Set.
---

# New-HPOVUplinkSet

## Syntax

```text
New-HPOVUplinkSet
    [-InputObject] <Object>
    [-Name] <String>
    [-Type <String>]
    [-Networks] <Array>
    [-NativeEthNetwork] <Object>
    [-UplinkPorts] <Array>
    [-EthMode <String>]
    [-LacpTimer <String>]
    [-PrimaryPort <String>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
New-HPOVUplinkSet
    [-InputObject] <Object>
    [-Name] <String>
    [-Type <String>]
    [-Networks] <Array>
    [-UplinkPorts] <Array>
    [-fcUplinkSpeed <String>]
    [-EnableTrunking <Boolean>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Interconnect uplinks are grouped into an uplink set and managed as a unit, with an assigned set of one or more networks. The traffic carried over the uplinks is determined by the network assignment of the uplink set. Uplink sets can support either Ethernet or Fibre Channel networks. Depending on the type of the assigned networks, uplink sets can support both an automatic and a selective failover or distribution strategy. The uplink port state is monitored, which contributes to the overall reachability status of the assigned networks. For each port belonging to the uplink set, the assigned port speed can be monitored.
Uplink Sets can be created for Logical Interconnect Groups or Logical Interconnects.  When creating a new Uplink Set, either the Logical Interconnect Group or Logical Interconnect must exist.
Please know that the UplinkPorts parameter syntax is different between HPE BladeSystem and HPE Synergy Virtual Connect.

## Examples

###  Example 1 

```text
Get-HPOVLogicalInterconnectGroup -Name "LIG Prod" | New-HPOVUplinkSet -Name "Uplink Set 1" -Type Ethernet -Networks "RED","BLUE","GREEN" -NativeEthNetwork "RED" -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"

```

To Create an Ethernet Uplink Template

###  Example 2 

```text
$ethNets = "Net1","Net2","Net3" | Get-HPOVNetwork -Type Ethernet
Get-HPOVLogicalInterconnectGroup -Name "LIG Prod" | New-HPOVUplinkSet -Name "Uplink Set 1" -Type Ethernet -Networks $ethNets -NativeEthNetwork $ethNets[0] -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"
```

Get the network resource objects, and define a new Uplink Set template that will be assigned to the Logical Interconnect Group resource.

###  Example 3 

```text
$LIGProd = Get-HPOVLogicalInterconnectGroup -Name "LIG Prod"
New-HPOVUplinkSet -Resource $LIGProd -Name "Fabric A" -Type FibreChannel -Networks "FABRIC_A" -UplinkPorts "BAY1:X1","BAY1:X2"
```

To Create a Fibre Channel Uplink Template for c-Class or HPE Synergy VC FlexFabric modules.

###  Example 4 

```text
Get-HPOVLogicalInterconnect -Name "Encl1 LIG Prod" | New-HPOVUplinkSet -Name "New Uplink Set" -Type Ethernet -Networks "RED","BLUE","GREEN" -NativeEthNetwork "RED" -UplinkPorts "BAY1:X5","BAY1:X6","BAY2:X5","BAY2:X6" -EthMode "Auto"

```

Add a new Uplink Set to an existing Logical Interconnect resource.

###  Example 5 

```text
$MlagNetworks = Get-HPOVNetwork -Type Ethernet -Name "My MLAG Network*"
Get-HPOVLogicalInterconnectGroup -Name "My Synergy Prod LIG" | New-HPOVUplinkSet -Name "MLAG UplinkSet" -Type Ethernet -Networks $MlagNetworks -NativeEthNetwork ($MlagNetworks | ? vlanid -eq 144) -UplinkPorts "Enclosure1:BAY3:Q1","Enclosure1:BAY3:Q2","Enclosure2:BAY6:Q1","Enclosure2:BAY6:Q2" -EthMode "Auto"
```

Create a Synergy MLAG Uplink Set using 40Gb capable ports.

###  Example 6 

```text
$MlagNetworks = Get-HPOVNetwork -Type Ethernet -Name "My MLAG Network*"
Get-HPOVLogicalInterconnectGroup -Name "My Synergy Prod LIG" | New-HPOVUplinkSet -Name "MLAG UplinkSet" -Type Ethernet -Networks $MlagNetworks -NativeEthNetwork ($MlagNetworks | ? vlanid -eq 144) -UplinkPorts "Enclosure1:BAY3:Q1.1","Enclosure1:BAY3:Q2.1","Enclosure2:BAY6:Q1.1","Enclosure2:BAY6:Q2.1" -EthMode "Auto"
```

Create a Synergy MLAG Uplink Set using 10Gb subports of QSFP transceiver slots.

###  Example 7 

```text
$ImageStreamerDeploymentNetworkObject = Get-HPOVNetwork -Name "Deployment Network" -ErrorAction Stop
Get-HPOVLogicalInterconnectGroup -Name "My Synergy VC+ImageStreamer LIG" -ErrorAction Stop | New-HPOVUplinkSet -Name "Image Streamer Uplink Set" -Type ImageStreamer -Networks $ImageStreamerDeploymentNetworkObject -UplinkPorts "Enclosure1:Bay3:Q3.1","Enclosure1:Bay3:Q4.1","Enclosure2:Bay6:Q3.1","Enclosure2:Bay6:Q4.1"
```

Create a Synergy ImageStreamer Uplink Set.

## Parameters

### -InputObject &lt;Object&gt;

Either a Logical Interconnect Group (`Get-HPOVLogicalInterconnectGroup`) or Logical Interconnect (`Get-HPOVLogicalInterconnect`) resource object.

| Aliases | li, lig, ligName, Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
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

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

_**HPOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

Logical Interconnect Resource from Get-HPOVLogicalInterconnect

_**HPOneView.Networking.LogicalInterconnectGroup [System.Management.Automation.PSCustomObject]**_

Logical Interconnect Group Resource from Get-HPOVLogicalInterconnectGroup

## Return Values

_**HPOneView.Appliance.TaskResource {System.Management.Automation.PSCustomObject}**_

Async Task Resource object

## Related Links

* [Get-HPOVUplinkSet](get-hpovuplinkset.md)
