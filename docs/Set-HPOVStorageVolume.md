<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVStorageVolume
<p>
Modify an existing Storage Volume resource.

### SYNTAX
<p>
<pre><code>Set-HPOVStorageVolume [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Description] &lt;String&gt;] [-Capacity] &lt;Int64&gt;[ [-SnapShotStoragePool] &lt;Object&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-PermitAdaptiveOptimization] &lt;Boolean&gt;][ [-Shared] &lt;Boolean&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help modify an existing Storage Volume resource.  Only the Volume Name, Description, Capcity, volume shared state and permenance can be modified.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Capacity &lt;Int64&gt;<p>
Aliases [-size]
New Max volume capacity in GB.  Volume capacity can be increased to maximum of 16 TiB. Decreasing the capacity of volume is not supported. 

Before increasing the capacity of fully provisioned volumes, ensure that the storage pool has enough capacity to support the operation. The update operation might fail if there is not enough space available in the storage pool.

e.g. 20 to specify 20GB.

<table><tbody><tr><td>Aliases</td><td>size</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DataProtectionLevel &lt;String&gt;<p>
Specify the new StoreVirtual data protection level (aka Network RAID).  Allowed values:

	* NetworkRaid0None
	* NetworkRaid5SingleParity
	* NetworkRaid10Mirror2Way
	* NetworkRaid10Mirror3Way
	* NetworkRaid10Mirror4Way
	* NetworkRaid6DualParity

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Updated description for the volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-SourceVolume]
Source Storage Volume resource object.

<table><tbody><tr><td>Aliases</td><td>SourceVolume</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-VolumeName]

Updated Storage Volume Name.

<table><tbody><tr><td>Aliases</td><td>VolumeName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PermitAdaptiveOptimization &lt;Boolean&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Shared &lt;Boolean&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapShotStoragePool &lt;Object&gt;<p>
The Storage Pool Name, URI or Object to be used for Volume Snapshots.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 Storage Volume resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async create task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolume ProdVol1 | Set-HPOVStorageVolume  -Size 160
</pre>
Update "ProdVol1" volume size to 160GB.



### Related Links

* [Add-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageVolume)
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
* [Set-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVStorageVolume
<p>
Modify an existing Storage Volume resource.

### SYNTAX
<p>
<pre><code>Set-HPOVStorageVolume [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Description] &lt;String&gt;] [-Capacity] &lt;Int64&gt;[ [-SnapShotStoragePool] &lt;Object&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-PermitAdaptiveOptimization] &lt;Boolean&gt;][ [-Shared] &lt;Boolean&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help modify an existing Storage Volume resource.  Only the Volume Name, Description, Capcity, volume shared state and permenance can be modified.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Capacity &lt;Int64&gt;<p>
Aliases [-size]
New Max volume capacity in GB.  Volume capacity can be increased to maximum of 16 TiB. Decreasing the capacity of volume is not supported. 

Before increasing the capacity of fully provisioned volumes, ensure that the storage pool has enough capacity to support the operation. The update operation might fail if there is not enough space available in the storage pool.

e.g. 20 to specify 20GB.

<table><tbody><tr><td>Aliases</td><td>size</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DataProtectionLevel &lt;String&gt;<p>
Specify the new StoreVirtual data protection level (aka Network RAID).  Allowed values:

	* NetworkRaid0None
	* NetworkRaid5SingleParity
	* NetworkRaid10Mirror2Way
	* NetworkRaid10Mirror3Way
	* NetworkRaid10Mirror4Way
	* NetworkRaid6DualParity

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Updated description for the volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-SourceVolume]
Source Storage Volume resource object.

<table><tbody><tr><td>Aliases</td><td>SourceVolume</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-VolumeName]

Updated Storage Volume Name.

<table><tbody><tr><td>Aliases</td><td>VolumeName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PermitAdaptiveOptimization &lt;Boolean&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Shared &lt;Boolean&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapShotStoragePool &lt;Object&gt;<p>
The Storage Pool Name, URI or Object to be used for Volume Snapshots.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 Storage Volume resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async create task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolume ProdVol1 | Set-HPOVStorageVolume  -Size 160
</pre>
Update "ProdVol1" volume size to 160GB.



### Related Links

* [Add-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageVolume)
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
* [Set-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVStorageVolume
<p>
Modify an existing Storage Volume resource.

### SYNTAX
<p>
<pre><code>Set-HPOVStorageVolume [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Description] &lt;String&gt;] [-Capacity] &lt;Int64&gt;[ [-SnapShotStoragePool] &lt;Object&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-PermitAdaptiveOptimization] &lt;Boolean&gt;][ [-Shared] &lt;Boolean&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help modify an existing Storage Volume resource.  Only the Volume Name, Description, Capcity, volume shared state and permenance can be modified.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Capacity &lt;Int64&gt;<p>
Aliases [-size]
New Max volume capacity in GB.  Volume capacity can be increased to maximum of 16 TiB. Decreasing the capacity of volume is not supported. 

Before increasing the capacity of fully provisioned volumes, ensure that the storage pool has enough capacity to support the operation. The update operation might fail if there is not enough space available in the storage pool.

e.g. 20 to specify 20GB.

<table><tbody><tr><td>Aliases</td><td>size</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DataProtectionLevel &lt;String&gt;<p>
Specify the new StoreVirtual data protection level (aka Network RAID).  Allowed values:

	* NetworkRaid0None
	* NetworkRaid5SingleParity
	* NetworkRaid10Mirror2Way
	* NetworkRaid10Mirror3Way
	* NetworkRaid10Mirror4Way
	* NetworkRaid6DualParity

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Updated description for the volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-SourceVolume]
Source Storage Volume resource object.

<table><tbody><tr><td>Aliases</td><td>SourceVolume</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-VolumeName]

Updated Storage Volume Name.

<table><tbody><tr><td>Aliases</td><td>VolumeName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PermitAdaptiveOptimization &lt;Boolean&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Shared &lt;Boolean&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapShotStoragePool &lt;Object&gt;<p>
The Storage Pool Name, URI or Object to be used for Volume Snapshots.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 Storage Volume resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async create task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolume ProdVol1 | Set-HPOVStorageVolume  -Size 160
</pre>
Update "ProdVol1" volume size to 160GB.



### Related Links

* [Add-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageVolume)
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
* [Set-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
