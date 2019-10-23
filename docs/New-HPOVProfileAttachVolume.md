<a name="top"></a>
 <h4><a href="#1.20">Library Version 1.20</a></h4>
 <a name="1.20"></a>

### <u>HPE OneView 1.20 Library</u>

## New-HPOVProfileAttachVolume
<p>
Create volume attachment for a server profile.

### SYNTAX
<p>
<pre><code>New-HPOVProfileAttachVolume[ [-VolumeID] &lt;VolumeID&gt;] [-Volume] &lt;Volume&gt;[ [-LunIdType] &lt;LunIdType&gt;][ [-ProfileConnectionID] &lt;ProfileConnectionID&gt;][ [-ApplianceConnection] &lt;ApplianceConnection&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfileAttachVolume [-ServerProfile] &lt;ServerProfile&gt;[ [-VolumeID] &lt;VolumeID&gt;] [-Name] &lt;Name&gt; [-StoragePool] &lt;StoragePool&gt;[ [-StorageSystem] &lt;StorageSystem&gt;][ [-Capacity] &lt;Capacity&gt;][ [-Full] &lt;Full&gt;][ [-Permanent] &lt;Permanent&gt;][ [-LunIdType] &lt;LunIdType&gt;][ [-LunID] &lt;LunID&gt;][ [-ProfileConnectionID] &lt;ProfileConnectionID&gt;][ [-HostOStype] &lt;HostOStype&gt;][ [-ApplianceConnection] &lt;ApplianceConnection&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfileAttachVolume [-ServerProfile] &lt;ServerProfile&gt;[ [-VolumeID] &lt;VolumeID&gt;] [-Volume] &lt;Volume&gt;[ [-LunIdType] &lt;LunIdType&gt;][ [-LunID] &lt;LunID&gt;][ [-ProfileConnectionID] &lt;ProfileConnectionID&gt;][ [-HostOStype] &lt;HostOStype&gt;][ [-ApplianceConnection] &lt;ApplianceConnection&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfileAttachVolume[ [-VolumeID] &lt;VolumeID&gt;] [-Name] &lt;Name&gt; [-StoragePool] &lt;StoragePool&gt;[ [-StorageSystem] &lt;StorageSystem&gt;][ [-Capacity] &lt;Capacity&gt;][ [-Full] &lt;Full&gt;][ [-Permanent] &lt;Permanent&gt;] [-LunIdType] &lt;LunIdType&gt; [-LunID] &lt;LunID&gt;[ [-ProfileConnectionID] &lt;ProfileConnectionID&gt;][ [-ApplianceConnection] &lt;ApplianceConnection&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfileAttachVolume[ [-VolumeID] &lt;VolumeID&gt;] [-Name] &lt;Name&gt; [-StoragePool] &lt;StoragePool&gt;[ [-StorageSystem] &lt;StorageSystem&gt;][ [-Capacity] &lt;Capacity&gt;][ [-Full] &lt;Full&gt;][ [-Permanent] &lt;Permanent&gt;][ [-LunIdType] &lt;LunIdType&gt;][ [-ProfileConnectionID] &lt;ProfileConnectionID&gt;][ [-ApplianceConnection] &lt;ApplianceConnection&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfileAttachVolume[ [-VolumeID] &lt;VolumeID&gt;] [-Volume] &lt;Volume&gt; [-LunIdType] &lt;LunIdType&gt; [-LunID] &lt;LunID&gt;[ [-ProfileConnectionID] &lt;ProfileConnectionID&gt;][ [-ApplianceConnection] &lt;ApplianceConnection&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will assist with creating a Storage Volume object to then attach to a new Server Profile being created (New-HPOVServerProfile), and attach either an existing Storage Volume (Get-HPOVStorageVolume) or new Ephemeral Volume to an existing Server Profile (Get-HPOVServerProfile).  If attempting to attach to an existing Server Profile, the HostOSType parameter is required, and will enable SAN Management within the Server Profile, if the Server Hardware resource supports the feature.


### Parameters

-ServerProfile &lt;ServerProfile&gt;<p>
An existing Server Profile resource object from Get-HPOVServerProfile Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -VolumeID &lt;VolumeID&gt;<p>
Aliases [-id]
The numeric identifier for this volume.  Does not pertain to exported LUN ID value on array.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Volume &lt;Volume&gt;<p>
The Volume Name, URI or Object to attach.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Name &lt;Name&gt;<p>
Ephemeral Storage Volume resource name.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -StoragePool &lt;StoragePool&gt;<p>
The Storage Resource Pool object to provision the Ephemeral Volume from.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -StorageSystem &lt;StorageSystem&gt;<p>
If provided a StoragePool Resource Name, you must provide the StorageSystem name value if there are multiple Storage Pool resources with the same name.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Capacity &lt;Capacity&gt;<p>
The requested Ephemeral Volume storage capacity in GB.  e.g. 20 to specify 20GB.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>10240</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Full &lt;Full&gt;<p>
Specify if the Ephemeral Volume provisioning type should be Thick. Default is Thin Volume.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Permanent &lt;Permanent&gt;<p>
Specify if the Ephemeral Volume should be permanent.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -LunIdType &lt;LunIdType&gt;<p>
Aliases [-type]
 Specify Auto or Manual for the LUN ID assignment type.  If Manual, use the -LunID parameter and provide a numerical value.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -LunID &lt;LunID&gt;<p>
The Host LUN ID numerical value that will be configured in the Volume export on the Storage System.  Accepted range: 0-254

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -ProfileConnectionID &lt;ProfileConnectionID&gt;<p>
The Server Profile Connection ID.  If value is not provided, the New-HPOVServerProfile will attempt to detect the FC connection that will map to the Volume.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -HostOStype &lt;HostOStype&gt;<p>
Aliases [-OS]
        
Specify the Host OS type, which will set the Host OS value when HP OneView creates the Host object on the Storage System.  This parameter is only necessary if the Server Profile object does not have SAN Management enabled.
	
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

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -ApplianceConnection &lt;ApplianceConnection&gt;<p>


<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>${Global:ConnectedSessions}</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_
 Storage Volume Name or URI
 _**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_
 Storage Volume Resource object


### Return Values

_**HPONeView.Appliance.AsyncTask [System.Management.Automation.PSCustomObject]**_
 
When attaching a one or more Storage Volumes to an existing Server Profile, an Appliance Async Task will be created.

 _**HPOneView.Profile.SanVolume [System.Management.Automation.PSCustomObject]**_
 
Returns a storage volume attachment object which may be used during profile creation.  Returned resource:
 
 Example 1. Auto Host LUN ID
 id                     : 0
 lunType                : Auto
 volumeUri              : /rest/storage-volumes/{guid}
 volumeStoragePoolUri   : /rest/storage-pools/{guid}
 volumeStorageSystemUri : /rest/storage-systems/{guid}
 storagePaths           : {}
 
 Example 2. Manual Host LUN ID
 id                     : 0
 lunType                : Manual
 volumeUri              : /rest/storage-volumes/{guid}
 volumeStoragePoolUri   : /rest/storage-pools/{guid}
 volumeStorageSystemUri : /rest/storage-systems/{guid}
 storagePaths           : {}
 lun                    : 10
 
 Example 3. 100GB Ephemeral Volume Auto Host LUN ID
 id                             : 0
 lunType                        : Auto
 volumeUri                      : null
 volumeStoragePoolUri           : /rest/storage-pools/{guid}
 volumeStorageSystemUri         : /rest/storage-systems/{guid}
 storagePaths                   : {}
 name                           : VolumeName1
 volumeProvisionedCapacityBytes : 107374182400
 volumeProvisionType            : Thin
 permanent                      : False
 volumeShareable                : False



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:\> $attachVolume = New-HPOVProfileAttachVolume -volumeid 1 -volume Volume1
</pre>
Create a Volume Attach object that maps to the 'Volume1' storage volume with an Auto assigned Host LUN ID.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
PS C:\> $attachVolume = Get-HPOVStorageVolume Volume1 | New-HPOVProfileAttachVolume -volumeid 1
</pre>
Get the 'Volume1' Storage Volume via the Get-HPOVStorageVolume Cmdlet, and pipe the resource object to the Get-HPOVServerProfileAttachVolume Cmdlet.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
PS C:\> $attachVolume = Get-HPOVStorageVolume Volume1 | New-HPOVProfileAttachVolume -volumeid 1 -lunidtype manual -lunid 1
</pre>
Get the 'Volume1' Storage Volume via the Get-HPOVStorageVolume Cmdlet, and pipe the resource object to the Get-HPOVServerProfileAttachVolume Cmdlet, providing a manual Host LUN ID.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
PS C:\> $attachVolume = New-HPOVStorageVolume Volume1 | Get-HPOVProfileAttachVolume -volumeid 1 -lunidtype manual -lunid 1 -evenpathdisabled
</pre>
Get the 'Volume1' Storage Volume via the Get-HPOVStorageVolume Cmdlet, and pipe the resource object to the Get-HPOVServerProfileAttachVolume Cmdlet, providing a manual Host LUN ID and disabling FC Even Path.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
PS C:\> $volume1 = Get-HPOVStorageVolume Volume1 | New-HPOVProfileAttachVolume -volumeid 1
PS C:\> $volume2 = Get-HPOVStorageVolume SharedVolume1 | New-HPOVProfileAttachVolume -volumeid 2
PS C:\> $attachVolumes = @($volume1,$volume2)

</pre>
Get the 'Volume1' and 'SharedVolume1' Storage Volumes via the Get-HPOVStorageVolume Cmdlet, and pipe the resource objects to the Get-HPOVServerProfileAttachVolume Cmdlet, saving to $attachVolumes array.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
PS C:\> $storagepool = Get-HPOVStoragePool HPNetworking_R1_FC
PS C:\> $sp = Get-HPOVProfile 'chef-web01'
PS C:\> New-HPOVProfileAttachVolume -ServerProfile $sp -Name 'Chef Web01 Vol 2' -StoragePool $storagepool | Wait-HPOVTaskComplete

</pre>
Attach a new 10Gb Ephemeral Volume to an existing Server Profile.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
PS C:\> $sp = Get-HPOVProfile 'chef-web01'
</pre>
PS C:\> Get-HPOVStorageVolume 'My New Volume 3' | New-HPOVProfileAttachVolume -ServerProfile $sp | Wait-HPOVTaskComplete



### Related Links

* [New-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVProfile)
* [Get-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVProfile)
* [Get-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolume)


***
<div align=right><a href="#Top">Top</a></div>
