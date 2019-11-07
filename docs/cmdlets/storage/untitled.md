---
description: Import an existing Storage Volume resource.
---

# Add-HPOVStorageVolume

## HPE OneView 5.00 Library

### Syntax

```text
Add-HPOVStorageVolume [-StorageSystem] <Object> [-StorageDeviceName] <String> [-VolumeName] <String> [[-Description] <String>] [[-Shared] <SwitchParameter>] [[-Scope] <HPOneView.Appliance.ScopeCollection>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This Cmdlet will help add an existing storage volume that was provisioned on the Storage System. In order to import an existing storage volume, the following prerequisites must be met:

* The storage system that contains the volume you want to add is being managed by the appliance, and the volume must be within the same 3Par virtual domain as the managed storage system.
* The storage pool that contains the volume you want to add is being managed by the appliance.
* The snapshot storage pool defined for the volume you want to add is being managed by the appliance.

The Storage Volume's WWN or device name will be needed, which can be retrieved from the storage system management console.

{% hint style="info" %}
Privileges: Infrastructure administrator or Storage administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Description &lt;String&gt; 

Provide a description for the volume.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt; 

Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with. Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Shared &lt;SwitchParameter&gt; 

Include this switch to mark the Storage Volume as a Shareable resource for shared volume access. 

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -StorageDeviceName &lt;String&gt; 

The Storage Systems Device Name of the volume. This can be found in either the 3PAR IMC, CLI or HPE SSMC by looking at the provisioned volume and copying the "Name" property.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -StorageSystem &lt;Object&gt; 

The Storage System where the volume will be imported from. Volume to be imported must be provisioned to the same Managed Domain as the Storage System.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -VolumeID &lt;String&gt; 

{% hint style="warning" %}
This parameter is deprecated. Please use the `-StorageDeviceName` parameter.
{% endhint %}

The 128bit WWN FC address of the volume to be imported. Address must be in the following format: AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA

| Aliases | volid, id, wwn |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -VolumeName &lt;String&gt; 

Specify the Storage Volume Name.

| Aliases | Name |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Storage.System \[System.Management.Automation.PSCustomObject\]**_

Storage Pool resource object

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async create task

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVStorageVolume -StorageSystem (Get-HPOVStorageSystem -Name 3ParSys1) -StorageDeviceName MyStorageVol1 -VolumeName MyStorageVol1
```

Import the volume "MyStorageVol1" from the "3ParSys1" Storage System.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVStorageSystem -Name 3ParSys1 | Add-HPOVStorageVolume -StorageDeviceName MyStorageVol1 -VolumeName MyStorageVol1
```

Import the volume "MyStorageVol1" from the "3ParSys1" Storage System using the pipeline.

```text
 -------------------------- EXAMPLE 3 --------------------------
