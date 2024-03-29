﻿---
description: Create Server Profile disk controller policy object.
---

# New-OVServerProfileLogicalDiskController

## Syntax

```powershell
New-OVServerProfileLogicalDiskController
    [-ControllerID] <Object>
    [-Mode] <String>
    [-Initialize]
    [-WriteCache <String>]
    [-LogicalDisk] <Object>
    [<CommonParameters>]
```

```powershell
New-OVServerProfileLogicalDiskController
    [-ControllerID] <Object>
    [-Mode] <String>
    [-Initialize]
    [-WriteCache <String>]
    [-ImportExistingConfiguration]
    [<CommonParameters>]
```

## Description

This helper Cmdlet will create a Logical Disk controller object to then be assigned to a Server Profile Template or Server Profile using the -LogicalDisk parameter.

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

## Parameters

### -ControllerID &lt;Object&gt;

Specify the Controller ID location.  Supported options for this parameter are
 * Embedded
 * Mezz 1
 * Mezz 2
 * Mezz 3
Please note that Mezz 1, Mezz 2 and Mezz 3 are only supported with HPE Synergy Compute nodes connected to the HPE Synergy D3940 disk shelf.

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

When specifying HBA, you cannot attach a RAID Logical Disk to this policy.

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

