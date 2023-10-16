---
description: Remove a Storage Volume
---

# Remove-OVStorageVolume

## Syntax

```powershell
Remove-OVStorageVolume
    [-InputObject] <Object>
    [-ExportOnly]
    [-Async]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will remove storage volumes from the HPE OneView appliance.  Volumes must first be removed from attached Server Profiles prior to deleting the Storage Volume.

## Examples

###  Example 1 

```powershell
$VolumeToRemove = Get-OVStorageVolume -Name TestVol1 -ErrorAction Stop
Remove-OVStorageVolume -InputObject $VolumeToRemove
```

Remove export and delete volume named "TestVol1".

###  Example 2 

```powershell
Get-OVStorageVolume -Name TestVol1 -ErrorAction Stop | Remove-OVStorageVolume -exportonly
```

Remove export of volume named "TestVol1" only, which leaves the volume still provisioned on the array and is added back to the HPE OneView Storage Volumes pool.

## Parameters

### -InputObject &lt;Object&gt;

Storage Volume Name, URI or Object.

| Aliases | uri, name, StorageVolume |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ExportOnly &lt;SwitchParameter&gt;

Removes the volume from HPE OneView. The volume remains on the storage system, and must be managed manually until it is added back under management of HPE OneView.
Default: Delete Export AND Volume from storage system.

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

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Storage.System.Volume [System.Management.Automation.PSCustomObject]**_

Storage Volume resource object

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async removal task

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
* [Remove-OVStorageVolumeSnapshot](remove-ovstoragevolumesnapshot.md)
* [Remove-OVStorageVolumeTemplate](remove-ovstoragevolumetemplate.md)
* [Set-OVStorageVolume](set-ovstoragevolume.md)
* [Set-OVStorageVolumeTemplate](set-ovstoragevolumetemplate.md)
* [Set-OVStorageVolumeTemplatePolicy](set-ovstoragevolumetemplatepolicy.md)
