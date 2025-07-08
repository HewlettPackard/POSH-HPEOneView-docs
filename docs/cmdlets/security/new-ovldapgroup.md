---
description: Add a new Directory Group to appliance.
---

# New-OVLdapGroup

## Syntax

```powershell
New-OVLdapGroup
    [-Directory] <Object>
    [-Group] <Object>
    [-Roles] <Array>
    [-Username] <String>
    [-Password <Object>]
    [-Credential <PSCredential>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVLdapGroup
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

This Cmdlet provides the ability to add a new Directory Group to the appliance.  You can use the Show-OVLdapGroups to retrieve a list of avialable Directory Groups from the specified Directory.

## Examples

###  Example 1 

```powershell
New-OVLdapGroup -d Domain1 -GroupName "MY Directory Group1" -roles @("Server administrator") -u "Sarah Peterson"
```

Add "MY Directory Group1" from Domain1 with Server Administrator role and prompt for password for group validation.

###  Example 2 

```powershell
# Get the defined directory group from the appliance. $Directory = Get-OVLdapDirectory -Name "Domain1" -ErrorAction Stop  # Collect the users AD password.  This does not require Domain Admins or an administrator level account.  Only a standard user account that can query the directory. $Password = ConvertTo-SecureString -AsPlainText "password123890" -force  # Get the directory group object. $Group = Show-OVLdapDirectoryGroup -Name "Domain1" -Directory $Directory -Username "Sarah.Peterson@domain1.com" -Password $Password -ErrorAction Stop  # Specify the roles needed to be assigned to the directory group. $Roles = "Server administrator","Backup administrator"  # Create the directory group resource on the appliance, and associate with the SBAC permissions. New-OVLdapGroup -Directory $Directory -GroupName "MY Directory Group1" -Roles $Roles -Username "Sarah.Peterson@domain1.com" -Password $Password
```

Add "MY Directory Group1" from Domain1 with Server and Backup administrator roles, and specify password for group validation.

###  Example 3 

```powershell
# Get the defined directory group from the appliance. $Directory = Get-OVLdapDirectory -Name "Domain1" -ErrorAction Stop  # Collect the scope needed to assign permissions. $VirtAdminsScope = Get-OVScope -Name CorpVirtAdmins -ErrorAction Stop  # Create a hashtable of the roles to scopes (SBAC) which would then be assigned to the directory group. $ScopeRoles = @{Role = "Server administrator"; Scope = $VirtAdminsScope},@{Role = "Storage administrator"; Scope = $VirtAdminsScope}  # Collect the users AD credentials.  This does not require Domain Admins or an administrator level account.  Only a standard user account that can query the directory. $MyAdCreds = Get-Credential  # Get the directory group object. $Group = Show-OVLdapDirectoryGroup -Name "CorpVirtAdmins" -Directory $Directory -Credential $MyAdCreds -ErrorAction Stop  # Create the directory group resource on the appliance, and associate with the SBAC permissions. New-OVLdapGroup -Directory Directory -GroupName CorpVirtAdmins -ScopePermissions $ScopeRoles -Credential $MyAdCreds
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

Directroy Group to add.  Can either be a string value of a Cononical Name of directory group, or object from Show-OVLdapGroups.

| Aliases | g, GroupName, name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Roles &lt;Array&gt;

The role(s) to assign to the Directroy Group, in `[System.Collections.ArrayList]` format.  Accepted values are noted within the ApplianceRoles property of the `[HPEOneView.Appliance.Connection]` object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

| Aliases | r, role |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

???+ warning
    This parameter is now obsolete.  Please transition to using the `-Credential` parameter.


Directory Username to authenticate with

| Aliases | u |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

???+ warning
    This parameter is now obsolete.  Please transition to using the `-Credential` parameter.


Directory User account password.  Can be `[System.String]` or `[System.Security.SecureString]` object.

| Aliases | p |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
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

=== "HPEOneView.Appliance.DirectoryGroup [System.Management.Automation.PSCustomObject]"
    The external authentication directory object from `-Get`-OVLdapDirectory.
    

## Return Values

=== "System.Management.Automation.PSCustomObject"
    New LDAP Group object with role assignment(s)
    

## Related Links

* [Get-OVLdapGroup](get-ovldapgroup.md)
* [Remove-OVLdapGroup](remove-ovldapgroup.md)
* [Set-OVLdapGroupRole](set-ovldapgrouprole.md)
* [Show-OVLdapGroups](show-ovldapgroups.md)
