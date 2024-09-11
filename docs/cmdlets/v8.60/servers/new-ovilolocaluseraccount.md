---
description: Create compliant local iLO account object for server profile type resources.
---

# New-OVIloLocalUserAccount

## Syntax

```powershell
New-OVIloLocalUserAccount
    [-Username] <String>
    [-Password] <SecureString>
    [-DisplayName <String>]
    [-AdministerUserAccounts <Bool>]
    [-RemoteConsole <Bool>]
    [-VirtualMedia <Bool>]
    [-VirtualPowerAndReset <Bool>]
    [-ConfigureIloSettings <Bool>]
    [<CommonParameters>]
```

```powershell
New-OVIloLocalUserAccount
    [-Username] <String>
    [-Password] <SecureString>
    [-DisplayName <String>]
    [-AdministerUserAccounts <Bool>]
    [-RemoteConsole <Bool>]
    [-VirtualMedia <Bool>]
    [-VirtualPowerAndReset <Bool>]
    [-ConfigureIloSettings <Bool>]
    [-Login <Bool>]
    [-HostBIOS <Bool>]
    [-HostNIC <Bool>]
    [-HostStorage <Bool>]
    [<CommonParameters>]
```

## Description

iLO settings enable you to configure and manage the settings in HPE OneView instead of logging into the iLO to apply the needed settings. These settings are included when you move the profile to another server hardware instance. Use a server profile template if you want to maintain consistent management for a specific iLO setting across multiple iLO.

This Cmdlet will allow you to create a new local account that can then be passed into the LocalAccounts parameter of New-OVServerProfileIloPolicy Cmdlet. When managed from HPE OneView, all the local accounts on the iLO are replaced when configuring the accounts specified in the server profile.

## Examples

###  Example 1 

```powershell
New-OVIloLocalUserAccount -Username "localuser1" `
                          -Password (Read-Host "localuser1 password" -AsSecureString) `
                          -DisplayName "localuser1" `
                          -AdministerUserAccounts `
                          -RemoteConsole `
                          -VirtualMedia `
                          -VirtualPowerAndReset `
                          -ConfigureIloSettings
```

Create an iLO user account specific to iLO4, or does not include the additional iLO5 permissions.

###  Example 2 

```powershell
New-OVIloLocalUserAccount -Username "localuser1" `
                          -Password (Read-Host "localuser1 password" -AsSecureString) `
                          -DisplayName "localuser1" `
                          -AdministerUserAccounts `
                          -RemoteConsole `
                          -VirtualMedia `
                          -VirtualPowerAndReset `
                          -ConfigureIloSettings `
                          -Login `
                          -HostBIOS `
                          -HostNIC `
                          -HostStorage
```

Create an iLO user account that includes iLO5 permissions.

## Parameters

### -AdministerUserAccounts &lt;Bool&gt;

User has the permission to add, edit, and delete local iLO user accounts.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ConfigureIloSettings &lt;Bool&gt;

User has the permission to configure most iLO settings, including security settings, and to update the iLO firmware.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DisplayName &lt;String&gt;

Optional display name of the user account.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -HostBIOS &lt;Bool&gt;

User has the permission to change host system BIOS configuration.  This permission is specific to iLO5-based systems.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -HostNIC &lt;Bool&gt;

User has the permission to change host system NIC configuration.  This permission is specific to iLO5-based systems.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -HostStorage &lt;Bool&gt;

User has the permission to change host system storage configuration.  This permission is specific to iLO5-based systems.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Login &lt;Bool&gt;

User has the permission to log into the iLO.  This permission is specific to iLO5-based systems.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;SecureString&gt;

The securestring object of the user account password to set.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RemoteConsole &lt;Bool&gt;

User has the permission to access the iLO remote console.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

The username of the account that will be created.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VirtualMedia &lt;Bool&gt;

User has the permission to use the Virtual Media features on the host system.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VirtualPowerAndReset &lt;Bool&gt;

User has the permission to power-cycle or reset the host system.

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

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

An iLO settings complient object for server profile resources.


## Related Links

* [New-OVServerProfileIloPolicy](new-ovserverprofileilopolicy.md)
* [New-OVIloDirectoryGroup](../library/new-ovilodirectorygroup.md)
* [New-OVServerProfile](new-ovserverprofile.md)
* [New-OVServerProfileTemplate](new-ovserverprofiletemplate.md)
