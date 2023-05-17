---
description: Create a new user account.
---

# New-OVUser

## Syntax

```powershell
New-OVUser
    [-UserName] <String>
    [-Password] <String>
    [-FullName] <String>
    [-Roles] <Array>
    [-ScopePermissions <Array>]
    [-EmailAddress <String>]
    [-OfficePhone <String>]
    [-MobilePhone <String>]
    [-Enabled]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Create a new local user account on the management appliance

## Examples

###  Example 1 

```powershell
New-OVUser -username Sally -fullName "Sally Smith" -password SallysPassword -roles "server administrator","network administrator"
```

Create the Sally user account, and assigning to the Server Administrator and Network Administrator roles, on all connected appliances.

## Parameters

### -UserName &lt;String&gt;

The name of the new user account to be created.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;String&gt;

The initial password to be assigned to the new user.
Passwords must be at least 8 characters.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FullName &lt;String&gt;

Full name for the user.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Roles &lt;Array&gt;

The role(s) to assign to the Directroy Group, in `[System.Collections.ArrayList]` format.  Accepted values are noted within the ApplianceRoles property of the `[HPEOneView.Appliance.Connection]` object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | @() |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EmailAddress &lt;String&gt;

Provide the users email address.  This does not set the Email Notification value when configuring SMTP Notifications.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OfficePhone &lt;String&gt;

Office phone number.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MobilePhone &lt;String&gt;

Mobile phone number.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Enabled &lt;SwitchParameter&gt;

Deprecated parameter.  By default, all new user accounts will be enabled.  In order to disable a user account, use the Set-OVUser Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ScopePermissions &lt;Array&gt;

Array collection of Hashtable<Role; Scope>.  Will overwrite existing scope to role mappings.

Example: `-ScopePermissions` @{Role = "Network administrator"; Scope = (`Get-OVScope` `-Name` CorpNetAdmins `-ErrorAction` Stop) }

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

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPEOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

If successful, returns a user resource

## Related Links

* [Get-OVUser](../appliance/get-ovuser.md)
* [Remove-OVUser](remove-ovuser.md)
* [Set-OVUser](set-ovuser.md)
* [Set-OVUserPassword](set-ovuserpassword.md)
* [Set-OVUserRole](set-ovuserrole.md)
* [Show-OVUserSession](../appliance/show-ovusersession.md)
