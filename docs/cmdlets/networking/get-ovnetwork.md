---
description: Retrieve Network resource(s).
---

# Get-OVNetwork

## Syntax

```powershell
Get-OVNetwork
    [-Name <String>]
    [-Type <String>]
    [-Purpose <String>]
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Object>]
    [-exportFile <String>]
    [<CommonParameters>]
```

## Description

A virtual connect interconnect in an enclosure supports the following types of data center networks:

* Fibre Channel for storage networks, including fabric-attach (SAN) Fibre Channel (FC) connections and direct-attach (Flat SAN) Fibre Channel connections.
* Ethernet for data networks, including tagged, untagged, or tunnel networks.
* Fibre Channel over Ethernet (FCoE) for storage networks where storage traffic is carried over a dedicated Ethernet VLAN.

???+ info
    The networking features described here apply to enclosures and servers only. The appliance does not monitor or manage the network features and hardware for rack mount servers or networking equipment outside the enclosures without using a supported logical switch or fabric manager.


???+ info
    You can associate a network to both an IPv4 subnet.


The details of your networks and any alerts associated with them appear on the Networks screen. If no resources are listed, you must add a resource. See Create networks.

About creating networks

Before creating networks, be aware of the networking maximums. See the HPE OneView Support Matrix for more information.

You can create networks before you add an enclosure, which is known as preprovisioning.

About provisioning networks

An Ethernet network is provisioned to an interconnect when the network is associated with an uplink set or internal networks in a logical interconnect.

An FC or FCoE network is provisioned to an interconnect when the network is associated with an uplink set in a logical interconnect.

An Ethernet and FCoE network must be provisioned to a logical interconnect and be consistent with the logical interconnect group to be deployed in a server profile connection.

This Cmdlet is used to retrieve a collection of network resources which have the specified type and/or name. The default connection information is included in the returned network resources.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
$net41 = Get-OVNetwork -name "Net-41"
```

Return the network resource with the name "Net-41"

###  Example 2 

```powershell
$ethNets = Get-OVNetwork -type Ethernet
```

Return all the Ethernet network resources

###  Example 3 

```powershell
$ethNets = Get-OVNetwork -Name VLAN_19*
```

Return all Ethernet Networks that match "VLAN_19*".

###  Example 4 

```powershell
$ethNets = "Net1","Net2","Net3" | Get-OVNetwork -Type Ethernet
```

Return Net1, Net2, and Net3 Ethernet Networks from the specified appliance connection.

###  Example 5 

```powershell
Get-OVNetwork -exportFile "c:\myApplianceConfig\myNets.json"
```

Exports all networks to the file `[myNets.json]` in JSON format.

###  Example 6 

```powershell
Get-OVNetwork -x "c:\myApplianceConfig\myNets.json" -type Ethernet
```

Exports only the ethernet networks to the file `[myNets.json]`.

###  Example 7 

```powershell
Get-OVNetwork
Type: Ethernet


