---
description: Create a Storage Volume resource.
---

# New-OVStorageVolume

## Syntax

```powershell
New-OVStorageVolume
    [-Name] <String>
    [-StoragePool] <Object>
    [-Description <String>]
    [-SnapshotStoragePool <Object>]
    [-StorageSystem <Object>]
    [-Capacity <Int64>]
    [-ProvisioningType <String>]
    [-EnableCompression <Boolean>]
    [-EnableDeduplication <Boolean>]
    [-Full]
    [-Shared]
    [-PerformancePolicy <HPEOneView.Storage.PerformancePolicy>]
    [-EnableEncryption <Bool>]
    [-CachePinning <Bool>]
    [-VolumeSet <HPEOneView.Storage.VolumeSet>]
    [-EnableIOPSLimit <Bool>]
    [-IOPSLimit <Int>]
    [-EnableDataTransferLimit <Bool>]
    [-DataTransferLimit <Int>]
    [-Folder <HPEOneView.Storage.NimbleFolder>]
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVStorageVolume
    [-Name] <String>
    [-VolumeTemplate] <Object>
    [-Description <String>]
    [-SnapshotStoragePool <Object>]
    [-Capacity <Int64>]
    [-ProvisioningType <String>]
    [-EnableCompression <Boolean>]
    [-EnableDeduplication <Boolean>]
    [-Full]
    [-Shared]
    [-PerformancePolicy <HPEOneView.Storage.PerformancePolicy>]
    [-EnableEncryption <Bool>]
    [-CachePinning <Bool>]
    [-VolumeSet <HPEOneView.Storage.VolumeSet>]
    [-EnableIOPSLimit <Bool>]
    [-IOPSLimit <Int>]
    [-EnableDataTransferLimit <Bool>]
    [-DataTransferLimit <Int>]
    [-Folder <HPEOneView.Storage.NimbleFolder>]
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will help create a Storage Volume resource on a managed Storage System.  The volume can be created by specifying the Storage Pool or an existing Storage Volume Template.  When the Storage Pool name is not unique, you can either use the -StorageSystem parameter, or pass via the pipeline the Storage Pool from Get-OVStoragePool.

If the Storage Volume Template Global Policy is enabled, a valid Storage Volume Template must be provided.

## Examples

###  Example 1 

```powershell
New-OVStorageVolume -name TestVol1 -PoolName PoolR1 -Size 60
```

Create a 60GB private, thin provisioned volume named "TestVol1" from the "PoolR1" Storage Pool.

###  Example 2 

```powershell
Get-OVStoragePool PoolR1 | New-OVStorageVolume -name TestVol1 PoolR1 -Size 60
```

Get the "PoolR1" Storage Pool resource and pipe it to create a 60GB private, thin provisioned volume named "TestVol1".

###  Example 3 

```powershell
Get-OVStoragePool PoolR1 -StorageSystem 3ParSys1 | New-OVStorageVolume -name TestVol1 -Size 60
```

Get the "PoolR1" Storage Pool resource and pipe it to create a 60GB private, thin provisioned volume named "TestVol1".

###  Example 4 

```powershell
New-OVStorageVolume -name TestVol1 -StoragePool PoolR1 -StorageSystem 3ParSys1 -Size 60
```

Create a 60GB private, thin provisioned volume named "TestVol1" from the "PoolR1" Storage Pool resource that is managed by "3ParSys1".

###  Example 5 

```powershell
$svt = Get-OVStorageVolumeTemplate SVT_120GB_R5
$New-OVStorageVolume testvol3 -volumetemplate $svt -capacity 90 | Wait-OVTaskComplete
```

Create a 90GB volume named "TestVol1", using the "SVT_120GB_R5" Storage Volume Template, then wait for volume to be provisioned.

## Parameters

### -Name &lt;String&gt;

Storage Volume Name. Device Volume created on the storage system will be this name without spaces.

| Aliases | VolumeName |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Description &lt;String&gt;

Provide a description for the volume.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StoragePool &lt;Object&gt;

Storage Pool URI, name or resource object.

| Aliases | pool, poolName |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -SnapshotStoragePool &lt;Object&gt;

Storage Pool URI, name or resource object.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StorageSystem &lt;Object&gt;

When the Storage Pool name is not unique, specify the Storage System name the pool is managed/associate with.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VolumeTemplate &lt;Object&gt;

Specify the Storage Volume Template Name, URI or Resource.

| Aliases | template, svt |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Capacity &lt;Int64&gt;

Max volume capacity in GB.  `[e.g]`. 20 to specify 20GB.

| Aliases | size |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Full &lt;SwitchParameter&gt;

???+ info
    This parameter is being deprecated for the `-ProvisionType` parameter. Please update your scripts.


Include this switch to enable Thick volume provisioning.  Omit to specify Thin storage provisioning.
Default: Thin

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ProvisioningType &lt;String&gt;

Specify the type of volume to provision.  Allowed values are:

* Thin
* Full
* TPDD (Thin Provision Dedup) - Only available for HPE StoreServ storage systems with SSD storage pools (aka CPG"s).

| Aliases | ProvisionType |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Shared &lt;SwitchParameter&gt;

Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | false |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
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

### -EnableCompression &lt;Boolean&gt;

Enable compression for StoreServe (3PAR) supported resources. Please verify the InformOS version installed supports Compression.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableDeduplication &lt;Boolean&gt;

Enable deduplication for SSD-based Storage Pools (CPG).

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -CachePinning &lt;Bool&gt;

This is applicable for hybrid (a mix of flash and mechanical storage) arrays, and provides a 100 percent cache hit rate for specific volumes (for example, volumes dedicated to critical applications), and delivers the response times of an all-flash storage system. A volume is pinned when the entire active volume is placed in cache; associated snapshot (inactive) blocks are not pinned. All incoming data after that point is pinned. The number of volumes that can be pinned is limited by the size of the volumes and amount of available cache.

When defined in the Performance Profile, select to enable Cache Pinnning for the Nimble volume to be created.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DataTransferLimit &lt;Int&gt;

Specify the data transfer limit in MiB/S.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableDataTransferLimit &lt;Bool&gt;

Enable data transfer limit.  If enabled, the `-DataTransferLimit` parameter must be set.  By default, data transfer limit is not set.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableEncryption &lt;Bool&gt;

When the storage system has encryption enabled, the volume can also be encrypted.  Specify if the volume should be encrypted during creation.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableIOPSLimit &lt;Bool&gt;

Set to enable or disable IOPS limit.  If enabled, the `-IOPSLimit` parameter must be set.  By default, IOPS limit is not set.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Folder &lt;HPEOneView.Storage.NimbleFolder&gt;

Specify the Nimble folder where the volume should be created.  To get availabe folder objects, use the Get-OVStoragePool Cmdlet.  Folders are defined as a device specific attribute. 

Example:

     (`Get-OVStoragePool` `-name` default).DeviceSpecificAttributes.Folders

ID                                         Name
--                                         ----
2f1ca8a5d76e271722000000000000000000000001 POSH

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IOPSLimit &lt;Int&gt;

When enabling IOPS limit, provide a value that is greater than or equal to 256.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PerformancePolicy &lt;HPEOneView.Storage.PerformancePolicy&gt;

A Nimble Performance Policy is associated with a storage system.  Using the Show-OVStorageSystemPerformancePolicy, choose an available performance policy.

Example:

    Get-OVStorageSystem `-Name` MyNimbleSys | Show-OVStorageSystemPerformancePolicy

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VolumeSet &lt;HPEOneView.Storage.VolumeSet&gt;

Use to specify a Volume Set the volume will be associated with, from Get-OVStorageVolumeSet.

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

=== "HPEOneView.Storage.Pool [System.Management.Automation.PSCustomObject]"
    Storage Pool resource object
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async create task
    

## Related Links

* [Add-OVStorageVolume](add-ovstoragevolume.md)
* [ConvertTo-OVStorageVolume](convertto-ovstoragevolume.md)
* [Get-OVStorageVolume](get-ovstoragevolume.md)
* [Get-OVStorageVolumeSet](get-ovstoragevolumeset.md)
* [Get-OVStorageVolumeSnapShot](get-ovstoragevolumesnapshot.md)
* [Get-OVStorageVolumeTemplate](get-ovstoragevolumetemplate.md)
* [Get-OVStorageVolumeTemplatePolicy](get-ovstoragevolumetemplatepolicy.md)
* [New-OVStorageVolumeSnapshot](new-ovstoragevolumesnapshot.md)
* [New-OVStorageVolumeTemplate](new-ovstoragevolumetemplate.md)
* [Remove-OVStorageVolume](remove-ovstoragevolume.md)
* [Remove-OVStorageVolumeSnapshot](remove-ovstoragevolumesnapshot.md)
* [Remove-OVStorageVolumeTemplate](remove-ovstoragevolumetemplate.md)
* [Set-OVStorageVolume](set-ovstoragevolume.md)
* [Set-OVStorageVolumeTemplate](set-ovstoragevolumetemplate.md)
* [Set-OVStorageVolumeTemplatePolicy](set-ovstoragevolumetemplatepolicy.md)
