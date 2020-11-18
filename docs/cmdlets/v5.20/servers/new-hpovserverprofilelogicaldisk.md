---
description: Create Server Profile Logical Disk object.
---

# New-HPOVServerProfileLogicalDisk

## Syntax

```text
New-HPOVServerProfileLogicalDisk
    [-Name] <String>
    [-RAID <String>]
    [-NumberofDrives <Int32>]
    [-DriveType <String>]
    [-StorageLocation <String>]
    [-Accelerator <String>]
    [-Bootable <Boolean>]
    [<CommonParameters>]
```

```text
New-HPOVServerProfileLogicalDisk
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
    [-Permanent <bool>]
    [-Bootable <Boolean>]
    [<CommonParameters>]
```

## Description

This helper Cmdlet will create a Logical Disk object to then be assigned to a Server Profile Template or Server Profile using the -LogicalDisk parameter.  The LogicalDisk configuration is supported with the embedded (or Slot 0) HPE SmartArray controller for DL and BL class systems only.

## Examples

###  Example 1 

```text
$LogicalDisk = New-HPOVServerProfileLogicalDisk -Name "MyDisk"
```

Create a default Logical Disk configuration object.

###  Example 2 

```text
$ld1 = New-HPOVServerProfileLogicalDisk -Name "Boot Disk" -RAID RAID1 -NumberofDrives 2 -Bootable $True
```

Create a custom Logical Disk with the provided parameter values.

###  Example 3 

```text
$ld1 = New-HPOVServerProfileLogicalDisk -Name "Boot Disk" -RAID RAID1 -NumberofDrives 2 -DriveType SAS -MinDriveSize 300 -Bootable $True
```

Create a custom HPE Synergy D3940 bootable RAID Logical Disk with the provided parameter values.

###  Example 4 

```text
$AvailableDriveType = Get-HPOVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-HPOVAvailableDriveType  | ? { $_.Type -eq "SASHDD" -and $_.capacity -eq 900 }
$NewLogicalDisk = New-HPOVServerProfileLogicalDisk -Name "LD1_RAID5_900GB_SASHDD" -DriveSelectionBy DriveType -NumberofDrives 6 -RAID RAID5 -AvailableDriveType $AvailableDriveType
```

Create a RAID5 Logical Disk for a Server Profile using D3940 storage, and a specific available drive type, 900GB capacity and SASHDD type.

###  Example 5 

```text
$JBODLogicalDisk = New-HPOVServerProfileLogicalDisk -Name "JBOD1_900GB_SASHDD" -NumberofDrives 6 -MinDriveSize 900 -DriveType SAS
```

Create logical JBOD to then be attached to either a Gen10 Mixed Mode or Gen9 or newer HBA mode controller.

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
{% hint style="info" %}
Auto is not supported when attempting to create an HPE Synergy D3940 Logical or JBOD disk.  You must specify a disk technology type unless `-DriveSelectionBy` is changed to DriveType and `-AvailableDriveType` is used.  Allowed values are:

    * SAS
    * SATA
    * SASSSD
    * SATASSD
    * NVMeSas
    * NVMeSata

{% endhint %}
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

    * DriveType - Use `Get-HPOVAvailableDriveType` to locate available drive types, quantity to which SAS Logical Interconnect or Drive Enclosure.
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

A specific availabe drive type from `Get-HPOVAvailableDriveType`.

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

### -Permanent &lt;bool&gt;



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

_**HPEOneView.Storage.AvailableDriveType**_

An available disk drive type from [`Get-HPOVAvailableDriveType`](../storage/get-hpovavailabledrivetype.md) Cmdlet.

## Return Values

_**System.Management.Automation.PSCustomObject**_

Logical Disk configuration object

_**System.Collections.ArrayList<System.Management.Automation.PSCustomObject>**_

Collection of Logical Disk configuration objects

## Related Links

* [New-HPOVServerProfileLogicalDiskController](new-hpovserverprofilelogicaldiskcontroller.md)