Get-HPOVStorageSystem -Name 3ParSys1 | Add-HPOVStorageVolume -StorageDeviceName ClusterSharedVol1 -VolumeName ClusterSharedVol1 -Shared
```

Import a volume using the storage device name "ClusterSharedVol1" on the "3ParSys1" Storage System.

#### Related Links

* [ConvertTo-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVStorageVolume) 
* [Get-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolume) 
* [Get-HPOVStorageVolumeSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSet) 
* [Get-HPOVStorageVolumeSnapShot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSnapShot) 
* [Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate) 
* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy) 
* [New-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolume) 
* [New-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeSnapshot) 
* [New-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeTemplate) 
* [Remove-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolume) 
* [Remove-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeSnapshot) 
* [Remove-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeTemplate) 
* [Set-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolume) 
* [Set-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplate) 
* [Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy) 

## HPE OneView 4.20 Library <a id="hpe-oneview-5-00-library"></a>

### Syntax <a id="synatx"></a>

```text
Add-HPOVStorageVolume [-StorageSystem] <Object> [-StorageDeviceName] <String> [-VolumeName] <String> [[-Description] <String>] [[-Shared] <SwitchParameter>] [[-Scope] <HPOneView.Appliance.ScopeCollection>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description <a id="description"></a>

This Cmdlet will help add an existing storage volume that was provisioned on the Storage System. In order to import an existing storage volume, the following prerequisites must be met:‌

* The storage system that contains the volume you want to add is being managed by the appliance, and the volume must be within the same 3Par virtual domain as the managed storage system.
* The storage pool that contains the volume you want to add is being managed by the appliance.
* The snapshot storage pool defined for the volume you want to add is being managed by the appliance.

The Storage Volume's WWN or device name will be needed, which can be retrieved from the storage system management console.

{% hint style="info" %}
Privileges: Infrastructure administrator or Storage administrator.‌
{% endhint %}

### Parameters <a id="parameters"></a>

#### -ApplianceConnection &lt;Object&gt; <a id="applianceconnection-less-than-object-greater-than"></a>

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.‌

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters? | False |

#### -Description &lt;String&gt; <a id="description-less-than-string-greater-than"></a>

Provide a description for the volume.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | ​Content |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

#### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt; <a id="scope-less-than-hponeview-appliance-scopecollection-greater-than"></a>

Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with. Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

#### -Shared &lt;SwitchParameter&gt; <a id="shared-less-than-switchparameter-greater-than"></a>

Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

#### -StorageDeviceName &lt;String&gt; <a id="storagedevicename-less-than-string-greater-than"></a>

The Storage Systems Device Name of the volume. This can be found in either the 3PAR IMC, CLI or HPE SSMC by looking at the provisioned volume and copying the "Name" property.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | ​Content |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

#### -StorageSystem &lt;Object&gt; <a id="storagesystem-less-than-object-greater-than"></a>

The Storage System where the volume will be imported from. Volume to be imported must be provisioned to the same Managed Domain as the Storage System.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | ​Content |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

#### -VolumeID &lt;String&gt; <a id="volumeid-less-than-string-greater-than"></a>

This parameter is deprecated. Please use the `-StorageDeviceName` parameter.‌

The 128bit WWN FC address of the volume to be imported. Address must be in the following format: AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA

| Aliases | volid, id, wwn |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | ​Content |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

#### -VolumeName &lt;String&gt; <a id="volumename-less-than-string-greater-than"></a>

Specify the Storage Volume Name.

| Aliases | Name |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | ​Content |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

&lt;CommonParameters&gt;‌

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)‌

### Input Types <a id="input-types"></a>

_**HPOneView.Storage.System \[System.Management.Automation.PSCustomObject\]**_‌

Storage Pool resource object‌

### Return Values <a id="return-values"></a>

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_‌

Async create task‌

### Examples <a id="examples"></a>

```text
 -------------------------- EXAMPLE 1 --------------------------
 Add-HPOVStorageVolume -StorageSystem (Get-HPOVStorageSystem -Name 3ParSys1) -StorageDeviceName MyStorageVol1 -VolumeName MyStorageVol1
```

Import the volume "MyStorageVol1" from the "3ParSys1" Storage System.

```text
 -------------------------- EXAMPLE 2 --------------------------
 Get-HPOVStorageSystem -Name 3ParSys1 | Add-HPOVStorageVolume -StorageDeviceName MyStorageVol1 -VolumeName MyStorageVol1
```

Import the volume "MyStorageVol1" from the "3ParSys1" Storage System using the pipeline.

```text
 -------------------------- EXAMPLE 3 --------------------------
 Get-HPOVStorageSystem -Name 3ParSys1 | Add-HPOVStorageVolume -StorageDeviceName ClusterSharedVol1 -VolumeName ClusterSharedVol1 -Shared
```

Import a volume using the storage device name "ClusterSharedVol1" on the "3ParSys1" Storage System.‌

#### Related Links <a id="related-links"></a>

* ​[ConvertTo-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVStorageVolume)
* ​[Get-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolume)
* ​[Get-HPOVStorageVolumeSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSet)
* ​[Get-HPOVStorageVolumeSnapShot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSnapShot)
* ​[Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate)
* ​[Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)
* ​[New-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolume)
* ​[New-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeSnapshot)
* ​[New-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeTemplate)
* ​[Remove-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolume)
* ​[Remove-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeSnapshot)
* ​[Remove-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeTemplate)
* ​[Set-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolume)
* ​[Set-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplate)
* ​[Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy)

​

## HPE OneView 4.10 Library <a id="hpe-oneview-5-00-library"></a>

### Syntax <a id="synatx"></a>

