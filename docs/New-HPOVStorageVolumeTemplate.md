<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVStorageVolumeTemplate
<p>
Create storage volume template.

### SYNTAX
<p>
<pre><code>New-HPOVStorageVolumeTemplate [-Name] &lt;String&gt;[ [-StoragePool] &lt;Object&gt;] [-Capacity] &lt;Int64&gt;[ [-Description] &lt;String&gt;][ [-LockStoragePool] &lt;SwitchParameter&gt;][ [-SnapshotStoragePool] &lt;Object&gt;][ [-LockSnapShotStoragePool] &lt;SwitchParameter&gt;][ [-StorageSystem] &lt;Object&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-ProvisioningType] &lt;String&gt;][ [-LockProvisionType] &lt;SwitchParameter&gt;][ [-EnableDeduplication] &lt;Boolean&gt;][ [-LockEnableDeduplication] &lt;SwitchParameter&gt;][ [-EnableCompression] &lt;Boolean&gt;][ [-LockEnableCompression] &lt;SwitchParameter&gt;][ [-Shared] &lt;SwitchParameter&gt;][ [-LockProvisionMode] &lt;SwitchParameter&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVStorageVolumeTemplate [-Name] &lt;String&gt;[ [-StoragePool] &lt;Object&gt;] [-Capacity] &lt;Int64&gt;[ [-PerformancePolicy] &lt;HPOneView.Storage.PerformancePolicy&gt;][ [-Description] &lt;String&gt;][ [-LockStoragePool] &lt;SwitchParameter&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-ProvisioningType] &lt;String&gt;][ [-LockProvisionType] &lt;SwitchParameter&gt;][ [-Shared] &lt;SwitchParameter&gt;][ [-LockProvisionMode] &lt;SwitchParameter&gt;][ [-LockPerformancePolicy] &lt;SwitchParameter&gt;][ [-EnableEncryption] &lt;bool&gt;][ [-LockEnableEncryption] &lt;SwitchParameter&gt;][ [-CachePinning] &lt;bool&gt;][ [-LockCachePinning] &lt;SwitchParameter&gt;][ [-VolumeSet] &lt;HPOneView.Storage.VolumeSet&gt;][ [-LockVolumeSet] &lt;SwitchParameter&gt;][ [-EnableIOPSLimit] &lt;bool&gt;][ [-IOPSLimit] &lt;int&gt;][ [-LockIOPSLimit] &lt;SwitchParameter&gt;][ [-EnableDataTransferLimit] &lt;bool&gt;][ [-DataTransferLimit] &lt;int&gt;][ [-LockDataTransferLimit] &lt;SwitchParameter&gt;][ [-Folder] &lt;HPOneView.Storage.NimbleFolder&gt;][ [-LockFolder] &lt;SwitchParameter&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVStorageVolumeTemplate [-Name] &lt;String&gt;[ [-StoragePool] &lt;Object&gt;] [-Capacity] &lt;Int64&gt;[ [-Description] &lt;String&gt;][ [-LockStoragePool] &lt;SwitchParameter&gt;][ [-StorageSystem] &lt;Object&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-ProvisioningType] &lt;String&gt;][ [-LockProvisionType] &lt;SwitchParameter&gt;][ [-Shared] &lt;SwitchParameter&gt;][ [-LockProvisionMode] &lt;SwitchParameter&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-LockProtectionLevel] &lt;SwitchParameter&gt;][ [-EnableAdaptiveOptimization] &lt;SwitchParameter&gt;][ [-LockAdaptiveOptimization] &lt;SwitchParameter&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet supports creating Storage Volume Templates, which are then used to provision Storage Volumes.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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
Provide the description for the Storage Volume Template

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAdaptiveOptimization &lt;SwitchParameter&gt;<p>
Whether or not Adaptive Optimization is enabled on the storage volume.  Only supported with StoreVirtual.

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

 -LockEnableCompression &lt;SwitchParameter&gt;<p>
Lock the EnableCompression value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockEnableDeduplication &lt;SwitchParameter&gt;<p>
Lock the EnableDeduplication value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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

 -LockStoragePool &lt;SwitchParameter&gt;<p>
Specify to lock the StoragePool value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockVolumeSet &lt;SwitchParameter&gt;<p>
Lock the VolumeSet value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-TemplateName]

Storage Volume Template name