Name       Type   VLAN ID Purpose     Smartlink Private Network Status Preferred Bandwidth Max Bandwidth
----       ----   ------- -------     --------- --------------- ------ ------------------- -------------
VLAN 1-A   Tagged 1       Management  True      False           OK     2500                10000
VLAN 1-B   Tagged 1       Management  True      False           OK     2500                10000
VLAN 10-A  Tagged 10      VMMigration True      False           OK     2500                10000
VLAN 10-B  Tagged 10      VMMigration True      False           OK     2500                10000
VLAN 101-A Tagged 101     General     True      False           OK     2500                10000
VLAN 101-B Tagged 101     General     True      False           OK     2500                10000
VLAN 102-A Tagged 102     General     True      False           OK     2500                10000
VLAN 102-B Tagged 102     General     True      False           OK     2500                10000
VLAN 103-A Tagged 103     General     True      False           OK     2500                10000
VLAN 103-B Tagged 103     General     True      False           OK     2500                10000
VLAN 104-A Tagged 104     General     True      False           OK     2500                10000
VLAN 104-B Tagged 104     General     True      False           OK     2500                10000
VLAN 105-A Tagged 105     General     True      False           OK     2500                10000
VLAN 105-B Tagged 105     General     True      False           OK     2500                10000
VLAN 20-A  Tagged 20      General     True      False           OK     2500                10000
VLAN 20-B  Tagged 20      General     True      False           OK     2500                10000
VLAN 201-A Tagged 201     General     True      False           OK     2500                10000
VLAN 201-B Tagged 201     General     True      False           OK     2500                10000
VLAN 30-A  Tagged 30      General     True      False           OK     2500                10000
VLAN 30-B  Tagged 30      General     True      False           OK     2500                10000
VLAN 301-A Tagged 301     General     True      False           OK     2500                10000
VLAN 301-B Tagged 301     General     True      False           OK     2500                10000
VLAN 40-A  Tagged 40      General     True      False           OK     2500                10000
VLAN 40-B  Tagged 40      General     True      False           OK     2500                10000
VLAN 401-A Tagged 401     General     True      False           OK     2500                10000
VLAN 401-B Tagged 401     General     True      False           OK     2500                10000
VLAN 50-A  Tagged 50      General     True      False           OK     2500                10000
VLAN 50-B  Tagged 50      General     True      False           OK     2500                10000
VLAN 501-A Tagged 501     General     True      False           OK     2500                10000
VLAN 501-B Tagged 501     General     True      False           OK     2500                10000


    Type: Fibre Channel


Name              Status Type         Typical Bandwidth Max Bandwidth Auto Login Redistribution Link Stability Interval
----              ------ ----         ----------------- ------------- ------------------------- -----------------------
3PAR SAN DA A     OK     DirectAttach 4000              8000          False                     0
3PAR SAN DA B     OK     DirectAttach 4000              8000          False                     0
3PAR SAN Fabric A OK     FabricAttach 4000              8000          True                      30
3PAR SAN Fabric B OK     FabricAttach 4000              8000          True                      30

    
    Type: FCoE


Name   Status vlanId Typical Bandwidth Max Bandwidth Associated SAN
----   ------ ------ ----------------- ------------- --------------
fcoe1  OK     134    2500              20000
FCOE3  OK     11     2500              10000
FCOE2  OK     10     2500              10000
FCOE12 OK     12     2500              10000
```

Get all available networks.

## Parameters

### -Name &lt;String&gt;

The name of the network resource to be returned.  All network resources will be returned if omitted.  Supports "*" wildcard character.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Type &lt;String&gt;

The type of the network resource to be returned.  Valid types are "Ethernet" for Ethernet networks, "FC" or "FibreChannel" for Fibre Channel networks.  All network resources will be returned if omitted.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Purpose &lt;String&gt;

Specify the Ethernet Purpose value to filter on.

Supported Values:

* General
* Management
* VMMigration
* FaultTolerance
* ISCSI

    Note: When using this parameter, only Ethernet networks will be returned.

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

Specify the label name the network resource is associated with.  Cannot be combined with Name.

| Aliases | None |
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

### -ExportFile &lt;String&gt;

The full path and file name to export the JSON formatted definition of the networks to a file. The directory for the file is validated prior to execution and the function returns an error is the directory does not exist.

| Aliases | x, export |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "System.String"
    Network Resource Name(s)
    

## Return Values

=== "HPEOneView.Networking.EthernetNetwork"
    Single Ethernet Network resource
    

=== "HPEOneView.Networking.FibreChannelNetwork"
    Single Fibre Channel Network resource
    

=== "HPEOneView.Networking.FCoENetwork"
    Single FCoE Network resource
    

=== "System.Collections.ArrayList"
    Multiple Network Object resources
    

## Related Links

* [Get-OVNetworkSet](get-ovnetworkset.md)
* [New-OVNetwork](new-ovnetwork.md)
* [New-OVNetworkSet](new-ovnetworkset.md)
* [Remove-OVNetwork](remove-ovnetwork.md)
* [Remove-OVNetworkSet](remove-ovnetworkset.md)
* [Set-OVNetwork](set-ovnetwork.md)
* [Set-OVNetworkSet](set-ovnetworkset.md)
