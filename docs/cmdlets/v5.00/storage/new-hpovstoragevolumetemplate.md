---
description: Create storage volume template.
---

# New-HPOVStorageVolumeTemplate

## Syntax

```text
New-HPOVStorageVolumeTemplate
    [-Name] <String>
    [-StoragePool <Object>]
    [-Capacity] <Int64>
    [-Description <String>]
    [-LockStoragePool]
    [-SnapshotStoragePool <Object>]
    [-LockSnapShotStoragePool]
    [-StorageSystem <Object>]
    [-LockCapacity]
    [-Full]
    [-ProvisioningType <String>]
    [-LockProvisionType]
    [-EnableDeduplication <Boolean>]
    [-LockEnableDeduplication]
    [-EnableCompression <Boolean>]
    [-LockEnableCompression]
    [-Shared]
    [-LockProvisionMode]
    [-Scope <HPOneView.Appliance.ScopeCollection[]>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
New-HPOVStorageVolumeTemplate
    [-Name] <String>
    [-StoragePool <Object>]
    [-Capacity] <Int64>
    [-PerformancePolicy <HPOneView.Storage.PerformancePolicy>]
    [-Description <String>]
    [-LockStoragePool]
    [-LockCapacity]
    [-ProvisioningType <String>]
    [-LockProvisionType]
    [-Shared]
    [-LockProvisionMode]
    [-LockPerformancePolicy]
    [-EnableEncryption <bool>]
    [-LockEnableEncryption]
    [-CachePinning <bool>]
    [-LockCachePinning]
    [-VolumeSet <HPOneView.Storage.VolumeSet>]
    [-LockVolumeSet]
    [-EnableIOPSLimit <bool>]
    [-IOPSLimit <int>]
    [-LockIOPSLimit]
    [-EnableDataTransferLimit <bool>]
    [-DataTransferLimit <int>]
    [-LockDataTransferLimit]
    [-Folder <HPOneView.Storage.NimbleFolder>]
    [-LockFolder]
    [-Scope <HPOneView.Appliance.ScopeCollection[]>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
New-HPOVStorageVolumeTemplate
    [-Name] <String>
    [-StoragePool <Object>]
    [-Capacity] <Int64>
    [-Description <String>]
    [-LockStoragePool]
    [-StorageSystem <Object>]
    [-LockCapacity]
    [-Full]
    [-ProvisioningType <String>]
    [-LockProvisionType]
    [-Shared]
    [-LockProvisionMode]
    [-DataProtectionLevel <String>]
    [-LockProtectionLevel]
    [-EnableAdaptiveOptimization]
    [-LockAdaptiveOptimization]
    [-Scope <HPOneView.Appliance.ScopeCollection[]>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet supports creating Storage Volume Templates, which are then used to provision Storage Volumes.

## Examples

### Example 1

```text
New-HPOVStorageVolumeTemplate -templateName yellow-svt -storagePool yellow -capacity 40
```

Create a new Storage Volume Template, setting the max size to 40GB, Thin Provisioning and Private.

### Example 2

```text
$storageVolTemplate = New-HPOVStorageVolumeTemplate -templateName vmware-shared-svt -storagePool R5-CPG12 -capacity 250 -shared
```

Create a new Storage Volume Template, setting the max size to 250GB, Thin Provisioning and Shareable.

### Example 3

```text
$storagePool = Get-HPOVStoragePool R5-CPG12
$storageVolTemplate = New-HPOVStorageVolumeTemplate -templateName vmware-shared-svt -storagePool $storagePool -capacity 250 -shared
```

Use the `Get-HPOVStoragePool` Cmdlet to get the "R5-CPG12" pool, and create a new Storage Volume Template, setting the max size to 250GB, Thin Provisioning and Shareable.

### Example 4

```text
$svt = Get-HPOVStoragePool R5-CPG12 | New-HPOVStorageVolumeTemplate -templateName vmware-shared-svt -SnapshotStoragePool "MySnapShotPool" -capacity 250 -shared
```

Use the `Get-HPOVStoragePool` Cmdlet to get the "R5-CPG12" pool, and create a new Storage Volume Template, setting the max size to 250GB, Thin Provisioning, Shareable, and providing the Snapshot Storage Pool.

## Parameters

### -Name &lt;String&gt;

Storage Volume Template name

| Aliases | TemplateName |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Description &lt;String&gt;

Provide the description for the Storage Volume Template

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StoragePool &lt;Object&gt;

Specify the Storage Pool \(aka CPG\) the Storage Volume Template will be associated with. Storage Pool must already be managed by OneView.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnapshotStoragePool &lt;Object&gt;

Specify the Storage Pool \(aka CPG\) the Storage Volume Template will use for volume snapshot use. The provided Storage Pool must already be managed by OneView. If you omit this value, then the StoragePool parameter value will be used. Only supported with HPE StoreServe platforms.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StorageSystem &lt;Object&gt;

If there are multiple Storage Pool resources with the same name, use this parameter to filter for the correct pool object.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Capacity &lt;Int64&gt;

Max volume capacity in GB. `[e.g]`. 20 to specify 20GB.

| Aliases | size |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Full &lt;SwitchParameter&gt;

{% hint style="info" %}
This parameter is being deprecated for the `-ProvisionType` parameter. Please update your scripts.
{% endhint %}

Include this switch to enable Thick volume provisioning. Omit to specify Thin storage provisioning. Default: Thin

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Shared &lt;SwitchParameter&gt;

Include this switch to mark the Storage Volume Template as a Shareable resource for shared volume access.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DataProtectionLevel &lt;String&gt;

Specify the StoreVirtual protection level \(aka Network RAID\) for the volume. Allowed values are:

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

### -LockProtectionLevel &lt;SwitchParameter&gt;

Specify to lock the DataProtectionLevel value in the template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableAdaptiveOptimization &lt;SwitchParameter&gt;

Whether or not Adaptive Optimization is enabled on the storage volume. Only supported with StoreVirtual.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockAdaptiveOptimization &lt;SwitchParameter&gt;

Specify to lock the EnableAdaptiveOptimization value in the template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ProvisioningType &lt;String&gt;

Specify the type of volume to provision. Allowed values are:

* Thin
* Full
* TPDD \(Thin Provision Dedup\) - Only available for HPE StoreServ storage systems with SSD storage pools \(aka CPG"s\).

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

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
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

Specify to lock the Provision Mode \(Shared or Private\) value in the template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### -Scope &lt;HPOneView.Appliance.ScopeCollection\[\]&gt;

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with. Resource can also be added to scope using the `Add-HPOVResourceToScope` Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableCompression &lt;Boolean&gt;

Enable compression for StoreServe \(3PAR\) supported resources. Please verify the InformOS version installed supports Compression.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableDeduplication &lt;Boolean&gt;

Enable deduplication for `SSD-based` Storage Pools \(CPG\).

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockEnableDeduplication &lt;SwitchParameter&gt;

Lock the EnableDeduplication value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LockEnableCompression &lt;SwitchParameter&gt;

Lock the EnableCompression value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -CachePinning &lt;bool&gt;

This is applicable for hybrid \(a mix of flash and mechanical storage\) arrays, and provides a 100 percent cache hit rate for specific volumes \(for example, volumes dedicated to critical applications\), and delivers the response times of an `all-flash` storage system. A volume is pinned when the entire active volume is placed in cache; associated snapshot \(inactive\) blocks are not pinned. All incoming data after that point is pinned. The number of volumes that can be pinned is limited by the size of the volumes and amount of available cache.

When defined in the Performance Profile, select to enable Cache Pinnning for the Nimble volume to be created.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DataTransferLimit &lt;int&gt;

Specify the data transfer limit in MiB/S.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableDataTransferLimit &lt;bool&gt;

Enable data transfer limit. If enabled, the `-DataTransferLimit` parameter must be set. By default, data transfer limit is not set.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableEncryption &lt;bool&gt;

When the storage system has encryption enabled, the volume can also be encrypted. Specify if the volume should be encrypted during creation.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableIOPSLimit &lt;bool&gt;

Set to enable or disable IOPS limit. If enabled, the `-IOPSLimit` parameter must be set. By default, IOPS limit is not set.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Folder &lt;HPOneView.Storage.NimbleFolder&gt;

Specify the Nimble folder where the volume should be created. To get availabe folder objects, use the `Get-HPOVStoragePool` Cmdlet. Folders are defined as a device specific attribute.

Example:

```text
 (Get-HPOVStoragePool `-name` default).DeviceSpecificAttributes.Folders
