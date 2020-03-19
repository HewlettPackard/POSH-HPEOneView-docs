---
description: Add a new Directory Group to appliance.
---

# New-HPOVLdapGroup

## Syntax

```text
New-HPOVLdapGroup
    [-Directory] <Object>
    [-Group] <Object>
    [-Roles] <Array>
    [-Username] <String>
    [-Password <Object>]
    [-Credential <PSCredential>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
New-HPOVLdapGroup
    [-Directory] <Object>
    [-Group] <Object>
    [-ScopePermissions <Array>]
    [-Username] <String>
    [-Password <Object>]
    [-Credential <PSCredential>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet provides the ability to add a new Directory Group to the appliance.  You can use the `Show-HPOVLdapGroups` to retrieve a list of avialable Directory Groups from the specified Directory.

## Examples

###  Example 1 

```text
New-HPOVLdapGroup -d Domain1 -GroupName "MY Directory Group1" -roles @("Server administrator") -u "Sarah Peterson"
```

Add "MY Directory Group1" from Domain1 with Server Administrator role and prompt for password for group validation.

###  Example 2 

```text
# Get the defined directory group from the appliance. $Directory = Get-HPOVLdapDirectory -Name "Domain1" -ErrorAction Stop  # Collect the users AD password.  This does not require Domain Admins or an administrator level account.  Only a standard user account that can query the directory. $Password = ConvertTo-SecureString -AsPlainText "password123890" -force  # Get the directory group object. $Group = Show-HPOVLdapDirectoryGroup -Name "Domain1" -Directory $Directory -Username "Sarah.Peterson@domain1.com" -Password $Password -ErrorAction Stop  # Specify the roles needed to be assigned to the directory group. $Roles = "Server administrator","Backup administrator"  # Create the directory group resource on the appliance, and associate with the SBAC permissions. New-HPOVLdapGroup -Directory $Directory -GroupName "MY Directory Group1" -Roles $Roles -Username "Sarah.Peterson@domain1.com" -Password $Password
```

Add "MY Directory Group1" from Domain1 with Server and Backup administrator roles, and specify password for group validation.

###  Example 3 

```text
# Get the defined directory group from the appliance. $Directory = Get-HPOVLdapDirectory -Name "Domain1" -ErrorAction Stop  # Collect the scope needed to assign permissions. $VirtAdminsScope = Get-HPOVScope -Name CorpVirtAdmins -ErrorAction Stop  # Create a hashtable of the roles to scopes (SBAC) which would then be assigned to the directory group. $ScopeRoles = @{Role = "Server administrator"; Scope = $VirtAdminsScope},@{Role = "Storage administrator"; Scope = $VirtAdminsScope}  # Collect the users AD credentials.  This does not require Domain Admins or an administrator level account.  Only a standard user account that can query the directory. $MyAdCreds = Get-Credential  # Get the directory group object. $Group = Show-HPOVLdapDirectoryGroup -Name "CorpVirtAdmins" -Directory $Directory -Credential $MyAdCreds -ErrorAction Stop  # Create the directory group resource on the appliance, and associate with the SBAC permissions. New-HPOVLdapGroup -Directory Directory -GroupName CorpVirtAdmins -ScopePermissions $ScopeRoles -Credential $MyAdCreds
```

Add the new directory group with specific scope permissions, and using a PSCredential object for authentication directory validation.

## Parameters

### -Directory &lt;Object&gt;

LDAP/Active Directory Domain object.

| Aliases | d, domain, authProvider |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Group &lt;Object&gt;

Directroy Group to add.  Can either be a string value of a Cononical Name of directory group, or object from `Show-HPOVLdapGroups`.

| Aliases | g, GroupName, name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Roles &lt;Array&gt;

The role(s) to assign to the Directroy Group, in `[System.Collections.ArrayList]` format.  Accepted values are noted within the ApplianceRoles property of the `[HPOneView.Appliance.Connection]` object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

| Aliases | r, role |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

{% hint style="warning" %}
This parameter is now obsolete.  Please transition to using the `-Credential` parameter.
{% endhint %}


Directory Username to authenticate with

| Aliases | u |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

{% hint style="warning" %}
This parameter is now obsolete.  Please transition to using the `-Credential` parameter.
{% endhint %}


Directory User account password.  Can be `[System.String]` or `[System.Security.SecureString]` object.

| Aliases | p |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ScopePermissions &lt;Array&gt;

Array collection of Hashtable<Role; Scope>.

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

_**HPOneView.Appliance.DirectoryGroup [System.Management.Automation.PSCustomObject]**_

The external authentication directory object from `-Get`-HPOVLdapDirectory.

## Return Values

_**System.Management.Automation.PSCustomObject**_

New LDAP Group object with role assignment(s)

## Related Links

* [Get-HPOVLdapGroup](get-hpovldapgroup.md)
* [Remove-HPOVLdapGroup](remove-hpovldapgroup.md)
* [Set-HPOVLdapGroupRole](set-hpovldapgrouprole.md)
* [Show-HPOVLdapGroups](show-hpovldapgroups.md)
