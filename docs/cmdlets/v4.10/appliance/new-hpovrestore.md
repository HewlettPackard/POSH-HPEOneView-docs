---
description: Upload appliance backup file to restore its configuration.
---

# New-HPOVRestore

## Syntax

```text
New-HPOVRestore
    [-FileName] <String>
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

## Description

Using this cmdlet will initiate a restore of the appliance to the backup file specified.  Starts a restore operation from the backup file already uploaded to the appliance. Only one restore operation can run at a time. There is no way to cancel a restore once it has been started. The restore operation is destructive. Any configuration changes not included in the backup file will be lost. The appliance will raise alerts for any inconsistencies detected after the restore. If an unrecoverable error is detected during the restore, then the appliance will be set to the factory reset mode.

Restoring from a backup is a disruptive action:

	* The appliance restarts and users cannot log in to the appliance during the restore process. All users are
  logged out and their work is lost.
	* To prevent duplicate identifiers on the network, server hardware configurations are cleared if an associated
  server profile is not in the backup.
	* Server profiles that have been modified since the backup was taken are flagged with this message: "Server
  profile settings conflict with the server hardware configuration". To reapply the server profile
  configuration and restore network connectivity, you must unassign all flagged server profiles and then
  individually reassign the server profiles to the server hardware.
	* To prevent unintentional assignment of duplicate addresses or identifiers, all address and identifier ranges
  are disabled after the post-restore process completes. The appliance automatically re-creates replacement
  address and identifier ranges.

## Examples

###  Example 1 

```text
New-HPOVRestore "C:\Users\me\Documents\appliance_backup_2013-11-01_110203.bkp"

```

Upload a backup file to restore in the appliance.

## Parameters

### -FileName &lt;String&gt;

Aliases [-File]

The full path and file name of the appliance configuration backup file.

| Aliases | File |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

The restore process object.  This is not an Async Task

## Related Links

