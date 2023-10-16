---
description: Create Server Profile disk controller policy object.
---

# New-OVServerProfileLogicalDiskController

## Syntax

```powershell
New-OVServerProfileLogicalDiskController
    [-ControllerID <Object>]
    [-Mode <String>]
    [-Initialize]
    [-WriteCache <String>]
    [-PredictiveSpareActivation <String>]
    [-LogicalDisk <Object>]
    [<CommonParameters>]
```

```powershell
New-OVServerProfileLogicalDiskController
    [-InputObject] <HPEOneView.Servers.StorageController>
    [-Mode <String>]
    [-Initialize]
    [-WriteCache <String>]
    [-PredictiveSpareActivation <String>]
    [-ImportExistingConfiguration]
    [-LogicalDisk <Object>]
    [<CommonParameters>]
```

```powershell
New-OVServerProfileLogicalDiskController
    [-MegaRAIDController]
    [-ControllerID <Object>]
    [-Mode <String>]
    [-Initialize]
    [-WriteCache <String>]
    [-ImportExistingConfiguration]
    [-LogicalDisk <Object>]
    [<CommonParameters>]
```

```powershell
New-OVServerProfileLogicalDiskController
    [-ControllerID <Object>]
    [-Mode <String>]
    [-WriteCache <String>]
    [-PredictiveSpareActivation <String>]
    [-ImportExistingConfiguration]
    [<CommonParameters>]
```

## Description

Storage Controllers can be managed by HPE OneView for various platforms taht are defined within a server profile template or server profile resource.  Administrators can choose to import an existing configuration (to reduce data loss) if local storage controllers already have an existing policy, or to deploy a new policy.  Configuring logical drives, HPE OneView can automatically assign drives based on defined characteristics that must match available drives within the server.  Drives that are already allocated will result in a server profile apply error.  Administrators can also specify specific drives to assign for Server Profiles and Gen10 or newer only.

To identify installed drives, use the Get-OVServerHardwareAvailableController Cmdlet, and provide a server resource with Get-OVServer Cmdlet.  Available controller objects are returned, with a collection of installed drives.

If you configure new logical drives in your server profile or import the existing logical drives from the server hardware, HPE OneView stores a unique identifier for each logical drive in the server profile configuration when the server profile is applied.

On subsequent server profile apply operations, HPE OneView checks for the existence of the identifier on the physical drives of the assigned server hardware. If the identifier is missing, the apply operation fails in order to ensure that if the server profile is re-assigned to new server hardware and that the physical drives are inserted correctly.

{% hint style="info" %}
 HPE OneView also uses the logical drive name (label) as a unique identifier.  Do not modify the label of logical drives that are managed by HPE OneView.  Do not create logical drives with non-unique labels.
{% endhint %}


RAID levels and number of physical drives

The HPE OneView Support Matrix provides information on the number of drives supported by specific server hardware.

* RAID 0 - Minimum of 1 drive, increments of 1.
* RAID 1 - Requires 2 drives.
* RAID 1 ADM - Requires 3 drives.
* RAID 10 - Requires 4 drives, increments of 2.
* RAID 10 ADM - Minimum of 6 drives, increments of 3.
* RAID 5 - Minimum of 3 drives, increments of 1.
* RAID 6 - Minimum of 4 drives, increments of 1.

After you create a logical drive and apply it to a server hardware, you can no longer modify those logical drives.

{% hint style="info" %}
 For controllers that support mixed mode (Gen10 servers), creating a logical drive uses the physical drives that are currently visible to the operating system. To preserve any data, back up the server drives before creating a logical drive.
{% endhint %}


Only for Gen11 servers that contain storage controllers, you can configure logical drives that are related to the following Logical Drive Configuration options, using server profiles:

* IOPerformanceMode
* ReadCachePolicy
* WriteCachePolicy


## Examples

###  Example 1 

```powershell
$LogicalDisk = New-OVServerProfileLogicalDisk -Name "MyDisk" | New-OVServerProfileLogicalDiskController -Initialize
```

Create a default Logical Disk and Controller configuration object policy.

###  Example 2 

```powershell
New-OVServerProfileLogicalDiskController -Mode HBA
```

Create an HBA controller policy, which will then set the controller to JBOD mode.

###  Example 3 

```powershell
$LogicalDisk1 = New-OVServerProfileLogicalDisk -Name "MyDisk"
$LogicalDisk2 = New-OVServerProfileLogicalDisk -Name "MyDisk2"
$Controller = New-OVServerProfileLogicalDiskController -Initialize -LogicalDisk $LogicalDisk1,$LogicalDisk2
```

Create a default Logical Disk and Controller configuration object policy.

###  Example 4 

