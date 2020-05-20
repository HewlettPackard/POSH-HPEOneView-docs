---
description: Modify an existing Storage Volume Template resource.
---

# Set-HPOVStorageVolumeTemplate

## Syntax

```text
Set-HPOVStorageVolumeTemplate
    [-InputObject] <>
    [-Name <>]
    [-Description <>]
    [-SnapshotStoragePool <>]
    [-LockSnapShotStoragePool <>]
    [-StorageSystem <>]
    [-Capacity <>]
    [-LockCapacity <>]
    [-Thin <>]
    [-Full <>]
    [-ProvisioningType <>]
    [-LockProvisionType <>]
    [-Shared <>]
    [-LockProvisionMode <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

```text
Set-HPOVStorageVolumeTemplate
    [-InputObject] <>
    [-Name <>]
    [-Description <>]
    [-StorageSystem <>]
    [-Capacity <>]
    [-LockCapacity <>]
    [-ProvisioningType <>]
    [-PerformancePolicy <>]
    [-LockPerformancePolicy <>]
    [-EnableEncryption <>]
    [-LockEnableEncryption <>]
    [-CachePinning <>]
    [-LockCachePinning <>]
    [-VolumeSet <>]
    [-LockVolumeSet <>]
    [-EnableIOPSLimit <>]
    [-IOPSLimit <>]
    [-LockIOPSLimit <>]
    [-EnableDataTransferLimit <>]
    [-DataTransferLimit <>]
    [-LockDataTransferLimit <>]
    [-Folder <>]
    [-LockFolder <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

```text
Set-HPOVStorageVolumeTemplate
    [-InputObject] <>
    [-Name <>]
    [-Description <>]
    [-StorageSystem <>]
    [-Capacity <>]
    [-LockCapacity <>]
    [-Thin <>]
    [-Full <>]
    [-ProvisioningType <>]
    [-LockProvisionType <>]
    [-Shared <>]
    [-LockProvisionMode <>]
    [-DataProtectionLevel <>]
    [-LockProtectionLevel <>]
    [-EnableAdaptiveOptimization <>]
    [-LockAdaptiveOptimization <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

## Description

This Cmdlet will help modify an existing Storage Volume Template resource.  Only the Volume Name, Description, Capcity, Snapshot Storage Pool, volume shared state and permenance can be modified.

## Examples

###  Example 1 

```text
Get-HPOVStorageVolumeTemplate -Name MyProdVolTemplate | Set-HPOVStorageVolumeTemplate -Size 160
```

Update "MyProdVolTemplate" volume size to 160GB.

## Parameters

### -InputObject &lt;&gt;

Source Storage Volume Template resource object.

| Aliases | SVT, Template |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;&gt;

Updated Storage Volume Template Name.

| Aliases | TemplateName |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Description &lt;&gt;

Updated description for the volume.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Capacity &lt;&gt;

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

### -StoragePool &lt;&gt;

The Storage Pool Name, URI or Object to be used for Volumes

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -StorageSystem &lt;&gt;

When the Storage Pool name is not unique, specify the Storage System name the pool is managed/associate with.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnapShotStoragePool &lt;&gt;

The Storage Pool Name, URI or Object to be used for Volume Snapshots.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Shared &lt;&gt;

Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Thin &lt;&gt;

{% hint style="info" %}
This parameter is being deprecated for the `-ProvisionType` parameter. Please update your scripts.
{% endhint %}


Include to change the provisioned type to Thin.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Full &lt;&gt;

{% hint style="info" %}
This parameter is being deprecated for the `-ProvisionType` parameter. Please update your scripts.
{% endhint %}


Include to change the provisioned type to Full.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DataProtectionLevel &lt;&gt;

Specify the StoreVirtual protection level (aka Network RAID) for the volume.  Allowed values are:

    * NetworkRaid0None
    * NetworkRaid5SingleParity
    * NetworkRaid10Mirror2Way
    * NetworkRaid10Mirror3Way
    * NetworkRaid10Mirror4Way
    * NetworkRaid6DualParity

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockProtectionLevel &lt;&gt;

Specify to lock the DataProtectionLevel value in the template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableAdaptiveOptimization &lt;&gt;

Whether or not Adaptive Optimization is enabled on the storage volume.  Only supported with StoreVirtual

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockAdaptiveOptimization &lt;&gt;

Specify to lock the EnableAdaptiveOptimization value in the template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ProvisioningType &lt;&gt;

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

### -LockProvisionType &lt;&gt;

Specify to lock the ProvisionType value in the template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockStoragePool &lt;&gt;

Specify to lock the StoragePool value in the template.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -LockSnapShotStoragePool &lt;&gt;

Specify to lock the SnapshotStoragePool value in the template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockCapacity &lt;&gt;

Specify to lock the Capacity value in the template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockProvisionMode &lt;&gt;

Specify to lock the Provision Mode (Shared or Private) value in the template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
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

### -CachePinning &lt;&gt;

This is applicable for hybrid (a mix of flash and mechanical storage) arrays, and provides a 100 percent cache hit rate for specific volumes (for example, volumes dedicated to critical applications), and delivers the response times of an `all-flash` storage system. A volume is pinned when the entire active volume is placed in cache; associated snapshot (inactive) blocks are not pinned. All incoming data after that point is pinned. The number of volumes that can be pinned is limited by the size of the volumes and amount of available cache.

When defined in the Performance Profile, select to enable Cache Pinnning for the Nimble volume to be created.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DataTransferLimit &lt;&gt;

Specify the data transfer limit in MiB/S.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableDataTransferLimit &lt;&gt;

Enable data transfer limit.  If enabled, the `-DataTransferLimit` parameter must be set.  By default, data transfer limit is not set.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableEncryption &lt;&gt;

When the storage system has encryption enabled, the volume can also be encrypted.  Specify if the volume should be encrypted during creation.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableIOPSLimit &lt;&gt;

Set to enable or disable IOPS limit.  If enabled, the `-IOPSLimit` parameter must be set.  By default, IOPS limit is not set.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Folder &lt;&gt;

Specify the Nimble folder where the volume should be created.  To get availabe folder objects, use the `Get-HPOVStoragePool` Cmdlet.  Folders are defined as a device specific attribute. 

Example:

     (Get-HPOVStoragePool `-name` default).DeviceSpecificAttributes.Folders

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

### -IOPSLimit &lt;&gt;

When enabling IOPS limit, provide a value that is greater than or equal to 256.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PerformancePolicy &lt;&gt;

A Nimble Performance Policy is associated with a storage system.  Using the `Show-HPOVStorageSystemPerformancePolicy`, choose an available performance policy.

Example:

    `Get-HPOVStorageSystem` `-Name` MyNimbleSys | `Show-HPOVStorageSystemPerformancePolicy`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VolumeSet &lt;&gt;

Use to specify a Volume Set the volume will be associated with, from `Get-HPOVStorageVolumeSet`.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockCachePinning &lt;&gt;

Lock the CachePinning value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockDataTransferLimit &lt;&gt;

Lock the DataTransferLimit value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockEnableEncryption &lt;&gt;

Lock the EnableEncryption value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockFolder &lt;&gt;

Lock the Folder value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockIOPSLimit &lt;&gt;

Lock the IOPSLimit value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockPerformancePolicy &lt;&gt;

Lock the PerformancePolicy value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockVolumeSet &lt;&gt;

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

_**HPOneView.Storage.VolumeTemplate [System.Management.Automation.PSCustomObject]**_

Storage Volume Template resource.

## Return Values

_**HPOneView.Storage.VolumeTemplate [System.Management.Automation.PSCustomObject]**_

Updated Storage Volume Template object.

## Related Links

* [Get-HPOVStorageVolumeTemplate](get-hpovstoragevolumetemplate.md)
* [Get-HPOVStorageVolumeTemplatePolicy](get-hpovstoragevolumetemplatepolicy.md)
* [New-HPOVStorageVolumeTemplate](new-hpovstoragevolumetemplate.md)
* [Remove-HPOVStorageVolumeTemplate](remove-hpovstoragevolumetemplate.md)
* [Set-HPOVStorageVolumeTemplatePolicy](set-hpovstoragevolumetemplatepolicy.md)