<table><tbody><tr><td>Aliases</td><td>TemplateName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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
Include this switch to mark the Storage Volume Template as a Shareable resource for shared volume access.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapshotStoragePool &lt;Object&gt;<p>
Specify the Storage Pool (aka CPG) the Storage Volume Template will use for volume snapshot use.  The provided Storage Pool must already be managed by OneView.  If you omit this value, then the StoragePool parameter value will be used.  Only supported with HPE StoreServe platforms.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StoragePool &lt;Object&gt;<p>
Specify the Storage Pool (aka CPG) the Storage Volume Template will be associated with.  Storage Pool must already be managed by OneView.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
If there are multiple Storage Pool resources with the same name, use this parameter to filter for the correct pool object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeSet &lt;HPOneView.Storage.VolumeSet&gt;<p>
Use to specify a Volume Set the volume will be associated with, from Get-HPOVStorageVolumeSet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System.Pool [System.Management.Automation.PSCustomObject]**_

 Managed Storage Pool resource



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Created Storage Volume Template resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVStorageVolumeTemplate -templateName yellow-svt -storagePool yellow -capacity 40
</pre>
Create a new Storage Volume Template, setting the max size to 40GB, Thin Provisioning and Private.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$storageVolTemplate = New-HPOVStorageVolumeTemplate -templateName vmware-shared-svt -storagePool R5-CPG12 -capacity 250 -shared
</pre>
Create a new Storage Volume Template, setting the max size to 250GB, Thin Provisioning and Shareable.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$storagePool = Get-HPOVStoragePool R5-CPG12
$storageVolTemplate = New-HPOVStorageVolumeTemplate -templateName vmware-shared-svt -storagePool $storagePool -capacity 250 -shared

</pre>
Use the Get-HPOVStoragePool cmdlet to get the "R5-CPG12" pool, and create a new Storage Volume Template, setting the max size to 250GB, Thin Provisioning and Shareable.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$svt = Get-HPOVStoragePool R5-CPG12 | New-HPOVStorageVolumeTemplate -templateName vmware-shared-svt -SnapshotStoragePool "MySnapShotPool" -capacity 250 -shared
</pre>
Use the Get-HPOVStoragePool cmdlet to get the "R5-CPG12" pool, and create a new Storage Volume Template, setting the max size to 250GB, Thin Provisioning, Shareable, and providing the Snapshot Storage Pool.



### Related Links

* [Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate)
* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)
* [Remove-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVStorageVolumeTemplate
<p>
Create storage volume template.

### SYNTAX
<p>
<pre><code>New-HPOVStorageVolumeTemplate [-Name] &lt;String&gt;[ [-StoragePool] &lt;Object&gt;] [-Capacity] &lt;Int64&gt;[ [-Description] &lt;String&gt;][ [-LockStoragePool] &lt;SwitchParameter&gt;][ [-SnapshotStoragePool] &lt;Object&gt;][ [-LockSnapShotStoragePool] &lt;SwitchParameter&gt;][ [-StorageSystem] &lt;Object&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-ProvisioningType] &lt;String&gt;][ [-LockProvisionType] &lt;SwitchParameter&gt;][ [-EnableDeduplication] &lt;Boolean&gt;][ [-LockEnableDeduplication] &lt;SwitchParameter&gt;][ [-EnableCompression] &lt;Boolean&gt;][ [-LockEnableCompression] &lt;SwitchParameter&gt;][ [-Shared] &lt;SwitchParameter&gt;][ [-LockProvisionMode] &lt;SwitchParameter&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVStorageVolumeTemplate [-Name] &lt;String&gt;[ [-StoragePool] &lt;Object&gt;] [-Capacity] &lt;Int64&gt;[ [-PerformancePolicy] &lt;HPOneView.Storage.PerformancePolicy&gt;][ [-Description] &lt;String&gt;][ [-LockStoragePool] &lt;SwitchParameter&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-ProvisioningType] &lt;String&gt;][ [-LockProvisionType] &lt;SwitchParameter&gt;][ [-Shared] &lt;SwitchParameter&gt;][ [-LockProvisionMode] &lt;SwitchParameter&gt;][ [-LockPerformancePolicy] &lt;SwitchParameter&gt;][ [-EnableEncryption] &lt;bool&gt;][ [-LockEnableEncryption] &lt;SwitchParameter&gt;][ [-CachePinning] &lt;bool&gt;][ [-LockCachePinning] &lt;SwitchParameter&gt;][ [-VolumeSet] &lt;HPOneView.Storage.VolumeSet&gt;][ [-LockVolumeSet] &lt;SwitchParameter&gt;][ [-EnableIOPSLimit] &lt;bool&gt;][ [-IOPSLimit] &lt;int&gt;][ [-LockIOPSLimit] &lt;SwitchParameter&gt;][ [-EnableDataTransferLimit] &lt;bool&gt;][ [-DataTransferLimit] &lt;int&gt;][ [-LockDataTransferLimit] &lt;SwitchParameter&gt;][ [-Folder] &lt;HPOneView.Storage.NimbleFolder&gt;][ [-LockFolder] &lt;SwitchParameter&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVStorageVolumeTemplate [-Name] &lt;String&gt;[ [-StoragePool] &lt;Object&gt;] [-Capacity] &lt;Int64&gt;[ [-Description] &lt;String&gt;][ [-LockStoragePool] &lt;SwitchParameter&gt;][ [-StorageSystem] &lt;Object&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-ProvisioningType] &lt;String&gt;][ [-LockProvisionType] &lt;SwitchParameter&gt;][ [-Shared] &lt;SwitchParameter&gt;][ [-LockProvisionMode] &lt;SwitchParameter&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-LockProtectionLevel] &lt;SwitchParameter&gt;][ [-EnableAdaptiveOptimization] &lt;SwitchParameter&gt;][ [-LockAdaptiveOptimization] &lt;SwitchParameter&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet supports creating Storage Volume Templates, which are then used to provision Storage Volumes.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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
Provide the description for the Storage Volume Template

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAdaptiveOptimization &lt;SwitchParameter&gt;<p>
Whether or not Adaptive Optimization is enabled on the storage volume.  Only supported with StoreVirtual.

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

 -LockEnableCompression &lt;SwitchParameter&gt;<p>
Lock the EnableCompression value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockEnableDeduplication &lt;SwitchParameter&gt;<p>
Lock the EnableDeduplication value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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

 -LockStoragePool &lt;SwitchParameter&gt;<p>
Specify to lock the StoragePool value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockVolumeSet &lt;SwitchParameter&gt;<p>
Lock the VolumeSet value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-TemplateName]

