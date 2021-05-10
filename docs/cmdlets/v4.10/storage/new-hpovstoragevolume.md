---
description: Create a Storage Volume resource.
---

# New-HPOVStorageVolume

## Syntax

```text
New-HPOVStorageVolume
    [-Name] <String>
    [-StoragePool] <Object>
    [-Description] <String>
    [-SnapshotStoragePool <Object>]
    [-StorageSystem <Object>]
    [-DataProtectionLevel <String>]
    [-EnableAdaptiveOptimization]
    [-Capacity] <Int64>
    [-ProvisioningType <String>]
    [-EnableCompression <Boolean>]
    [-EnableDeduplication <Boolean>]
    [-Full]
    [-Shared]
    [-Scope <HPOneView.Appliance.ScopeCollection>]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```text
New-HPOVStorageVolume
    [-Name] <String>
    [-VolumeTemplate <Object>]
    [-Description] <String>
    [-SnapshotStoragePool <Object>]
    [-DataProtectionLevel <String>]
    [-EnableAdaptiveOptimization]
    [-Capacity] <Int64>
    [-ProvisioningType <String>]
    [-EnableCompression <Boolean>]
    [-EnableDeduplication <Boolean>]
    [-Full]
    [-Shared]
    [-Scope <HPOneView.Appliance.ScopeCollection>]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This cmdlet will help create a Storage Volume resource on a managed Storage System.  The volume can be created by specifying the Storage Pool or an existing Storage Volume Template.  When the Storage Pool name is not unique, you can either use the -StorageSystem parameter, or pass via the pipeline the Storage Pool from Get-HPOVStoragePool.

If the Storage Volume Template Global Policy is enabled, a valid Storage Volume Template must be provided.

## Examples

###  Example 1 

```text
New-HPOVStorageVolume -name TestVol1 -PoolName PoolR1 -Size 60

```

Create a 60GB private, thin provisioned volume named "TestVol1" from the "PoolR1" Storage Pool.

###  Example 2 

```text
Get-HPOVStoragePool PoolR1 | New-HPOVStorageVolume -name TestVol1 PoolR1 -Size 60

```

Get the "PoolR1" Storage Pool resource and pipe it to create a 60GB private, thin provisioned volume named "TestVol1".

###  Example 3 

```text
Get-HPOVStoragePool PoolR1 -StorageSystem 3ParSys1 | New-HPOVStorageVolume -name TestVol1 -Size 60

```

Get the "PoolR1" Storage Pool resource and pipe it to create a 60GB private, thin provisioned volume named "TestVol1".

###  Example 4 

```text
New-HPOVStorageVolume -name TestVol1 -StoragePool PoolR1 -StorageSystem 3ParSys1 -Size 60

```

Create a 60GB private, thin provisioned volume named "TestVol1" from the "PoolR1" Storage Pool resource that is managed by "3ParSys1".

###  Example 5 

```text
$svt = Get-HPOVStorageVolumeTemplate SVT_120GB_R5
$New-HPOVStorageVolume testvol3 -volumetemplate $svt -capacity 90 | Wait-HPOVTaskComplete


```

Create a 90GB volume named "TestVol1", using the "SVT_120GB_R5" Storage Volume Template, then wait for volume to be provisioned.

## Parameters

### -Name &lt;String&gt;

Aliases [-VolumeName]
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

Aliases [-pool, `-PoolName`]
Storage Pool URI, name or resource object.

| Aliases | pool, poolName |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -SnapshotStoragePool &lt;Object&gt;

Aliases [-pool, `-PoolName`]
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

Aliases [-template, `-svt`]
Specify the Storage Volume Template Name, URI or Resource.

| Aliases | template, svt |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Capacity &lt;Int64&gt;

Aliases [-size]
Max volume capacity in GB.  `[e.g]`. 20 to specify 20GB.

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


Include this switch to enable Thick volume provisioning.  Omit to specify Thin storage provisioning.
Default: Thin

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DataProtectionLevel &lt;String&gt;

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

### -EnableAdaptiveOptimization &lt;SwitchParameter&gt;

Whether or not Adaptive Optimization is enabled on the storage volume.  Only supported with StoreVirtual

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

Aliases [-Appliance]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Storage.Pool [System.Management.Automation.PSCustomObject]**_

Storage Pool resource object


## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async create task


## Related Links

* [Add-HPOVStorageVolume](add-hpovstoragevolume.md)
* [ConvertTo-HPOVStorageVolume](convertto-hpovstoragevolume.md)
* [Get-HPOVStorageVolume](get-hpovstoragevolume.md)
* [Get-HPOVStorageVolumeSnapShot](get-hpovstoragevolumesnapshot.md)
* [Get-HPOVStorageVolumeTemplate](get-hpovstoragevolumetemplate.md)
* [Get-HPOVStorageVolumeTemplatePolicy](get-hpovstoragevolumetemplatepolicy.md)
* [New-HPOVStorageVolumeSnapshot](new-hpovstoragevolumesnapshot.md)
* [New-HPOVStorageVolumeTemplate](new-hpovstoragevolumetemplate.md)
* [Remove-HPOVStorageVolume](remove-hpovstoragevolume.md)
* [Remove-HPOVStorageVolumeSnapshot](remove-hpovstoragevolumesnapshot.md)
* [Remove-HPOVStorageVolumeTemplate](remove-hpovstoragevolumetemplate.md)
* [Set-HPOVStorageVolume](set-hpovstoragevolume.md)
* [Set-HPOVStorageVolumeTemplate](set-hpovstoragevolumetemplate.md)
* [Set-HPOVStorageVolumeTemplatePolicy](set-hpovstoragevolumetemplatepolicy.md)
