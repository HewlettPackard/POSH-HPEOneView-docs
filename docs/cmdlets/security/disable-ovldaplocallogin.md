---
description: Disable local authentication logins.
---

# Disable-OVLdapLocalLogin

## Syntax

```powershell
Disable-OVLdapLocalLogin
    [-EnableEmergencyLocalLogin <Bool>]
    [-EmergencyLoginAllowType <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups.
Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

If you want to authenticate all logins to the appliance through a directory service, you must disable local logins. Also, if a directory is inaccessible in some special cases, you can enable the emergency local login. To enable emergency local login, you must disable local logins.

NOTE:
Local logins cannot be disabled until you log in using an authentication directory service as an Infrastructure administrator. Verify that you can log in to the appliance as an Infrastructure administrator from the authentication directory service before continuing.

???+ info
    Minimum required privileges: Infrastructure administrator.

## Examples

###  Example 1 

```powershell
Disable-OVLdapLocalLogin
```

Disable local logins on the appliance, and does not allow emergency local login by default.

###  Example 2 

```powershell
Disable-OVLdapLocalLogin -EnableEmergencyLocalLogin $true -EmergencyLoginAllowType NetworkAndApplianceConsole
```

Disable local logins on the appliance, but allow emergency login access via SSH maintenance console or from the service console of the appliance.

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

### -EmergencyLoginAllowType &lt;String&gt;

Allow emergency login access if the configured authentication directory(ies) are unavailable.  Highest security is obtained by restricting the local administrator account to "ApplianceConsoleOnly". Choose "NetworkAndApplianceConsole" to allow emergency access via the network.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableEmergencyLocalLogin &lt;Bool&gt;

Boolean value to enable ($true) or disable ($false) emergency local login.  Must be set to $false when SmartCardLoginOnly is set and used from Set-OVApplianceTwoFactorAuthentication.

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Management.Automation.PSCustomObject"
    Appliance Authentication Directory setting.
    

## Related Links

* [Enable-OVLdapLocalLogin](enable-ovldaplocallogin.md)
