---
description: List Directory Groups from the configured LDAP Directory.
---

# Show-HPOVLdapGroups

## Syntax

```text
Show-HPOVLdapGroups
    [-Directory] <>
    [-UserName] <>
    [-Password] <>
    [-GroupName] <>
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

```text
Show-HPOVLdapGroups
    [-Directory] <>
    [-Credential <>]
    [-GroupName] <>
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

## Description

This Cmdlet will display the available Authentication Directory security groups.  The displayed Directory Groups can then be used to define new Directory Group Role assignment on the appliance with the New-HPOVLdapGroup Cmdlet.

## Examples

###  Example 1 

```text
Show-HPOVLdapGroups -u "Sarah Peterson" -d Domain1
```

Get list of Directory Groups from Domain1 and prompt for password.

###  Example 2 

```text
$password = ConvertTo-SecureString -asplaintext "password123890" -force
$Directory = Get-HPOVLdapDirectory "Domain99"
Show-HPOVLdapGroups -u "Sarah Peterson" -p $password -d $Directory
```

Automate list of Directory Groups from Domain99 with the provided password.

###  Example 3 

```text
$password = ConvertTo-SecureString -asplaintext "password123890" -force
$Directory = Get-HPOVLdapDirectory "Domain99"
Show-HPOVLdapGroups -u "Sarah Peterson" -p $password -d $Directory -GroupName "Admins"
```

Automate list of Directory Groups from Domain99 with the provided password, searching for group names that contain "Admins".

## Parameters

### -UserName &lt;&gt;

Username to authenticate with

| Aliases | u |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;&gt;

User account password

| Aliases | p |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Directory &lt;&gt;

The configured LDAP Directory object on the appliance.

| Aliases | d, domain, AuthProvider |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -GroupName &lt;&gt;

Provide the name of the Directory Group to search for.  If omitted, all found Directory Groups will be returned.

| Aliases | None |
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
| Accept pipeline input? | false |
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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.Security.SecureString**_

Directory User Account password

## Return Values

_**HPOneView.Appliance.AuthDirectoryGroup [System.Management.Automation.PSCustomObject]**_

Authentication Directory Group

_**System.Collections.ArrayList<HPOneView.Appliance.AuthDirectoryGroup>**_

Array of Authentication Directory Groups found

## Related Links