```

ID Name

2f1ca8a5d76e271722000000000000000000000001 POSH

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IOPSLimit &lt;int&gt;

When enabling IOPS limit, provide a value that is greater than or equal to 256.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PerformancePolicy &lt;HPOneView.Storage.PerformancePolicy&gt;

A Nimble Performance Policy is associated with a storage system. Using the `Show-HPOVStorageSystemPerformancePolicy`, choose an available performance policy.

Example:

```text
`Get-HPOVStorageSystem` `-Name` MyNimbleSys | `Show-HPOVStorageSystemPerformancePolicy`
```

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VolumeSet &lt;HPOneView.Storage.VolumeSet&gt;

Use to specify a Volume Set the volume will be associated with, from `Get-HPOVStorageVolumeSet`.

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

_**HPOneView.Storage.System.Pool \[System.Management.Automation.PSCustomObject\]**_

Managed Storage Pool resource

## Return Values

_**System.Management.Automation.PSCustomObject**_

Created Storage Volume Template resource

## Related Links

* [Get-HPOVStorageVolumeTemplate](get-hpovstoragevolumetemplate.md)
* [Get-HPOVStorageVolumeTemplatePolicy](get-hpovstoragevolumetemplatepolicy.md)
* [Remove-HPOVStorageVolumeTemplate](remove-hpovstoragevolumetemplate.md)
* [Set-HPOVStorageVolumeTemplate](set-hpovstoragevolumetemplate.md)
* [Set-HPOVStorageVolumeTemplatePolicy](set-hpovstoragevolumetemplatepolicy.md)

