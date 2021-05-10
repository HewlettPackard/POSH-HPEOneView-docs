---
description: Update an uplink set resource
---

# Set-HPOVUplinkSet

## Syntax

```text
Set-HPOVUplinkSet
    [-InputObject] <Object>
    [-UplinkSetName] <string>
    [-Name <string>]
    [-AddNetwork <Object[]>]
    [-RemoveNetwork <Object[]>]
    [-AddNetworkSet <Object[]>]
    [-RemoveNetworkSet <Object[]>]
    [-AddPorts <Object[]>]
    [-RemovePorts <Object[]>]
    [-UntaggedNetwork <Object>]
    [-LacpTimer <string>]
    [-ConsistencyChecking <string>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Set-HPOVUplinkSet
    [-InputObject] <Object>
    [-UplinkSetName] <string>
    [-Name <string>]
    [-AddPorts <Object[]>]
    [-RemovePorts <Object[]>]
    [-EnableTrunking <bool>]
    [-ConsistencyChecking <string>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Interconnect uplinks are grouped into an uplink set and managed as a unit, with an assigned set of one or more networks. The traffic carried over the uplinks is determined by the network assignment of the uplink set. Uplink sets can support either Ethernet or Fibre Channel networks. Depending on the type of the assigned networks, uplink sets can support both an automatic and a selective failover or distribution strategy. The uplink port state is monitored, which contributes to the overall reachability status of the assigned networks. For each port belonging to the uplink set, the assigned port speed can be monitored.

Uplink Sets can be created for Logical Interconnect Groups or Logical Interconnects.  When creating a new Uplink Set, either the Logical Interconnect Group or Logical Interconnect must exist.

Please know that the UplinkPorts parameter syntax is different between HPE BladeSystem and HPE Synergy Virtual Connect.

Use this Cmdlet to modify an existing Logical Interconect Group uplink set, or Logical Interconnect uplink set.  Logical Interconnect Group uplink sets are a poperty of the Logical Interconnect Group resource.  Logical Interconnect uplink sets are a different resource, and are not directly a member of the Logical Interconnect.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, Network administrator
{% endhint %}

## Examples

###  Example 1 

```text
$NetworkToRemove = Get-HPOVNetwork -Name NetworkToRemove
Get-HPOVLogicalInterconnectGroup -Name "My Production LIG" -ErrorAction Stop | Set-HPOVUplinkSet -UplinkSetName "Production Uplink Set 1-A" -RemoveNetwork $NetworkToRemove
```

Remove the specific network from the created logical interconnect group's uplink set.

###  Example 2 

```text
Get-HPOVLogicalInterconnectGroup -Name "My Production LIG" -ErrorAction Stop | Set-HPOVUplinkSet -UplinkSetName "Production Uplink Set" -AddPort "Enclosure1:Bay3:Q1.1", "Enclosure2:Bay6:Q1.1"
```

Add the specific ports from the created logical interconnect group's uplink set.

###  Example 3 

```text
Get-HPOVUplinkSet -Name "Uplink Set 1" -ErrorAction Stop | Set-HPOVUplinkSet -AddPort "Enclosure1:Bay3:Q1.1", "Enclosure2:Bay6:Q1.1" -LacpTimer Short
```

Add the specific ports to the created uplink set, and change the LACP Timer to "Short".

## Parameters

### -AddNetwork &lt;Object[]&gt;

Specify the networks to add to the specified uplink set.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AddPorts &lt;Object[]&gt;

Array of uplink ports to add with "BAYID:FacePlatePortID".  When configuring a Synergy infrastructure, the Uplink Port format needs to be "EnclosureID:BayID:FacePlatePortID".

FlexFabric `[e.g]`. @("BAY1:X1","BAY1:X2") or "BAY1:X5","BAY2:X5"
VC Fibre Channel `[e.g]`. @("BAY3:1","BAY3:2") or "BAY3:1","BAY3:2"
Synergy VC Ethernet `[e.g]`. "Enclosure1:Bay3:Q1","Enclosure1:Bay3:Q2","Enclosure2:Bay6:Q1","Enclosure2:Bay6:Q2"
Synergy VC Sub-Interface `[e.g]`. "Enclosure1:Bay3:Q1.1","Enclosure1:Bay3:Q2.1","Enclosure2:Bay6:Q1.2","Enclosure2:Bay6:Q2.2"
Synergy VC FC Primary Port `[e.g]`. "Bay2:Q1","Bay2:Q2" or "Bay5:Q1","Bay5:Q2"
Synergy VC FC Sub-Interface `[e.g]`. "Bay2:Q1.1","Bay2:Q2.1" or "Bay5:Q1.2","Bay5:Q2.2"

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -ConsistencyChecking &lt;string&gt;

Use to indicate if the group policy will be tracked to with the deployed and configured resource. Allowed values:

    * None
    * Exact

Default: Exact

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableTrunking &lt;bool&gt;

Use this parameter to enable or disable FC port trunking.  This parameter is only supported with HPE 16Gb or newer Virtual Connect Fibre Channel fabric modules.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Either a Logical Interconnect Group from Get-HPOVLogicalInterconnectGroup or Uplink Set Get-HPOVUplinkSet resource.

| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -LacpTimer &lt;string&gt;

Set the LACP Timer value, which sets the lacpdu frequecy to the LACP peer.  Accepted values:

    * Long 
    * Short (Default)

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Name &lt;string&gt;

Specify the new name of the resource.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RemoveNetwork &lt;Object[]&gt;

An array of networks to remove from the uplink set.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RemovePorts &lt;Object[]&gt;

Array of uplink ports to remove with "BAYID:FacePlatePortID".  When configuring a Synergy infrastructure, the Uplink Port format needs to be "EnclosureID:BayID:FacePlatePortID".

FlexFabric `[e.g]`. @("BAY1:X1","BAY1:X2") or "BAY1:X5","BAY2:X5"
VC Fibre Channel `[e.g]`. @("BAY3:1","BAY3:2") or "BAY3:1","BAY3:2"
Synergy VC Ethernet `[e.g]`. "Enclosure1:Bay3:Q1","Enclosure1:Bay3:Q2","Enclosure2:Bay6:Q1","Enclosure2:Bay6:Q2"
Synergy VC Sub-Interface `[e.g]`. "Enclosure1:Bay3:Q1.1","Enclosure1:Bay3:Q2.1","Enclosure2:Bay6:Q1.2","Enclosure2:Bay6:Q2.2"
Synergy VC FC Primary Port `[e.g]`. "Bay2:Q1","Bay2:Q2" or "Bay5:Q1","Bay5:Q2"
Synergy VC FC Sub-Interface `[e.g]`. "Bay2:Q1.1","Bay2:Q2.1" or "Bay5:Q1.2","Bay5:Q2.2"

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UntaggedNetwork &lt;Object&gt;

Specify the network object that will be set as the untagged network.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UplinkSetName &lt;string&gt;

When providing a Logical Interconnect Group resource, you must specify the name of the uplink set to modify.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -AddNetworkSet &lt;Object[]&gt;

Provide one or more network set objects from Get-HPOVNetworkSet to add to the uplink set.  This will simplify the configuration of the assigned networks to the uplink set.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RemoveNetworkSet &lt;Object[]&gt;

Provide one or more network set objects from Get-HPOVNetworkSet to remove from the uplink set.  This will simplify the configuration of the assigned networks to the uplink set.

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

_**HPOneView.Networking.LogicalInterconnectGroup [System.Management.Automation.PSCustomObject]**_

Logical Interconnect Group resource from Get-HPOVLogicalInterconnectGroup.

_**HPOneView.Networking.UplinkSet [System.Management.Automation.PSCustomObject]**_

Uplink set resource from Get-HPOVUplinkSet.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task resource object to monitor.

## Related Links

* [Get-HPOVNetworkSet](get-hpovnetworkset.md)
* [Get-HPOVUplinkSet](get-hpovuplinkset.md)
* [Get-HPOVLogicalInterconnectGroup](get-hpovlogicalinterconnectgroup.md)
* [New-HPOVUplinkSet](new-hpovuplinkset.md)
