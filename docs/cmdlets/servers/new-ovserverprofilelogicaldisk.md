---
description: Create Server Profile Logical Disk object.
---

# New-OVServerProfileLogicalDisk

## Syntax

```powershell
New-OVServerProfileLogicalDisk
    [-Name] <String>
    [-RAID <String>]
    [-NumberofDrives <Int32>]
    [-DriveType <String>]
    [-StorageLocation <String>]
    [-Accelerator <String>]
    [-Bootable <Boolean>]
    [<CommonParameters>]
```

```powershell
New-OVServerProfileLogicalDisk
    [-Name] <String>
    [-RAID <String>]
    [-NumberofDrives <Int32>]
    [-DriveType <String>]
    [-DriveSelectionBy <String>]
    [-AvailableDriveType <HPEOneView.Storage.AvailableDriveType>]
    [-StorageLocation <String>]
    [-MinDriveSize <Int32>]
    [-MaxDriveSize <Int32>]
    [-EraseDataOnDelete]
    [-Permanent <String>]
    [-AddSpareDrive]
    [-Bootable <Boolean>]
    [<CommonParameters>]
```

```powershell
New-OVServerProfileLogicalDisk
    [-Name] <String>
    [-Drives] <HPEOneView.Servers.PhysicalDrive[]>
    [-RAID <String>]
    [-Accelerator <String>]
    [-AddSpareDrive]
    [-SpareDrives <HPEOneView.Servers.PhysicalDrive[]>]
    [-Bootable <Boolean>]
    [-ReadCachePolicy <string>]
    [-WriteCachePolicy <string>]
    [-IOPerformanceMode <string>]
    [<CommonParameters>]
```

## Description

This helper Cmdlet will create a Logical Disk object to then be assigned to a Server Profile Template or Server Profile using the -LogicalDisk parameter.  The LogicalDisk configuration is supported with the embedded (or Slot 0) HPE SmartArray controller for DL and BL class systems only.

## Examples

###  Example 1 

```powershell
$LogicalDisk = New-OVServerProfileLogicalDisk -Name "MyDisk"
```

Create a default Logical Disk configuration object.

###  Example 2 

```powershell
$ld1 = New-OVServerProfileLogicalDisk -Name "Boot Disk" -RAID RAID1 -NumberofDrives 2 -Bootable $True
```

Create a custom Logical Disk with the provided parameter values.

###  Example 3 

```powershell
$ld1 = New-OVServerProfileLogicalDisk -Name "Boot Disk" -RAID RAID1 -NumberofDrives 2 -DriveType SAS -MinDriveSize 300 -Bootable $True
```

Create a custom HPE Synergy D3940 bootable RAID Logical Disk with the provided parameter values.

###  Example 4 

```powershell
$AvailableDriveType = Get-OVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-OVAvailableDriveType  | ? { $_.Type -eq "SASHDD" -and $_.capacity -eq 900 }
$NewLogicalDisk = New-OVServerProfileLogicalDisk -Name "LD1_RAID5_900GB_SASHDD" -DriveSelectionBy DriveType -NumberofDrives 6 -RAID RAID5 -AvailableDriveType $AvailableDriveType
```

Create a RAID5 Logical Disk for a Server Profile using D3940 storage, and a specific available drive type, 900GB capacity and SASHDD type.

###  Example 5 

```powershell
$JBODLogicalDisk = New-OVServerProfileLogicalDisk -Name "JBOD1_900GB_SASHDD" -NumberofDrives 6 -MinDriveSize 900 -DriveType SAS
```

Create logical JBOD to then be attached to either a Gen10 Mixed Mode or Gen9 or newer HBA mode controller.

###  Example 6 

