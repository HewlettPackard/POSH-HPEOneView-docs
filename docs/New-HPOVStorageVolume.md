<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVStorageVolume
<p>
Create a Storage Volume resource.

### SYNTAX
<p>
<pre><code>New-HPOVStorageVolume [-Name] &lt;String&gt; [-StoragePool] &lt;Object&gt; [-Description] &lt;String&gt;[ [-SnapshotStoragePool] &lt;Object&gt;][ [-StorageSystem] &lt;Object&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-EnableAdaptiveOptimization] &lt;SwitchParameter&gt;] [-Capacity] &lt;Int64&gt;[ [-ProvisioningType] &lt;String&gt;][ [-EnableCompression] &lt;Boolean&gt;][ [-EnableDeduplication] &lt;Boolean&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-Shared] &lt;SwitchParameter&gt;][ [-PerformancePolicy] &lt;HPOneView.Storage.PerformancePolicy&gt;][ [-EnableEncryption] &lt;bool&gt;][ [-CachePinning] &lt;bool&gt;][ [-VolumeSet] &lt;HPOneView.Storage.VolumeSet&gt;][ [-EnableIOPSLimit] &lt;bool&gt;][ [-IOPSLimit] &lt;int&gt;][ [-EnableDataTransferLimit] &lt;bool&gt;][ [-DataTransferLimit] &lt;int&gt;][ [-Folder] &lt;HPOneView.Storage.NimbleFolder&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVStorageVolume [-Name] &lt;String&gt;[ [-VolumeTemplate] &lt;Object&gt;] [-Description] &lt;String&gt;[ [-SnapshotStoragePool] &lt;Object&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-EnableAdaptiveOptimization] &lt;SwitchParameter&gt;] [-Capacity] &lt;Int64&gt;[ [-ProvisioningType] &lt;String&gt;][ [-EnableCompression] &lt;Boolean&gt;][ [-EnableDeduplication] &lt;Boolean&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-Shared] &lt;SwitchParameter&gt;][ [-PerformancePolicy] &lt;HPOneView.Storage.PerformancePolicy&gt;][ [-EnableEncryption] &lt;bool&gt;][ [-CachePinning] &lt;bool&gt;][ [-VolumeSet] &lt;HPOneView.Storage.VolumeSet&gt;][ [-EnableIOPSLimit] &lt;bool&gt;][ [-IOPSLimit] &lt;int&gt;][ [-EnableDataTransferLimit] &lt;bool&gt;][ [-DataTransferLimit] &lt;int&gt;][ [-Folder] &lt;HPOneView.Storage.NimbleFolder&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help create a Storage Volume resource on a managed Storage System.  The volume can be created by specifying the Storage Pool or an existing Storage Volume Template.  When the Storage Pool name is not unique, you can either use the -StorageSystem parameter, or pass via the pipeline the Storage Pool from Get-HPOVStoragePool.

If the Storage Volume Template Global Policy is enabled, a valid Storage Volume Template must be provided.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CachePinning &lt;bool&gt;<p>
This is applicable for hybrid (a mix of flash and mechanical storage) arrays, and provides a 100 percent cache hit rate for specific volumes (for example, volumes dedicated to critical applications), and delivers the response times of an all-flash storage system. A volume is pinned when the entire active volume is placed in cache; associated snapshot (inactive) blocks are not pinned. All incoming data after that point is pinned. The number of volumes that can be pinned is limited by the size of the volumes and amount of available cache.

When defined in the Performance Profile, select to enable Cache Pinnning for the Nimble volume to be created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Capacity &lt;Int64&gt;<p>
Aliases [-size]
Max volume capacity in GB.  e.g. 20 to specify 20GB.

<table><tbody><tr><td>Aliases</td><td>size</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DataProtectionLevel &lt;String&gt;<p>
Specify the StoreVirtual protection level (aka Network RAID) for the volume.  Allowed values are:

	* NetworkRaid0None
	* NetworkRaid5SingleParity
	* NetworkRaid10Mirror2Way
	* NetworkRaid10Mirror3Way
	* NetworkRaid10Mirror4Way
	* NetworkRaid6DualParity


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DataTransferLimit &lt;int&gt;<p>
Specify the data transfer limit in MiB/S.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Provide a description for the volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAdaptiveOptimization &lt;SwitchParameter&gt;<p>
Whether or not Adaptive Optimization is enabled on the storage volume.  Only supported with StoreVirtual

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableCompression &lt;Boolean&gt;<p>
Enable compression for StoreServe (3PAR) supported resources. Please verify the InformOS version installed supports Compression.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableDataTransferLimit &lt;bool&gt;<p>
Enable data transfer limit.  If enabled, the -DataTransferLimit parameter must be set.  By default, data transfer limit is not set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableDeduplication &lt;Boolean&gt;<p>
Enable deduplication for SSD-based Storage Pools (CPG).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableEncryption &lt;bool&gt;<p>
When the storage system has encryption enabled, the volume can also be encrypted.  Specify if the volume should be encrypted during creation.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableIOPSLimit &lt;bool&gt;<p>
Set to enable or disable IOPS limit.  If enabled, the -IOPSLimit parameter must be set.  By default, IOPS limit is not set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Folder &lt;HPOneView.Storage.NimbleFolder&gt;<p>
Specify the Nimble folder where the volume should be created.  To get availabe folder objects, use the Get-HPOVStoragePool Cmdlet.  Folders are defined as a device specific attribute. 

Example:

	 (Get-HPOVStoragePool -name default).DeviceSpecificAttributes.Folders

ID                                         Name
--                                         ----
2f1ca8a5d76e271722000000000000000000000001 POSH

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Full &lt;SwitchParameter&gt;<p>
NOTE: This parameter is being deprecated for the -ProvisionType parameter. Please update your scripts.

Include this switch to enable Thick volume provisioning.  Omit to specify Thin storage provisioning.
Default: Thin

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IOPSLimit &lt;int&gt;<p>
When enabling IOPS limit, provide a value that is greater than or equal to 256.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-VolumeName]
Storage Volume Name. Device Volume created on the storage system will be this name without spaces.

