---
description: Modify an existing network set.
---

# Set-OVNetworkSet

## Syntax

```powershell
Set-OVNetworkSet
    [-InputObject] <Object>
    [-Name <String>]
    [-Networks <Object[]>]
    [-AddNetwork <Object[]>]
    [-RemoveNetwork <Object>]
    [-UntaggedNetwork <Object>]
    [-TypicalBandwidth <Int32>]
    [-MaximumBandwidth <Int32>]
    [-ApplianceConnection <Object>]
    [-Large]
    [<CommonParameters>]
```

## Description

A network set is a group of Ethernet L2/L3 networks assigned to one or more connections, giving each single connection access to multiple networks. A network set is a shared resource available to all logical interconnects. It is directly associated with a connection template governing the bandwidth permitted to connections that use the network set.

Within a network set, all network frames are exchanged over the connection with their 802.1Q VLAN ID in place (in other words, network traffic is tagged with its VLAN ID). However, there is one exception to this rule: one network within the network set can be designated as the 'UntaggedNetwork', or Native VLAN. The 802.1Q VLAN ID is removed from 'UntaggedNetwork' traffic egressing the interconnect downlink (in other words, 'UntaggedNetwork' traffic is untagged). This allows a single connection to support multiple tagged networks plus a single untagged network over the same downlink.

All Ethernet networks in a network set must have unique VLAN IDs.

Use this Cmdlet to change the Name, add or remove Ethernet networks, switch to a Large network set resource, what is the untagged network and adjust the allocated bandwidth of an existing network set.

Minimum required permissions: Infrastructure administrator, Network administrator

## Examples

###  Example 1 

```powershell
$netset = Get-OVNetworkSet -Name "Set-1"
$netset.maximumBandwidth = 5000
$netset.typicalBandwidth = 3000
Set-OVNetworkSet $netset
```

Modify "Set-1" to be maximum bandwidth of 5000.

###  Example 2 

```powershell
Get-OVNetworkSet -Name NetSet-1 | Set-OVNetworkSet -name NewNetSet-1 -networks @(bluenet,rednet,greennet) -untagged bluenet
```

Update "NetSet-1" with a new name, adjust the networks, and set "bluenet" as the Untagged Network.

###  Example 3 

```powershell
$NetworkToAdd = Get-OVNetwork -Name "Prod 442 VLAN"
Get-OVNetworkSet -Name NetSet-1 | Set-OVNetworkSet -AddNetwork $NetworkToAdd
```

Add the specified network to the existing network set.

###  Example 4 

```powershell
$NetworksToRemove = Get-OVNetwork -Name "Dev 45*"
Get-OVNetworkSet -Name NetSet-2 | Set-OVNetworkSet -RemoveNetwork $NetworksToRemove
```

Remove the specified networks from the existing network set.

## Parameters

### -InputObject &lt;Object&gt;

The Network Set resource object to be modified.

| Aliases | NetSet, NetworkSet |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

The updated name value of the Network Set.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Networks &lt;Object[]&gt;

An array containing the updated list of networks.  May contain Network objects, names or URI"s.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AddNetwork &lt;Object[]&gt;

Specify 1 or more network resources to add to the specified network set.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RemoveNetwork &lt;Object&gt;

Specify 1 or more network resources to remove from the specified network set.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UntaggedNetwork &lt;Object&gt;

The Name or URI of the Untaggged, or Native Network for the Network Set.

| Aliases | untagged, native, untaggedNetworkUri |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TypicalBandwidth &lt;Int32&gt;

The updated Typical or Preferred bandwidth, in Mbps.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MaximumBandwidth &lt;Int32&gt;

The updated MAximum bandwidth, in Mbps.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Large &lt;SwitchParameter&gt;

A "Regular" network set (-Large:$False) may contain up to 162 networks. "Large" network sets can contain up to 4000 networks and can only be used by server profile template connections or server profile connections assigned to rackmount or HPE Synergy server hardware. A network set cannot be converted from regular to large if the network set is already in use by a server profile or server profile template.

By default, "Regular" Network Sets are created.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Networking.NetworkSet [System.Management.Automation.PSCustomObject]**_

Single Network Set resource

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Update Network Set resource task

## Related Links

* [Get-OVNetworkSet](get-ovnetworkset.md)
* [New-OVNetworkSet](new-ovnetworkset.md)
* [Remove-OVNetworkSet](remove-ovnetworkset.md)
