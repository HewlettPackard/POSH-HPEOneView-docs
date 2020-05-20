---
description: Assign or change roles for LDAP Groups.
---

# Set-HPOVLdapGroupRole

## Syntax

```text
Set-HPOVLdapGroupRole
    [-InputObject] <>
    [-Roles] <>
    [-UserName] <>
    [-Password] <>
    [-Credential <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

```text
Set-HPOVLdapGroupRole
    [-InputObject] <>
    [-Roles] <>
    [-ScopePermissions <>]
    [-UserName] <>
    [-Password] <>
    [-Credential <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

```text
Set-HPOVLdapGroupRole
    [-InputObject] <>
    [-ScopePermissions <>]
    [-UserName] <>
    [-Password] <>
    [-Credential <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

## Description

Changes current roles of an LDAP Group with a given set of roles.  You must provide the list of all roles the LDAP Group should be set to, and not a subset of roles.

## Examples

###  Example 1 

```text
Set-HPOVLdapGroupRole -d Domain1 -GroupName "MY Directory Group1" -roles "Server administrator" -u "Sarah Peterson"
```

Add "MY Directory Group1" from Domain1 with Server Administrator role and prompt for password for group validation.

###  Example 2 

```text
$roles = "Server administrator","Backup administrator"
$password = ConvertTo-SecureString -asplaintext "password123890" -force
Set-HPOVLdapGroupRole -d Domain1 -GroupName "MY Directory Group1" -roles $roles -u "Sarah Peterson" -p $password
```

Set "MY Directory Group1" from Domain1 with Server and Backup administrator roles, and specify password for group validation.

###  Example 3 

```text
$LdapDirectoryName = "CorpDomain"
$MyAdCreds = Get-Credential
Get-HPOVLdapGroup -Group $CorpNetworkAdmins -ErrorAction Stop | ? loginDomain -eq $LdapDirectoryName | Set-HPOVLdapGroupRole -ScopePermissions @{Role = "Network administrator"; Scope = $NewSBACScope } -Credential $MyAdCreds
```

Change the Scope permissions for the specified authentication directory group.

###  Example 4 

```text
$scope = Get-HPOVScope -Name $scopename
$ScopePermissions = @{ Role = "Server administrator"; Scope = $scope
}
Get-HPOVLdapGroup -Name $scopename | Set-HPOVLdapGroupRole -ScopePermissions $ScopePermissions -Roles "Software administrator" -Credential $MyAdCreds
```

Change the Scope permissions for the specified authentication directory group by using both ScopePermissions and Roles parameters.

## Parameters

### -AuthProvider &lt;&gt;

LDAP/Active Directory Domain Name

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -InputObject &lt;&gt;

Directroy Group to add.

| Aliases | g, name, GroupName, Group |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Roles &lt;&gt;

The role(s) to assign to the Directroy Group, in `[System.Collections.ArrayList]` format.  Accepted values are noted within the ApplianceRoles property of the `[HPOneView.Appliance.Connection]` object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

| Aliases | r, role |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UserName &lt;&gt;

Directory Username to authenticate with

| Aliases | u |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;&gt;

Directory User account password

| Aliases | p |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Credential &lt;&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ScopePermissions &lt;&gt;

Array collection of Hashtable<Role; Scope>.  Will overwrite existing scope to role mappings.  To indiate all resouroures, use 'All' as the value.

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

_**System.Security.SecureString**_

Directory User Account password

## Return Values

_**System.Management.Automation.PSCustomObject**_

Updated LDAP Group object with new role assignment(s)

## Related Links

