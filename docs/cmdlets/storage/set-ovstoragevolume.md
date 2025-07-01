---
description: Modify an existing Storage Volume resource.
---

# Set-OVStorageVolume

## Syntax

```powershell
Set-OVStorageVolume
    [-InputObject] <Object>
    [-Name <String>]
    [-Description <String>]
    [-Capacity <Int64>]
    [-SnapShotStoragePool <Object>]
    [-PermitAdaptiveOptimization <Boolean>]
    [-Shared <Boolean>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will help modify an existing Storage Volume resource.  Only the Volume Name, Description, Capcity, volume shared state and permenance can be modified.

## Examples

###  Example 1 

```powershell
Get-OVStorageVolume ProdVol1 | Set-OVStorageVolume  -Size 160
```

Update "ProdVol1" volume size to 160GB.

## Parameters

### -InputObject &lt;Object&gt;

Source Storage Volume resource object.

| Aliases | SourceVolume |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Updated Storage Volume Name.

| Aliases | VolumeName |
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
| Required? | True |
| Position? | Named |
| Default value | 0 |
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

### -PermitAdaptiveOptimization &lt;Boolean&gt;

Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Storage.Volume [System.Management.Automation.PSCustomObject]"
    Storage Volume resource object
    

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
* [New-OVStorageVolume](new-ovstoragevolume.md)
* [New-OVStorageVolumeSnapshot](new-ovstoragevolumesnapshot.md)
* [New-OVStorageVolumeTemplate](new-ovstoragevolumetemplate.md)
* [Remove-OVStorageVolume](remove-ovstoragevolume.md)
* [Remove-OVStorageVolumeSnapshot](remove-ovstoragevolumesnapshot.md)
* [Remove-OVStorageVolumeTemplate](remove-ovstoragevolumetemplate.md)
* [Set-OVStorageVolumeTemplate](set-ovstoragevolumetemplate.md)
* [Set-OVStorageVolumeTemplatePolicy](set-ovstoragevolumetemplatepolicy.md)
