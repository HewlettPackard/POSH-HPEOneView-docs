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

A storage pool is an aggregation of physical storage resources (disks) in a storage system. Storage systems contain information about the storage ports through which they can be accessed. You can provision logical storage spaces, known as volumes, from storage pools.
 You cannot create or delete storage pools from the appliance, you can only add or remove them from management. Using this Cmdlet will change the managed state of a storage pool.  Its management state cannot be changed when volumes are currently provisioned from it and managed by HPE OneView, or a storage volume template specify the storage pool.
 If you remove a storage system from the appliance, all storage pools in it are removed automatically.
 Minimum required privileges: Infrastructure administrator or Storage administrator.  

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
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
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