<table><tbody><tr><td>Aliases</td><td>VolumeName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PerformancePolicy &lt;HPOneView.Storage.PerformancePolicy&gt;<p>
A Nimble Performance Policy is associated with a storage system.  Using the Show-HPOVStorageSystemPerformancePolicy, choose an available performance policy.

Example:

	Get-HPOVStorageSystem -Name MyNimbleSys | Show-HPOVStorageSystemPerformancePolicy

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ProvisioningType &lt;String&gt;<p>
Specify the type of volume to provision.  Allowed values are:

	* Thin
	* Full
	* TPDD (Thin Provision Dedup) - Only available for HPE StoreServ storage systems with SSD storage pools (aka CPG"s).

<table><tbody><tr><td>Aliases</td><td>ProvisionType</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Shared &lt;SwitchParameter&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapshotStoragePool &lt;Object&gt;<p>
Aliases [-pool, -PoolName]
Storage Pool URI, name or resource object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StoragePool &lt;Object&gt;<p>
Aliases [-pool, -PoolName]
Storage Pool URI, name or resource object.

<table><tbody><tr><td>Aliases</td><td>pool, poolName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
When the Storage Pool name is not unique, specify the Storage System name the pool is managed/associate with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeSet &lt;HPOneView.Storage.VolumeSet&gt;<p>
Use to specify a Volume Set the volume will be associated with, from Get-HPOVStorageVolumeSet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeTemplate &lt;Object&gt;<p>
Aliases [-template, -svt]
Specify the Storage Volume Template Name, URI or Resource.

<table><tbody><tr><td>Aliases</td><td>template, svt</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.Pool [System.Management.Automation.PSCustomObject]**_

 Storage Pool resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async create task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVStorageVolume -name TestVol1 -PoolName PoolR1 -Size 60
</pre>
Create a 60GB private, thin provisioned volume named "TestVol1" from the "PoolR1" Storage Pool.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStoragePool PoolR1 | New-HPOVStorageVolume -name TestVol1 PoolR1 -Size 60
</pre>
Get the "PoolR1" Storage Pool resource and pipe it to create a 60GB private, thin provisioned volume named "TestVol1".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVStoragePool PoolR1 -StorageSystem 3ParSys1 | New-HPOVStorageVolume -name TestVol1 -Size 60
</pre>
Get the "PoolR1" Storage Pool resource and pipe it to create a 60GB private, thin provisioned volume named "TestVol1".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
New-HPOVStorageVolume -name TestVol1 -StoragePool PoolR1 -StorageSystem 3ParSys1 -Size 60
</pre>
Create a 60GB private, thin provisioned volume named "TestVol1" from the "PoolR1" Storage Pool resource that is managed by "3ParSys1".


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$svt = Get-HPOVStorageVolumeTemplate SVT_120GB_R5
$New-HPOVStorageVolume testvol3 -volumetemplate $svt -capacity 90 | Wait-HPOVTaskComplete

</pre>
Create a 90GB volume named "TestVol1", using the "SVT_120GB_R5" Storage Volume Template, then wait for volume to be provisioned.



### Related Links

* [Add-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageVolume)
* [ConvertTo-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVStorageVolume)
* [Get-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolume)
* [Get-HPOVStorageVolumeSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSet)
* [Get-HPOVStorageVolumeSnapShot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSnapShot)
* [Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate)
* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)
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

