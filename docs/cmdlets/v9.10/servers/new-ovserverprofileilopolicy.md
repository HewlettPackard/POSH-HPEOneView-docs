---
description: Create compliant iLO settings object for server profile type resources.
---

# New-OVServerProfileIloPolicy

## Syntax

```powershell
New-OVServerProfileIloPolicy
    [-InputObject <Object>]
    [-GenerateiLOSecurityDashboardSettings]
    [-ManageLocalAdministratorAccount]
    [-LocalAdministratorPassword <SecureString>]
    [-RemoveLocalAdministratorAccount <Bool>]
    [-ManageLocalAccounts]
    [-LocalAccounts <Object>]
    [-ManageDirectoryConfiguration]
    [-LdapSchema <String>]
    [-GenericLDAP <Bool>]
    [-LOMObjectDistinguishedName <String>]
    [-IloObjectPassword <SecureString>]
    [-DirectoryServerAddress <String>]
    [-DirectoryServerPort <Int>]
    [-DirectoryServerCertificate <FileInfo>]
    [-DirectoryServerCertificateBase64 <String[]>]
    [-DirectoryUserContext <String[]>]
    [-EnableKerberosAuthentication <Bool>]
    [-KerberosRealm <String>]
    [-KerberosKDCServerAddress <String>]
    [-KerberosKDCServerPort <Int>]
    [-KerbersKeyTabFile <FileInfo>]
    [-ManageDirectoryGroups]
    [-DirectoryGroups <Object>]
    [-ManageIloHostname]
    [-IloHostname <String>]
    [-ManageKeyManager]
    [-PrimaryKeyServerAddress <String>]
    [-PrimaryKeyServerPort <Int>]
    [-SecondaryKeyServerAddress <String>]
    [-SecondaryKeyServerPort <Int>]
    [-RedundancyRequired <Bool>]
    [-KeymanagerGroupName <String>]
    [-KeymanagerLocalCertificateName <String>]
    [-KeymanagerLoginName <String>]
    [-KeymanagerPassword <SecureString>]
    [<CommonParameters>]
```

## Description

iLO settings enable you to configure and manage the settings in HPE OneView instead of logging into the iLO to apply the needed settings. These settings are included when you move the profile to another server hardware instance. Use a server profile template if you want to maintain consistent management for a specific iLO setting across multiple iLO.

Using this Cmdlet will help create a compliant iLO settings object for either a server profile template or server profile resource.

Manage administrator account
Configure the password of the predefined iLO administrator account or delete the account.

Manage local accounts
Configure and manage the local accounts. When managed from HPE OneView, all the local accounts on the iLO are replaced when configuring the accounts specified in the server profile.  Use New-OVIloLocalUserAccount helper Cmdlet to create a compliant object.

Manage iLO Hostname
Configure the iLO subsystem name (hostname). When the iLO networking is configured to use DHCP, the iLO subsystem name will be used as the DNS name for the iLO.

When the Manage iLO Hostname setting is enabled for a server profile, the hostname applied to the iLO is determined by replacing any serverProfileName token present with the name of server profile. The resulting hostname must match the limitations of a hostname (A-Z, a-z, 0-9, and dash). When applied to the server hardware, the iLO is reset to apply the new networking configuration. When the server profile is unassigned or the Manage iLO hostname setting is disabled, the iLO hostname is reverted to the factory default, which is, ΓÇ£iLO + Server Physical Serial NumberΓÇ¥.

Manage directory configuration
Configure the iLO directory (Active Directory, LDAP, or Kerberos) to enable single sign-on.

Manage directory groups
Grant access to specific directory groups for the iLO on the server hardware that is associated with the profile. When managed from HPE OneView, all the directory groups on the iLO are replaced when configuring the directory groups specified in the server profile.  Use New-OVIloDirectoryGroup helper Cmdlet to create a compliant object.

Manage key manager
Configure the iLO key manager for data at rest secure encryption.

Planning for iLOdirectory configuration and key management

Hewlett Packard Enterprise recommends that you plan your iLOdirectory configuration and key management in advance, and test on an iLO in the iLO interface. Confirm that the configuration is correct before configuring the iLO directory and key manager in HPE OneView using the tested settings.

