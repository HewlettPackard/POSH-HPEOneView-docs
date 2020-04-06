---
description: Modify an existing Storage Volume Template resource.
---

# Set-HPOVStorageVolumeTemplate

## Syntax

```text
Set-HPOVStorageVolumeTemplate
    [-InputObject] <Object>
    [-Capacity <Int64>]
    [-Name <String>]
    [-Description <String>]
    [-SnapshotStoragePool <Object>]
    [-LockSnapShotStoragePool]
    [-StorageSystem <Object>]
    [-LockCapacity]
    [-Thin]
    [-Full]
    [-LockProvisionType]
    [-Shared <Boolean>]
    [-LockProvisionMode]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```text
Set-HPOVStorageVolumeTemplate
    [-InputObject] <Object>
    [-Capacity <Int64>]
    [-Name <String>]
    [-Description <String>]
    [-StorageSystem <Object>]
    [-LockCapacity]
    [-Thin]
    [-Full]
    [-LockProvisionType]
    [-Shared <Boolean>]
    [-LockProvisionMode]
    [-DataProtectionLevel <String>]
    [-LockProtectionLevel]
    [-EnableAdaptiveOptimization]
    [-LockAdaptiveOptimization]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This cmdlet will help modify an existing Storage Volume Template resource.  Only the Volume Name, Description, Capcity, Snapshot Storage Pool, volume shared state and permenance can be modified.

## Examples

###  Example 1 

```text
Get-HPOVStorageVolumeTemplate -Name MyProdVolTemplate | Set-HPOVStorageVolumeTemplate -Size 160

```

Update "MyProdVolTemplate" volume size to 160GB.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-SVT, `-Template`]

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

Aliases [-size]
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

### -Full &lt;SwitchParameter&gt;

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

Whether or not Adaptive Optimization is enabled on the storage volume.  Only supported with StoreVirtual

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

### -ProvisionType &lt;String&gt;

Specify the type of volume to provision.  Allowed values are:

	* Thin
	* Full
	* TPDD (Thin Provision Dedup) - Only available for HPE StoreServ storage systems with SSD storage pools (aka CPG"s).

| Aliases |  |
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

Specify to lock the Provision Mode (Shared or Private) value in the template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
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
