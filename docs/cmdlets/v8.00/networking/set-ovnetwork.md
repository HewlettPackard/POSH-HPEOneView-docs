---
description: Modify an existing network.
---

# Set-OVNetwork

## Syntax

```powershell
Set-OVNetwork
    [-InputObject] <Object>
    [-Name <String>]
    [-Prefix <String>]
    [-Suffix <String>]
    [-Purpose <String>]
    [-Smartlink <Boolean>]
    [-PrivateNetwork <Boolean>]
    [-TypicalBandwidth <Int32>]
    [-MaximumBandwidth <Int32>]
    [-IPv4Subnet <Object>]
    [-IPv6Subnet <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVNetwork
    [-InputObject] <Object>
    [-Name <String>]
    [-Prefix <String>]
    [-Suffix <String>]
    [-TypicalBandwidth <Int32>]
    [-MaximumBandwidth <Int32>]
    [-LinkStabilityTime <Int32>]
    [-AutoLoginRedistribution <Boolean>]
    [-ManagedSan <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Modify a network and it"s attributes information.  Use this Cmdlet to change the Network Name, Purpose, Enable or Disable Smartlink, Enable or Disable Private Network, and adjust the allocated bandwidth.

## Examples

###  Example 1 

```powershell
Get-OVNetwork -Name "Net-11" | Set-OVNetwork -name NewNet-11 -Purpose Management -SmartLink $true -PrivateNetwork $false -TypicalBandwidth 500 -MaximumBandwidth 1500 | Wait-OVTaskComplete
```

Get the "Net-11" Ethernet Network, pipe it to Set-OVNetwork to update values.

###  Example 2 

```powershell
$fabricAManagedSan = Get-OVManagedSan -Name "Fabric A"
Get-OVNetwork -Name "Prod Fabric A" | Set-OVNetwork -ManagedSan $fabricAManagedSan  | Wait-OVTaskComplete
```

Update "Prod Fabric A" FC Network with "Fabric a" Managed SAN resource.

###  Example 3 

```powershell
$NewSuffix = "-prod A"
Get-OVNetwork -type Ethernet | Set-OVNetwork -Suffix $NewSuffix
```

Get all Ethernet networks, and add a Suffix to their names.

## Parameters

### -InputObject &lt;Object&gt;

The Name or Resource object of the network to be modified.

| Aliases | net, Network |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

The network resource"s new Name value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Prefix &lt;String&gt;

Use this parameter to add a new prefix to the name.  Will not change the original name value, simply add the prefix to the orignal name.  Use the `-Name` parameter to adjust the entire name.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Suffix &lt;String&gt;

Use this parameter to add a new suffix to the name.  Will not change the original name value, simply add the suffix to the orignal name.  Use the `-Name` parameter to adjust the entire name.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Purpose &lt;String&gt;

A description of the network"s role within the logical interconnect.  Accepted values in string format are:

* General
* Management
* VMMigration
* FaultTolerance

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Smartlink &lt;Boolean&gt;

Enable or Disable Smartlink within the Ethernet Network.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PrivateNetwork &lt;Boolean&gt;

Enable or Disable Private Network within the Ethernet Network.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TypicalBandwidth &lt;Int32&gt;

Preferred amount of bandwidth to assign within the Server Profile Connection, specified in Mbps.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MaximumBandwidth &lt;Int32&gt;

The maximum bandwidth of a network connection, that will be allowed and reflected witin the Server Profile Connection, expressed in Mbps. In Flex10 adapters, the maximum supported Ethernet bandwidth is 10 Gbps. With 10Gb FlexFabric adapters, the maximum FCoE bandwidth is 8Gbps. With FlexFabric 20Gb adapters, the maximum Ethernet bandwidth is 20Gbps.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LinkStabilityTime &lt;Int32&gt;

The time in seconds the appliance waits before reconnecting to a link that was previously offline (Login redistribution). This interval prevents connection loss due to reconnecting to a link that is unstable (going online and offline repeatedly).  Parameter is only supported with FibreChannel network resources.

Minimum Value: 1
Maximum Value: 1800

| Aliases | lst |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AutoLoginRedistribution &lt;Boolean&gt;

Used for login balancing when logins are not distributed evenly over the Fibre Channel links (for example, when an uplink that was down becomes available).  Parameter is only supported with FibreChannel network resources.

True: Login redistribution is initiated automatically when the link stability time expires.
False: Login redistribution must be initiated manually.

| Aliases | ald |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ManagedSan &lt;Object&gt;

Managed SAN Name or URI.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4Subnet &lt;Object&gt;

Use to specify the one IPv4 subnet the network should be associated with from Get-OVAddressPoolSubnet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
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

### -IPv6Subnet &lt;Object&gt;

Use to specify the one IPv6 subnet the network should be associated with from Get-OVAddressPoolSubnet.

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

_**HPEOneView.Networking.EthernetNetwork [System.Management.Automation.PSCustomObject]**_

Ethernet Network resource object

_**HPEOneView.Networking.FCNetwork [System.Management.Automation.PSCustomObject]**_

FC Network resource object

_**HPEOneView.Networking.FCoENetwork [System.Management.Automation.PSCustomObject]**_

FCoE Network resource object

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

The Update Network Resource Task object

## Related Links

* [Get-OVNetwork](get-ovnetwork.md)
* [Get-OVNetworkSet](get-ovnetworkset.md)
* [New-OVNetwork](new-ovnetwork.md)
* [New-OVNetworkSet](new-ovnetworkset.md)
* [Remove-OVNetwork](remove-ovnetwork.md)
* [Remove-OVNetworkSet](remove-ovnetworkset.md)
* [Set-OVNetworkSet](set-ovnetworkset.md)
