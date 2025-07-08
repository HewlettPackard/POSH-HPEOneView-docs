---
description: Turn off HPE Synergy Composer data at rest encryption.
---

# Disable-OVApplianceDataAtRestEncryption

## Syntax

```powershell
Disable-OVApplianceDataAtRestEncryption
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

HPE OneView encrypts sensitive data, such as managed device credentials, when it is stored on-disk in the appliance. The HPE OneView appliance encryption key (AEK) is used internally to encrypt the credentials for managed devices (such
as, iLO, onboard administrator, frame link module). By default, the AEK is stored on the HPE Synergy Composer disk and also included in the appliance backup. This could pose a security risk in case the disk is stolen.

The secure data-at-rest option, when enabled, stores the AEK off-disk in Composer NVRAM, and does not include the key
in the appliance backup. Enabling this option requires the administrator to save a copy of the AEK (recovery AEK) for
use in the following circumstances:

* When restoring a backup taken when a different AEK was in effect.
* To successfully boot the system in the unlikely event that the system copy of the key is corrupted.
* A backup is being restored to a different new Composer or to the same Composer that has been factory reset.

The administrator must store the recovery AEK in a secure location, where it can be only accessed by authorized personnel. In the rare circumstance where the key cannot be read from the Composer NVRAM or the key gets corrupted, the administrator must use the appliance maintenance console to upload the AEK recovery copy, based on the error resolution message displayed. In the rare circumstance where the Composer NVRAM itself becomes inaccessible, users can choose to disable secure-data-at-rest option until the hardware issue itself is resolved.

If the downloaded recovery key and the AEK stored in the Composer NVRAM are both lost, the appliance data cannot be recovered.

Using this Cmdlet will disable data at rest encryption on configured and support HPE Synergy Composer appliances.

???+ info
    Minimum required privileges: Infrastructure administrator.

## Examples

###  Example 1 

```powershell
Disable-OVApplianceDataAtRestEncryption
```

Disable appliance data at rest encryption.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
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

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Asynchronous task resource to monitor.
    

## Related Links

* [Enable-OVApplianceDataAtRestEncryption](enable-ovappliancedataatrestencryption.md)
* [Get-OVApplianceDataAtRestEncryption](get-ovappliancedataatrestencryption.md)
* [New-OVApplianceDataAtRestEncryptionKey](new-ovappliancedataatrestencryptionkey.md)
* [Save-OVApplianceDataAtRestEncryptionKey](save-ovappliancedataatrestencryptionkey.md)