```powershell
$LogicalDisk1 = New-OVServerProfileLogicalDisk -Name Boot -RAID RAID1 -MinDriveSize 300 -MaxDriveSize 300 -DriveType SAS -Bootable $True
$LogicalDisk2 = New-OVServerProfileLogicalDisk -Name Data -RAID RAID5 -NumberofDrives 5 -MinDriveSize 300 -MaxDriveSize 300 -DriveType SAS
$Controller = New-OVServerProfileLogicalDiskController -ControllerID "Mezz 1" -Mode RAID -LogicalDisk $LogicalDisk1,$LogicalDisk2
```

Create a HPE Synergy D3940 RAID disk policy, with a bootable volume.

###  Example 5 

```powershell
$AvailableDriveType = Get-OVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-OVAvailableDriveType  | ? { $_.Type -eq "SASHDD" -and $_.capacity -eq 900 }
$NewLogicalDisk = New-OVServerProfileLogicalDisk -Name "LD1_RAID5_900GB_SASHDD" -DriveSelectionBy DriveType -NumberofDrives 6 -RAID RAID5 -AvailableDriveType $AvailableDriveType
C:\> $Controller = New-OVServerProfileLogicalDiskController -ControllerID "Mezz 1" -Mode RAID -LogicalDisk $NewLogicalDisk
```

Create a RAID5 Logical Disk for a Server Profile using D3940 storage, and a specific available drive type, 900GB capacity and SASHDD type, and assign it to a new Controller.

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

### -ControllerID &lt;Object&gt;

Specify the Controller ID location.  You can override this using the `-InputObject` which acceptes an `[HPEOneView.Servers.StorageController]` object.  Supported options for this parameter are
* Embedded
* Mezz1
* Mezz2
* Mezz3
* Slot1
* Slot10
* Slot11
* Slot12
* Slot13
* Slot14
* Slot15
* Slot16
* Slot2
* Slot3
* Slot4
* Slot5
* Slot6
* Slot7
* Slot8
* Slot9
Please note that Mezz1, Mezz2 and Mezz3 are only supported with HPE Synergy Compute nodes connected to the HPE Synergy D3940 disk shelf.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | Embedded |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Mode &lt;String&gt;

The mode to configure the Smart Array Controller as.  Accepted values are:

* HBA
* RAID
* Mixed

When specifying HBA, you cannot attach a RAID Logical Disk to this policy.

Gen11 storage controllers only support Mixed.  Use the Get-OVServerHardwareAvailableController to review the supported modes in the .ControllerMode.Create attribute in the `[HPEOneView.Servers.StorageController]` class.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | RAID |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Initialize &lt;SwitchParameter&gt;

Use this parameter to re-initialize the controller.  This will wipe any existing logical disk configured for the controller and deploy the new policy defined.  Not supported when ControllerID is "Mezz 1", "Mezz 2", or "Mezz 3".

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ImportExistingConfiguration &lt;SwitchParameter&gt;

Specify to import any found Logical Disk configuration and add to the Server Profile as the Logical Disk policy.  This option is not available for Server Profile Templates.  Not supported when ControllerID is "Mezz 1", "Mezz 2", or "Mezz 3".

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LogicalDisk &lt;Object&gt;

A collection of Logical Disk objects from the New-OVServerProfileLogicalDisk Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -WriteCache &lt;String&gt;

For Gen10 controllers, to enable, disable or unmanage controller write cache policy.  Allowed values:

* Enabled
* Disabled
* Unmanaged

Default value: Unmanaged

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Unmanaged |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PredictiveSpareActivation &lt;String&gt;

For Gen10 and newer HPE Synergy controllers, to enable, disable or unmanage controller spare drive policy.  Allowed values:

* Enabled
* Disabled
* Unmanaged

Default value: Unmanaged

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Unmanaged |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;HPEOneView.Servers.StorageController&gt;

A storage controller object from Get-OVServerHardwareAvailableController.  Use to specify the exact storage controller to configure.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MegaRAIDController &lt;SwitchParameter&gt;

By default, SmartRAID (SR) controller objects are created.  Use this parameter to set the controller family to MegaRAID (MR) controller types for when the storage controller object will be attached to a server profile template and you are not using the `-InputObject` parameter to provide a storage controller.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.ServerProfile.LogicalDisk [System.Management.Automation.PSCustomObject]**_

Logical Disk configuration policy from New-OVServerProfileLogicalDisk

_**System.Collections.ArrayList <HPEOneView.ServerProfile.LogicalDisk>**_

Collection of Logical Disk configuration policy from New-OVServerProfileLogicalDisk

## Return Values

_**HPEOneView.ServerProfile.Controller [System.Management.Automation.PSCustomObject]**_

Server Profile Controller configuration object

_**System.Collections.ArrayList <HPEOneView.ServerProfile.Controller>**_

Collection of Server Profile Controller configuration objects

## Related Links

* [Get-OVServerHardwareAvailableController](get-ovserverhardwareavailablecontroller.md)
* [New-OVServerProfile](new-ovserverprofile.md)
* [New-OVServerProfileLogicalDisk](new-ovserverprofilelogicaldisk.md)
* [New-OVServerProfileTemplate](new-ovserverprofiletemplate.md)