```powershell
# Get the specific server.  Server must have been powered on at least 1 time to complete POST in order for server inventory to be updated
$Server = Get-OVServer -Name MyGen11Server

# Get the available controllers and drives from the specific server
$AvailableControllers = Get-OVServerHardwareAvailableController -InputObject $Server

# Review installed controllers
$AvailableControllers | ? { -not [String]::IsNullOrEmpty($_.DeviceSlot) }

DeviceSlot           : Slot 1
Family               : SmartRAID
Type                 : Standup
Model                : HPE SR308i-p Gen11
Firmware             : 5.29-256
ControllerMode       : HPEOneView.Servers.ControllerModes
RaidModes            : HPEOneView.Servers.RaidModes
DriveTechnologies    : HPEOneView.Servers.DriveTechnologies
ReadCachePolicy      : HPEOneView.Servers.ReadCachePolicy
WriteCachePolicy     : HPEOneView.Servers.WriteCachePolicy
Capabilities         : {RedfishConfig, RedfishDedicatedSpare}
Drives               : {1I:1:41 147 GB (NvmeSsd), 1I:1:42 147 GB (NvmeSsd), 1I:1:43 147 GB (NvmeSsd), 1I:1:44 147 GB (NvmeSsd)ΓÇª}
MaximumLogicalDrives : 256
MaximumDrives        : 256
ApplianceConnection  : MyAppliance

# Review available drives attached to controller in "Slot 1"
($AvailableControllers | ? DeviceSlot -eq "Slot 1").Drives

Location Model       Capacity DriveTechnology IsAllocated FailurePredicted LifeRemaining
-------- -----       -------- --------------- ----------- ---------------- -------------
1I:1:41  EH0146FCBVB 147 GB   NvmeSsd         True        False            100%
1I:1:42  EH0146FCBVB 147 GB   NvmeSsd         True        False            100%
1I:1:43  EH0146FCBVB 147 GB   NvmeSsd         True        False            100%
1I:1:44  EH0146FCBVB 147 GB   NvmeSsd         False       False            100%
1I:1:45  EH0146FCBVB 147 GB   SataHdd         False       False            0%
1I:1:46  EH0146FCBVB 147 GB   SataHdd         False       False            0%
1I:1:47  EH0146FCBVB 147 GB   SataHdd         False       False            0%
1I:1:48  EH0146FCBVB 147 GB   SataHdd         False       False            0%
1I:1:49  EH0146FCBVB 147 GB   SataHdd         False       False            0%
1I:1:50  EH0146FCBVB 147 GB   SataSsd         True        False            100%
1I:1:51  EH0146FCBVB 147 GB   SataSsd         True        False            100%
1I:1:52  EH0146FCBVB 147 GB   SataSsd         False       False            100%

# Filter out available SataHdd for a 3+1 and spare drive configuration
$DrivesToAssign = ($AvailableControllers | ? DeviceSlot -eq "Slot 1").Drives | ? { $_.DriveTechnology -eq "SataHdd" -and -not $_.IsAllocated } | Select -First 5

# Create the logical drive, specifying drives and the spare drive to use (which is the last drive in the collection)
$LogicalDrive = New-OVServerProfileLogicalDisk -Name RAID5+Spare-DATA -Drives $DrivesToAssign -RAID Raid5 -AddSpareDrive -SpareDrives $DrivesToAssign[-1]
```

Identify available storage controllers and drives, and create a logical disk with specific drives from inventory including spare drive.

## Parameters

### -Name &lt;String&gt;

Logical Disk name.  Must be unique within the Server Profile.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RAID &lt;String&gt;

The RAID level of the logical drive. Supported values depend on the local storage capabilities of the selected server hardware type.

Only RAID0 and RAID1 are supported for embedded BL disk policies.  RAID5, RAID6, RAID10 are supported with DL servers with SmartArray controller that supports the RAID type.  RAID0, RAID1ADM, RAID10, RAID5, and RAID6 are supported values with HPE Synergy D3940 disk shelf.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | RAID1 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NumberofDrives &lt;Int32&gt;

The number of physical drives to be used to build the logical drive. The provided values must be consistent with the selected RAID level and cannot exceed the maximum supported number of drives for the selected server hardware type.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 2 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DriveType &lt;String&gt;

Defines the interface type for drives that will be used to build the logical drive. Supported values depend on the local storage capabilities of the selected server hardware type.  Allowed value:

* SAS
    *SATA
    *SASSSD
    *SATASSD
    *Auto
???+ info
    Auto is not supported when attempting to create an HPE Synergy D3940 Logical or JBOD disk.  You must specify a disk technology type unless `-DriveSelectionBy` is changed to DriveType and `-AvailableDriveType` is used.  Allowed values are:

* SAS

* SATA
* SASSSD
* SATASSD
* NVMeSas
* NVMeSata
* Auto

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Auto |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DriveSelectionBy &lt;String&gt;

Use to specify how the drive selection will be used.  Allowed values:

* DriveType - Use Get-OVAvailableDriveType to locate available drive types, quantity to which SAS Logical Interconnect or Drive Enclosure.
* SizeAndTechnology - Use to define the attributes of the drive based on technology and min/max drive size.  The `-DriveType` and `-MinDriveSize` parameters are required.

