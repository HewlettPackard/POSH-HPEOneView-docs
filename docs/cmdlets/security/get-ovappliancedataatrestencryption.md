---
description: Get the appliance configured data at rest encryption state.
---

# Get-OVApplianceDataAtRestEncryption

## Syntax

```powershell
Get-OVApplianceDataAtRestEncryption
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

HPE OneView encrypts sensitive data, such as managed device credentials, when it is stored on-disk in the appliance. The HPE OneView appliance encryption key (AEK) is used internally to encrypt the credentials for managed devices (such as, iLO, onboard administrator, frame link module). By default, the AEK is stored on the HPE Synergy Composer disk and also included in the appliance backup. This could pose a security risk in case the disk is stolen.

The secure data-at-rest option, when enabled, stores the AEK off-disk in Composer NVRAM, and does not include the keyin the appliance backup. Enabling this option requires the administrator to save a copy of the AEK (recovery AEK) for use in the following circumstances:

* When restoring a backup taken when a different AEK was in effect.
* To successfully boot the system in the unlikely event that the system copy of the key is corrupted.
* A backup is being restored to a different new Composer or to the same Composer that has been factory reset.

The administrator must store the recovery AEK in a secure location, where it can be only accessed by authorized personnel. In the rare circumstance where the key cannot be read from the Composer NVRAM or the key gets corrupted, the administrator must use the appliance maintenance console to upload the AEK recovery copy, based on the error resolution message displayed. In the rare circumstance where the Composer NVRAM itself becomes inaccessible, users can choose to disable secure-data-at-rest option until the hardware issue itself is resolved.

If the downloaded recovery key and the AEK stored in the Composer NVRAM are both lost, the appliance data cannot be recovered.

Using this Cmdlet will get the data at rest encryption current configuration from supported HPE Synergy Composer appliances.

???+ info
    Minimum required privileges: Infrastructure administrator.

## Examples

###  Example 1 

```powershell
Get-OVApplianceDataAtRestEncryption
```

Get the appliance data at rest encryption state.

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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Management.Automation.PSCustomObject"
    THe data at rest encryption configuration state of the appliance.
    

## Related Links

* [Disable-OVApplianceDataAtRestEncryption](disable-ovappliancedataatrestencryption.md)
* [Enable-OVApplianceDataAtRestEncryption](enable-ovappliancedataatrestencryption.md)
* [New-OVApplianceDataAtRestEncryptionKey](new-ovappliancedataatrestencryptionkey.md)
* [Save-OVApplianceDataAtRestEncryptionKey](save-ovappliancedataatrestencryptionkey.md)
