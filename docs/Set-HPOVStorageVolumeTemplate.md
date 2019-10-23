<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVStorageVolumeTemplate
<p>
Modify an existing Storage Volume Template resource.

### SYNTAX
<p>
<pre><code>Set-HPOVStorageVolumeTemplate [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Description] &lt;String&gt;][ [-SnapshotStoragePool] &lt;Object&gt;][ [-LockSnapShotStoragePool] &lt;SwitchParameter&gt;][ [-StorageSystem] &lt;Object&gt;][ [-Capacity] &lt;Int64&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-Thin] &lt;SwitchParameter&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-ProvisioningType] &lt;String&gt;][ [-LockProvisionType] &lt;SwitchParameter&gt;][ [-Shared] &lt;Boolean&gt;][ [-LockProvisionMode] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVStorageVolumeTemplate [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Description] &lt;String&gt;][ [-StorageSystem] &lt;Object&gt;][ [-Capacity] &lt;Int64&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-ProvisioningType] &lt;String&gt;][ [-PerformancePolicy] &lt;HPOneView.Storage.PerformancePolicy&gt;][ [-LockPerformancePolicy] &lt;SwitchParameter&gt;][ [-EnableEncryption] &lt;bool&gt;][ [-LockEnableEncryption] &lt;SwitchParameter&gt;][ [-CachePinning] &lt;bool&gt;][ [-LockCachePinning] &lt;SwitchParameter&gt;][ [-VolumeSet] &lt;HPOneView.Storage.VolumeSet&gt;][ [-LockVolumeSet] &lt;SwitchParameter&gt;][ [-EnableIOPSLimit] &lt;bool&gt;][ [-IOPSLimit] &lt;int&gt;][ [-LockIOPSLimit] &lt;SwitchParameter&gt;][ [-EnableDataTransferLimit] &lt;bool&gt;][ [-DataTransferLimit] &lt;int&gt;][ [-LockDataTransferLimit] &lt;SwitchParameter&gt;][ [-Folder] &lt;HPOneView.Storage.NimbleFolder&gt;][ [-LockFolder] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVStorageVolumeTemplate [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Description] &lt;String&gt;][ [-StorageSystem] &lt;Object&gt;][ [-Capacity] &lt;Int64&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-Thin] &lt;SwitchParameter&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-ProvisioningType] &lt;String&gt;][ [-LockProvisionType] &lt;SwitchParameter&gt;][ [-Shared] &lt;Boolean&gt;][ [-LockProvisionMode] &lt;SwitchParameter&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-LockProtectionLevel] &lt;SwitchParameter&gt;][ [-EnableAdaptiveOptimization] &lt;SwitchParameter&gt;][ [-LockAdaptiveOptimization] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help modify an existing Storage Volume Template resource.  Only the Volume Name, Description, Capcity, Snapshot Storage Pool, volume shared state and permenance can be modified.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CachePinning &lt;bool&gt;<p>
This is applicable for hybrid (a mix of flash and mechanical storage) arrays, and provides a 100 percent cache hit rate for specific volumes (for example, volumes dedicated to critical applications), and delivers the response times of an all-flash storage system. A volume is pinned when the entire active volume is placed in cache; associated snapshot (inactive) blocks are not pinned. All incoming data after that point is pinned. The number of volumes that can be pinned is limited by the size of the volumes and amount of available cache.

When defined in the Performance Profile, select to enable Cache Pinnning for the Nimble volume to be created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Capacity &lt;Int64&gt;<p>
Aliases [-size]
New Max volume capacity in GB.  Volume capacity can be increased to maximum of 16 TiB. Decreasing the capacity of volume is not supported. 

Before increasing the capacity of fully provisioned volumes, ensure that the storage pool has enough capacity to support the operation. The update operation might fail if there is not enough space available in the storage pool.

e.g. 20 to specify 20GB.

<table><tbody><tr><td>Aliases</td><td>size</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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
Updated description for the volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAdaptiveOptimization &lt;SwitchParameter&gt;<p>
Whether or not Adaptive Optimization is enabled on the storage volume.  Only supported with StoreVirtual

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableDataTransferLimit &lt;bool&gt;<p>
Enable data transfer limit.  If enabled, the -DataTransferLimit parameter must be set.  By default, data transfer limit is not set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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

Include to change the provisioned type to Full.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IOPSLimit &lt;int&gt;<p>
When enabling IOPS limit, provide a value that is greater than or equal to 256.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-SVT, -Template]

Source Storage Volume Template resource object.

