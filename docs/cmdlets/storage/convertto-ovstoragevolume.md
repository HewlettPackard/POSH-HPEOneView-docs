---
description: Convert an existing Storage Volume Snapshot to a Storage Volume.
---

# ConvertTo-OVStorageVolume

## Syntax

```powershell
ConvertTo-OVStorageVolume
    [-InputObject] <Object>
    [-Name] <String>
    [-Description <String>]
    [-SharingMode] <String>
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

## Description

A snapshot is a virtual copy of an existing volume at a point in time. You can use a snapshot as a backup of a volume, and then use the snapshot to revert a volume to the backup, or to create new volumes from the snapshot.
A snapshot is a static copy of a volume at the point the snapshot is created. Snapshots are not updated to reflect changes in the volume since the snapshot was taken.

A new volume created from a snapshot will be the same size as the snapshot and will contain all of the data in the snapshot. The two volumes are logically unrelated, but physically, unchanged data is only stored once between the two volumes.

Reverting a volume to a snapshot will revert to the data the volume contained when the snapshot was taken. The size of the volume will remain the same as when it was reverted. For example, if you take a snapshot of a 50 GiB volume, grow the volume to 100 GiB, and then revert to the snapshot, the volume will be 100 GiB with the data from the 50 GiB snapshot.

Reverting to a snapshot of a volume will cause all data created or changed since the snapshot was taken to be lost. Backup your data to prevent data loss.

???+ info
     You cannot create a volume from an HPE Nimble storage system snapshot from HPE OneView.


???+ info
    Minimum required privileges: Infrastructure administrator, Server administrator, or Storage administrator.

## Examples

###  Example 1 

```powershell
$Volume = Get-OVStorageVolume -Name PrivVolume1 | Get-OVStorageVolumeSnapshot | Select-Object -Last 1
ConvertTo-OVStorageVolume -Name "Copy of PrivVolume1"
```

Get the most recent snapshot of PrivVolume1 and convert it to a volume.

###  Example 2 

```powershell
$Snapshots = Get-OVStorageVolume "Volume 1" | Get-OVStorageVolumeSnapshot
$Snapshots | ? { ((Get-Date $_.created -Format d) -eq (Get-Date 02/23/2016 -format d)} | ConvertTo-OVStorageVolume -Name "Copy of Volume 1" | Wait-OVTaskComplete
```

Get all of the available storage volume snapshots for "Volume 1", then convert the snapshot created on the specified date to a storage volume resource.

## Parameters

### -InputObject &lt;Object&gt;

Provide the snapshot resource object to convert managed by the appliance.

| Aliases | Snapshot |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

The Storage Volume Name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Description &lt;String&gt;

The description of the storage volume.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SharingMode &lt;String&gt;

Specify if the new storage volume should be Private or Shared.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

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

=== "HPEOneView.Storage.VolumeSnapshot [System.Management.Automation.PSCustomObject]"
    Storage Volume Snapshot resource object.
    

## Return Values

=== "System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>"
    Multiple resources
    

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Create Storage Volume async task.
    

## Related Links

* [Add-OVStorageVolume](add-ovstoragevolume.md)
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
* [Set-OVStorageVolume](set-ovstoragevolume.md)
* [Set-OVStorageVolumeTemplate](set-ovstoragevolumetemplate.md)
* [Set-OVStorageVolumeTemplatePolicy](set-ovstoragevolumetemplatepolicy.md)
