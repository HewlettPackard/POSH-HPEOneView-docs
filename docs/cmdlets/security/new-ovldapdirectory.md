---
description: Add a new Directory for Authentication
---

# New-OVLdapDirectory

## Syntax

```powershell
New-OVLdapDirectory
    [-Name] <String>
    [-AD]
    [-BaseDN] <String>
    [-Servers] <Array>
    [-Username] <String>
    [-Password] <SecureString>
    [-Credential <PSCredential>]
    [-ServiceAccount]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
New-OVLdapDirectory
    [-Name] <String>
    [-OpenLDAP]
    [-BaseDN] <String>
    [-OrganizationalUnits] <Array>
    [-Servers] <Array>
    [-UserNamingAttribute <String>]
    [-Username] <String>
    [-Password] <SecureString>
    [-Credential <PSCredential>]
    [-ServiceAccount]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will create a new Directory for appliance authentication.  HPE OneView currently supports either Active Directory or LDAP (e.g. OpenLDAP) for user authentication.  The New-OVLdapServer Cmdlet is used to assist defining directory servers address, public SSL certificate and LDAP over SSL TCP port.

## Examples

###  Example 1 

```powershell
$ServerA,$ServerB = servera.domain.com,serverb.domain.com | New-OVLdapServer
New-OVLdapDirectory -name Domain1 -AD -basedn "dc=domain,dc=com" -servers $ServerA,$ServerB -Username MyAdminAccount@domain.com
```

Add a new directory with two directory servers, and be prompted for your directory account password.

###  Example 2 

```powershell
$ServerA = New-OVLdapServer -Name contoso.com
New-OVLdapDirectory -name Domain1 -AD -basedn "dc=domain,dc=com" -servers $ServerA -Username MyAdminAccount@domain.com -ServiceAccount
```

Add a new Active Directory authentication directory, using SRV domain name, and specify to use the account as a service account.

## Parameters

### -Name &lt;String&gt;

Directory name to add.  Does not need to match LDAP/AD Directory Name, but should.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AD &lt;SwitchParameter&gt;

Using Active Directory, which sets the authProtocol to AD and userNameField to CN

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OpenLDAP &lt;SwitchParameter&gt;

Using LDAP (i.e. OpenLDAP), which sets the authProtocol to LDAP and userNameField to UID

| Aliases | LDAP |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BaseDN &lt;String&gt;

Directory Base DN (E.g. dc=domian,dc=local)

| Aliases | root, rootdn |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UserAttribute &lt;String&gt;



| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -OrganizationalUnits &lt;Array&gt;

OpenLDAP OU"s to begin search for Directory Group and User Account authentication.
`[E.g]`. ou=admins,ou=contoso

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Servers &lt;Array&gt;

Array of Directory Servers and their settings.  Must include the following:

* Server Name (FQDN or IP)
* Public SSL Certificate
* SSL Port, if not default 636

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

Directory Username to authenticate with.

| Aliases | u, user |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;SecureString&gt;

Directory Username password.

| Aliases | p, pass |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
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
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ServiceAccount &lt;SwitchParameter&gt;

Use to indicate the provided credential is a Service Account.  Required for when configuring an Active Directory auth directory for two-factor authentication.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UserNamingAttribute &lt;String&gt;

Specify the naming attribute for OpenLDAP directories.  Allowed values: * CN * UID 
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

=== "System.Security.SecureString"
    Account Password that will be used to validate the directory
    

## Return Values

=== "System.Management.Automation.PSCustomObject"
    Configured Authentication Directory
    

=== "System.Collections.ArrayList"
    Multiple configured Authentication Directories
    

## Related Links

* [Get-OVLdapDirectory](get-ovldapdirectory.md)
* [Remove-OVLdapDirectory](remove-ovldapdirectory.md)
