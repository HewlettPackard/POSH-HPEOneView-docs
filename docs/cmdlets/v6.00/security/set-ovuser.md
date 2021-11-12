---
description: Modify an existing user account.
---

# Set-OVUser

## Syntax

```powershell
Set-OVUser
    [-UserName] <String>
    [-Password <String>]
    [-FullName <String>]
    [-Roles <Array>]
    [-Append]
    [-ScopePermissions <Array>]
    [-EmailAddress <String>]
    [-OfficePhone <String>]
    [-MobilePhone <String>]
    [-Enabled]
    [-Disabled]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVUser
    [-UserObject] <Object>
    [-Password <String>]
    [-FullName <String>]
    [-Roles <Array>]
    [-Append]
    [-ScopePermissions <Array>]
    [-EmailAddress <String>]
    [-OfficePhone <String>]
    [-MobilePhone <String>]
    [-Enabled]
    [-Disabled]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Modify or update an existing local user account on the management appliance.  This Cmdlet will not update the password or roles of the currently logged in user account.  To update your HPE OneView appliance local account"s password, please use the Set-OVUserPassword Cmdlet.

## Examples

###  Example 1 

```powershell
Set-OVUser -username Sally -roles @("server administrator","network administrator")
```

Update the user account "Sally" with new roles.

###  Example 2 

```powershell
Set-OVUser -username Sally -password NewP@ssw0rd
```

Update the user account "Sally" with a new password.

###  Example 3 

```powershell
$Scope = Get-OVScope -Name Scope1 -ErrorAction Stop
Get-OVUser -Username Sally | Set-OVUser -Roles "Server administrator" -ScopePermissions @{Role = "Network administrator"; Scope = $Scope }
```

Modify the user account with the new role and scope permissions.

## Parameters

### -UserObject &lt;Object&gt;

The object of the user account to be updated.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -UserName &lt;String&gt;

The name or object of the user account to be updated.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;String&gt;

New password for the user account.  Passwords must be at least 8 characters.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FullName &lt;String&gt;

Updated Full Name of the User Account.

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
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EmailAddress &lt;String&gt;

Updated Email Address of the User Account.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OfficePhone &lt;String&gt;

Updated office phone of the User Account.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MobilePhone &lt;String&gt;

Updated mobile phone number

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Enabled &lt;SwitchParameter&gt;

Enable the local user account.

| Aliases | enable |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Disabled &lt;SwitchParameter&gt;

Disable the local user account.

| Aliases | disable |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
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

### -Append &lt;SwitchParameter&gt;

Use to append roles and/or scope permissions update.  If omitted, roles or scope permissions will be replaced.

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

_**HPEOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

HPE OneView User Account object created on an appliance

## Return Values

_**HPEOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

If successful, returns a user resource

## Related Links

* [Get-OVUser](../appliance/get-ovuser.md)
* [New-OVUser](new-ovuser.md)
* [Remove-OVUser](remove-ovuser.md)
* [Set-OVUserPassword](set-ovuserpassword.md)
* [Set-OVUserRole](set-ovuserrole.md)
* [Show-OVUserSession](../appliance/show-ovusersession.md)
