<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVServerProfileAttachVolume
<p>
Create volume attachment for a server profile.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileAttachVolume [-Volume] &lt;Array&gt; [-VolumeID] &lt;Int32&gt; [-LunIdType] &lt;String&gt;[ [-BootVolume] &lt;SwitchParameter&gt;][ [-TargetPortAssignment] &lt;SwitchParameter&gt;][ [-TargetAddresses] &lt;Array&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileAttachVolume [-Name] &lt;Object&gt; [-ServerProfile] &lt;Object&gt;[ [-PassThru] &lt;SwitchParameter&gt;] [-VolumeID] &lt;Int32&gt;[ [-VolumeTemplate] &lt;Object&gt;] [-StoragePool] &lt;Object&gt;[ [-SnapshotStoragePool] &lt;Object&gt;] [-StorageSystem] &lt;Object&gt; [-Capacity] &lt;Int64&gt;[ [-ProvisioningType] &lt;String&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-Permanent] &lt;SwitchParameter&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-EnableAdaptiveOptimization] &lt;Bool&gt;][ [-PerformancePolicy] &lt;HPOneView.Storage.PerformancePolicy&gt;][ [-EnableEncryption] &lt;bool&gt;][ [-CachePinning] &lt;bool&gt;][ [-VolumeSet] &lt;HPOneView.Storage.VolumeSet&gt;][ [-EnableIOPSLimit] &lt;bool&gt;][ [-IOPSLimit] &lt;int&gt;][ [-EnableDataTransferLimit] &lt;bool&gt;][ [-DataTransferLimit] &lt;int&gt;][ [-Folder] &lt;HPOneView.Storage.NimbleFolder&gt;] [-LunIdType] &lt;String&gt; [-LunID] &lt;Int32&gt; [-HostOStype] &lt;String&gt;[ [-BootVolume] &lt;SwitchParameter&gt;][ [-TargetPortAssignment] &lt;SwitchParameter&gt;][ [-TargetAddresses] &lt;Array&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileAttachVolume [-ServerProfile] &lt;Object&gt; [-Volume] &lt;Array&gt;[ [-PassThru] &lt;SwitchParameter&gt;] [-VolumeID] &lt;Int32&gt; [-LunIdType] &lt;String&gt; [-LunID] &lt;Int32&gt; [-HostOStype] &lt;String&gt;[ [-BootVolume] &lt;SwitchParameter&gt;][ [-TargetPortAssignment] &lt;SwitchParameter&gt;][ [-TargetAddresses] &lt;Array&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will assist with creating a Storage Volume object to then attach to a new Server Profile being created (New-HPOVServerProfile), and attach either an existing Storage Volume (Get-HPOVStorageVolume) or new Ephemeral Volume to an existing Server Profile (Get-HPOVServerProfile).  If attempting to attach to an existing Server Profile, the HostOSType parameter is required, and will enable SAN Management within the Server Profile, if the Server Hardware resource supports the feature.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -BootVolume &lt;SwitchParameter&gt;<p>
Aliases [-Bootable]

Use to indicate this volume is a bootable device.  When using this parameter, the Server Profile"s FC Connection(s) BootVolumeSource parameter set to "ManagedVolume".  
	
This parameter is only applicable with Private volumes.

<table><tbody><tr><td>Aliases</td><td>Bootable</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CachePinning &lt;bool&gt;<p>
This is applicable for hybrid (a mix of flash and mechanical storage) arrays, and provides a 100 percent cache hit rate for specific volumes (for example, volumes dedicated to critical applications), and delivers the response times of an all-flash storage system. A volume is pinned when the entire active volume is placed in cache; associated snapshot (inactive) blocks are not pinned. All incoming data after that point is pinned. The number of volumes that can be pinned is limited by the size of the volumes and amount of available cache.

When defined in the Performance Profile, select to enable Cache Pinnning for the Nimble volume to be created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Capacity &lt;Int64&gt;<p>
The requested Ephemeral Volume storage capacity in GB.  e.g. 20 to specify 20GB.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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

 -EnableAdaptiveOptimization &lt;Bool&gt;<p>
Specify if HPE StoreVirtual volume Adaptive Optimization is enabled.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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
DEPRECATED.  This parameter is replaced by ProvisioningType.

Specify if the Ephemeral Volume provisioning type should be Thick. Default is Thin Volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HostOStype &lt;String&gt;<p>
Aliases [-OS]

Specify the Host OS type, which will set the Host OS value when HPE OneView creates the Host object on the Storage System.  This parameter is only necessary if the Server Profile object does not have SAN Management enabled.
	
Accepted values:

	* CitrixXen = "Citrix Xen Server 5.x/6.x"
	* AIX       = "AIX"
	* IBMVIO    = "IBM VIO Server"
	* RHEL4     = "RHE Linux (Pre RHEL 5)"
	* RHEL3     = "RHE Linux (Pre RHEL 5)"
	* RHEL      = "RHE Linux (5.x, 6.x)"
	* RHEV      = "RHE Virtualization (5.x, 6.x)"
	* VMware    = "ESX 4.x/5.x"
	* Win2k3    = "Windows 2003"
	* Win2k8    = "Windows 2008/2008 R2"
	* Win2k12   = "Windows 2012 / WS2012 R2"
	* OpenVMS   = "OpenVMS"
	* Egenera   = "Egenera"
	* Exanet    = "Exanet"
	* Solaris9  = "Solaris 9/10"
	* Solaris10 = "Solaris 9/10"
	* Solaris11 = "Solaris 11"
	* ONTAP     = "NetApp/ONTAP"
	* OEL       = "OE Linux UEK (5.x, 6.x)"
	* HPUX11iv1 = "HP-UX (11i v1, 11i v2)"
	* HPUX11iv2 = "HP-UX (11i v1, 11i v2)"
	* HPUX11iv3 = "HP-UX (11i v3)"
	* SUSE      = "SuSE (10.x, 11.x)"
	* SUSE9     = "SuSE Linux (Pre SLES 10)"
	* Inform    = "InForm"

<table><tbody><tr><td>Aliases</td><td>OS</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IOPSLimit &lt;int&gt;<p>
When enabling IOPS limit, provide a value that is greater than or equal to 256.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LunID &lt;Int32&gt;<p>
The Host LUN ID numerical value that will be configured in the Volume export on the Storage System.  Accepted range: 0-254

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LunIdType &lt;String&gt;<p>
Aliases [-type]
 Specify Auto or Manual for the LUN ID assignment type.  If Manual, use the -LunID parameter and provide a numerical value.

<table><tbody><tr><td>Aliases</td><td>type</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;Object&gt;<p>
Ephemeral Storage Volume resource name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PassThru &lt;SwitchParameter&gt;<p>
Use this parameter to return the modified Server Profile object.  In order to save the changes, please use the Save-HPOVServerProfile Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PerformancePolicy &lt;HPOneView.Storage.PerformancePolicy&gt;<p>
A Nimble Performance Policy is associated with a storage system.  Using the Show-HPOVStorageSystemPerformancePolicy, choose an available performance policy.

Example:

	Get-HPOVStorageSystem -Name MyNimbleSys | Show-HPOVStorageSystemPerformancePolicy

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Permanent &lt;SwitchParameter&gt;<p>
Specify if the Ephemeral Volume should be permanent.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ProvisioningType &lt;String&gt;<p>
Specify the volume provisioning type. Supported values:

	* Thin
	* Full
	* ThinDeduplication (only supported with HPE StoreServe)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Thin</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfile &lt;Object&gt;<p>
An existing Server Profile resource object from Get-HPOVServerProfile Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapshotStoragePool &lt;Object&gt;<p>
The supported Snapshot storage pool for a StoreServ storage system.  Snapshot storage pool must originate from the same storage system as the assigned storage pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StoragePool &lt;Object&gt;<p>
The Storage Resource Pool object to provision the Ephemeral Volume from.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
If provided a StoragePool Resource Name, you must provide the StorageSystem name value if there are multiple Storage Pool resources with the same name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetAddresses &lt;Array&gt;<p>
An array of target Port ID(s) or WWN(s).  Example:  @("1:0:1", "1:2:1", "3:1:1", "4:0:0")

<table><tbody><tr><td>Aliases</td><td>wwpns</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetPortAssignment &lt;SwitchParameter&gt;<p>
Define whether host initiator port(s) should be mapped to target storage ports automatically or manually.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Volume &lt;Array&gt;<p>
The Volume Name, URI or Object to attach.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeID &lt;Int32&gt;<p>
Aliases [-id]
The numeric identifier for this volume.  Does not pertain to exported LUN ID value on array.

<table><tbody><tr><td>Aliases</td><td>id</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeSet &lt;HPOneView.Storage.VolumeSet&gt;<p>
Use to specify a Volume Set the volume will be associated with, from Get-HPOVStorageVolumeSet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeTemplate &lt;Object&gt;<p>
For Ephemeral (private) volumes that should be provisioned from Storage Volume Templates.  Provide a valid resource from Get-HPOVStorageVolumeTemplate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 Storage Volume Resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

When attaching a one or more Storage Volumes to an existing Server Profile, an Appliance Async Task will be created

 _**HPOneView.Profile.SanVolume [System.Management.Automation.PSCustomObject]**_

 

Returns a storage volume attachment object which may be used during profile creation.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$attachVolume = New-HPOVServerProfileAttachVolume -volumeid 1 -volume Volume1
</pre>
Create a Volume Attach object that maps to the "Volume1" storage volume with an Auto assigned Host LUN ID.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$attachVolume = Get-HPOVStorageVolume -Name Volume1 | New-HPOVServerProfileAttachVolume -volumeid 1
</pre>
Get the "Volume1" Storage Volume via the Get-HPOVStorageVolume Cmdlet, and pipe the resource object to the Get-HPOVServerProfileAttachVolume Cmdlet.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$attachVolume = Get-HPOVStorageVolume -Name Volume1 | New-HPOVServerProfileAttachVolume -volumeid 1 -lunidtype manual -lunid 1
</pre>
Get the "Volume1" Storage Volume via the Get-HPOVStorageVolume Cmdlet, and pipe the resource object to the Get-HPOVServerProfileAttachVolume Cmdlet, providing a manual Host LUN ID.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$volume1 = Get-HPOVStorageVolume -Name Volume1 | New-HPOVServerProfileAttachVolume -volumeid 1
$volume2 = Get-HPOVStorageVolume SharedVolume1 | New-HPOVServerProfileAttachVolume -volumeid 2
$attachVolumes = @($volume1,$volume2)

</pre>
Get the "Volume1" and "SharedVolume1" Storage Volumes via the Get-HPOVStorageVolume Cmdlet, and pipe the resource objects to the Get-HPOVServerProfileAttachVolume Cmdlet, saving to $attachVolumes array.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$storagepool = Get-HPOVStoragePool R1_FC
$sp = Get-HPOVServerProfile "chef-web01"
New-HPOVServerProfileAttachVolume -ServerProfile $sp -Name "Chef Web01 Vol 2" -StoragePool $storagepool  | Wait-HPOVTaskComplete

</pre>
Attach a new 10Gb Ephemeral Volume to an existing Server Profile.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
$sp = Get-HPOVServerProfile "chef-web01"
Get-HPOVStorageVolume "My New Volume 3" | New-HPOVServerProfileAttachVolume -ServerProfile $sp  | Wait-HPOVTaskComplete

</pre>
Attach an existing Storage Volume to a Server Profile.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
$storagepool = Get-HPOVStoragePool R1_FC
$sp = Get-HPOVServerProfile "My Server Profile"
New-HPOVServerProfileAttachVolume -Name "My Server Profile Boot Vol" -ServerProfile $sp -StoragePool $storagepool -Bootable  | Wait-HPOVTaskComplete

</pre>
Add a bootable volume to an existing Server Profile.


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
$SVT = Get-HPOVStorageVolumeTemplate -Name StoreServe4-TPDD-SVT -ErrorAction Stop
$StorageVolumeObject = New-HPOVServerProfileAttachVolume -Name "Template 3 Private Vol 1" -VolumeTemplate $SVT
</pre>
Create a new ephemeral storage volume attachment, using a storage volume template.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVServerProfileAttachVolume
<p>
Create volume attachment for a server profile.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileAttachVolume [-Volume] &lt;Array&gt; [-VolumeID] &lt;Int32&gt; [-LunIdType] &lt;String&gt;[ [-BootVolume] &lt;SwitchParameter&gt;][ [-TargetPortAssignment] &lt;SwitchParameter&gt;][ [-TargetAddresses] &lt;Array&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileAttachVolume [-Name] &lt;Object&gt; [-ServerProfile] &lt;Object&gt;[ [-PassThru] &lt;SwitchParameter&gt;] [-VolumeID] &lt;Int32&gt;[ [-VolumeTemplate] &lt;Object&gt;] [-StoragePool] &lt;Object&gt;[ [-SnapshotStoragePool] &lt;Object&gt;] [-StorageSystem] &lt;Object&gt; [-Capacity] &lt;Int64&gt;[ [-ProvisioningType] &lt;String&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-Permanent] &lt;SwitchParameter&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-EnableAdaptiveOptimization] &lt;Bool&gt;][ [-PerformancePolicy] &lt;HPOneView.Storage.PerformancePolicy&gt;][ [-EnableEncryption] &lt;bool&gt;][ [-CachePinning] &lt;bool&gt;][ [-VolumeSet] &lt;HPOneView.Storage.VolumeSet&gt;][ [-EnableIOPSLimit] &lt;bool&gt;][ [-IOPSLimit] &lt;int&gt;][ [-EnableDataTransferLimit] &lt;bool&gt;][ [-DataTransferLimit] &lt;int&gt;][ [-Folder] &lt;HPOneView.Storage.NimbleFolder&gt;] [-LunIdType] &lt;String&gt; [-LunID] &lt;Int32&gt; [-HostOStype] &lt;String&gt;[ [-BootVolume] &lt;SwitchParameter&gt;][ [-TargetPortAssignment] &lt;SwitchParameter&gt;][ [-TargetAddresses] &lt;Array&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileAttachVolume [-ServerProfile] &lt;Object&gt; [-Volume] &lt;Array&gt;[ [-PassThru] &lt;SwitchParameter&gt;] [-VolumeID] &lt;Int32&gt; [-LunIdType] &lt;String&gt; [-LunID] &lt;Int32&gt; [-HostOStype] &lt;String&gt;[ [-BootVolume] &lt;SwitchParameter&gt;][ [-TargetPortAssignment] &lt;SwitchParameter&gt;][ [-TargetAddresses] &lt;Array&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will assist with creating a Storage Volume object to then attach to a new Server Profile being created (New-HPOVServerProfile), and attach either an existing Storage Volume (Get-HPOVStorageVolume) or new Ephemeral Volume to an existing Server Profile (Get-HPOVServerProfile).  If attempting to attach to an existing Server Profile, the HostOSType parameter is required, and will enable SAN Management within the Server Profile, if the Server Hardware resource supports the feature.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -BootVolume &lt;SwitchParameter&gt;<p>
Aliases [-Bootable]

Use to indicate this volume is a bootable device.  When using this parameter, the Server Profile"s FC Connection(s) BootVolumeSource parameter set to "ManagedVolume".  
	
This parameter is only applicable with Private volumes.

<table><tbody><tr><td>Aliases</td><td>Bootable</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CachePinning &lt;bool&gt;<p>
This is applicable for hybrid (a mix of flash and mechanical storage) arrays, and provides a 100 percent cache hit rate for specific volumes (for example, volumes dedicated to critical applications), and delivers the response times of an all-flash storage system. A volume is pinned when the entire active volume is placed in cache; associated snapshot (inactive) blocks are not pinned. All incoming data after that point is pinned. The number of volumes that can be pinned is limited by the size of the volumes and amount of available cache.

When defined in the Performance Profile, select to enable Cache Pinnning for the Nimble volume to be created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Capacity &lt;Int64&gt;<p>
The requested Ephemeral Volume storage capacity in GB.  e.g. 20 to specify 20GB.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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

 -EnableAdaptiveOptimization &lt;Bool&gt;<p>
Specify if HPE StoreVirtual volume Adaptive Optimization is enabled.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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
DEPRECATED.  This parameter is replaced by ProvisioningType.

Specify if the Ephemeral Volume provisioning type should be Thick. Default is Thin Volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HostOStype &lt;String&gt;<p>
Aliases [-OS]

Specify the Host OS type, which will set the Host OS value when HPE OneView creates the Host object on the Storage System.  This parameter is only necessary if the Server Profile object does not have SAN Management enabled.
	
Accepted values:

	* CitrixXen = "Citrix Xen Server 5.x/6.x"
	* AIX       = "AIX"
	* IBMVIO    = "IBM VIO Server"
	* RHEL4     = "RHE Linux (Pre RHEL 5)"
	* RHEL3     = "RHE Linux (Pre RHEL 5)"
	* RHEL      = "RHE Linux (5.x, 6.x)"
	* RHEV      = "RHE Virtualization (5.x, 6.x)"
	* VMware    = "ESX 4.x/5.x"
	* Win2k3    = "Windows 2003"
	* Win2k8    = "Windows 2008/2008 R2"
	* Win2k12   = "Windows 2012 / WS2012 R2"
	* OpenVMS   = "OpenVMS"
	* Egenera   = "Egenera"
	* Exanet    = "Exanet"
	* Solaris9  = "Solaris 9/10"
	* Solaris10 = "Solaris 9/10"
	* Solaris11 = "Solaris 11"
	* ONTAP     = "NetApp/ONTAP"
	* OEL       = "OE Linux UEK (5.x, 6.x)"
	* HPUX11iv1 = "HP-UX (11i v1, 11i v2)"
	* HPUX11iv2 = "HP-UX (11i v1, 11i v2)"
	* HPUX11iv3 = "HP-UX (11i v3)"
	* SUSE      = "SuSE (10.x, 11.x)"
	* SUSE9     = "SuSE Linux (Pre SLES 10)"
	* Inform    = "InForm"

<table><tbody><tr><td>Aliases</td><td>OS</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IOPSLimit &lt;int&gt;<p>
When enabling IOPS limit, provide a value that is greater than or equal to 256.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LunID &lt;Int32&gt;<p>
The Host LUN ID numerical value that will be configured in the Volume export on the Storage System.  Accepted range: 0-254

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LunIdType &lt;String&gt;<p>
Aliases [-type]
 Specify Auto or Manual for the LUN ID assignment type.  If Manual, use the -LunID parameter and provide a numerical value.

<table><tbody><tr><td>Aliases</td><td>type</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;Object&gt;<p>
Ephemeral Storage Volume resource name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PassThru &lt;SwitchParameter&gt;<p>
Use this parameter to return the modified Server Profile object.  In order to save the changes, please use the Save-HPOVServerProfile Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PerformancePolicy &lt;HPOneView.Storage.PerformancePolicy&gt;<p>
A Nimble Performance Policy is associated with a storage system.  Using the Show-HPOVStorageSystemPerformancePolicy, choose an available performance policy.

Example:

	Get-HPOVStorageSystem -Name MyNimbleSys | Show-HPOVStorageSystemPerformancePolicy

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Permanent &lt;SwitchParameter&gt;<p>
Specify if the Ephemeral Volume should be permanent.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ProvisioningType &lt;String&gt;<p>
Specify the volume provisioning type. Supported values:

	* Thin
	* Full
	* ThinDeduplication (only supported with HPE StoreServe)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Thin</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfile &lt;Object&gt;<p>
An existing Server Profile resource object from Get-HPOVServerProfile Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapshotStoragePool &lt;Object&gt;<p>
The supported Snapshot storage pool for a StoreServ storage system.  Snapshot storage pool must originate from the same storage system as the assigned storage pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StoragePool &lt;Object&gt;<p>
The Storage Resource Pool object to provision the Ephemeral Volume from.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
If provided a StoragePool Resource Name, you must provide the StorageSystem name value if there are multiple Storage Pool resources with the same name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetAddresses &lt;Array&gt;<p>
An array of target Port ID(s) or WWN(s).  Example:  @("1:0:1", "1:2:1", "3:1:1", "4:0:0")

<table><tbody><tr><td>Aliases</td><td>wwpns</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetPortAssignment &lt;SwitchParameter&gt;<p>
Define whether host initiator port(s) should be mapped to target storage ports automatically or manually.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Volume &lt;Array&gt;<p>
The Volume Name, URI or Object to attach.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeID &lt;Int32&gt;<p>
Aliases [-id]
The numeric identifier for this volume.  Does not pertain to exported LUN ID value on array.

<table><tbody><tr><td>Aliases</td><td>id</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeSet &lt;HPOneView.Storage.VolumeSet&gt;<p>
Use to specify a Volume Set the volume will be associated with, from Get-HPOVStorageVolumeSet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeTemplate &lt;Object&gt;<p>
For Ephemeral (private) volumes that should be provisioned from Storage Volume Templates.  Provide a valid resource from Get-HPOVStorageVolumeTemplate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 Storage Volume Resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

When attaching a one or more Storage Volumes to an existing Server Profile, an Appliance Async Task will be created

 _**HPOneView.Profile.SanVolume [System.Management.Automation.PSCustomObject]**_

 

Returns a storage volume attachment object which may be used during profile creation.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$attachVolume = New-HPOVServerProfileAttachVolume -volumeid 1 -volume Volume1
</pre>
Create a Volume Attach object that maps to the "Volume1" storage volume with an Auto assigned Host LUN ID.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$attachVolume = Get-HPOVStorageVolume -Name Volume1 | New-HPOVServerProfileAttachVolume -volumeid 1
</pre>
Get the "Volume1" Storage Volume via the Get-HPOVStorageVolume Cmdlet, and pipe the resource object to the Get-HPOVServerProfileAttachVolume Cmdlet.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$attachVolume = Get-HPOVStorageVolume -Name Volume1 | New-HPOVServerProfileAttachVolume -volumeid 1 -lunidtype manual -lunid 1
</pre>
Get the "Volume1" Storage Volume via the Get-HPOVStorageVolume Cmdlet, and pipe the resource object to the Get-HPOVServerProfileAttachVolume Cmdlet, providing a manual Host LUN ID.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$volume1 = Get-HPOVStorageVolume -Name Volume1 | New-HPOVServerProfileAttachVolume -volumeid 1
$volume2 = Get-HPOVStorageVolume SharedVolume1 | New-HPOVServerProfileAttachVolume -volumeid 2
$attachVolumes = @($volume1,$volume2)

</pre>
Get the "Volume1" and "SharedVolume1" Storage Volumes via the Get-HPOVStorageVolume Cmdlet, and pipe the resource objects to the Get-HPOVServerProfileAttachVolume Cmdlet, saving to $attachVolumes array.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$storagepool = Get-HPOVStoragePool R1_FC
$sp = Get-HPOVServerProfile "chef-web01"
New-HPOVServerProfileAttachVolume -ServerProfile $sp -Name "Chef Web01 Vol 2" -StoragePool $storagepool  | Wait-HPOVTaskComplete

</pre>
Attach a new 10Gb Ephemeral Volume to an existing Server Profile.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
$sp = Get-HPOVServerProfile "chef-web01"
Get-HPOVStorageVolume "My New Volume 3" | New-HPOVServerProfileAttachVolume -ServerProfile $sp  | Wait-HPOVTaskComplete

</pre>
Attach an existing Storage Volume to a Server Profile.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
$storagepool = Get-HPOVStoragePool R1_FC
$sp = Get-HPOVServerProfile "My Server Profile"
New-HPOVServerProfileAttachVolume -Name "My Server Profile Boot Vol" -ServerProfile $sp -StoragePool $storagepool -Bootable  | Wait-HPOVTaskComplete

</pre>
Add a bootable volume to an existing Server Profile.


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
$SVT = Get-HPOVStorageVolumeTemplate -Name StoreServe4-TPDD-SVT -ErrorAction Stop
$StorageVolumeObject = New-HPOVServerProfileAttachVolume -Name "Template 3 Private Vol 1" -VolumeTemplate $SVT
</pre>
Create a new ephemeral storage volume attachment, using a storage volume template.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVServerProfileAttachVolume
<p>
Create volume attachment for a server profile.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileAttachVolume [-Volume] &lt;Array&gt; [-VolumeID] &lt;Int32&gt; [-LunIdType] &lt;String&gt;[ [-BootVolume] &lt;SwitchParameter&gt;][ [-TargetPortAssignment] &lt;SwitchParameter&gt;][ [-TargetAddresses] &lt;Array&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileAttachVolume [-Name] &lt;Object&gt; [-ServerProfile] &lt;Object&gt;[ [-PassThru] &lt;SwitchParameter&gt;] [-VolumeID] &lt;Int32&gt;[ [-VolumeTemplate] &lt;Object&gt;] [-StoragePool] &lt;Object&gt; [-SnapshotStoragePool] &lt;Object&gt; [-StorageSystem] &lt;Object&gt; [-Capacity] &lt;Int64&gt;[ [-ProvisioningType] &lt;String&gt;][ [-Full] &lt;SwitchParameter&gt;][ [-Permanent] &lt;SwitchParameter&gt;][ [-DataProtectionLevel] &lt;String&gt;][ [-EnableAdaptiveOptimization] &lt;Bool&gt;] [-LunIdType] &lt;String&gt; [-LunID] &lt;Int32&gt; [-HostOStype] &lt;String&gt;[ [-BootVolume] &lt;SwitchParameter&gt;][ [-TargetPortAssignment] &lt;SwitchParameter&gt;][ [-TargetAddresses] &lt;Array&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileAttachVolume [-ServerProfile] &lt;Object&gt; [-Volume] &lt;Array&gt;[ [-PassThru] &lt;SwitchParameter&gt;] [-VolumeID] &lt;Int32&gt; [-LunIdType] &lt;String&gt; [-LunID] &lt;Int32&gt; [-HostOStype] &lt;String&gt;[ [-BootVolume] &lt;SwitchParameter&gt;][ [-TargetPortAssignment] &lt;SwitchParameter&gt;][ [-TargetAddresses] &lt;Array&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will assist with creating a Storage Volume object to then attach to a new Server Profile being created (New-HPOVServerProfile), and attach either an existing Storage Volume (Get-HPOVStorageVolume) or new Ephemeral Volume to an existing Server Profile (Get-HPOVServerProfile).  If attempting to attach to an existing Server Profile, the HostOSType parameter is required, and will enable SAN Management within the Server Profile, if the Server Hardware resource supports the feature.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -BootVolume &lt;SwitchParameter&gt;<p>
Aliases [-Bootable]

Use to indicate this volume is a bootable device.  When using this parameter, the Server Profile"s FC Connection(s) BootVolumeSource parameter set to "ManagedVolume".  
	
This parameter is only applicable with Private volumes.

<table><tbody><tr><td>Aliases</td><td>Bootable</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Capacity &lt;Int64&gt;<p>
The requested Ephemeral Volume storage capacity in GB.  e.g. 20 to specify 20GB.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DataProtectionLevel &lt;String&gt;<p>
Specify the StoreVirtual protection level (aka Network RAID) for the volume.  Allowed values are:

	* NetworkRaid0None
	* NetworkRaid5SingleParity
	* NetworkRaid10Mirror2Way
	* NetworkRaid10Mirror3Way
	* NetworkRaid10Mirror4Way
	* NetworkRaid6DualParity


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableAdaptiveOptimization &lt;Bool&gt;<p>
Specify if HPE StoreVirtual volume Adaptive Optimization is enabled.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Full &lt;SwitchParameter&gt;<p>
DEPRECATED.  This parameter is replaced by ProvisioningType.

Specify if the Ephemeral Volume provisioning type should be Thick. Default is Thin Volume.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HostOStype &lt;String&gt;<p>
Aliases [-OS]

Specify the Host OS type, which will set the Host OS value when HPE OneView creates the Host object on the Storage System.  This parameter is only necessary if the Server Profile object does not have SAN Management enabled.
	
Accepted values:

	* CitrixXen = "Citrix Xen Server 5.x/6.x"
	* AIX       = "AIX"
	* IBMVIO    = "IBM VIO Server"
	* RHEL4     = "RHE Linux (Pre RHEL 5)"
	* RHEL3     = "RHE Linux (Pre RHEL 5)"
	* RHEL      = "RHE Linux (5.x, 6.x)"
	* RHEV      = "RHE Virtualization (5.x, 6.x)"
	* VMware    = "ESX 4.x/5.x"
	* Win2k3    = "Windows 2003"
	* Win2k8    = "Windows 2008/2008 R2"
	* Win2k12   = "Windows 2012 / WS2012 R2"
	* OpenVMS   = "OpenVMS"
	* Egenera   = "Egenera"
	* Exanet    = "Exanet"
	* Solaris9  = "Solaris 9/10"
	* Solaris10 = "Solaris 9/10"
	* Solaris11 = "Solaris 11"
	* ONTAP     = "NetApp/ONTAP"
	* OEL       = "OE Linux UEK (5.x, 6.x)"
	* HPUX11iv1 = "HP-UX (11i v1, 11i v2)"
	* HPUX11iv2 = "HP-UX (11i v1, 11i v2)"
	* HPUX11iv3 = "HP-UX (11i v3)"
	* SUSE      = "SuSE (10.x, 11.x)"
	* SUSE9     = "SuSE Linux (Pre SLES 10)"
	* Inform    = "InForm"

<table><tbody><tr><td>Aliases</td><td>OS</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LunID &lt;Int32&gt;<p>
The Host LUN ID numerical value that will be configured in the Volume export on the Storage System.  Accepted range: 0-254

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LunIdType &lt;String&gt;<p>
Aliases [-type]
 Specify Auto or Manual for the LUN ID assignment type.  If Manual, use the -LunID parameter and provide a numerical value.

<table><tbody><tr><td>Aliases</td><td>type</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;Object&gt;<p>
Ephemeral Storage Volume resource name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PassThru &lt;SwitchParameter&gt;<p>
Use this parameter to return the modified Server Profile object.  In order to save the changes, please use the Save-HPOVServerProfile Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Permanent &lt;SwitchParameter&gt;<p>
Specify if the Ephemeral Volume should be permanent.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ProvisioningType &lt;String&gt;<p>
Specify the volume provisioning type. Supported values:

	* Thin
	* Full
	* ThinDeduplication (only supported with HPE StoreServe)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Thin</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfile &lt;Object&gt;<p>
An existing Server Profile resource object from Get-HPOVServerProfile Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnapshotStoragePool &lt;Object&gt;<p>
The supported Snapshot storage pool for a StoreServ storage system.  Snapshot storage pool must originate from the same storage system as the assigned storage pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StoragePool &lt;Object&gt;<p>
The Storage Resource Pool object to provision the Ephemeral Volume from.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
If provided a StoragePool Resource Name, you must provide the StorageSystem name value if there are multiple Storage Pool resources with the same name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetAddresses &lt;Array&gt;<p>
An array of target Port ID(s) or WWN(s).  Example:  @("1:0:1", "1:2:1", "3:1:1", "4:0:0")

<table><tbody><tr><td>Aliases</td><td>wwpns</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetPortAssignment &lt;SwitchParameter&gt;<p>
Define whether host initiator port(s) should be mapped to target storage ports automatically or manually.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Volume &lt;Array&gt;<p>
The Volume Name, URI or Object to attach.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeID &lt;Int32&gt;<p>
Aliases [-id]
The numeric identifier for this volume.  Does not pertain to exported LUN ID value on array.

<table><tbody><tr><td>Aliases</td><td>id</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VolumeTemplate &lt;Object&gt;<p>
For Ephemeral (private) volumes that should be provisioned from Storage Volume Templates.  Provide a valid resource from Get-HPOVStorageVolumeTemplate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Storage Volume Name or URI

 _**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 Storage Volume Resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

When attaching a one or more Storage Volumes to an existing Server Profile, an Appliance Async Task will be created

 _**HPOneView.Profile.SanVolume [System.Management.Automation.PSCustomObject]**_

 

Returns a storage volume attachment object which may be used during profile creation.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$attachVolume = New-HPOVServerProfileAttachVolume -volumeid 1 -volume Volume1
</pre>
Create a Volume Attach object that maps to the "Volume1" storage volume with an Auto assigned Host LUN ID.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$attachVolume = Get-HPOVStorageVolume Volume1 | New-HPOVServerProfileAttachVolume -volumeid 1
</pre>
Get the "Volume1" Storage Volume via the Get-HPOVStorageVolume Cmdlet, and pipe the resource object to the Get-HPOVServerProfileAttachVolume Cmdlet.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$attachVolume = Get-HPOVStorageVolume Volume1 | New-HPOVServerProfileAttachVolume -volumeid 1 -lunidtype manual -lunid 1
</pre>
Get the "Volume1" Storage Volume via the Get-HPOVStorageVolume Cmdlet, and pipe the resource object to the Get-HPOVServerProfileAttachVolume Cmdlet, providing a manual Host LUN ID.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$volume1 = Get-HPOVStorageVolume Volume1 | New-HPOVServerProfileAttachVolume -volumeid 1
$volume2 = Get-HPOVStorageVolume SharedVolume1 | New-HPOVServerProfileAttachVolume -volumeid 2
$attachVolumes = @($volume1,$volume2)

</pre>
Get the "Volume1" and "SharedVolume1" Storage Volumes via the Get-HPOVStorageVolume Cmdlet, and pipe the resource objects to the Get-HPOVServerProfileAttachVolume Cmdlet, saving to $attachVolumes array.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$storagepool = Get-HPOVStoragePool R1_FC
$sp = Get-HPOVServerProfile "chef-web01"
New-HPOVServerProfileAttachVolume -ServerProfile $sp -Name "Chef Web01 Vol 2" -StoragePool $storagepool  | Wait-HPOVTaskComplete

</pre>
Attach a new 10Gb Ephemeral Volume to an existing Server Profile.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
$sp = Get-HPOVServerProfile "chef-web01"
Get-HPOVStorageVolume "My New Volume 3" | New-HPOVServerProfileAttachVolume -ServerProfile $sp  | Wait-HPOVTaskComplete

</pre>
Attach an existing Storage Volume to a Server Profile.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
$storagepool = Get-HPOVStoragePool R1_FC
$sp = Get-HPOVServerProfile "My Server Profile"
New-HPOVServerProfileAttachVolume -Name "My Server Profile Boot Vol" -ServerProfile $sp -StoragePool $storagepool -Bootable  | Wait-HPOVTaskComplete

</pre>
Add a bootable volume to an existing Server Profile.


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
$SVT = Get-HPOVStorageVolumeTemplate -Name StoreServe4-TPDD-SVT -ErrorAction Stop
$StorageVolumeObject = New-HPOVServerProfileAttachVolume -Name "Template 3 Private Vol 1" -VolumeTemplate $SVT
</pre>
Create a new ephemeral storage volume attachment, using a storage volume template.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