Storage Volume Template name

<table><tbody><tr><td>Aliases</td><td>TemplateName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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
Include this switch to mark the Storage Volume Template as a Shareable resource for shared volume access.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapshotStoragePool &lt;Object&gt;<p>
Specify the Storage Pool (aka CPG) the Storage Volume Template will use for volume snapshot use.  The provided Storage Pool must already be managed by OneView.  If you omit this value, then the StoragePool parameter value will be used.  Only supported with HPE StoreServe platforms.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StoragePool &lt;Object&gt;<p>
Specify the Storage Pool (aka CPG) the Storage Volume Template will be associated with.  Storage Pool must already be managed by OneView.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
If there are multiple Storage Pool resources with the same name, use this parameter to filter for the correct pool object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeSet &lt;HPOneView.Storage.VolumeSet&gt;<p>
Use to specify a Volume Set the volume will be associated with, from Get-HPOVStorageVolumeSet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System.Pool [System.Management.Automation.PSCustomObject]**_

 Managed Storage Pool resource



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Created Storage Volume Template resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVStorageVolumeTemplate -templateName yellow-svt -storagePool yellow -capacity 40
</pre>
Create a new Storage Volume Template, setting the max size to 40GB, Thin Provisioning and Private.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$storageVolTemplate = New-HPOVStorageVolumeTemplate -templateName vmware-shared-svt -storagePool R5-CPG12 -capacity 250 -shared
</pre>
Create a new Storage Volume Template, setting the max size to 250GB, Thin Provisioning and Shareable.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$storagePool = Get-HPOVStoragePool R5-CPG12
$storageVolTemplate = New-HPOVStorageVolumeTemplate -templateName vmware-shared-svt -storagePool $storagePool -capacity 250 -shared

</pre>
Use the Get-HPOVStoragePool cmdlet to get the "R5-CPG12" pool, and create a new Storage Volume Template, setting the max size to 250GB, Thin Provisioning and Shareable.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$svt = Get-HPOVStoragePool R5-CPG12 | New-HPOVStorageVolumeTemplate -templateName vmware-shared-svt -SnapshotStoragePool "MySnapShotPool" -capacity 250 -shared
</pre>
Use the Get-HPOVStoragePool cmdlet to get the "R5-CPG12" pool, and create a new Storage Volume Template, setting the max size to 250GB, Thin Provisioning, Shareable, and providing the Snapshot Storage Pool.



### Related Links

