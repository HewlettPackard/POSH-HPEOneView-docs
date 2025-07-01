---
description: Retrieve Network Set resource(s).
---

# Get-OVNetworkSet

## Syntax

```powershell
Get-OVNetworkSet
    [-Name <String>]
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Get-OVNetworkSet
    [-Name <String>]
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Object>]
    [-ExportFile] <String>
    [<CommonParameters>]
```

## Description

A network set is a collection of tagged Ethernet networks that form a named group to simplify server profile creation. Network sets are useful in virtual environments where each server profile connection needs to access multiple networks. Use network sets in server profile connections to make all networks on a connection's downlink port available. Network sets define how packets will be delivered to the server when a server Ethernet connection is associated with the network set. Network sets also enable you to define a VLAN trunk and associate it with a server connection.

Instead of assigning a single network to a connection in a server profile, you can assign a network set to that connection.

* Using network sets, you can quickly deploy changes to the network environment to multiple servers. For example, you have 16 servers connected to a network set. To add a new network to all 16 servers, you only need to add it to the network set instead of each server individually.
* You can create a network set for your production networks and one for your development networks.
* You can configure a hypervisor with a vSwitch to access multiple VLANs by creating a network set as a trunk that includes these networks.

Network set prerequisites

* All networks in a network set must be Ethernet networks and must have unique external VLAN IDs. Untagged and tunnel networks are single networks and do not use network sets.
* All networks in a network set must be configured in the same appliance.
* A network can be a member of multiple network sets.
* All networks in a network set must be added to uplink sets or internal networks in the logical interconnect group (and its logical interconnects) to be used in server profiles with connections to the logical interconnect.
* A network set can be empty (contain no networks) or can contain one or more of the networks configured in the logical interconnect group and logical interconnect. Empty network sets enable you to create network sets in the configuration before you create the member networks, or to remove all the member networks before you add their replacements. However, if a server profile adds a connection to an empty network set, the server cannot connect to any data center networks using that connection.

Network set types

You can select either a Regular or Large network set type. You can deploy Large network sets on rack servers or using the HPE Virtual Connect SE 100Gb F32 Module for HPE Synergy. You cannot deploy Large network sets on blade servers. If the network set type is selected for blade server profiles or server profile templates, you cannot convert the network set type from Regular to Large.

For rack or blade servers:  Regular network sets can contain up to 162 networks. Large network sets can contain up to a maximum of 4,000 networks. Network sets with more than 4,000 networks are not supported on rack servers. VLANs with VLAN IDs above 4,000 are reserved for use by the HPE Composable Fabric Manager.
For HPE Synergy:  Regular network sets can contain up to 1,000 networks. Large network sets can contain up to 4,094 networks minus the number of networks that are in the reserved VLAN range, which can range from 60 to 128 networks. The default is 128 networks. Generally, the maximum number of networks is 3,966 networks. A maximum of 60 distinct large network sets can be simultaneously deployed per logical interconnect.

This Cmdlet is used to retrieve a collection of network set resources which have the specified type and/or name. The default connection information is included in the returned network resources.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVNetworkSet
```

Returns all Network Sets defined on the appliance to standard output.

###  Example 2 

```powershell
Get-OVNetworkSet -Name "Production"
```

Returns just the Production Network Set object to standard output.

###  Example 3 

```powershell
$myNetSets = Get-OVNetworkSet
```

Returns the Get-OVNetworkSet query and stores it in the object $myNetSets

###  Example 4 

```powershell
Get-OVNetworkSet -exportFile "c:\myApplianceConfig\Network-Sets.json"
```

Returns the Get-OVNetworkSet query results to the file c:\myApplianceConfig\Network-Sets.json

## Parameters

### -Name &lt;String&gt;

The name of the Network Set to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

* AllResources
* AllResourcesInScope
* `[HPEOneView.Appliance.ScopeCollection]`
* `[HPEOneView.Appliance.ConnectionPermission]`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
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

### -ExportFile &lt;String&gt;

The full path and file name to export the contents retrieved from the call to Get-OVNetworkSet.

| Aliases | x, export |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Networking.NetworkSet [System.Management.Automation.PSCustomObject]"
    Single Network Set
    

=== "System.Collections.ArrayList <HPEOneView.Networking.NetworkSet>"
    Multiple Network Sets
    

## Related Links

* [New-OVNetworkSet](new-ovnetworkset.md)
* [Remove-OVNetworkSet](remove-ovnetworkset.md)
* [Set-OVNetworkSet](set-ovnetworkset.md)
