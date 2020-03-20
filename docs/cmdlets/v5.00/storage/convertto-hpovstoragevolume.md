---
description: Convert an existing Storage Volume Snapshot to a Storage Volume.
---

# ConvertTo-HPOVStorageVolume

## Syntax

```text
ConvertTo-HPOVStorageVolume
    [-InputObject] <Object>
    [-Name] <String>
    [-Description <String>]
    [-SharingMode] <String>
    [-ApplianceConnection <Object>]
    [-Async]
    [<CommonParameters>]
```

## Description

Storage volume snapshots can be converted to assignable and managed storage volume resources. You can create a full copy of a volume based on the data in the snapshot. For large volumes, this can take a long time, depending on storage system resources available for the copy action. When converting a snapshot to a storage volume, it will lose its parent/child relationship.

{% hint style="info" %}
You cannot create a volume from an HPE Nimble storage system snapshot from HPE OneView.
{% endhint %}

Minimum required Permissions: Infrastructure administrator or Storage administrator.

## Examples

### Example 1

```text
$Volume = Get-HPOVStorageVolume -Name PrivVolume1 | Get-HPOVStorageVolumeSnapshot | Select-Object -Last 1
ConvertTo-HPOVStorageVolume -Name "Copy of PrivVolume1"
```

Get the most recent snapshot of PrivVolume1 and convert it to a volume.

### Example 2

```text
$Snapshots = Get-HPOVStorageVolume "Volume 1" | Get-HPOVStorageVolumeSnapshot
$Snapshots | ? { ((Get-Date $_.created -Format d) -eq (Get-Date 02/23/2016 -format d)} | ConvertTo-HPOVStorageVolume -Name "Copy of Volume 1" | Wait-HPOVTaskComplete
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
| Accept pipeline input? | true \(ByValue\) |
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

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} \| ? Default

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Storage.VolumeSnapshot \[System.Management.Automation.PSCustomObject\]**_

Storage Volume Snapshot resource object.

## Return Values

_**System.Collections.ArrayList**_ 

Multiple resources

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Create Storage Volume async task.

## Related Links

* [Add-HPOVStorageVolume](add-hpovstoragevolume.md)
* [Get-HPOVStorageVolume](get-hpovstoragevolume.md)
* [Get-HPOVStorageVolumeSet](get-hpovstoragevolumeset.md)
* [Get-HPOVStorageVolumeSnapShot](get-hpovstoragevolumesnapshot.md)
* [Get-HPOVStorageVolumeTemplate](get-hpovstoragevolumetemplate.md)
* [Get-HPOVStorageVolumeTemplatePolicy](get-hpovstoragevolumetemplatepolicy.md)
* [New-HPOVStorageVolume](new-hpovstoragevolume.md)
* [New-HPOVStorageVolumeSnapshot](new-hpovstoragevolumesnapshot.md)
* [New-HPOVStorageVolumeTemplate](new-hpovstoragevolumetemplate.md)
* [Remove-HPOVStorageVolume](remove-hpovstoragevolume.md)
* [Remove-HPOVStorageVolumeSnapshot](remove-hpovstoragevolumesnapshot.md)
* [Remove-HPOVStorageVolumeTemplate](remove-hpovstoragevolumetemplate.md)
* [Set-HPOVStorageVolume](set-hpovstoragevolume.md)
* [Set-HPOVStorageVolumeTemplate](set-hpovstoragevolumetemplate.md)
* [Set-HPOVStorageVolumeTemplatePolicy](set-hpovstoragevolumetemplatepolicy.md)