<table><tbody><tr><td>Aliases</td><td>SVT, Template</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockAdaptiveOptimization &lt;SwitchParameter&gt;<p>
Specify to lock the EnableAdaptiveOptimization value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockCachePinning &lt;SwitchParameter&gt;<p>
Lock the CachePinning value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockCapacity &lt;SwitchParameter&gt;<p>
Specify to lock the Capacity value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockDataTransferLimit &lt;SwitchParameter&gt;<p>
Lock the DataTransferLimit value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockEnableEncryption &lt;SwitchParameter&gt;<p>
Lock the EnableEncryption value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockFolder &lt;SwitchParameter&gt;<p>
Lock the Folder value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockIOPSLimit &lt;SwitchParameter&gt;<p>
Lock the IOPSLimit value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockPerformancePolicy &lt;SwitchParameter&gt;<p>
Lock the PerformancePolicy value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockProtectionLevel &lt;SwitchParameter&gt;<p>
Specify to lock the DataProtectionLevel value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockProvisionMode &lt;SwitchParameter&gt;<p>
Specify to lock the Provision Mode (Shared or Private) value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockProvisionType &lt;SwitchParameter&gt;<p>
Specify to lock the ProvisionType value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockSnapShotStoragePool &lt;SwitchParameter&gt;<p>
Specify to lock the SnapshotStoragePool value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockVolumeSet &lt;SwitchParameter&gt;<p>
Lock the VolumeSet value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Updated Storage Volume Template Name.

<table><tbody><tr><td>Aliases</td><td>TemplateName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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

 -Shared &lt;Boolean&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapshotStoragePool &lt;Object&gt;<p>
The Storage Pool Name, URI or Object to be used for Volume Snapshots.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
When the Storage Pool name is not unique, specify the Storage System name the pool is managed/associate with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Thin &lt;SwitchParameter&gt;<p>
NOTE: This parameter is being deprecated for the -ProvisionType parameter. Please update your scripts.

Include to change the provisioned type to Thin.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeSet &lt;HPOneView.Storage.VolumeSet&gt;<p>
Use to specify a Volume Set the volume will be associated with, from Get-HPOVStorageVolumeSet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.VolumeTemplate [System.Management.Automation.PSCustomObject]**_

 Storage Volume Template resource.



### Return Values

_**HPOneView.Storage.VolumeTemplate [System.Management.Automation.PSCustomObject]**_

 

Updated Storage Volume Template object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolumeTemplate -Name MyProdVolTemplate | Set-HPOVStorageVolumeTemplate -Size 160
</pre>
Update "MyProdVolTemplate" volume size to 160GB.



### Related Links

