---
description: Configure automatic appliance backup.
---

# Set-OVAutomaticBackupConfig

## Syntax

```powershell
Set-OVAutomaticBackupConfig
    [-Hostname] <String>
    [-Username] <String>
    [-Password] <System.Security.SecureString>
    [-Port <int>]
    [-Directory <String>]
    [-HostSSHKey <String>]
    [-Protocol <String>]
    [-Interval <String>]
    [-Days <Array>]
    [-Time <String>]
    [-Passphrase] <SecureString>
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```powershell
Set-OVAutomaticBackupConfig
    [-Disabled]
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Introduced in HPE OneView 3.0, an automatic appliance backup schedule can be configured.  The automatic backup process will generate the backup file, then transfer it to a host that supports SCP or SFTP.  The hosts public SSH key will be needed in order to successfuly configure.

During the configuration process, a test file will be created and stored on the host.  This file can be safely deleted once the async task has successfully completed.

## Examples

###  Example 1 

```powershell
$HostSSHKey = Get-Content C:\host.key
Set-OVAutomaticBackupConfig -Hostname scphost.domain.com -Username backupadmin -Password (ConvertTo-SecureString password -AsPlainText -Force) -HostSSHKey $HostSSHKey -Protocol SCP -Interval Weekly -Days "MON","WED","FRI" -Time 18:00
```

This command will configure automatic appliance backup, based on a weekly Monday, Wednesday and Friday schedule to execute at 18:00 (6:00PM).

###  Example 2 

```powershell
$HostSSHKey = Get-Content C:\host.key
Set-OVAutomaticBackupConfig -Hostname scphost.domain.com -Username backupadmin -Password (ConvertTo-SecureString password -AsPlainText -Force) -HostSSHKey $HostSSHKey -Protocol SCP -Interval Weekly -Days "MON","WED","FRI" -Time 18:00
New-OVBackup
```

This command will configure automatic appliance backup, based on a weekly Monday, Wednesday and Friday schedule to execute at 18:00 (6:00PM).  Then, a call to New-OVBackup will be made, which will generate and copy the backup file to the remote location configured.

## Parameters

### -Hostname &lt;String&gt;

The IP Address or FQDN of the target SCP or SFTP host.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Directory &lt;String&gt;

The remote directory on the host where the file will be saved to.  Omit to sepcify the root or default directory the user account is associated with.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

The username to authenticate to the SCP/SFTP host with.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;System.Security.SecureString&gt;

The password of the user.

Specify the Logical Interconnect URI or Object the Support Dump will be generated for, from pipeline.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -HostSSHKey &lt;String&gt;

The SCP/SFTP hosts public key, in OpenSSH String format.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Protocol &lt;String&gt;

The protocol to connect to the remote host with.  Supported values are:

* SCP
* SFTP

Default: SCP

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | SCP |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Interval &lt;String&gt;

The frequency the backup will be generated.  Supported values are:

* Daily
* Weekly

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Days &lt;Array&gt;

If specifying a Weekly backup, provide the days in an Array.  Accepted values are:

* SU or SUN or Sunday
* MO or MON or Monday
* TU or TUE or Tuesday
* WE or WED or Wednesday
* TH or THUR or Thursday
* FR or FRI or Friday
* SA or SAT or Saturday

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Time &lt;String&gt;

The time to execute, in 24hr clock.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Disabled &lt;SwitchParameter&gt;

Disable the automatic backup schedule.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
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

### -Port &lt;int&gt;

The target port of the destination service.  By default, this is 22/TCP.  Only TCP ports are supported.

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
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Appliance async task to monitor
    

=== "System.Collections.Arraylist <HPEOneView.Appliance.TaskResource>"
    Multiple appliance async task to monitor
    

## Related Links

* [Get-OVAutomaticBackupConfig](get-ovautomaticbackupconfig.md)