```text
Add-HPOVStorageVolume [-StorageSystem] <Object> [-StorageDeviceName] <String> [-VolumeName] <String> [[-Description] <String>] [[-Shared] <SwitchParameter>] [[-Scope] <HPOneView.Appliance.ScopeCollection>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description <a id="description"></a>

This Cmdlet will help add an existing storage volume that was provisioned on the Storage System. In order to import an existing storage volume, the following prerequisites must be met:‌

* The storage system that contains the volume you want to add is being managed by the appliance, and the volume must be within the same 3Par virtual domain as the managed storage system.
* The storage pool that contains the volume you want to add is being managed by the appliance.
* The snapshot storage pool defined for the volume you want to add is being managed by the appliance.

The Storage Volume's WWN or device name will be needed, which can be retrieved from the storage system management console.

{% hint style="info" %}
Privileges: Infrastructure administrator or Storage administrator.‌
{% endhint %}

### Parameters <a id="parameters"></a>

#### -ApplianceConnection &lt;Object&gt; <a id="applianceconnection-less-than-object-greater-than"></a>

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.‌

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters? | False |

#### -Description &lt;String&gt; <a id="description-less-than-string-greater-than"></a>

Provide a description for the volume.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | ​Content |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

#### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt; <a id="scope-less-than-hponeview-appliance-scopecollection-greater-than"></a>

Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with. Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

#### -Shared &lt;SwitchParameter&gt; <a id="shared-less-than-switchparameter-greater-than"></a>

Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

#### -StorageDeviceName &lt;String&gt; <a id="storagedevicename-less-than-string-greater-than"></a>

The Storage Systems Device Name of the volume. This can be found in either the 3PAR IMC, CLI or HPE SSMC by looking at the provisioned volume and copying the "Name" property.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | ​Content |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

#### -StorageSystem &lt;Object&gt; <a id="storagesystem-less-than-object-greater-than"></a>

The Storage System where the volume will be imported from. Volume to be imported must be provisioned to the same Managed Domain as the Storage System.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | ​Content |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

#### -VolumeID &lt;String&gt; <a id="volumeid-less-than-string-greater-than"></a>

This parameter is deprecated. Please use the `-StorageDeviceName` parameter.‌

The 128bit WWN FC address of the volume to be imported. Address must be in the following format: AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA

| Aliases | volid, id, wwn |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | ​Content |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

#### -VolumeName &lt;String&gt; <a id="volumename-less-than-string-greater-than"></a>

Specify the Storage Volume Name.

| Aliases | Name |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | ​Content |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

&lt;CommonParameters&gt;‌

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)‌

### Input Types <a id="input-types"></a>

_**HPOneView.Storage.System \[System.Management.Automation.PSCustomObject\]**_‌

Storage Pool resource object‌

### Return Values <a id="return-values"></a>

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_‌

Async create task‌

### Examples <a id="examples"></a>

```text
 -------------------------- EXAMPLE 1 --------------------------
 Add-HPOVStorageVolume -StorageSystem (Get-HPOVStorageSystem -Name 3ParSys1) -StorageDeviceName MyStorageVol1 -VolumeName MyStorageVol1
```

Import the volume "MyStorageVol1" from the "3ParSys1" Storage System.

```text
 -------------------------- EXAMPLE 2 --------------------------
 Get-HPOVStorageSystem -Name 3ParSys1 | Add-HPOVStorageVolume -StorageDeviceName MyStorageVol1 -VolumeName MyStorageVol1
```

Import the volume "MyStorageVol1" from the "3ParSys1" Storage System using the pipeline.

```text
 -------------------------- EXAMPLE 3 --------------------------
 Get-HPOVStorageSystem -Name 3ParSys1 | Add-HPOVStorageVolume -StorageDeviceName ClusterSharedVol1 -VolumeName ClusterSharedVol1 -Shared
```

Import a volume using the storage device name "ClusterSharedVol1" on the "3ParSys1" Storage System.‌

#### Related Links <a id="related-links"></a>

* ​[ConvertTo-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVStorageVolume)
* ​[Get-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolume)
* ​[Get-HPOVStorageVolumeSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSet)
* ​[Get-HPOVStorageVolumeSnapShot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSnapShot)
* ​[Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate)
* ​[Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)
* ​[New-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolume)
* ​[New-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeSnapshot)
* ​[New-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeTemplate)
* ​[Remove-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolume)
* ​[Remove-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeSnapshot)
* ​[Remove-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeTemplate)
* ​[Set-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolume)
* ​[Set-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplate)
* ​[Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy)

