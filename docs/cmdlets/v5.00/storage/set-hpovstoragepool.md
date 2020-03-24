---
description: Modify storage pool managed state.
---

# Set-HPOVStoragePool

## Syntax

```text
Set-HPOVStoragePool
    [-InputObject] <HPOneView.Storage.StoragePool[]>
    [-Managed] <bool>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

A reserved VLAN pool is a range of VLANs used for allocation of non-tagged networks:

    * Tunnel
    * Untagged

Tagged networks and FCoE networks use VLANs outside of the reserved pool. You cannot use a reserved VLAN for tagged or FCoE networks.

The VLAN pool allows the number of available VLANs to be segregated between tagged and non-tagged networks. Because non-tagged networks use VLANs for internal translation resources, a reserved VLAN pool can provide a sufficient number of VLANs available for allocation of those internal VLANs. In addition, the reserved pool range removes the need for translation resources to be used on tagged networks.

For the maximum number of VLANs per physical downlink port, see the HPE OneView Support Matrix for HPE Synergy.

Creating and managing a reserved VLAN pool

A reserved VLAN pool is unique within a fabric, but independently allocated within each logical interconnect. The reserved range is identical across all logical interconnects within a fabric. The remaining VLANs (outside of the pool) are shared among all the logical interconnects within the fabric.

For HPE OneView running embedded on a HPE Synergy 12000 Frame, the default range starts at 3967 and the size is 128. The minimum size of the pool must be 60 VLANs to ensure the pool is not exhausted.

The size of the pool cannot exceed 128 VLANs.

{% hint style="info" %}
Minimum required privileges:  Infrastructure administrator,
{% endhint %}
 Network administrator
## Examples

###  Example 1 

```text
$StoragePool = Get-HPOVStoragePool -Name "r5_cpg1" -ErrorAction Stop Set-HPOVStoragePool -InputObject $StoragePool -Managed $true
```

Manage the specified storage pool to provision volumes.

###  Example 1 

```text
Get-HPOVStoragePool -Name r5_* -ErrorAction Stop | Set-HPOVStoragePool -Managed $false
```

Change the managed state to "unmanaged" of the specified storage pools.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -InputObject &lt;HPOneView.Storage.StoragePool[]&gt;

One or more `[HPOneView.Storage.StoragePool]` resources from `Get-HPOVStoragePool`.

| Aliases | Pool |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Managed &lt;bool&gt;

Specify a boolean value to modify the storage pools managed state.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Storage.StoragePool**_

Storage pool resource(s) from [`Get-HPOVStoragePool`](get-hpovstoragepool.md).

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object for configuring port monitoring on the requested logical intercinnect.

## Related Links

* [Add-HPOVStoragePool](add-hpovstoragepool.md)
* [Get-HPOVStoragePool](get-hpovstoragepool.md)
* [Remove-HPOVStoragePool](remove-hpovstoragepool.md)
* [Update-HPOVStoragePool](update-hpovstoragepool.md)