Default: SizeAndTechnology

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | SizeAndTechnology |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StorageLocation &lt;String&gt;

Specify Internal for HPE Synergy Compute Nodes that have the Expanded Storage option connected to an available mezzanine SmartArray controller for NVMe drives.  DriveType parameter then must be set to NVMeSata or NVMeSAS.  Use External to specify storage will be allocated from the D3940 disk shelf.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | External |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AvailableDriveType &lt;HPEOneView.Storage.AvailableDriveType&gt;

A specific availabe drive type from Get-OVAvailableDriveType.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -MinDriveSize &lt;Int32&gt;

Only for HPE Synergy D3940.  Specify the minimum size disk to request.  Required when `-DriveSelectionBy` is set to SizeAndTechnology.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MaxDriveSize &lt;Int32&gt;

Only for HPE Synergy D3940.  If the parameter is not specified, the MinDriveSize parameter value will be used.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 0 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Bootable &lt;Boolean&gt;

Indicates if the logical drive is bootable or not. Cannot be combined with an FC or FCoE Server Profile Connection that is also set as Bootable.  Parameter is not valid with defining Synergy JBOD SAS disk policies.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EraseDataOnDelete &lt;SwitchParameter&gt;

Indicates if the logical drive should be erased when it is deleted from or with the Server Profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Accelerator &lt;String&gt;

For Gen10 Smart Array controllers only.  When using Auto for drive type allocation and supplied 'Enabled', the Accelorator policy will be set to 'ControllerCache'.  If drive allocation type is an 'SSD' drive, the accelorator policy will be set to 'IOBypass'.  Disabled will set the accelorator policy to 'None'.  Default is 'Unmanaged'.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Unmanaged |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Permanent &lt;String&gt;

When set to true, the logical JBOD will not be deleted when the associated profile is deleted.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Unmanaged |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AddSpareDrive &lt;SwitchParameter&gt;

When selected, an additional drive will be reserved (beyond what was specified) for use as a replacement drive in the event of a drive failure in the logical drive.  Ensure the `-PredictiveSpareActivation` parameter is used in New-OVServerProfileLogicalDiskController.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Drives &lt;HPEOneView.Servers.PhysicalDrive[]&gt;

One or more drives to allocate. Use Get-OVServerHardwareAvailableController Cmdlet and examine the Drives attribute within the `[HPEOneView.Servers.PhysicalDrive]` object.

???+ info
    Using this parameter will create a logical drive resource that can only be used with server profile resources.


| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IOPerformanceMode &lt;string&gt;

Controls the logical drive's IO performance mode setting. When enabled, IO operations will bypass the controller cache and read and write cache policy settings will be set to off. A drive technology using SSD is required to enable IO performance mode.

Managed manually: This setting is managed by the user outside OneView.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ReadCachePolicy &lt;string&gt;

Controls the read cache policy.

* Enabled - Configures Read ahead policy on the controller. A caching technique in which the controller pre-fetches data anticipating future read requests, based on previous cache hits.
* Disabled - Disables read caching for this logical drive.
* Unmanaged - This setting is not managed by HPE OneView, but can managed by the user outside of the server profile resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SpareDrives &lt;HPEOneView.Servers.PhysicalDrive[]&gt;

One or more drives to allocate. Use Get-OVServerHardwareAvailableController Cmdlet and examine the Drives attribute within the `[HPEOneView.Servers.PhysicalDrive]` object.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WriteCachePolicy &lt;string&gt;

Controls the write cache policy.

*  Enabled - Configured Protected Write Back poicy on the controller. The completion of a write request is signaled as soon as the data is in cache, and actual writing to non-volatile media is guaranteed to occur at a later time.
*  Disabled - Disables write caching for this logical drive.
* Unmanaged - This setting is not managed by HPE OneView, but can managed by the user outside of the server profile resource.

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

=== "HPEOneView.Storage.AvailableDriveType"
    An available disk drive type from Get-OVAvailableDriveType Cmdlet.
    

## Return Values

=== "System.Management.Automation.PSCustomObject"
    Logical Disk configuration object
    

=== "System.Collections.ArrayList<System.Management.Automation.PSCustomObject>"
    Collection of Logical Disk configuration objects
    

## Related Links

* [Get-OVServerHardwareAvailableController](get-ovserverhardwareavailablecontroller.md)
* [New-OVServerProfileLogicalDiskController](new-ovserverprofilelogicaldiskcontroller.md)
