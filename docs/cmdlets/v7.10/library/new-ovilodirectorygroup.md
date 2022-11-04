---
description: Create compliant iLO directory group object for server profile type resources.
---

# New-OVIloDirectoryGroup

## Syntax

```powershell
New-OVIloDirectoryGroup
    [-GroupDN] <String>
    [-GroupSID] <String>
    [-AdministerUserAccounts <Bool>]
    [-RemoteConsole <Bool>]
    [-VirtualMedia <Bool>]
    [-VirtualPowerAndReset <Bool>]
    [-ConfigureIloSettings <Bool>]
    [<CommonParameters>]
```

## Description

iLO settings enable you to configure and manage the settings in HPE OneView instead of logging into the iLO to apply the needed settings. These settings are included when you move the profile to another server hardware instance. Use a server profile template if you want to maintain consistent management for a specific iLO setting across multiple iLO.

This Cmdlet will create and grant access to specific directory groups for the iLO on the server hardware that is associated with a server profile. When managed from HPE OneView, all the directory groups on the iLO are replaced when configuring the directory groups specified in the server profile.

## Examples

###  Example 1 

```powershell
$Group1 = New-OVIloDirectoryGroup -GroupDN "dn=ilogroup1, ou=ou1, dc=domain, dc=com" `
                                  -GroupSID "sid12345" `
                                  -AdministerUserAccounts `
                                  -RemoteConsole `
                                  -VirtualMedia `
                                  -ConfigureIloSettings
```

Create a directory group, with the specific privileges.

## Parameters

### -AdministerUserAccounts &lt;Bool&gt;

Group has the permission to add, edit, and delete local iLO user accounts.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ConfigureIloSettings &lt;Bool&gt;

Group has the permission to configure most iLO settings, including security settings, and to update the iLO firmware.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -GroupDN &lt;String&gt;

The Distinguished Name (DN) of the group from the directory to be authorized for iLO access.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -GroupSID &lt;String&gt;

The SID of the directory group to be authorized for iLO access.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RemoteConsole &lt;Bool&gt;

Group has the permission to access the iLO remote console.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VirtualMedia &lt;Bool&gt;

Group has the permission to use the Virtual Media features on the host system.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VirtualPowerAndReset &lt;Bool&gt;

Group has the permission to power-cycle or reset the host system.

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

* [New-OVServerProfileIloPolicy](../servers/new-ovserverprofileilopolicy.md)
* [New-OVIloLocalUserAccount](../servers/new-ovilolocaluseraccount.md)
* [New-OVServerProfile](../servers/new-ovserverprofile.md)
* [New-OVServerProfileTemplate](../servers/new-ovserverprofiletemplate.md)