For more information, see the HPE iLO User Guide (http://www.hpe.com/support/ilo-docs).

## Examples

###  Example 1 

```powershell
$AdministratorPasswordSecureString = Read-Host "Administrator password" -AsSecureString

# Create iLO settings policy for server profile
New-OVServerProfileIloPolicy -ManageLocalAdministratorAccount `
                             -LocalAdministratorPassword $AdministratorPasswordSecureString `
                             -ManageIloHostname `
                             -IloHostname "{serverProfileName}-prod-ilo"
```

Create a server profile compliant iLO settings policy by setting the local administrator password to the prompted value, and set the iLO hostname.

###  Example 2 

```powershell
# Create account1 object
$Account1 = New-OVIloLocalUserAccount -Username "localuser1" `
                                      -Password (Read-Host "localuser1 password" -AsSecureString) `
                                      -DisplayName "localuser1" `
                                      -AdministerUserAccounts `
                                      -RemoteConsole `
                                      -VirtualMedia `
                                      -VirtualPowerAndReset `
                                      -ConfigureIloSettings `
                                      -Login `
                                      -HostBIOS `
                                      -HostNIC `
                                      -HostStorage

# Create account2 object
$Account2 = New-OVIloLocalUserAccount -Username "localuser2" `
                                      -Password (Read-Host "localuser1 password" -AsSecureString) `
                                      -DisplayName "localuser2" `
                                      -RemoteConsole `
                                      -VirtualMedia `
                                      -VirtualPowerAndReset `
                                      -Login `
                                      -HostBIOS `
                                      -HostNIC `
                                      -HostStorage

# Create group1 object
$Group1 = New-OVIloDirectoryGroup -GroupDN "dn=ilogroup1, ou=ou1, dc=domain, dc=com" `
                                  -GroupSID "sid12345" `
                                  -AdministerUserAccounts `
                                  -RemoteConsole `
                                  -VirtualMedia `
                                  -ConfigureIloSettings

# Create group2 object
$Group2 = New-OVIloDirectoryGroup -GroupDN "dn=opsgroup, ou=ou1, dc=domain,d c=com" `
                                  -GroupSID "sid67890" `
                                  -RemoteConsole `
                                  -VirtualMedia 

# Create iLO settings policy for server profile
New-OVServerProfileIloPolicy -ManageLocalAdministratorAccount `
                             -LocalAdministratorPassword $AdministratorPasswordSecureString `
                             -ManageLocalAccounts `
                             -LocalAccounts $Account1, $Account2 `
                             -ManageDirectoryConfiguration `
                             -LdapSchema DirectoryDefault `
                             -LOMObjectDistinguishedName "dn=lomobject, ou=OU1, dc=domain, dc=com" `
                             -DirectoryServerAddress "ldap.domain.com" `
                             -DirectoryUserContext 'ou=OU1, dc=domain, dc=com', 'ou=OU2, dc=domain, dc=com', 'ou=OU3, dc=domain, dc=com' `
                             -ManageDirectoryGroups `
                             -DirectoryGroups $Group1, $Group2 `
                             -ManageIloHostname `
                             -IloHostname "{serverProfileName}-prod-ilo"
```

Create a server profile compliant iLO settings policy, by managing the local administrator account, adding the specified local accounts, directory authentication and directory groups, and iLO hostname.

## Parameters

### -DirectoryGroups &lt;Object&gt;

A collection of 1 or more directory groups created from New-OVIloDirectoryGroup helper Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DirectoryServerAddress &lt;String&gt;

Specifies the network DNS name or IP address of the directory server. The directory server address can be up to 127 characters.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DirectoryServerCertificate &lt;FileInfo&gt;

Specifies a CA certificate to authenticate the directory server.  The relative path and file name of the PEM Base64 string format file of the certificate to be used.  Omit if the certificate has already been added to the appliance trust store.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DirectoryServerCertificateBase64 &lt;String[]&gt;

Specifies a CA certificate to authenticate the directory server.  The PEM Base64 string format of the certificate to be used.  Omit if the certificate has already been added to the appliance trust store.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DirectoryServerPort &lt;Int&gt;

Specifies the port number for the secure LDAP service on the server. The default value is 636. If your directory service is configured to use a different port, you can specify a different value. Make sure that you enter a secured LDAP port. iLO cannot connect to an unsecured LDAP port.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DirectoryUserContext &lt;String[]&gt;

A common directory sub-context to be searched such that users do not need to enter their full DNs at login.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableKerberosAuthentication &lt;Bool&gt;

Enables Kerberos login. When Kerberos login is enabled and configured correctly, the Zero Sign In button appears on the iLO login page.  Kerberos configuration is independent of the LdapSchema chosen.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -GenericLDAP &lt;Bool&gt;

Use the OpenLDAP supported BIND method.  Only supported when LdapSchema is DirectoryDefault.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IloHostname &lt;String&gt;

The iLO subsystem name (hostname). This cannot include the domain name. Used as the base hostname when the iLO is configured to use DHCP.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IloObjectPassword &lt;SecureString&gt;

Specifies the password for the CAC LDAP service account when CAC/Smartcard authentication is configured and used with the schema-free directory option. User search contexts are not applied to the iLO object DN when iLO accesses the directory server.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -KerberosKDCServerAddress &lt;String&gt;

The IP address or DNS name of the KDC server. This value can be up to 128 characters. Each realm must have at least one Key Distribution Center (KDC) that contains an authentication server and a ticket grant server. These servers can be combined.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -KerberosKDCServerPort &lt;Int&gt;

The TCP or UDP port number on which the KDC is listening. The default value is 88.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -KerberosRealm &lt;String&gt;

The name of the Kerberos realm in which the iLO processor operates. This value can be up to 128 characters. The realm name is usually the DNS name converted to uppercase letters. Realm names are case-sensitive.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -KerbersKeyTabFile &lt;FileInfo&gt;

An encoded binary file that contains pairs of service principal names and encrypted passwords. In the Windows environment, you use the ktpass utility to generate the keytab file. The components of the service principal name stored in the Kerberos keytab file are case sensitive. The primary (service type) must be in upper case (HTTP). The instance (iLO hostname) must be in lower case (e.g., `[iloexample.example.net]`). The realm name must be in upper case (e.g., `[EXAMPLE.NET]`). The REST encoding of this argument is a Base64-encoded Kerberos Keytab file as a string.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -KeymanagerGroupName &lt;String&gt;

The Local Group created on the key manager for use with iLO user accounts and the keys iLO imports into the key manager.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -KeymanagerLocalCertificateName &lt;String&gt;

The optional name of the local certificate authority certificate on the key manager. It is typically named Local CA.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -KeymanagerLoginName &lt;String&gt;

The Local User name with administrator permissions that is configured on the key manager. The deployment user account must be created before you add key manager configuration details in iLO.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -KeymanagerPassword &lt;SecureString&gt;

The password for the Local User name with administrator permissions that is configured on the key manager.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LOMObjectDistinguishedName &lt;String&gt;

Specifies the CAC LDAP service account when CAC/Smartcard authentication is configured and used with the schema-free directory option. User search contexts are not applied to the iLO object DN when iLO accesses the directory server.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LdapSchema &lt;String&gt;

Enable use of a directory service for iLO user authorization.

Allowed values:

	* Disabled
	* DirectoryDefaulr
	* HPEExtended

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LocalAccounts &lt;Object&gt;

A collection of 1 or more local accounts created from New-OVIloLocalUserAccount helper Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LocalAdministratorPassword &lt;SecureString&gt;

The password to set for the local administrator account.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ManageDirectoryConfiguration &lt;SwitchParameter&gt;

The iLO directory configuration (Active Directory, LDAP, or Kerberos) is managed via the profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ManageDirectoryGroups &lt;SwitchParameter&gt;

Replace all directory groups providing iLO management permissions.  If you omit the DirectoryGroups parameter, all configured directory groups that exist on the iLO will be removed.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ManageIloHostname &lt;SwitchParameter&gt;

The iLO hostname will be managed via the profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ManageKeyManager &lt;SwitchParameter&gt;

The iLO Key Manager (e.g. ESKM) configuration will be managed via the profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ManageLocalAccounts &lt;SwitchParameter&gt;

Replace all local iLO accounts beyond Administrator.  If you omit the LocalAccount parameter, all existing local accounts will be removed, except the build-in local Administrator and the configured _HPOneViewAdmin privileged accounts.  The local Administrator account can be removed using the RemoveLocalAdministratorAccount, but you then risk locking everyone from accessing the iLO.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ManageLocalAdministratorAccount &lt;SwitchParameter&gt;

The iLO Administrator account will be managed via the profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PrimaryKeyServerAddress &lt;String&gt;

The primary key server hostname, IP address, or FQDN. This string can be up to 79 characters long.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PrimaryKeyServerPort &lt;Int&gt;

The primary key server port.  The default is 9000.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RedundancyRequired &lt;Bool&gt;

If enabled, both a primary and secondary key server must be specified and will be validated by the iLO.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -RemoveLocalAdministratorAccount &lt;Bool&gt;

Delete the account named Administrator from the iLO.  WARNING: The iLO account named Administrator will be deleted when the profile is applied and cannot later be restored by OneView with the original permissions. The 'Administrative Recovery Set' privilege can only be restored via an iLO factory reset operation.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SecondaryKeyServerAddress &lt;String&gt;

The secondary key server hostname, IP address, or FQDN. This string can be up to 79 characters long.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SecondaryKeyServerPort &lt;Int&gt;

The secondary key server port.  The default is 9000.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -GenerateiLOSecurityDashboardSettings &lt;SwitchParameter&gt;

Generate available security dashboard settings.  Must be accompanied by the `-Inputobject` parameter, as iLO5 security dashboard settings are different from iLO6.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

When using the `-GenerateiLOSecurityDashboardSettings` switch parameter, provide the server hardware type to generate the available security dashboard settings.  iLO5 security dashboard settings are differnt than iLO6.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

An iLO settings complient object for server profile resources.


## Related Links

* [New-OVIloLocalUserAccount](new-ovilolocaluseraccount.md)
* [New-OVIloDirectoryGroup](../library/new-ovilodirectorygroup.md)
* [New-OVServerProfile](new-ovserverprofile.md)
* [New-OVServerProfileTemplate](new-ovserverprofiletemplate.md)
