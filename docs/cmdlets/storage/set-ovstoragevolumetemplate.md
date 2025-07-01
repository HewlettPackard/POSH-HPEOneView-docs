---
description: Modify an existing Storage Volume Template resource.
---

# Set-OVStorageVolumeTemplate

## Syntax

```powershell
Set-OVStorageVolumeTemplate
    [-InputObject] <Object>
    [-Name <String>]
    [-Description <String>]
    [-SnapshotStoragePool <Object>]
    [-LockSnapShotStoragePool]
    [-StorageSystem <Object>]
    [-Capacity <Int64>]
    [-LockCapacity]
    [-Thin]
    [-Full]
    [-ProvisioningType <String>]
    [-LockProvisionType]
    [-Shared <Boolean>]
    [-LockProvisionMode]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Set-OVStorageVolumeTemplate
    [-InputObject] <Object>
    [-Name <String>]
    [-Description <String>]
    [-StorageSystem <Object>]
    [-Capacity <Int64>]
    [-LockCapacity]
    [-ProvisioningType <String>]
    [-PerformancePolicy <HPEOneView.Storage.PerformancePolicy>]
    [-LockPerformancePolicy]
    [-EnableEncryption <Bool>]
    [-LockEnableEncryption]
    [-CachePinning <Bool>]
    [-LockCachePinning]
    [-VolumeSet <HPEOneView.Storage.VolumeSet>]
    [-LockVolumeSet]
    [-EnableIOPSLimit <Bool>]
    [-IOPSLimit <Int>]
    [-LockIOPSLimit]
    [-EnableDataTransferLimit <Bool>]
    [-DataTransferLimit <Int>]
    [-LockDataTransferLimit]
    [-Folder <HPEOneView.Storage.NimbleFolder>]
    [-LockFolder]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Set-OVStorageVolumeTemplate
    [-InputObject] <Object>
    [-Name <String>]
    [-Description <String>]
    [-StorageSystem <Object>]
    [-Capacity <Int64>]
    [-LockCapacity]
    [-Thin]
    [-Full]
    [-ProvisioningType <String>]
    [-LockProvisionType]
    [-Shared <Boolean>]
    [-LockProvisionMode]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will help modify an existing Storage Volume Template resource.  Only the Volume Name, Description, Capcity, Snapshot Storage Pool, volume shared state and permenance can be modified.

## Examples

###  Example 1 

```powershell
Get-OVStorageVolumeTemplate -Name MyProdVolTemplate | Set-OVStorageVolumeTemplate -Size 160
```

Update "MyProdVolTemplate" volume size to 160GB.

## Parameters

### -InputObject &lt;Object&gt;

Source Storage Volume Template resource object.

| Aliases | SVT, Template |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Updated Storage Volume Template Name.

| Aliases | TemplateName |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Description &lt;String&gt;

Updated description for the volume.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Capacity &lt;Int64&gt;

New Max volume capacity in GB.  Volume capacity can be increased to maximum of 16 TiB. Decreasing the capacity of volume is not supported. 

Before increasing the capacity of fully provisioned volumes, ensure that the storage pool has enough capacity to support the operation. The update operation might fail if there is not enough space available in the storage pool.

`[e.g]`. 20 to specify 20GB.

| Aliases | size |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StoragePool &lt;Object&gt;

The Storage Pool Name, URI or Object to be used for Volumes

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
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

### -SnapShotStoragePool &lt;Object&gt;

The Storage Pool Name, URI or Object to be used for Volume Snapshots.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Shared &lt;Boolean&gt;

Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Thin &lt;SwitchParameter&gt;

???+ info
    This parameter is being deprecated for the `-ProvisionType` parameter. Please update your scripts.


Include to change the provisioned type to Thin.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Full &lt;SwitchParameter&gt;

???+ info
    This parameter is being deprecated for the `-ProvisionType` parameter. Please update your scripts.


Include to change the provisioned type to Full.

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

### -LockProvisionType &lt;SwitchParameter&gt;

Specify to lock the ProvisionType value in the template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockStoragePool &lt;SwitchParameter&gt;

Specify to lock the StoragePool value in the template.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -LockSnapShotStoragePool &lt;SwitchParameter&gt;

Specify to lock the SnapshotStoragePool value in the template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockCapacity &lt;SwitchParameter&gt;

Specify to lock the Capacity value in the template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockProvisionMode &lt;SwitchParameter&gt;

Specify to lock the Provision Mode (Shared or Private) value in the template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
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

### -LockCachePinning &lt;SwitchParameter&gt;

Lock the CachePinning value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockDataTransferLimit &lt;SwitchParameter&gt;

Lock the DataTransferLimit value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockEnableEncryption &lt;SwitchParameter&gt;

Lock the EnableEncryption value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockFolder &lt;SwitchParameter&gt;

Lock the Folder value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockIOPSLimit &lt;SwitchParameter&gt;

Lock the IOPSLimit value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockPerformancePolicy &lt;SwitchParameter&gt;

Lock the PerformancePolicy value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockVolumeSet &lt;SwitchParameter&gt;

Lock the VolumeSet value.

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

=== "HPEOneView.Storage.VolumeTemplate [System.Management.Automation.PSCustomObject]"
    Storage Volume Template resource.
    

## Return Values

=== "HPEOneView.Storage.VolumeTemplate [System.Management.Automation.PSCustomObject]"
    Updated Storage Volume Template object.
    

## Related Links

* [Get-OVStorageVolumeTemplate](get-ovstoragevolumetemplate.md)
* [Get-OVStorageVolumeTemplatePolicy](get-ovstoragevolumetemplatepolicy.md)
* [New-OVStorageVolumeTemplate](new-ovstoragevolumetemplate.md)
* [Remove-OVStorageVolumeTemplate](remove-ovstoragevolumetemplate.md)
* [Set-OVStorageVolumeTemplatePolicy](set-ovstoragevolumetemplatepolicy.md)
