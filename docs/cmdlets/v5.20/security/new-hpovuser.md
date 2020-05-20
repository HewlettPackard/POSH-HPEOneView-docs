---
description: Create a new user account.
---

# New-HPOVUser

## Syntax

```text
New-HPOVUser
    [-UserName] <>
    [-Password] <>
    [-FullName] <>
    [-Roles] <>
    [-ScopePermissions <>]
    [-EmailAddress <>]
    [-OfficePhone <>]
    [-MobilePhone <>]
    [-Enabled <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

## Description

Create a new local user account on the management appliance

## Examples

###  Example 1 

```text
New-HPOVUser -username Sally -fullName "Sally Smith" -password SallysPassword -roles "server administrator","network administrator"
```

Create the Sally user account, and assigning to the Server Administrator and Network Administrator roles, on all connected appliances.

## Parameters

### -UserName &lt;&gt;

The name of the new user account to be created.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;&gt;

The initial password to be assigned to the new user.
Passwords must be at least 8 characters.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FullName &lt;&gt;

Full name for the user.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Roles &lt;&gt;

The role(s) to assign to the Directroy Group, in `[System.Collections.ArrayList]` format.  Accepted values are noted within the ApplianceRoles property of the `[HPOneView.Appliance.Connection]` object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | @() |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EmailAddress &lt;&gt;

Provide the users email address.  This does not set the Email Notification value when configuring SMTP Notifications.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OfficePhone &lt;&gt;

Office phone number.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MobilePhone &lt;&gt;

Mobile phone number.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Enabled &lt;&gt;

Deprecated parameter.  By default, all new user accounts will be enabled.  In order to disable a user account, use the `Set-HPOVUser` Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ScopePermissions &lt;&gt;

Array collection of Hashtable<Role; Scope>.  Will overwrite existing scope to role mappings.

Example: `-ScopePermissions` @{Role = "Network administrator"; Scope = (Get-HPOVScope `-Name` CorpNetAdmins `-ErrorAction` Stop) }

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

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

If successful, returns a user resource

## Related Links

* [Get-HPOVUser](../appliance/get-hpovuser.md)
* [Remove-HPOVUser](remove-hpovuser.md)
* [Set-HPOVUser](set-hpovuser.md)
* [Set-HPOVUserPassword](set-hpovuserpassword.md)
* [Set-HPOVUserRole](set-hpovuserrole.md)
* [Show-HPOVUserSession](../appliance/show-hpovusersession.md)