* [Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate)
* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)
* [New-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeTemplate)
* [Remove-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVStorageVolumeTemplate
<p>
Modify an existing Storage Volume Template resource.

### SYNTAX
<p>
<pre><code>Set-HPOVStorageVolumeTemplate [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Description] &lt;String&gt;][ [-SnapshotStoragePool] &lt;Object&gt;][ [-LockSnapShotStoragePool] &lt;SwitchParameter&gt;][ [-StorageSystem] &lt;Object&gt;][ [-Capacity] &lt;Int64&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-Thin] &lt;SwitchParameter&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-ProvisioningType] &lt;String&gt;][ [-LockProvisionType] &lt;SwitchParameter&gt;][ [-Shared] &lt;Boolean&gt;][ [-LockProvisionMode] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVStorageVolumeTemplate [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Description] &lt;String&gt;][ [-StorageSystem] &lt;Object&gt;][ [-Capacity] &lt;Int64&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-ProvisioningType] &lt;String&gt;][ [-PerformancePolicy] &lt;HPOneView.Storage.PerformancePolicy&gt;][ [-LockPerformancePolicy] &lt;SwitchParameter&gt;][ [-EnableEncryption] &lt;bool&gt;][ [-LockEnableEncryption] &lt;SwitchParameter&gt;][ [-CachePinning] &lt;bool&gt;][ [-LockCachePinning] &lt;SwitchParameter&gt;][ [-VolumeSet] &lt;HPOneView.Storage.VolumeSet&gt;][ [-LockVolumeSet] &lt;SwitchParameter&gt;][ [-EnableIOPSLimit] &lt;bool&gt;][ [-IOPSLimit] &lt;int&gt;][ [-LockIOPSLimit] &lt;SwitchParameter&gt;][ [-EnableDataTransferLimit] &lt;bool&gt;][ [-DataTransferLimit] &lt;int&gt;][ [-LockDataTransferLimit] &lt;SwitchParameter&gt;][ [-Folder] &lt;HPOneView.Storage.NimbleFolder&gt;][ [-LockFolder] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVStorageVolumeTemplate [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Description] &lt;String&gt;][ [-StorageSystem] &lt;Object&gt;][ [-Capacity] &lt;Int64&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-Thin] &lt;SwitchParameter&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-ProvisioningType] &lt;String&gt;][ [-LockProvisionType] &lt;SwitchParameter&gt;][ [-Shared] &lt;Boolean&gt;][ [-LockProvisionMode] &lt;SwitchParameter&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-LockProtectionLevel] &lt;SwitchParameter&gt;][ [-EnableAdaptiveOptimization] &lt;SwitchParameter&gt;][ [-LockAdaptiveOptimization] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help modify an existing Storage Volume Template resource.  Only the Volume Name, Description, Capcity, Snapshot Storage Pool, volume shared state and permenance can be modified.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CachePinning &lt;bool&gt;<p>
This is applicable for hybrid (a mix of flash and mechanical storage) arrays, and provides a 100 percent cache hit rate for specific volumes (for example, volumes dedicated to critical applications), and delivers the response times of an all-flash storage system. A volume is pinned when the entire active volume is placed in cache; associated snapshot (inactive) blocks are not pinned. All incoming data after that point is pinned. The number of volumes that can be pinned is limited by the size of the volumes and amount of available cache.

When defined in the Performance Profile, select to enable Cache Pinnning for the Nimble volume to be created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Capacity &lt;Int64&gt;<p>
Aliases [-size]
New Max volume capacity in GB.  Volume capacity can be increased to maximum of 16 TiB. Decreasing the capacity of volume is not supported. 

Before increasing the capacity of fully provisioned volumes, ensure that the storage pool has enough capacity to support the operation. The update operation might fail if there is not enough space available in the storage pool.

e.g. 20 to specify 20GB.

<table><tbody><tr><td>Aliases</td><td>size</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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
Updated description for the volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAdaptiveOptimization &lt;SwitchParameter&gt;<p>
Whether or not Adaptive Optimization is enabled on the storage volume.  Only supported with StoreVirtual

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableDataTransferLimit &lt;bool&gt;<p>
Enable data transfer limit.  If enabled, the -DataTransferLimit parameter must be set.  By default, data transfer limit is not set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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

Include to change the provisioned type to Full.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IOPSLimit &lt;int&gt;<p>
When enabling IOPS limit, provide a value that is greater than or equal to 256.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-SVT, -Template]

Source Storage Volume Template resource object.

<table><tbody><tr><td>Aliases</td><td>SVT, Template</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockAdaptiveOptimization &lt;SwitchParameter&gt;<p>
Specify to lock the EnableAdaptiveOptimization value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockCachePinning &lt;SwitchParameter&gt;<p>
Lock the CachePinning value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockCapacity &lt;SwitchParameter&gt;<p>
Specify to lock the Capacity value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockDataTransferLimit &lt;SwitchParameter&gt;<p>
Lock the DataTransferLimit value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockEnableEncryption &lt;SwitchParameter&gt;<p>
Lock the EnableEncryption value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockFolder &lt;SwitchParameter&gt;<p>
Lock the Folder value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockIOPSLimit &lt;SwitchParameter&gt;<p>
Lock the IOPSLimit value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockPerformancePolicy &lt;SwitchParameter&gt;<p>
Lock the PerformancePolicy value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockProtectionLevel &lt;SwitchParameter&gt;<p>
Specify to lock the DataProtectionLevel value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockProvisionMode &lt;SwitchParameter&gt;<p>
Specify to lock the Provision Mode (Shared or Private) value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockProvisionType &lt;SwitchParameter&gt;<p>
Specify to lock the ProvisionType value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockSnapShotStoragePool &lt;SwitchParameter&gt;<p>
Specify to lock the SnapshotStoragePool value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockVolumeSet &lt;SwitchParameter&gt;<p>
Lock the VolumeSet value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Updated Storage Volume Template Name.

<table><tbody><tr><td>Aliases</td><td>TemplateName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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

 -Shared &lt;Boolean&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapshotStoragePool &lt;Object&gt;<p>
The Storage Pool Name, URI or Object to be used for Volume Snapshots.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
When the Storage Pool name is not unique, specify the Storage System name the pool is managed/associate with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Thin &lt;SwitchParameter&gt;<p>
NOTE: This parameter is being deprecated for the -ProvisionType parameter. Please update your scripts.

Include to change the provisioned type to Thin.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeSet &lt;HPOneView.Storage.VolumeSet&gt;<p>
Use to specify a Volume Set the volume will be associated with, from Get-HPOVStorageVolumeSet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.VolumeTemplate [System.Management.Automation.PSCustomObject]**_

 Storage Volume Template resource.



