---
description: Initiate a connection to an HPE OneView appliance.
---

# Connect-OVMgmt

## Syntax

```powershell
Connect-OVMgmt
    [-Hostname] <String>
    [-UserName] <String>
    [-AuthLoginDomain] <String>
    [-Password] <Object>
    [-LoginAcknowledge]
    [<CommonParameters>]
```

```powershell
Connect-OVMgmt
    [-Hostname] <String>
    [-Certificate <Object>]
    [-LoginAcknowledge]
    [<CommonParameters>]
```

```powershell
Connect-OVMgmt
    [-Hostname] <String>
    [-Credential] <PSCredential>
    [-AuthLoginDomain] <String>
    [-LoginAcknowledge]
    [<CommonParameters>]
```

## Description

This Cmdlet establishes a connection to the specified HPE OneView or HPE Synergy Composer appliance.  When the connection is successful, the user establishes a session for use with subsequent Cmdlet requests.  The effective user permissions are established on the first connection.  Please refer to [about_appliance_connection_permissions](../../about/about_appliance_connection_permissions.md) and [about_appliance_connection_permissions](../../about/about_appliance_connection_permissions.md) for more information about initiating multiple appliance connections.

Appliance hostname or IP can include an alternate TCP port number.  While the appliance does not allow the default TCP port 443 to be changed, the appliance could reside behind a firewall, which is redirecting an alternate TCP port number.

If the appliance is configured to Common Access Card (CAC) authentication, the `-Certificate` parameter is required.  If the CAC requires a PIN to unlock, the user will be prompted by the credential service to provide that value.  The Cmdlet does not offer the ability to retrieve or store the CAC PIN.

???+ info
    Minimum required privileges:  Read-only.

## Examples

###  Example 1 

```powershell
Connect-OVMgmt -appliance myappliance.domain.com
ConnectionID Name                   UserName      AuthLoginDomain
------------ ----                   --------      ---------------
1            myappliance.domain.com Administrator LOCAL
```

Connect to a specific appliance FQDN.  The user will be prompted for authentication provider, user name and password.

###  Example 2 

```powershell
Connect-OVMgmt -appliance myappliance.domain.com:11223
```

Connect to a specific appliance, where the target TCP port isn't the default.  The user will be prompted for authentication provider, user name and password.

###  Example 3 

```powershell
$MySmartCard = gci Cert:\CurrentUser\my | ? { $_.EnhancedKeyUsageList.FriendlyName -match "Smart Card Logon" }
Connect-OVMgmt -appliance myappliance.domain.com -Certificate $MySmartCard
```

Connect to a specific appliance using a digital badge.

## Parameters

### -Hostname &lt;String&gt;

The hostname or IP address of the appliance.

| Aliases | Appliance, Computername |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AuthLoginDomain &lt;String&gt;

The Directory Name for LDAP/Active Directory authentication, or LOCAL for appliance internal user accounts.  
    
Default is determined by connecting to the requested appliance and retrieving the default login directory.  If not LOCAL, and you attempt to use an embedded user account, you must use `-AuthLoginDomain` parameter with the Local value.

| Aliases | authProvider |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | LOCAL |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UserName &lt;String&gt;

???+ warning
    This parameter is now obsolete.  Please transition to using the `-Credential` parameter.


User name to authenticate.

| Aliases | u, user |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;Object&gt;

???+ warning
    This parameter is now obsolete.  Please transition to using the `-Credential` parameter.


Password to log into the appliance.  Can be either `[System.String]` or SecureString value.

| Aliases | p |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | PSCredential |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LoginAcknowledge &lt;SwitchParameter&gt;

When a Login Message has been configured and acknowledgement is Required, use this parameter to acknowledge it during the initial call.  Otherwise, if omitted, and a Login Banner acknowledgement is required, the caller will be prompted.  This prompt does not support the `-Confirm` parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Certificate &lt;Object&gt;

Provide the X.509 certificate/SmartCard digital badge in order to authenticate to a supported appliance.  Two-factor authentication must be configured on the appliance in order to provide a X.509 certificate.

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.Connection"
    When a valid connection is established with an appliance, this object is then added to `${Global:ConnectedSessions}` connection tracker variable.
    
    
    The object returned will contain the following public properties:
    
    
    | Name                   | Type       | Value                                |
    | :--- | :--- | :--- |
    | ConnectionId           | Int        | 1                                    |
    | Name                   | String     | Hostname value                       |
    | SessionID              | String     | AUTH string returned from API        |
    | ApplianceType          | String     | Indicate connected appliance type.   |
    | UserName               | String     | Username value                       |
    | AuthType               | String     | Credential or Certificate/2FA        |
    | ActivePermissions      | IList      | Collection of Scopes and permissions |
    | ApplianceSecurityRoles | IList      | Collection of roles                  |
    | Default                | Boolean    | Is connection default for library    |
    
    

=== "System.Management.Automation.ErrorRecord"
    On error, appliance response is returned as a terminating error.
    

## Related Links

* [Disconnect-OVMgmt](disconnect-ovmgmt.md)
* [about_Appliance_Connection_Permissions](../../about/about_appliance_connection_permissions.md)
* [[${Global:ConnectedSessions}]](../../about/about_appliance_connections.md)
