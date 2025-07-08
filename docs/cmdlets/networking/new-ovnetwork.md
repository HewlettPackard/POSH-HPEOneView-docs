---
description: Creates one or more new Ethernet or Fibre-Channel networks on the appliance.
---

# New-OVNetwork

## Syntax

```powershell
New-OVNetwork
    [-Name] <String>
    [-Type] <String>
    [-VlanId] <Int32>
    [-NetworkSet <Object[]>]
    [-Subnet] <Object>
    [-VLANType] <String>
    [-Purpose] <String>
    [-SmartLink] <Boolean>
    [-PrivateNetwork] <Boolean>
    [-TypicalBandwidth] <Int32>
    [-MaximumBandwidth] <Int32>
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVNetwork
    [-Name] <String>
    [-VlanRange] <String>
    [-Type] <String>
    [-VLANType] <String>
    [-Purpose] <String>
    [-SmartLink] <Boolean>
    [-PrivateNetwork] <Boolean>
    [-TypicalBandwidth] <Int32>
    [-MaximumBandwidth] <Int32>
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVNetwork
    [-Name] <String>
    [-Type] <String>
    [-VlanId] <Int32>
    [-TypicalBandwidth] <Int32>
    [-MaximumBandwidth] <Int32>
    [-ManagedSan] <Object>
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVNetwork
    [-Name] <String>
    [-Type] <String>
    [-TypicalBandwidth] <Int32>
    [-MaximumBandwidth] <Int32>
    [-LinkStabilityTime] <Int32>
    [-AutoLoginRedistribution] <Boolean>
    [-FabricType] <String>
    [-ManagedSan] <Object>
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVNetwork
    [-ImportFile] <String>
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Create a new network resource, including its default connection type.  Network definitions can be supplied as direct Cmdlet parameters or as input from a file containing the network definition in JSON format.

To create an Ethernet Network for Image Streamer, use the following paramters:

* Name
* VlanType = Untagged
* IPv4Subnet Object
* Purpose = Management

## Examples

###  Example 1 

```powershell
New-OVNetwork -type Ethernet -name MyNetwork1 -vlanid 100 -typicalbandwidth 5000 -maximumbandwidth 7500
```

Creates new Ethernet Network type, with "MyNetwork1" name, VLAN ID 100, and specifies preferred bandwidth to 5Gb/s and max to 7.5Gb/s.  Network will be created on all connected appliances.

###  Example 2 

```powershell
New-OVNetwork -type Ethernet -name MyNetwork1 -vlanid 100 -typicalbandwidth 5000 -maximumbandwidth 7500 -Appliance MyAppliance
```

Creates new Ethernet Network type, with "MyNetwork1" name, VLAN ID 100, an dspecifies preferred bandwidth to 5Gb/s and max to 7.5Gb/s to be created on "MyAppliance"

###  Example 3 

```powershell
$Connection1 = Connect-OVMgmt MyAppliance1.domain.local Administrator MyPassword
$Connection2 = Connect-OVMgmt MyAppliance2.domain.local Administrator MyPassword
New-OVNetwork -type Ethernet -name MyNetwork1 -vlanid 100 -typicalbandwidth 5000 -maximumbandwidth 7500 -Appliance $Connection1,$Connection2
```

Creates new Ethernet Network type, with "MyNetwork1" name, VLAN ID 100, an dspecifies preferred bandwidth to 5Gb/s and max to 7.5Gb/s to be created on "MyAppliance1" and "MyAppliance2" using the connection objects.

###  Example 4 

```powershell
10,20,30,40,50,60 | % { New-OVNetwork -type Ethernet -name "VLAN $_" -vlanid $_ }
```

Create multiple Ethernet Networks.

###  Example 5 

```powershell
10,20,30,40,50,60 | % { New-OVNetwork -type Ethernet -name "VLAN $_-A" -vlanid $_ }
10,20,30,40,50,60 | % { New-OVNetwork -type Ethernet -name "VLAN $_-B" -vlanid $_ }
```

Create Ethernet Networks for an Active/Active configuration.

###  Example 6 

```powershell
New-OVNetwork -name "VLAN A Side" -vlanRange "10,20,30,40,50,60"
New-OVNetwork -name "VLAN B Side" -VlanRange "10,20,30,40,50,60"
```

Create Ethernet Networks for an Active/Active configuration using the `-VlanRange` parameter.

###  Example 7 

```powershell
New-OVNetwork -type FC -name "Fabric A" -typicalBandwidth 2000 -maximumBandwidth 4000
```

Creates a new FC network type, called "Fabric A" and preferred bandwidth is 2Gb/s and max is 4Gb/s.

###  Example 8 

```powershell
New-OVNetwork -type FC -name "Fabric A" -typicalBandwidth 2000 -maximumBandwidth 4000 -fabricType FabricAttach -managedSAN Fabric_A
```

Creates a new FC network type, called "Fabric A", preferred bandwidth is 2Gb/s and max is 4Gb/s, and is associated with a Managed SAN Fabric.

###  Example 9 

```powershell
New-OVNetwork -importFile "c:\OneViewInput\myNewNets.json"
```

Creates the network(s) defined in the input file `[myNewNets.json]`

## Parameters

### -Name &lt;String&gt;

Required object to provide a display name for the network being created.
If specifying the `-VlanRange` parameter, this will become the Nework Name Prefix (i.e. "VLAN" will become "VLAN-[vlanid]".)

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Type &lt;String&gt;

Required value that specifies the type of Network Resource to create.  Allowed values are:

* Ethernet
* FC
* FibreChannel
* FCoE

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | Ethernet |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VlanId &lt;Int32&gt;

The Virtual LAN (VLAN) identification number assigned to the network. The VLAN ID must be unique. The VLAN ID cannot be changed once the network has been created.

When creating an Ethernet Network on an HPE Synergy Composer, Vlan ID 1 is not a valid ID.  The allowed range is 2-4095.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Subnet &lt;Object&gt;

An IPv4 Subnet Object that will be associated with a specific Ethernet Network and VLAN.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VlanRange &lt;String&gt;

VLAN Range of networks to create.  Can be consecutive, non-consecutive or a combination of both.

`[e.g]`. `-VLANRange` "10-90,94,96,200-210"

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VLANType &lt;String&gt;

The type of VLAN configuration for the Ethernet Network.  This setting is only applicable for the Uplink Set configuration, and not the Network Set it could be assigned to.  Accepted values are 
            
* Tagged
* Tunnel
* Access

Default value is Tagged.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | Tagged |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Purpose &lt;String&gt;

A description of the network"s role within the logical interconnect.  Accepted values in string format are:

* General
* Management
* VMMigration
* FaultTolerance
* iSCSI

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | General |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SmartLink &lt;Boolean&gt;

Default value is TRUE.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | True |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PrivateNetwork &lt;Boolean&gt;

Default value is FALSE.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TypicalBandwidth &lt;Int32&gt;

Preferred amount of bandwidth to assign, specified in Mbps.  Default value is 2500.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 2500 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MaximumBandwidth &lt;Int32&gt;

Maximum amount of bandwidth to assign, specified in Mbps.  Default value is 10000.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 20000 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LinkStabilityTime &lt;Int32&gt;

The time in seconds the appliance waits before reconnecting to a link that was previously offline (Login redistribution). This interval prevents connection loss due to reconnecting to a link that is unstable (going online and offline repeatedly).

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 30 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AutoLoginRedistribution &lt;Boolean&gt;

Used for login balancing when logins are not distributed evenly over the Fibre Channel links (for example, when an uplink that was down becomes available).

True: Login redistribution is initiated automatically when the link stability time expires.
False: Login redistribution must be initiated manually.

This parameter is not applicable for Direct Attach Fabric Types.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FabricType &lt;String&gt;

Valid values are DirectAttach and FabricAttach. Defaults to FabricAttach

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | FabricAttach |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ManagedSan &lt;Object&gt;

Managed SAN Object or Name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ImportFile &lt;String&gt;

Full path and file name of a JSON formatted input file containing network definitions.

| Aliases | i, import |
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

### -NetworkSet &lt;Object[]&gt;

Specify one or more network set objects the network should be added to during creation from Get-OVNetworkSet.

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

=== "HPEOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]"
    ManagedSan resource object to be assigned to a FC or FCoE Network
    

## Return Values

=== "System.Collections.ArrayList"
    A custom status object or array of objects containing the following PsCustomObject keys:
    
    * Name - name of the network object attempted to be created
    * Status - status of the creation attempt (Failed for http error return; Complete if a task object is returned)
    * Description - Task object or Error object
    * Exception -  System.Management.Automation.ErrorRecord object of the error generated
    

## Related Links

* [Get-OVNetwork](get-ovnetwork.md)
* [Get-OVNetworkSet](get-ovnetworkset.md)
* [New-OVNetworkSet](new-ovnetworkset.md)
* [Remove-OVNetwork](remove-ovnetwork.md)
* [Remove-OVNetworkSet](remove-ovnetworkset.md)
* [Set-OVNetwork](set-ovnetwork.md)
* [Set-OVNetworkSet](set-ovnetworkset.md)