### Return Values

_**HPOneView.Storage.VolumeTemplate [System.Management.Automation.PSCustomObject]**_

 

Updated Storage Volume Template object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolumeTemplate -Name MyProdVolTemplate | Set-HPOVStorageVolumeTemplate -Size 160
</pre>
Update "MyProdVolTemplate" volume size to 160GB.



### Related Links

* [Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate)
* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)
* [New-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeTemplate)
* [Remove-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVStorageVolumeTemplate
<p>
Modify an existing Storage Volume Template resource.

### SYNTAX
<p>
<pre><code>Set-HPOVStorageVolumeTemplate [-InputObject] &lt;Object&gt;[ [-Capacity] &lt;Int64&gt;][ [-Name] &lt;String&gt;][ [-Description] &lt;String&gt;][ [-SnapshotStoragePool] &lt;Object&gt;][ [-LockSnapShotStoragePool] &lt;SwitchParameter&gt;][ [-StorageSystem] &lt;Object&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-Thin] &lt;SwitchParameter&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-LockProvisionType] &lt;SwitchParameter&gt;][ [-Shared] &lt;Boolean&gt;][ [-LockProvisionMode] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVStorageVolumeTemplate [-InputObject] &lt;Object&gt;[ [-Capacity] &lt;Int64&gt;][ [-Name] &lt;String&gt;][ [-Description] &lt;String&gt;][ [-StorageSystem] &lt;Object&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-Thin] &lt;SwitchParameter&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-LockProvisionType] &lt;SwitchParameter&gt;][ [-Shared] &lt;Boolean&gt;][ [-LockProvisionMode] &lt;SwitchParameter&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-LockProtectionLevel] &lt;SwitchParameter&gt;][ [-EnableAdaptiveOptimization] &lt;SwitchParameter&gt;][ [-LockAdaptiveOptimization] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help modify an existing Storage Volume Template resource.  Only the Volume Name, Description, Capcity, Snapshot Storage Pool, volume shared state and permenance can be modified.


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

<table><tbody><tr><td>Aliases</td><td>size</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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
Updated description for the volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAdaptiveOptimization &lt;SwitchParameter&gt;<p>
Whether or not Adaptive Optimization is enabled on the storage volume.  Only supported with StoreVirtual

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Full &lt;SwitchParameter&gt;<p>
NOTE: This parameter is being deprecated for the -ProvisionType parameter. Please update your scripts.

Include to change the provisioned type to Full.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-SVT, -Template]

Source Storage Volume Template resource object.

<table><tbody><tr><td>Aliases</td><td>SVT, Template</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockAdaptiveOptimization &lt;SwitchParameter&gt;<p>
Specify to lock the EnableAdaptiveOptimization value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockCapacity &lt;SwitchParameter&gt;<p>
Specify to lock the Capacity value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockProtectionLevel &lt;SwitchParameter&gt;<p>
Specify to lock the DataProtectionLevel value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockProvisionMode &lt;SwitchParameter&gt;<p>
Specify to lock the Provision Mode (Shared or Private) value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockProvisionType &lt;SwitchParameter&gt;<p>
Specify to lock the ProvisionType value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockSnapShotStoragePool &lt;SwitchParameter&gt;<p>
Specify to lock the SnapshotStoragePool value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Updated Storage Volume Template Name.

<table><tbody><tr><td>Aliases</td><td>TemplateName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Shared &lt;Boolean&gt;<p>
Include this switch to mark the Storage Volume as a Shareable resource for shared volume access.
Default: Private

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapshotStoragePool &lt;Object&gt;<p>
The Storage Pool Name, URI or Object to be used for Volume Snapshots.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
When the Storage Pool name is not unique, specify the Storage System name the pool is managed/associate with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Thin &lt;SwitchParameter&gt;<p>
NOTE: This parameter is being deprecated for the -ProvisionType parameter. Please update your scripts.

Include to change the provisioned type to Thin.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.VolumeTemplate [System.Management.Automation.PSCustomObject]**_

 Storage Volume Template resource.



### Return Values

_**HPOneView.Storage.VolumeTemplate [System.Management.Automation.PSCustomObject]**_

 

Updated Storage Volume Template object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolumeTemplate -Name MyProdVolTemplate | Set-HPOVStorageVolumeTemplate -Size 160
</pre>
Update "MyProdVolTemplate" volume size to 160GB.



### Related Links

* [Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate)
* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)
* [New-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeTemplate)
* [Remove-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
