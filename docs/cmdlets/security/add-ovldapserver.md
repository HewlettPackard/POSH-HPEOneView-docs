---
description: Add a new LDAP Directory Server.
---

# Add-OVLdapServer

## Syntax

```powershell
Add-OVLdapServer
    [-InputObject] <Object>
    [-Hostname] <String>
    [-Username] <String>
    [-SSLPort <Int32>]
    [-Certificate <Object>]
    [-Password <Object>]
    [-TrustLeafCertificate]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Add-OVLdapServer
    [-InputObject] <Object>
    [-Hostname] <String>
    [-Credential <PSCredential>]
    [-SSLPort <Int32>]
    [-Certificate <Object>]
    [-TrustLeafCertificate]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can configure HPE OneView to use an external enterprise directory service for user authentication. HPE OneView supports the following enterprise directory services:

* Active Directory
* OpenLDAP

When you use a directory service, directory users are granted HPE OneView permissions using their group membership in the directory. After defining a directory service, use the User and Groups screen to define permissions for directory groups.
Directory groups are assigned one or more HPE OneView permissions. A directory user is assigned the HPE OneView permissions that represent the union of the permissions for all the directory groups that the user is a member of. Only after permissions are defined for directory groups, directory users are authenticated into the appliance.

This Cmdlet will add a new LDAP Directory Server to an existing authentication directory.

When a directory is configured on the appliance, you can specify one or more directory servers that can be accessed for the directory service. If more than one directory server is added for a directory, they are assumed to be replicated servers for high availability or disaster tolerance. If one directory server is not reachable, the other configured servers are accessed for authenticating the user.

NOTE:

*  If you use a cluster for your directory server configuration, the cluster hostname can be specified as the directory server. Hewlett Packard Enterprise recommends using a cluster for your directory server configuration instead of configuring replicated directory servers in the appliance.

* Directory search operations can be time consuming depending on your directory configuration and network latency affecting login time. When using Active Directory with many domains, for optimal login performance, configure a global catalog for your directory server.

User login formats used for authentication

To support user login with only the user name specified, the following formats are tried to authenticate with the directory service:

If the user name is not an email address (denoted by the presence of an @ character) or a \ character (to denote the domain\user name format), logins are attempted in the following order:

* The user name is treated as the logon name, and directory-name gets prepended as directory-name\user-name, for example: example\jane.
* The user name is treated as a UID.
* The user name is treated as Common Name (CN).

???+ info
    If the Active Directory Server Service configured in HPE OneView has a user lock-out policy (defined, for example, on n number of successive failed login attempts), Hewlett Packard Enterprise recommends that you use the email or the domain\user name format to log into HPE OneView. If email or domain\user name format is not used (instead, just the user name is used), HPE OneView internally tries different login formats as described previously. This may result in locking out the user from the GUI on a single failed login attempt (wrong password). To minimize login attempts, configure the directory display name to be the same as the first component of the directories fully qualified domain name. For example, assign the HPE OneView name example for the directory example.com.


???+ info
    Minimum required privileges: Infrastructure administrator.

## Examples

###  Example 1 

```powershell
Get-OVLdapDirectory -Name MyDirectory | Add-OVLdapServer -Name servera.domain.com -Username MyAdminName -Password (ConvertTo-SecureString "MyPAssword" -AsPlanText -Force)
```

Add a new LDAP Directory server.

## Parameters

### -InputObject &lt;Object&gt;

The LDAP Directory Object from Get-OVLdapDirectory.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Hostname &lt;String&gt;

Directory server name or IP Address to add.

| Aliases | Name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SSLPort &lt;Int32&gt;

Directory Servers LDAP SSL Port.

| Aliases | port |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 636 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Certificate &lt;Object&gt;

Directory Server SSL Certificate, either location to Base64 Cert or multi-line string value.  If omitted, the Cmdlet will attempt to retrieve the Directory Servers Secure LDAP Certiciate.

| Aliases | cert |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

Directory Username to authenticate with in order to validate LDAP configuration.

| Aliases | u, user |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

Directory User account password in order to validate LDAP configuration.  Can be `[System.String]` or `[System.Security.SecureString]` object.

| Aliases | p, pass |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
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

### -TrustLeafCertificate &lt;SwitchParameter&gt;

When adding a new LDAP directory server, the certificate may not be trusted.  Use this switch to force trust the certificate.  Or, use the Add-OVApplianceTrustedCertificate to add the enterprise issuing certificate authority"s certificate.

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

=== "HPEOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]"
    Authentication Directory object that will have the LDAP Server added to.
    

## Return Values

=== "HPEOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]"
    Updated Authentication Directory.
    

## Related Links

* [New-OVLdapServer](new-ovldapserver.md)
* [Remove-OVLdapServer](remove-ovldapserver.md)
