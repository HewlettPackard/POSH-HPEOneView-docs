---
description: Modify an existing network set.
---

# Set-HPOVNetworkSet

## Syntax

```text
Set-HPOVNetworkSet
    [<CommonParameters>]
```

## Description

Modify a network set and/or its connection information.

## Examples

###  Example 1 

```text
$netset = Get-HPOVNetworkSet "Set-1"
$netset.maximumBandwidth = 5000
$netset.typicalBandwidth = 3000
Set-HPOVNetworkSet $netset


```

Modify "Set-1" to be maximum bandwidth of 5000.

###  Example 2 

```text
Get-HPOVNetworkSet NetSet-1 | Set-HPOVNetworkSet -name NewNetSet-1 -networks @(bluenet,rednet,greennet) -untagged bluenet

```

Update "NetSet-1" with a new name, adjust the networks, and set "bluenet" as the Untagged Network.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-NetworkSet, `-netSet`]
The Network Set resource object or name to be modified.

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
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Networks &lt;Object&gt;

An array containing the updated list of networks.  May contain Network Names or URI"s.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UntaggedNetwork &lt;Object&gt;

Aliases [-untagged, `-native`, `-untaggedNetworkUri`]
The Name or URI of the Untaggged, or Native Network for the Network Set.

| Aliases | untagged, native, untaggedNetworkUri |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TypicalBandwidth &lt;Int32&gt;

The updated Typical or Preferred bandwidth, in Mbps.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `0` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MaximumBandwidth &lt;Int32&gt;

The updated MAximum bandwidth, in Mbps.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `0` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Networking.NetworkSet [System.Management.Automation.PSCustomObject]**_

Single Network Set resource


## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Update Network Set resource task

## Related Links

* [Get-HPOVNetworkSet](get-hpovnetworkset.md)
* [New-HPOVNetworkSet](new-hpovnetworkset.md)
* [Remove-HPOVNetworkSet](remove-hpovnetworkset.md)