## New-HPOVStorageVolume
<p>
Create a Storage Volume resource.

### SYNTAX
<p>
<pre><code>New-HPOVStorageVolume [-Name] &lt;String&gt; [-StoragePool] &lt;Object&gt; [-Description] &lt;String&gt;[ [-SnapshotStoragePool] &lt;Object&gt;][ [-StorageSystem] &lt;Object&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-EnableAdaptiveOptimization] &lt;SwitchParameter&gt;] [-Capacity] &lt;Int64&gt;[ [-ProvisioningType] &lt;String&gt;][ [-EnableCompression] &lt;Boolean&gt;][ [-EnableDeduplication] &lt;Boolean&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-Shared] &lt;SwitchParameter&gt;][ [-PerformancePolicy] &lt;HPOneView.Storage.PerformancePolicy&gt;][ [-EnableEncryption] &lt;bool&gt;][ [-CachePinning] &lt;bool&gt;][ [-VolumeSet] &lt;HPOneView.Storage.VolumeSet&gt;][ [-EnableIOPSLimit] &lt;bool&gt;][ [-IOPSLimit] &lt;int&gt;][ [-EnableDataTransferLimit] &lt;bool&gt;][ [-DataTransferLimit] &lt;int&gt;][ [-Folder] &lt;HPOneView.Storage.NimbleFolder&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVStorageVolume [-Name] &lt;String&gt;[ [-VolumeTemplate] &lt;Object&gt;] [-Description] &lt;String&gt;[ [-SnapshotStoragePool] &lt;Object&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-EnableAdaptiveOptimization] &lt;SwitchParameter&gt;] [-Capacity] &lt;Int64&gt;[ [-ProvisioningType] &lt;String&gt;][ [-EnableCompression] &lt;Boolean&gt;][ [-EnableDeduplication] &lt;Boolean&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-Shared] &lt;SwitchParameter&gt;][ [-PerformancePolicy] &lt;HPOneView.Storage.PerformancePolicy&gt;][ [-EnableEncryption] &lt;bool&gt;][ [-CachePinning] &lt;bool&gt;][ [-VolumeSet] &lt;HPOneView.Storage.VolumeSet&gt;][ [-EnableIOPSLimit] &lt;bool&gt;][ [-IOPSLimit] &lt;int&gt;][ [-EnableDataTransferLimit] &lt;bool&gt;][ [-DataTransferLimit] &lt;int&gt;][ [-Folder] &lt;HPOneView.Storage.NimbleFolder&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help create a Storage Volume resource on a managed Storage System.  The volume can be created by specifying the Storage Pool or an existing Storage Volume Template.  When the Storage Pool name is not unique, you can either use the -StorageSystem parameter, or pass via the pipeline the Storage Pool from Get-HPOVStoragePool.

If the Storage Volume Template Global Policy is enabled, a valid Storage Volume Template must be provided.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CachePinning &lt;bool&gt;<p>
This is applicable for hybrid (a mix of flash and mechanical storage) arrays, and provides a 100 percent cache hit rate for specific volumes (for example, volumes dedicated to critical applications), and delivers the response times of an all-flash storage system. A volume is pinned when the entire active volume is placed in cache; associated snapshot (inactive) blocks are not pinned. All incoming data after that point is pinned. The number of volumes that can be pinned is limited by the size of the volumes and amount of available cache.

When defined in the Performance Profile, select to enable Cache Pinnning for the Nimble volume to be created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Capacity &lt;Int64&gt;<p>
Aliases [-size]
Max volume capacity in GB.  e.g. 20 to specify 20GB.

<table><tbody><tr><td>Aliases</td><td>size</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DataProtectionLevel &lt;String&gt;<p>
Specify the StoreVirtual protection level (aka Network RAID) for the volume.  Allowed values are:

	* NetworkRaid0None
	* NetworkRaid5SingleParity
	* NetworkRaid10Mirror2Way
	* NetworkRaid10Mirror3Way
	* NetworkRaid10Mirror4Way
	* NetworkRaid6DualParity


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DataTransferLimit &lt;int&gt;<p>
Specify the data transfer limit in MiB/S.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Provide a description for the volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAdaptiveOptimization &lt;SwitchParameter&gt;<p>
Whether or not Adaptive Optimization is enabled on the storage volume.  Only supported with StoreVirtual

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableCompression &lt;Boolean&gt;<p>
Enable compression for StoreServe (3PAR) supported resources. Please verify the InformOS version installed supports Compression.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableDataTransferLimit &lt;bool&gt;<p>
Enable data transfer limit.  If enabled, the -DataTransferLimit parameter must be set.  By default, data transfer limit is not set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableDeduplication &lt;Boolean&gt;<p>
Enable deduplication for SSD-based Storage Pools (CPG).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableEncryption &lt;bool&gt;<p>
When the storage system has encryption enabled, the volume can also be encrypted.  Specify if the volume should be encrypted during creation.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableIOPSLimit &lt;bool&gt;<p>
Set to enable or disable IOPS limit.  If enabled, the -IOPSLimit parameter must be set.  By default, IOPS limit is not set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Folder &lt;HPOneView.Storage.NimbleFolder&gt;<p>
Specify the Nimble folder where the volume should be created.  To get availabe folder objects, use the Get-HPOVStoragePool Cmdlet.  Folders are defined as a device specific attribute. 

Example:

	 (Get-HPOVStoragePool -name default).DeviceSpecificAttributes.Folders

ID                                         Name
--                                         ----
2f1ca8a5d76e271722000000000000000000000001 POSH

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Full &lt;SwitchParameter&gt;<p>
NOTE: This parameter is being deprecated for the -ProvisionType parameter. Please update your scripts.

Include this switch to enable Thick volume provisioning.  Omit to specify Thin storage provisioning.
Default: Thin

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IOPSLimit &lt;int&gt;<p>
When enabling IOPS limit, provide a value that is greater than or equal to 256.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-VolumeName]
Storage Volume Name. Device Volume created on the storage system will be this name without spaces.

