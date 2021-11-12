---
description: Create a new Network Set.
---

# New-OVNetworkSet

## Syntax

```powershell
New-OVNetworkSet
    [-Name] <String>
    [-Networks <Object>]
    [-UntaggedNetwork <Object>]
    [-TypicalBandwidth <Int32>]
    [-MaximumBandwidth <Int32>]
    [-ApplianceConnection <Object>]
    [-Large]
    [<CommonParameters>]
```

## Description

A network set is a group of Ethernet L2/L3 networks assigned to one or more connections, giving each single connection access to multiple networks. A network set is a shared resource available to all logical interconnects. It is directly associated with a connection template governing the bandwidth permitted to connections that use the network set.

Within a network set, all network frames are exchanged over the connection with their 802.1Q VLAN ID in place (in other words, network traffic is tagged with its VLAN ID). However, there is one exception to this rule: one network within the network set can be designated as the 'nativeNetwork'. The 802.1Q VLAN ID is removed from 'nativeNetwork' traffic egressing the interconnect downlink (in other words, 'nativeNetwork' traffic is untagged). This allows a single connection to support multiple tagged networks plus a single untagged network over the same downlink.

All Ethernet networks in a network set must have unique VLAN IDs.

This Cmdlet will create a new Network Set resource.

Minimum required permissions: Infrastructure administrator, Network administrator

## Examples

###  Example 1 

```powershell
New-OVNetworkSet -Name "Production Networks" -untaggedNetwork yellow -networks blue, green, yellow
```

Create a new Network Set called "Production Networks", adding Ethernet Networks "blue", "green", and "yellow", on all connected appliances.

###  Example 2 

```powershell
$networks = "blue","green","yellow" | % { Get-OVNetwork $_ -type Ethernet }
New-OVNetworkSet -name "Production Networks" -Networks $networks -UntaggedNetwork $networks[1]
```

Get Ethernet Networks "blue", "green", and "yellow", then create a new Network Set, with "Green" as the UntaggedNetowrk for the specified appliance connection.

###  Example 3 

```powershell
New-OVNetworkSet -Name "Production Networks" -untaggedNetwork yellow -networks blue, green, yellow -TypicalBandwidth 1000 -MaximumBandwidth 5000
```

Create a new Network Set called "Production Networks", adding Ethernet Networks "blue", "green", and "yellow", setting the Typical and Maximum Bandwidth.

## Parameters

### -Name &lt;String&gt;

The name of the new Network Set resource to be created.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Networks &lt;Object&gt;

Ethernet Network Name(s), URI(")s or Resource Object(s).

| Aliases | networkUris |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UntaggedNetwork &lt;Object&gt;

Network (from the above list) to be considered the "native" network in this set.  Traffic on this network will leave the Virtual Connect downlink port untagged.  When untagged traffic is received on this port, it will be mapped to this network.

| Aliases | untagged, native, untaggedNetworkUri |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TypicalBandwidth &lt;Int32&gt;

Optional preferred amount of bandwidth to assign, specified in Mbps.  Default value is 2500.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 2500 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MaximumBandwidth &lt;Int32&gt;

Optional maximum amount of bandwidth to assign, specified in Mbps.  Default value is 10000.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 10000 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Large &lt;SwitchParameter&gt;

A "Regular" network set may contain up to 162 networks. "Large" network sets can contain up to 4000 networks and can only be used by server profile template connections or server profile connections assigned to rackmount or HPE Synergy server hardware.

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.Collections.ArrayList**_

If bandwidth settings are specified, the newly created Network Set resource is returned

_**System.Management.Automation.PSCustomObject**_

If no bandwidth settings specified, an async task object is returned

## Related Links

* [Get-OVNetworkSet](get-ovnetworkset.md)
* [Remove-OVNetworkSet](remove-ovnetworkset.md)
* [Set-OVNetworkSet](set-ovnetworkset.md)
