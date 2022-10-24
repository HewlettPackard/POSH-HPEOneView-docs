---
description: Create volume attachment for a server profile.
---

# New-OVServerProfileAttachVolume

## Syntax

```powershell
New-OVServerProfileAttachVolume
    [-Volume] <Array>
    [-VolumeID <Int32>]
    [-LunIdType <String>]
    [-BootVolume]
    [-TargetPortAssignment]
    [-TargetAddresses <Array>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVServerProfileAttachVolume
    [-Name] <Object>
    [-ServerProfile <Object>]
    [-PassThru]
    [-VolumeID <Int32>]
    [-VolumeTemplate <Object>]
    [-StoragePool <Object>]
    [-SnapshotStoragePool <Object>]
    [-StorageSystem <Object>]
    [-Capacity <Int64>]
    [-ProvisioningType <String>]
    [-Full]
    [-Permanent]
    [-PerformancePolicy <HPEOneView.Storage.PerformancePolicy>]
    [-EnableEncryption <Bool>]
    [-CachePinning <Bool>]
    [-VolumeSet <HPEOneView.Storage.VolumeSet>]
    [-EnableIOPSLimit <Bool>]
    [-IOPSLimit <Int>]
    [-EnableDataTransferLimit <Bool>]
    [-DataTransferLimit <Int>]
    [-Folder <HPEOneView.Storage.NimbleFolder>]
    [-LunIdType <String>]
    [-LunID <Int32>]
    [-HostOStype <String>]
    [-BootVolume]
    [-TargetPortAssignment]
    [-TargetAddresses <Array>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVServerProfileAttachVolume
    [-ServerProfile] <Object>
    [-Volume] <Array>
    [-PassThru]
    [-VolumeID <Int32>]
    [-LunIdType <String>]
    [-LunID <Int32>]
    [-HostOStype <String>]
    [-BootVolume]
    [-TargetPortAssignment]
    [-TargetAddresses <Array>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will assist with creating a Storage Volume object to then attach to a new Server Profile being created (New-OVServerProfile), and attach either an existing Storage Volume (Get-OVStorageVolume) or new Ephemeral Volume to an existing Server Profile (Get-OVServerProfile).  If attempting to attach to an existing Server Profile, the HostOSType parameter is required, and will enable SAN Management within the Server Profile, if the Server Hardware resource supports the feature.

## Examples

###  Example 1 

```powershell
$attachVolume = New-OVServerProfileAttachVolume -volumeid 1 -volume Volume1
```

Create a Volume Attach object that maps to the "Volume1" storage volume with an Auto assigned Host LUN ID.

###  Example 2 

```powershell
$attachVolume = Get-OVStorageVolume -Name Volume1 | New-OVServerProfileAttachVolume -volumeid 1
```

Get the "Volume1" Storage Volume via the Get-OVStorageVolume Cmdlet, and pipe the resource object to the Get-OVServerProfileAttachVolume Cmdlet.

###  Example 3 

```powershell
$attachVolume = Get-OVStorageVolume -Name Volume1 | New-OVServerProfileAttachVolume -volumeid 1 -lunidtype manual -lunid 1
```

Get the "Volume1" Storage Volume via the Get-OVStorageVolume Cmdlet, and pipe the resource object to the Get-OVServerProfileAttachVolume Cmdlet, providing a manual Host LUN ID.

###  Example 4 

```powershell
$volume1 = Get-OVStorageVolume -Name Volume1 | New-OVServerProfileAttachVolume -volumeid 1
$volume2 = Get-OVStorageVolume SharedVolume1 | New-OVServerProfileAttachVolume -volumeid 2
$attachVolumes = @($volume1,$volume2)
```

Get the "Volume1" and "SharedVolume1" Storage Volumes via the Get-OVStorageVolume Cmdlet, and pipe the resource objects to the Get-OVServerProfileAttachVolume Cmdlet, saving to $attachVolumes array.

###  Example 5 

```powershell
$storagepool = Get-OVStoragePool R1_FC
$sp = Get-OVServerProfile -Name "chef-web01"
New-OVServerProfileAttachVolume -ServerProfile $sp -Name "Chef Web01 Vol 2" -StoragePool $storagepool  | Wait-OVTaskComplete
```

Attach a new 10Gb Ephemeral Volume to an existing Server Profile.

###  Example 6 

```powershell
$sp = Get-OVServerProfile -Name "chef-web01"
Get-OVStorageVolume "My New Volume 3" | New-OVServerProfileAttachVolume -ServerProfile $sp  | Wait-OVTaskComplete
```

Attach an existing Storage Volume to a Server Profile.

###  Example 7 

```powershell
$storagepool = Get-OVStoragePool R1_FC
$sp = Get-OVServerProfile -Name "My Server Profile"
New-OVServerProfileAttachVolume -Name "My Server Profile Boot Vol" -ServerProfile $sp -StoragePool $storagepool -Bootable  | Wait-OVTaskComplete
```

Add a bootable volume to an existing Server Profile.

###  Example 8 

```powershell
$SVT = Get-OVStorageVolumeTemplate -Name StoreServe4-TPDD-SVT -ErrorAction Stop
$StorageVolumeObject = New-OVServerProfileAttachVolume -Name "Template 3 Private Vol 1" -VolumeTemplate $SVT
```

Create a new ephemeral storage volume attachment, using a storage volume template.

## Parameters

### -ServerProfile &lt;Object&gt;

An existing Server Profile resource object from Get-OVServerProfile Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VolumeID &lt;Int32&gt;

The numeric identifier for this volume.  Does not pertain to exported LUN ID value on array.

| Aliases | id |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 1 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Volume &lt;Array&gt;

The Volume Name, URI or Object to attach.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;Object&gt;

Ephemeral Storage Volume resource name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StoragePool &lt;Object&gt;

The Storage Resource Pool object to provision the Ephemeral Volume from.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StorageSystem &lt;Object&gt;

If provided a StoragePool Resource Name, you must provide the StorageSystem name value if there are multiple Storage Pool resources with the same name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Capacity &lt;Int64&gt;

The requested Ephemeral Volume storage capacity in GB.  `[e.g]`. 20 to specify 20GB.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Full &lt;SwitchParameter&gt;

DEPRECATED.  This parameter is replaced by ProvisioningType.

Specify if the Ephemeral Volume provisioning type should be Thick. Default is Thin Volume.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Permanent &lt;SwitchParameter&gt;

Specify if the Ephemeral Volume should be permanent.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LunIdType &lt;String&gt;

 Specify Auto or Manual for the LUN ID assignment type.  If Manual, use the `-LunID` parameter and provide a numerical value.

| Aliases | type |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | Auto |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LunID &lt;Int32&gt;

The Host LUN ID numerical value that will be configured in the Volume export on the Storage System.  Accepted range: 0-254

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -HostOStype &lt;String&gt;

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

| Aliases | OS |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BootVolume &lt;SwitchParameter&gt;

Use to indicate this volume is a bootable device.  When using this parameter, the Server Profile"s FC Connection(s) BootVolumeSource parameter set to "ManagedVolume".  
    
This parameter is only applicable with Private volumes.

| Aliases | Bootable |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -Scope &lt;HPEOneView.Appliance.ScopeCollection[]&gt;

Provide an `[HPEOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the Add-OVResourceToScope Cmdlet.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -TargetPortAssignment &lt;SwitchParameter&gt;

Define whether host initiator port(s) should be mapped to target storage ports automatically or manually.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TargetAddresses &lt;Array&gt;

An array of target Port ID(s) or WWN(s).  Example:  @("1:0:1", "1:2:1", "3:1:1", "4:0:0")

| Aliases | wwpns |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VolumeTemplate &lt;Object&gt;

For Ephemeral (private) volumes that should be provisioned from Storage Volume Templates.  Provide a valid resource from Get-OVStorageVolumeTemplate.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ProvisioningType &lt;String&gt;

Specify the volume provisioning type. Supported values:

* Thin
* Full
* ThinDeduplication (only supported with HPE StoreServe)

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Thin |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PassThru &lt;SwitchParameter&gt;

Use this parameter to return the modified Server Profile object.  In order to save the changes, please use the Save-OVServerProfile Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnapshotStoragePool &lt;Object&gt;

The supported Snapshot storage pool for a StoreServ storage system.  Snapshot storage pool must originate from the same storage system as the assigned storage pool.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -CachePinning &lt;Bool&gt;

This is applicable for hybrid (a mix of flash and mechanical storage) arrays, and provides a 100 percent cache hit rate for specific volumes (for example, volumes dedicated to critical applications), and delivers the response times of an all-flash storage system. A volume is pinned when the entire active volume is placed in cache; associated snapshot (inactive) blocks are not pinned. All incoming data after that point is pinned. The number of volumes that can be pinned is limited by the size of the volumes and amount of available cache.

When defined in the Performance Profile, select to enable Cache Pinnning for the Nimble volume to be created.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DataTransferLimit &lt;Int&gt;

Specify the data transfer limit in MiB/S.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableDataTransferLimit &lt;Bool&gt;

Enable data transfer limit.  If enabled, the `-DataTransferLimit` parameter must be set.  By default, data transfer limit is not set.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableEncryption &lt;Bool&gt;

When the storage system has encryption enabled, the volume can also be encrypted.  Specify if the volume should be encrypted during creation.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableIOPSLimit &lt;Bool&gt;

Set to enable or disable IOPS limit.  If enabled, the `-IOPSLimit` parameter must be set.  By default, IOPS limit is not set.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Folder &lt;HPEOneView.Storage.NimbleFolder&gt;

Specify the Nimble folder where the volume should be created.  To get availabe folder objects, use the Get-OVStoragePool Cmdlet.  Folders are defined as a device specific attribute. 

Example:

     (`Get-OVStoragePool` `-name` default).DeviceSpecificAttributes.Folders

ID                                         Name
--                                         ----
2f1ca8a5d76e271722000000000000000000000001 POSH

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IOPSLimit &lt;Int&gt;

When enabling IOPS limit, provide a value that is greater than or equal to 256.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PerformancePolicy &lt;HPEOneView.Storage.PerformancePolicy&gt;

A Nimble Performance Policy is associated with a storage system.  Using the Show-OVStorageSystemPerformancePolicy, choose an available performance policy.

Example:

    Get-OVStorageSystem `-Name` MyNimbleSys | Show-OVStorageSystemPerformancePolicy

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VolumeSet &lt;HPEOneView.Storage.VolumeSet&gt;

Use to specify a Volume Set the volume will be associated with, from Get-OVStorageVolumeSet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

Storage Volume Resource object

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

When attaching a one or more Storage Volumes to an existing Server Profile, an Appliance Async Task will be created

_**HPEOneView.Profile.SanVolume [System.Management.Automation.PSCustomObject]**_

Returns a storage volume attachment object which may be used during profile creation.

## Related Links

