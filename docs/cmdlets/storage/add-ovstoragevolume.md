---
description: Import an existing Storage Volume resource.
---

# Add-OVStorageVolume

## Syntax

```powershell
Add-OVStorageVolume
    [-StorageSystem] <Object>
    [-StorageDeviceName] <String>
    [-VolumeName] <String>
    [-VolumeID <String>]
    [-Description <String>]
    [-Shared]
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A volume represents a logical disk provisioned from a storage pool on a storage system.

A volume can be used by a single server (private) or can be used by multiple servers (shared).

You can attach volumes to one or more servers by configuring a volume attachment in the server profile. The volume attachment manages volume presentation on the storage system (StoreServ port selection, host and vLUN creation) as well as SAN zoning on SANs (with automatic zoning enabled) that connect the server and storage system.

Using volume templates, you can create multiple volumes with the same configuration.

You can increase (grow) the capacity of a volume by editing it. You cannot decrease the capacity of a volume.

This Cmdlet will help add an existing storage volume that was provisioned on the Storage System.  In order to import an existing storage volume, the following prerequisites must be met:

* The storage system that contains the volume you want to add is being managed by the appliance, and the volume must be within the same 3Par virtual domain as the managed storage system.
* The storage pool that contains the volume you want to add is being managed by the appliance.
* The snapshot storage pool defined for the volume you want to add is being managed by the appliance.

The Storage Volume's WWN or device name will be needed, which can be retrieved from the storage system management console.

???+ info
    Minimum required privileges: Infrastructure administrator or Storage administrator.

## Examples

###  Example 1 

```powershell
Add-OVStorageVolume -StorageSystem (Get-OVStorageSystem -Name 3ParSys1) -StorageDeviceName MyStorageVol1 -VolumeName MyStorageVol1
```

Import the volume "MyStorageVol1" from the "3ParSys1" Storage System.

###  Example 2 

```powershell
Get-OVStorageSystem -Name 3ParSys1 | Add-OVStorageVolume -StorageDeviceName MyStorageVol1 -VolumeName MyStorageVol1
```

Import the volume "MyStorageVol1" from the "3ParSys1" Storage System using the pipeline.

###  Example 3 

```powershell
Get-OVStorageSystem -Name 3ParSys1 | Add-OVStorageVolume -StorageDeviceName ClusterSharedVol1 -VolumeName ClusterSharedVol1 -Shared
```

Import a volume using the storage device name "ClusterSharedVol1" on the "3ParSys1" Storage System.

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

???+ warning
    This parameter is deprecated. Please use the `-StorageDeviceName` parameter.


The 128bit WWN FC address of the volume to be imported.  Address must be in the following format: AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA

| Aliases | volid, id, wwn |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StorageDeviceName &lt;String&gt;

The Storage Systems Device Name of the volume.  This can be found in either the 3PAR IMC, CLI or HPE SSMC by looking at the provisioned volume and copying the "Name" property.

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

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Scope &lt;HPEOneView.Appliance.ScopeCollection[]&gt;

Provide an `[HPEOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the Add-OVResourceToScope Cmdlet.

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

=== "HPEOneView.Storage.System [System.Management.Automation.PSCustomObject]"
    Storage Pool resource object
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async create task
    

## Related Links

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
* [Set-OVStorageVolume](set-ovstoragevolume.md)
* [Set-OVStorageVolumeTemplate](set-ovstoragevolumetemplate.md)
* [Set-OVStorageVolumeTemplatePolicy](set-ovstoragevolumetemplatepolicy.md)
