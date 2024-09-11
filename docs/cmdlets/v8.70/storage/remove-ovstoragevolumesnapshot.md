---
description: Remove storage volume snapshot resource(s).
---

# Remove-OVStorageVolumeSnapshot

## Syntax

```powershell
Remove-OVStorageVolumeSnapshot
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [-Async]
    [<CommonParameters>]
```

## Description

This Cmdlet will remove a storage volume snapshot from a storage volume resource object.  Removal of a snapshot is a destructive operation of the snapshot only.

## Examples

###  Example 1 

```powershell
$Snapshots = Get-OVStorageVolume -Name "Volume 1" -ErrorAction Stop | Get-OVStorageVolumeSnapshot
$Snapshots | ? { ((get-date) - (Get-Date $_.created)).days -ge 5 } | Remove-OVStorageVolumeSnapshot
```

Get all of the available storage volume snapshots for "Volume 1", then remove any snapshots as old or older than 5 days.

###  Example 2 

```powershell
Get-OVStorageVolume | Get-OVStorageVolumeSnapshot | Remove-OVStorageVolumeSnapshot
```

Remove all Storage Volume Snapshots managed by HPE OneView.

## Parameters

### -InputObject &lt;Object&gt;

Provide the snapshot resource object to remove from the appliance.

| Aliases | Snapshot |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
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

Default Value: ${Global:ConnectSessions} | ? Default

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

_**HPEOneView.Storage.VolumeSnapshot [System.Management.Automation.PSCustomObject]**_

Storage Volume Snapshot resource

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async create task resource

_**System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>**_

Multiple task resources

## Related Links

* [Get-OVStorageVolumeSnapShot](get-ovstoragevolumesnapshot.md)
* [New-OVStorageVolumeSnapshot](new-ovstoragevolumesnapshot.md)