<table><tbody><tr><td>Aliases</td><td>VolumeName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PerformancePolicy &lt;HPOneView.Storage.PerformancePolicy&gt;<p>
A Nimble Performance Policy is associated with a storage system.  Using the Show-HPOVStorageSystemPerformancePolicy, choose an available performance policy.

Example:

	Get-HPOVStorageSystem -Name MyNimbleSys | Show-HPOVStorageSystemPerformancePolicy

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ProvisioningType &lt;String&gt;<p>
Specify the type of volume to provision.  Allowed values are:

	* Thin
	* Full
	* TPDD (Thin Provision Dedup) - Only available for HPE StoreServ storage systems with SSD storage pools (aka CPG"s).

<table><tbody><tr><td>Aliases</td><td>ProvisionType</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Shared &lt;SwitchParameter&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapshotStoragePool &lt;Object&gt;<p>
Aliases [-pool, -PoolName]
Storage Pool URI, name or resource object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StoragePool &lt;Object&gt;<p>
Aliases [-pool, -PoolName]
Storage Pool URI, name or resource object.

<table><tbody><tr><td>Aliases</td><td>pool, poolName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
When the Storage Pool name is not unique, specify the Storage System name the pool is managed/associate with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeSet &lt;HPOneView.Storage.VolumeSet&gt;<p>
Use to specify a Volume Set the volume will be associated with, from Get-HPOVStorageVolumeSet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeTemplate &lt;Object&gt;<p>
Aliases [-template, -svt]
Specify the Storage Volume Template Name, URI or Resource.

<table><tbody><tr><td>Aliases</td><td>template, svt</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.Pool [System.Management.Automation.PSCustomObject]**_

 Storage Pool resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async create task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVStorageVolume -name TestVol1 -PoolName PoolR1 -Size 60
</pre>
Create a 60GB private, thin provisioned volume named "TestVol1" from the "PoolR1" Storage Pool.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStoragePool PoolR1 | New-HPOVStorageVolume -name TestVol1 PoolR1 -Size 60
</pre>
Get the "PoolR1" Storage Pool resource and pipe it to create a 60GB private, thin provisioned volume named "TestVol1".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVStoragePool PoolR1 -StorageSystem 3ParSys1 | New-HPOVStorageVolume -name TestVol1 -Size 60
</pre>
Get the "PoolR1" Storage Pool resource and pipe it to create a 60GB private, thin provisioned volume named "TestVol1".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
New-HPOVStorageVolume -name TestVol1 -StoragePool PoolR1 -StorageSystem 3ParSys1 -Size 60
</pre>
Create a 60GB private, thin provisioned volume named "TestVol1" from the "PoolR1" Storage Pool resource that is managed by "3ParSys1".


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$svt = Get-HPOVStorageVolumeTemplate SVT_120GB_R5
$New-HPOVStorageVolume testvol3 -volumetemplate $svt -capacity 90 | Wait-HPOVTaskComplete

</pre>
Create a 90GB volume named "TestVol1", using the "SVT_120GB_R5" Storage Volume Template, then wait for volume to be provisioned.



### Related Links

* [Add-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageVolume)
* [ConvertTo-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVStorageVolume)
* [Get-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolume)
* [Get-HPOVStorageVolumeSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSet)
* [Get-HPOVStorageVolumeSnapShot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSnapShot)
* [Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate)
* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)
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

