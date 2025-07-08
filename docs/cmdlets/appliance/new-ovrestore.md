---
description: Upload appliance backup file to restore its configuration.
---

# New-OVRestore

## Syntax

```powershell
New-OVRestore
    [-FileName] <System.IO.FileInfo>
    [-Passphrase] <SecureString>
    [-EncryptionKey <Object>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Using this Cmdlet will initiate a restore of the appliance to the backup file specified.  Starts a restore operation from the backup file already uploaded to the appliance. Only one restore operation can run at a time. There is no way to cancel a restore once it has been started. The restore operation is destructive. Any configuration changes not included in the backup file will be lost. The appliance will raise alerts for any inconsistencies detected after the restore. If an unrecoverable error is detected during the restore, then the appliance will be set to the factory reset mode.

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

???+ info
    Minimum required privileges: Infrastructure administrator, Software administrator

## Examples

###  Example 1 

```powershell
New-OVRestore -FileName "C:\Users\me\Documents\appliance_backup_2013-11-01_110203.bkp"
```

Upload a backup file to restore in the appliance.

###  Example 2 

```powershell
New-OVRestore -FileName "C:\Users\me\Documents\appliance_backup_2013-11-01_110203.bkp -EncryptionKey "C:\Path\To\encryptionkey.aek""
```

Upload a backup file to restore in the appliance, supplying the path to the encryption key file.

## Parameters

### -FileName &lt;System.IO.FileInfo&gt;

The full path and file name of the appliance configuration backup file.

| Aliases | File |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EncryptionKey &lt;Object&gt;

Provide the encryption key file path or file object.  When restoring an appliance backup, and after the appliance has been factory reset, the prior encryption key is needed to decrypt the backup file.  This is only supported with HPE Synergy Composer 2 appliances.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Passphrase &lt;SecureString&gt;

A secure Passphrase is required to encrypt the appliance backup.  An exception will be generated if this parameter is used and the target appliance doesn't meet the minimum required version.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Management.Automation.PSCustomObject"
    The restore process object.  This is not an Async Task
    

## Related Links

* [New-OVBackup](new-ovbackup.md)
* [Save-OVApplianceDataAtRestEncryptionKey](../security/save-ovappliancedataatrestencryptionkey.md)
