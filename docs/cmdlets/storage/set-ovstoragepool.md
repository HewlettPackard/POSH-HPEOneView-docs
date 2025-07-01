---
description: Modify storage pool managed state.
---

# Set-OVStoragePool

## Syntax

```powershell
Set-OVStoragePool
    [-InputObject] <HPEOneView.Storage.StoragePool[]>
    [-Managed] <Bool>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

A reserved VLAN pool is a range of VLANs used for allocation of non-tagged networks:

* Tunnel
* Untagged
* Fibre Channel (FC)

Tagged networks and FCoE networks use VLANs outside of the reserved pool. You cannot use a reserved VLAN for tagged or FCoE networks.

The VLAN pool allows the number of available VLANs to be segregated between tagged and non-tagged networks. Because non-tagged networks use VLANs for internal translation resources, a reserved VLAN pool can provide a sufficient number of VLANs available for allocation of those internal VLANs. In addition, the reserved pool range removes the need for translation resources to be used on tagged networks.

For the maximum number of VLANs per physical downlink port, see the HPE OneView Support Matrix for HPE Synergy.

Creating and managing a reserved VLAN pool

A reserved VLAN pool is unique within a fabric, but independently allocated within each logical interconnect. The reserved range is identical across all logical interconnects within a fabric. The remaining VLANs (outside of the pool) are shared among all the logical interconnects within the fabric.

For HPE OneView running embedded on a HPE Synergy 12000 Frame, the default range starts at 3967 and the size is 128. The minimum size of the pool must be 60 VLANs to ensure the pool is not exhausted.

The size of the pool cannot exceed 128 VLANs.

???+ info
    Minimum required privileges:  Infrastructure administrator, Network administrator

## Examples

###  Example 1 

```powershell
$StoragePool = Get-OVStoragePool -Name "r5_cpg1" -ErrorAction Stop Set-OVStoragePool -InputObject $StoragePool -Managed $true
```

Manage the specified storage pool to provision volumes.

###  Example 1 

```powershell
Get-OVStoragePool -Name r5_* -ErrorAction Stop | Set-OVStoragePool -Managed $false
```

Change the managed state to "unmanaged" of the specified storage pools.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -InputObject &lt;HPEOneView.Storage.StoragePool[]&gt;

One or more `[HPEOneView.Storage.StoragePool]` resources from Get-OVStoragePool.

| Aliases | Pool |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Managed &lt;Bool&gt;

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

=== "HPEOneView.Storage.StoragePool"
    Storage pool resource(s) from Get-OVStoragePool.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for configuring port monitoring on the requested logical intercinnect.
    

## Related Links

* [Add-OVStoragePool](add-ovstoragepool.md)
* [Get-OVStoragePool](get-ovstoragepool.md)
* [Remove-OVStoragePool](remove-ovstoragepool.md)
* [Update-OVStoragePool](update-ovstoragepool.md)
