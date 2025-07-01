---
description: Add managed Storage Pools.
---

# Add-OVStoragePool

## Syntax

```powershell
Add-OVStoragePool
    [-StorageSystem] <Object>
    [-Pool] <String[]>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

???+ info
    This Cmdlet has been replaced by Set-OVStoragePool.  This Cmdlet only exists for backwards compatibility.


A storage pool is an aggregation of physical storage resources (disks) in a storage system. Storage systems contain information about the storage ports through which they can be accessed. You can provision logical storage spaces, known as volumes, from storage pools.

You can select one or more storage pools for management when adding a storage system to the appliance. Storage pools are created on a storage system using the management software for that system.

???+ info
    For HPE Nimble storage, you can define folders within pools in the Nimble administrative user interface.

You cannot create or delete storage pools from the appliance. Storage pools are automatically discovered during the storage system add or refresh. After you elect to manage storage pools, you can provision volumes on them.

All storage pools that are usable in HPE OneView are visible on the Storage Pools screen. Pools refreshed into HPE OneView are initially designated as discovered, and must be explicitly set to managed by editing the pool in HPE OneView using the Edit action on the storage pool screen.

A storage system must first be added to the appliance before a storage pool can be managed.

Storage pools are scoped resources. You can associate a scope to a pool to restrict who can use the pool.

???+ info
    Minimum required privileges: Infrastructure administrator or Storage administrator.

## Examples

###  Example 1 

```powershell
Add-OVStoragePool -StorageSystem HP3PAR_1 -Pool HP_CPG1
```

Add the "HP_CPG1" Storage Pool that is managed in the HP3PAR_1 Storage System.  PoolName parameter data type will be converted from `[System.String]` to `[System.Collections.ArrayList]` .

###  Example 2 

```powershell
$myPools = "cpg1","cpg2"
Add-OVStoragePool -StorageSystem (Get-OVStorageSystem -Name HP3PAR_1) -Pool $myPools
```

Add the "HP_CPG1" Storage Pool that is managed in the HP3PAR_1 Storage System.

## Parameters

### -StorageSystem &lt;Object&gt;

The Storage System object from Get-OVStorageSystem

| Aliases | Hostname, name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Pool &lt;String[]&gt;

One or more storage pool name resource(s) to be added during storage system import.

Example: $pools = "cpg1","cpg2"

| Aliases | PoolName, spName, cpg |
| :--- | :--- |
| Required? | True |
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
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Storage.System [System.Management.Automation.PSCustomObject]"
    Storage System resource object from Get-OVStorageSystem.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource.
    

## Related Links

* [Get-OVStoragePool](get-ovstoragepool.md)
* [Remove-OVStoragePool](remove-ovstoragepool.md)
* [Set-OVStoragePool](set-ovstoragepool.md)
* [Update-OVStoragePool](update-ovstoragepool.md)