## New-HPOVStorageVolume
<p>
Create a Storage Volume resource.

### SYNTAX
<p>
<pre><code>New-HPOVStorageVolume [-Name] &lt;String&gt; [-StoragePool] &lt;Object&gt; [-Description] &lt;String&gt;[ [-SnapshotStoragePool] &lt;Object&gt;][ [-StorageSystem] &lt;Object&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-EnableAdaptiveOptimization] &lt;SwitchParameter&gt;] [-Capacity] &lt;Int64&gt;[ [-ProvisioningType] &lt;String&gt;][ [-EnableCompression] &lt;Boolean&gt;][ [-EnableDeduplication] &lt;Boolean&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-Shared] &lt;SwitchParameter&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVStorageVolume [-Name] &lt;String&gt;[ [-VolumeTemplate] &lt;Object&gt;] [-Description] &lt;String&gt;[ [-SnapshotStoragePool] &lt;Object&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-EnableAdaptiveOptimization] &lt;SwitchParameter&gt;] [-Capacity] &lt;Int64&gt;[ [-ProvisioningType] &lt;String&gt;][ [-EnableCompression] &lt;Boolean&gt;][ [-EnableDeduplication] &lt;Boolean&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-Shared] &lt;SwitchParameter&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help create a Storage Volume resource on a managed Storage System.  The volume can be created by specifying the Storage Pool or an existing Storage Volume Template.  When the Storage Pool name is not unique, you can either use the -StorageSystem parameter, or pass via the pipeline the Storage Pool from Get-HPOVStoragePool.

If the Storage Volume Template Global Policy is enabled, a valid Storage Volume Template must be provided.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Capacity &lt;Int64&gt;<p>
Aliases [-size]
Max volume capacity in GB.  e.g. 20 to specify 20GB.

