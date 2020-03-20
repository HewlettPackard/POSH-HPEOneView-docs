---
description: Import an existing Storage Volume resource.
---

# Add-HPOVStorageVolume

## Syntax

```text
Add-HPOVStorageVolume
    [-StorageSystem] <Object>
    [-StorageDeviceName] <String>
    [-VolumeName] <String>
    [-VolumeID] <String>
    [-Description] <String>
    [-Shared]
    [-Scope <HPOneView.Appliance.ScopeCollection>]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This cmdlet will help add an existing storage volume that was provisioned on the Storage System.  The volume should not be exported or assigned to a server or groups of servers.  The Storage Volume also must reside in the Managed Domain of the Stroage System that the appliance managed.  The Storage Volume"s WWN will be needed.

## Examples

###  Example 1 

```text
Add-HPOVStorageVolume -StorageSystem 3ParSys1 -VolumeID 50:00:2A:C0:03:1E:15:2C -VolumeName "MyStorageVol1"

```

Import the volume "50:00:2A:C0:03:1E:15:2C" from the "3ParSys1" Storage System.

###  Example 2 

```text
Get-HPOVStorageSystem 3ParSys1 | Add-HPOVStorageVolume -VolumeID 50:00:2A:C0:03:1E:15:2C -VolumeName "MyStorageVol1"

```

Import the volume "50:00:2A:C0:03:1E:15:2C" from the "3ParSys1" Storage System.

###  Example 3 

```text
Get-HPOVStorageSystem 3ParSys1 | Add-HPOVStorageVolume -StorageDeviceName "MyStorageVolName1" -VolumeName "MyStorageVol1"

```

Import a volume using the storage device name "MyStorageVolName1" on the "3ParSys1" Storage System.

## Parameters

### -StorageSystem &lt;Object&gt;

The Storage System where the volume will be imported from.  Volume to be imported must be provisioned to the same Managed Domain as the Storage System.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -VolumeID &lt;String&gt;

The 128bit WWN FC address of the volume to be imported.  Address must be in the following format: AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA

| Aliases | volid, id, wwn |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StorageDeviceName &lt;String&gt;

The Storage Systems" Device Name of the volume.  This can be found in either the 3PAR IMC, CLI or HPE SSMC by looking at the provisionined volume and copying the "Name" property.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VolumeName &lt;String&gt;

Specify the Storage Volume Name.

| Aliases | Name |
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

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the `Add-HPOVResourceToScope` Cmdlet.

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

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

Storage Pool resource object

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async create task

## Related Links

* [ConvertTo-HPOVStorageVolume](convertto-hpovstoragevolume.md)
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