* [Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate)
* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)
* [Remove-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVStorageVolumeTemplate
<p>
Create storage volume template.

### SYNTAX
<p>
<pre><code>New-HPOVStorageVolumeTemplate [-Name] &lt;String&gt;[ [-StoragePool] &lt;Object&gt;] [-Capacity] &lt;Int64&gt;[ [-Description] &lt;String&gt;][ [-LockStoragePool] &lt;SwitchParameter&gt;][ [-SnapshotStoragePool] &lt;Object&gt;][ [-LockSnapShotStoragePool] &lt;SwitchParameter&gt;][ [-StorageSystem] &lt;Object&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-ProvisioningType] &lt;String&gt;][ [-LockProvisionType] &lt;SwitchParameter&gt;][ [-EnableDeduplication] &lt;Boolean&gt;][ [-LockEnableDeduplication] &lt;SwitchParameter&gt;][ [-EnableCompression] &lt;Boolean&gt;][ [-LockEnableCompression] &lt;SwitchParameter&gt;][ [-Shared] &lt;SwitchParameter&gt;][ [-LockProvisionMode] &lt;SwitchParameter&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVStorageVolumeTemplate [-Name] &lt;String&gt;[ [-StoragePool] &lt;Object&gt;] [-Capacity] &lt;Int64&gt;[ [-Description] &lt;String&gt;][ [-LockStoragePool] &lt;SwitchParameter&gt;][ [-StorageSystem] &lt;Object&gt;][ [-LockCapacity] &lt;SwitchParameter&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-ProvisioningType] &lt;String&gt;][ [-LockProvisionType] &lt;SwitchParameter&gt;][ [-Shared] &lt;SwitchParameter&gt;][ [-LockProvisionMode] &lt;SwitchParameter&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-LockProtectionLevel] &lt;SwitchParameter&gt;][ [-EnableAdaptiveOptimization] &lt;SwitchParameter&gt;][ [-LockAdaptiveOptimization] &lt;SwitchParameter&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet supports creating Storage Volume Templates, which are then used to provision Storage Volumes.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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
Provide the description for the Storage Volume Template

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAdaptiveOptimization &lt;SwitchParameter&gt;<p>
Whether or not Adaptive Optimization is enabled on the storage volume.  Only supported with StoreVirtual.

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

 -LockAdaptiveOptimization &lt;SwitchParameter&gt;<p>
Specify to lock the EnableAdaptiveOptimization value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockCapacity &lt;SwitchParameter&gt;<p>
Specify to lock the Capacity value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockEnableCompression &lt;SwitchParameter&gt;<p>
Lock the EnableCompression value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LockEnableDeduplication &lt;SwitchParameter&gt;<p>
Lock the EnableDeduplication value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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

 -LockStoragePool &lt;SwitchParameter&gt;<p>
Specify to lock the StoragePool value in the template.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-TemplateName]

Storage Volume Template name

<table><tbody><tr><td>Aliases</td><td>TemplateName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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
Include this switch to mark the Storage Volume Template as a Shareable resource for shared volume access.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapshotStoragePool &lt;Object&gt;<p>
Specify the Storage Pool (aka CPG) the Storage Volume Template will use for volume snapshot use.  The provided Storage Pool must already be managed by OneView.  If you omit this value, then the StoragePool parameter value will be used.  Only supported with HPE StoreServe platforms.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StoragePool &lt;Object&gt;<p>
Specify the Storage Pool (aka CPG) the Storage Volume Template will be associated with.  Storage Pool must already be managed by OneView.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
If there are multiple Storage Pool resources with the same name, use this parameter to filter for the correct pool object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System.Pool [System.Management.Automation.PSCustomObject]**_

 Managed Storage Pool resource



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Created Storage Volume Template resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVStorageVolumeTemplate -templateName yellow-svt -storagePool yellow -capacity 40
</pre>
Create a new Storage Volume Template, setting the max size to 40GB, Thin Provisioning and Private.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$storageVolTemplate = New-HPOVStorageVolumeTemplate -templateName vmware-shared-svt -storagePool R5-CPG12 -capacity 250 -shared
</pre>
Create a new Storage Volume Template, setting the max size to 250GB, Thin Provisioning and Shareable.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$storagePool = Get-HPOVStoragePool R5-CPG12
$storageVolTemplate = New-HPOVStorageVolumeTemplate -templateName vmware-shared-svt -storagePool $storagePool -capacity 250 -shared

</pre>
Use the Get-HPOVStoragePool cmdlet to get the "R5-CPG12" pool, and create a new Storage Volume Template, setting the max size to 250GB, Thin Provisioning and Shareable.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$svt = Get-HPOVStoragePool R5-CPG12 | New-HPOVStorageVolumeTemplate -templateName vmware-shared-svt -SnapshotStoragePool "MySnapShotPool" -capacity 250 -shared
</pre>
Use the Get-HPOVStoragePool cmdlet to get the "R5-CPG12" pool, and create a new Storage Volume Template, setting the max size to 250GB, Thin Provisioning, Shareable, and providing the Snapshot Storage Pool.



### Related Links

* [Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate)
* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)
* [Remove-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