<table><tbody><tr><td>Aliases</td><td>size</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DataProtectionLevel &lt;String&gt;<p>
Specify the StoreVirtual protection level (aka Network RAID) for the volume.  Allowed values are:

	* NetworkRaid0None
	* NetworkRaid5SingleParity
	* NetworkRaid10Mirror2Way
	* NetworkRaid10Mirror3Way
	* NetworkRaid10Mirror4Way
	* NetworkRaid6DualParity


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Provide a description for the volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAdaptiveOptimization &lt;SwitchParameter&gt;<p>
Whether or not Adaptive Optimization is enabled on the storage volume.  Only supported with StoreVirtual

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableCompression &lt;Boolean&gt;<p>
Enable compression for StoreServe (3PAR) supported resources. Please verify the InformOS version installed supports Compression.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableDeduplication &lt;Boolean&gt;<p>
Enable deduplication for SSD-based Storage Pools (CPG).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Full &lt;SwitchParameter&gt;<p>
NOTE: This parameter is being deprecated for the -ProvisionType parameter. Please update your scripts.

Include this switch to enable Thick volume provisioning.  Omit to specify Thin storage provisioning.
Default: Thin

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-VolumeName]
Storage Volume Name. Device Volume created on the storage system will be this name without spaces.

<table><tbody><tr><td>Aliases</td><td>VolumeName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ProvisioningType &lt;String&gt;<p>
Specify the type of volume to provision.  Allowed values are:

	* Thin
	* Full
	* TPDD (Thin Provision Dedup) - Only available for HPE StoreServ storage systems with SSD storage pools (aka CPG"s).

<table><tbody><tr><td>Aliases</td><td>ProvisionType</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Shared &lt;SwitchParameter&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapshotStoragePool &lt;Object&gt;<p>
Aliases [-pool, -PoolName]
Storage Pool URI, name or resource object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StoragePool &lt;Object&gt;<p>
Aliases [-pool, -PoolName]
Storage Pool URI, name or resource object.

<table><tbody><tr><td>Aliases</td><td>pool, poolName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
When the Storage Pool name is not unique, specify the Storage System name the pool is managed/associate with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeTemplate &lt;Object&gt;<p>
Aliases [-template, -svt]
Specify the Storage Volume Template Name, URI or Resource.

<table><tbody><tr><td>Aliases</td><td>template, svt</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.Pool [System.Management.Automation.PSCustomObject]**_

 Storage Pool resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async create task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVStorageVolume -name TestVol1 -PoolName PoolR1 -Size 60
</pre>
Create a 60GB private, thin provisioned volume named "TestVol1" from the "PoolR1" Storage Pool.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStoragePool PoolR1 | New-HPOVStorageVolume -name TestVol1 PoolR1 -Size 60
</pre>
Get the "PoolR1" Storage Pool resource and pipe it to create a 60GB private, thin provisioned volume named "TestVol1".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVStoragePool PoolR1 -StorageSystem 3ParSys1 | New-HPOVStorageVolume -name TestVol1 -Size 60
</pre>
Get the "PoolR1" Storage Pool resource and pipe it to create a 60GB private, thin provisioned volume named "TestVol1".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
New-HPOVStorageVolume -name TestVol1 -StoragePool PoolR1 -StorageSystem 3ParSys1 -Size 60
</pre>
Create a 60GB private, thin provisioned volume named "TestVol1" from the "PoolR1" Storage Pool resource that is managed by "3ParSys1".


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$svt = Get-HPOVStorageVolumeTemplate SVT_120GB_R5
$New-HPOVStorageVolume testvol3 -volumetemplate $svt -capacity 90 | Wait-HPOVTaskComplete

</pre>
Create a 90GB volume named "TestVol1", using the "SVT_120GB_R5" Storage Volume Template, then wait for volume to be provisioned.



### Related Links

* [Add-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageVolume)
* [ConvertTo-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVStorageVolume)
* [Get-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolume)
* [Get-HPOVStorageVolumeSnapShot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSnapShot)
* [Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate)
* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)
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
