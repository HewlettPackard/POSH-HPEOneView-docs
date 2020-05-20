---
description: Add a new Directory for Authentication
---

# New-HPOVLdapDirectory

## Syntax

```text
New-HPOVLdapDirectory
    [-Name] <>
    [-AD <>]
    [-BaseDN] <>
    [-Servers] <>
    [-Username] <>
    [-Password] <>
    [-Credential <>]
    [-ServiceAccount <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

```text
New-HPOVLdapDirectory
    [-Name] <>
    [-OpenLDAP <>]
    [-BaseDN] <>
    [-OrganizationalUnits] <>
    [-Servers] <>
    [-UserNamingAttribute <>]
    [-Username] <>
    [-Password] <>
    [-Credential <>]
    [-ServiceAccount <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

## Description

This Cmdlet will create a new Directory for appliance authentication.  HPE OneView currently supports either Active Directory or LDAP (e.g. OpenLDAP) for user authentication.  The New-HPOVLdapServer Cmdlet is used to assist defining directory servers address, public SSL certificate and LDAP over SSL TCP port.

## Examples

###  Example 1 

```text
$ServerA,$ServerB = servera.domain.com,serverb.domain.com | New-HPOVLdapServer
New-HPOVLdapDirectory -name Domain1 -AD -basedn "dc=domain,dc=com" -servers $ServerA,$ServerB -Username MyAdminAccount@domain.com
```

Add a new directory with two directory servers, and be prompted for your directory account password.

###  Example 2 

```text
$ServerA = New-HPOVLdapServer -Name contoso.com
New-HPOVLdapDirectory -name Domain1 -AD -basedn "dc=domain,dc=com" -servers $ServerA -Username MyAdminAccount@domain.com -ServiceAccount
```

Add a new Active Directory authentication directory, using SRV domain name, and specify to use the account as a service account.

## Parameters

### -Name &lt;&gt;

Directory name to add.  Does not need to match LDAP/AD Directory Name, but should.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AD &lt;&gt;

Using Active Directory, which sets the authProtocol to AD and userNameField to CN

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OpenLDAP &lt;&gt;

Using LDAP (i.e. OpenLDAP), which sets the authProtocol to LDAP and userNameField to UID

| Aliases | LDAP |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BaseDN &lt;&gt;

Directory Base DN (E.g. dc=domian,dc=local)

| Aliases | root, rootdn |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UserAttribute &lt;&gt;



| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -OrganizationalUnits &lt;&gt;

OpenLDAP OU"s to begin search for Directory Group and User Account authentication.
`[E.g]`. ou=admins,ou=contoso

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Servers &lt;&gt;

Array of Directory Servers and their settings.  Must include the following:

    * Server Name (FQDN or IP)
    * Public SSL Certificate
    * SSL Port, if not default 636

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;&gt;

Directory Username to authenticate with.

| Aliases | u, user |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;&gt;

Directory Username password.

| Aliases | p, pass |
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
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ServiceAccount &lt;&gt;

Use to indicate the provided credential is a Service Account.  Required for when configuring an Active Directory auth directory for `two-factor` authentication.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UserNamingAttribute &lt;&gt;

Specify the naming attribute for OpenLDAP directories.  Allowed values:     * CN     * UID 
Default Value: CN

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | CN |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.Security.SecureString**_

Account Password that will be used to validate the directory

## Return Values

_**System.Management.Automation.PSCustomObject**_

Configured Authentication Directory

_**System.Collections.ArrayList**_

Multiple configured Authentication Directories

## Related Links

* [Get-HPOVLdapDirectory](get-hpovldapdirectory.md)
* [Remove-HPOVLdapDirectory](remove-hpovldapdirectory.md)
