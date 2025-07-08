---
description: Retrieve Storage Pool resource(s).
---

# Get-OVStoragePool

## Syntax

```powershell
Get-OVStoragePool
    [-Name <String>]
    [-StorageSystem <Object>]
    [-Label <Object>]
    [-Scope <Object>]
    [-ApplianceConnection <Array>]
    [-Managed]
    [-Unmanaged]
    [<CommonParameters>]
```

## Description

Obtain a collection of storage pools (i.e. CPG"s) from discovered and managed storage systems.

## Examples

###  Example 1 

```powershell
Get-OVStoragePool
Status Name     Storage System    Storage Domain Drive Type RAID  Total          Allocated   Free           
------ ----     --------------    -------------- ---------- ----  --------       ----------- -------        
OK     FC_NO_DN ThreePAR7200-5706 NoDomain       FC         RAID5 1,048,576.00GB 22.13GB     1,048,553.88GB 
OK     FC_NO_DN ThreePAR7200-2870 NoDomain       FC         RAID5 1,048,576.00GB 22.13GB     1,048,553.88GB 
```

Get all available storage pools.

###  Example 2 

```powershell
Get-OVStoragePool | format-list
Name             : FC_NO_DN
Status           : OK
Storage System   : ThreePAR7200-5706
Domain           : NoDomain
Drive Type       : FC
RAID             : RAID5
Total            : 1,048,576.00 GB
Allocated        : 22.13 GB
Free             : 1,048,553.88 GB
Volumes          : 0
Volume Templates : 0

Name             : FC_NO_DN
Status           : OK
Storage System   : ThreePAR7200-2870 
Domain           : NoDomain
Drive Type       : FC
RAID             : RAID5
Total            : 1,048,576.00 GB
Allocated        : 22.13 GB
Free             : 1,048,553.88 GB
Volumes          : 0
Volume Templates : 0
```

Get all available storage pools, display using Format-List to see extended information.

###  Example 3 

```powershell
$myPool = Get-OVStoragePool -name "HP_CPG1"
```

Return the storage pool resource(s) with the name "HP_CPG1"

###  Example 4 

```powershell
$myPools = Get-OVStoragePool
```

Return all the storage pool resources

###  Example 5 

```powershell
Get-OVStoragePool -StorageSystem "HP_3PAR_1"
```

Returns all managed storage pool resources on the storage system "HP_3PAR_1"

###  Example 6 

```powershell
Get-OVStoragePool -poolName "HP_CPG1" -systemName "HP_3PAR_1"
```

Returns the storage pool resource "HP_CPG1" on the storage system "HP_3PAR_1"

## Parameters

### -Name &lt;String&gt;

The name of the specific storage pool resource to be returned.  All storage pool resources will be returned if omitted.

| Aliases | pool, PoolName |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StorageSystem &lt;Object&gt;

The name or Storage System object of the specific storage system to return storage pool resource from.  Can be combined with the PoolName parameter to single out a specific storage pool in a specific storage system.

| Aliases | systemName, system |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Managed &lt;SwitchParameter&gt;

Only returned storage pools that are managed.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Unmanaged &lt;SwitchParameter&gt;

Only returned storage pools that are unmanaged.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;Object&gt;

Specify the Label to filter on.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Storage.System"
    Managed Storage System from Get-OVStorageSystem.
    

## Return Values

=== "HPEOneView.Storage.Pool [System.Management.Automation.PSCustomObject]"
    Single Storage Pool resource
    

=== "System.Collections.ArrayList"
    Multiple Storage Pool resources
    

=== "The matching storage pool resources."
    
    

## Related Links

* [Add-OVStoragePool](add-ovstoragepool.md)
* [Remove-OVStoragePool](remove-ovstoragepool.md)
* [Set-OVStoragePool](set-ovstoragepool.md)
* [Update-OVStoragePool](update-ovstoragepool.md)
