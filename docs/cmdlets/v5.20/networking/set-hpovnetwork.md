---
description: Modify an existing network.
---

# Set-HPOVNetwork

## Syntax

```text
Set-HPOVNetwork
    [-InputObject] <>
    [-Name <>]
    [-Prefix <>]
    [-Suffix <>]
    [-Purpose <>]
    [-Smartlink <>]
    [-PrivateNetwork <>]
    [-TypicalBandwidth <>]
    [-MaximumBandwidth <>]
    [-IPv4Subnet <>]
    [-IPv6Subnet <>]
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

```text
Set-HPOVNetwork
    [-InputObject] <>
    [-Name <>]
    [-Prefix <>]
    [-Suffix <>]
    [-TypicalBandwidth <>]
    [-MaximumBandwidth <>]
    [-LinkStabilityTime <>]
    [-AutoLoginRedistribution <>]
    [-ManagedSan <>]
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

## Description

Modify a network and it"s attributes information.  Use this Cmdlet to change the Network Name, Purpose, Enable or Disable Smartlink, Enable or Disable Private Network, and adjust the allocated bandwidth.

## Examples

###  Example 1 

```text
Get-HPOVNetwork -Name "Net-11" | Set-HPOVNetwork -name NewNet-11 -Purpose Management -SmartLink $true -PrivateNetwork $false -TypicalBandwidth 500 -MaximumBandwidth 1500 | Wait-HPOVTaskComplete
```

Get the "Net-11" Ethernet Network, pipe it to `Set-HPOVNetwork` to update values.

###  Example 2 

```text
$fabricAManagedSan = Get-HPOVManagedSan -Name "Fabric A"
Get-HPOVNetwork -Name "Prod Fabric A" | Set-HPOVNetwork -ManagedSan $fabricAManagedSan  | Wait-HPOVTaskComplete
```

Update "Prod Fabric A" FC Network with "Fabric a" Managed SAN resource.

###  Example 3 

```text
$NewSuffix = "-prod A"
Get-HPOVNetwork -type Ethernet | Set-HPOVNetwork -Suffix $NewSuffix
```

Get all Ethernet networks, and add a Suffix to their names.

## Parameters

### -InputObject &lt;&gt;

The Name or Resource object of the network to be modified.

| Aliases | net, Network |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;&gt;

The network resource"s new Name value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Prefix &lt;&gt;

Use this parameter to add a new prefix to the name.  Will not change the original name value, simply add the prefix to the orignal name.  Use the `-Name` parameter to adjust the entire name.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Suffix &lt;&gt;

Use this parameter to add a new suffix to the name.  Will not change the original name value, simply add the suffix to the orignal name.  Use the `-Name` parameter to adjust the entire name.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Purpose &lt;&gt;

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

### -Smartlink &lt;&gt;

Enable or Disable Smartlink within the Ethernet Network.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PrivateNetwork &lt;&gt;

Enable or Disable Private Network within the Ethernet Network.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TypicalBandwidth &lt;&gt;

Preferred amount of bandwidth to assign within the Server Profile Connection, specified in Mbps.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MaximumBandwidth &lt;&gt;

The maximum bandwidth of a network connection, that will be allowed and reflected witin the Server Profile Connection, expressed in Mbps. In Flex10 adapters, the maximum supported Ethernet bandwidth is 10 Gbps. With 10Gb FlexFabric adapters, the maximum FCoE bandwidth is 8Gbps. With FlexFabric 20Gb adapters, the maximum Ethernet bandwidth is 20Gbps.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LinkStabilityTime &lt;&gt;

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

### -AutoLoginRedistribution &lt;&gt;

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

### -ManagedSan &lt;&gt;

Managed SAN Name or URI.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IPv4Subnet &lt;&gt;

Use to specify the one IPv4 subnet the network should be associated with from `Get-HPOVAddressPoolSubnet`.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -IPv6Subnet &lt;&gt;

Use to specify the one IPv6 subnet the network should be associated with from `Get-HPOVAddressPoolSubnet`.

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

_**HPOneView.Networking.EthernetNetwork [System.Management.Automation.PSCustomObject]**_

Ethernet Network resource object

_**HPOneView.Networking.FCNetwork [System.Management.Automation.PSCustomObject]**_

FC Network resource object

_**HPOneView.Networking.FCoENetwork [System.Management.Automation.PSCustomObject]**_

FCoE Network resource object

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

The Update Network Resource Task object

## Related Links

* [Get-HPOVNetwork](get-hpovnetwork.md)
* [Get-HPOVNetworkSet](get-hpovnetworkset.md)
* [New-HPOVNetwork](new-hpovnetwork.md)
* [New-HPOVNetworkSet](new-hpovnetworkset.md)
* [Remove-HPOVNetwork](remove-hpovnetwork.md)
* [Remove-HPOVNetworkSet](remove-hpovnetworkset.md)
* [Set-HPOVNetworkSet](set-hpovnetworkset.md)
