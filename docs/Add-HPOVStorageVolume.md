<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Add-HPOVStorageVolume
<p>
Import an existing Storage Volume resource.

### SYNTAX
<p>
<pre><code>Add-HPOVStorageVolume [-StorageSystem] &lt;Object&gt; [-StorageDeviceName] &lt;String&gt; [-VolumeName] &lt;String&gt; [-VolumeID] &lt;String&gt; [-Description] &lt;String&gt;[ [-Shared] &lt;SwitchParameter&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help add an existing storage volume that was provisioned on the Storage System.  The volume should not be exported or assigned to a server or groups of servers.  The Storage Volume also must reside in the Managed Domain of the Stroage System that the appliance managed.  The Storage Volume"s WWN will be needed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Provide a description for the volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Shared &lt;SwitchParameter&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageDeviceName &lt;String&gt;<p>
The Storage Systems" Device Name of the volume.  This can be found in either the 3PAR IMC, CLI or HPE SSMC by looking at the provisionined volume and copying the "Name" property.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
The Storage System where the volume will be imported from.  Volume to be imported must be provisioned to the same Managed Domain as the Storage System.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeID &lt;String&gt;<p>
Aliases [-volid, -id, -wwn]
The 128bit WWN FC address of the volume to be imported.  Address must be in the following format: AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA

<table><tbody><tr><td>Aliases</td><td>volid, id, wwn</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeName &lt;String&gt;<p>
Aliases [-name]
Specify the Storage Volume Name.

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

 Storage Pool resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async create task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVStorageVolume -StorageSystem 3ParSys1 -VolumeID 50:00:2A:C0:03:1E:15:2C -VolumeName "MyStorageVol1"
</pre>
Import the volume "50:00:2A:C0:03:1E:15:2C" from the "3ParSys1" Storage System.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStorageSystem 3ParSys1 | Add-HPOVStorageVolume -VolumeID 50:00:2A:C0:03:1E:15:2C -VolumeName "MyStorageVol1"
</pre>
Import the volume "50:00:2A:C0:03:1E:15:2C" from the "3ParSys1" Storage System.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVStorageSystem 3ParSys1 | Add-HPOVStorageVolume -StorageDeviceName "MyStorageVolName1" -VolumeName "MyStorageVol1"
</pre>
Import a volume using the storage device name "MyStorageVolName1" on the "3ParSys1" Storage System.



### Related Links

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


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Add-HPOVStorageVolume
<p>
Import an existing Storage Volume resource.

### SYNTAX
<p>
<pre><code>Add-HPOVStorageVolume [-StorageSystem] &lt;Object&gt; [-StorageDeviceName] &lt;String&gt; [-VolumeName] &lt;String&gt; [-VolumeID] &lt;String&gt; [-Description] &lt;String&gt;[ [-Shared] &lt;SwitchParameter&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help add an existing storage volume that was provisioned on the Storage System.  The volume should not be exported or assigned to a server or groups of servers.  The Storage Volume also must reside in the Managed Domain of the Stroage System that the appliance managed.  The Storage Volume"s WWN will be needed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Provide a description for the volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Shared &lt;SwitchParameter&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageDeviceName &lt;String&gt;<p>
The Storage Systems" Device Name of the volume.  This can be found in either the 3PAR IMC, CLI or HPE SSMC by looking at the provisionined volume and copying the "Name" property.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
The Storage System where the volume will be imported from.  Volume to be imported must be provisioned to the same Managed Domain as the Storage System.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeID &lt;String&gt;<p>
Aliases [-volid, -id, -wwn]
The 128bit WWN FC address of the volume to be imported.  Address must be in the following format: AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA

<table><tbody><tr><td>Aliases</td><td>volid, id, wwn</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeName &lt;String&gt;<p>
Aliases [-name]
Specify the Storage Volume Name.

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

 Storage Pool resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async create task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVStorageVolume -StorageSystem 3ParSys1 -VolumeID 50:00:2A:C0:03:1E:15:2C -VolumeName "MyStorageVol1"
</pre>
Import the volume "50:00:2A:C0:03:1E:15:2C" from the "3ParSys1" Storage System.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStorageSystem 3ParSys1 | Add-HPOVStorageVolume -VolumeID 50:00:2A:C0:03:1E:15:2C -VolumeName "MyStorageVol1"
</pre>
Import the volume "50:00:2A:C0:03:1E:15:2C" from the "3ParSys1" Storage System.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVStorageSystem 3ParSys1 | Add-HPOVStorageVolume -StorageDeviceName "MyStorageVolName1" -VolumeName "MyStorageVol1"
</pre>
Import a volume using the storage device name "MyStorageVolName1" on the "3ParSys1" Storage System.



### Related Links

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


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Add-HPOVStorageVolume
<p>
Import an existing Storage Volume resource.

### SYNTAX
<p>
<pre><code>Add-HPOVStorageVolume [-StorageSystem] &lt;Object&gt; [-StorageDeviceName] &lt;String&gt; [-VolumeName] &lt;String&gt; [-VolumeID] &lt;String&gt; [-Description] &lt;String&gt;[ [-Shared] &lt;SwitchParameter&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help add an existing storage volume that was provisioned on the Storage System.  The volume should not be exported or assigned to a server or groups of servers.  The Storage Volume also must reside in the Managed Domain of the Stroage System that the appliance managed.  The Storage Volume"s WWN will be needed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Provide a description for the volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Shared &lt;SwitchParameter&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageDeviceName &lt;String&gt;<p>
The Storage Systems" Device Name of the volume.  This can be found in either the 3PAR IMC, CLI or HPE SSMC by looking at the provisionined volume and copying the "Name" property.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
The Storage System where the volume will be imported from.  Volume to be imported must be provisioned to the same Managed Domain as the Storage System.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeID &lt;String&gt;<p>
Aliases [-volid, -id, -wwn]
The 128bit WWN FC address of the volume to be imported.  Address must be in the following format: AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA:BB:CC:DD:EE:AA

<table><tbody><tr><td>Aliases</td><td>volid, id, wwn</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeName &lt;String&gt;<p>
Aliases [-name]
Specify the Storage Volume Name.

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

 Storage Pool resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async create task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVStorageVolume -StorageSystem 3ParSys1 -VolumeID 50:00:2A:C0:03:1E:15:2C -VolumeName "MyStorageVol1"
</pre>
Import the volume "50:00:2A:C0:03:1E:15:2C" from the "3ParSys1" Storage System.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStorageSystem 3ParSys1 | Add-HPOVStorageVolume -VolumeID 50:00:2A:C0:03:1E:15:2C -VolumeName "MyStorageVol1"
</pre>
Import the volume "50:00:2A:C0:03:1E:15:2C" from the "3ParSys1" Storage System.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVStorageSystem 3ParSys1 | Add-HPOVStorageVolume -StorageDeviceName "MyStorageVolName1" -VolumeName "MyStorageVol1"
</pre>
Import a volume using the storage device name "MyStorageVolName1" on the "3ParSys1" Storage System.



### Related Links

* [ConvertTo-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVStorageVolume)
* [Get-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolume)
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


***
<div align=right><a href="#Top">Top</a></div>
