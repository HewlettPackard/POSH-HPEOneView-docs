---
description: Initiate a connection to an HPE OneView appliance.
---

# Connect-HPOVMgmt

## HPE OneView 5.00 Library

### Syntax

```
Connect-HPOVMgmt [-Hostname] <String> [-Credential] <PSCredential> [[-AuthLoginDomain] <String>] [[-LoginAcknowledge] <SwitchParameter>] [<CommonParameters>]
```

```
Connect-HPOVMgmt [-Hostname] <String> [[-Certificate] <Object>] [[-LoginAcknowledge] <SwitchParameter>] [<CommonParameters>]
```

### Description

Establish a connection with the specified HPE OneView appliance. Logs the user into the appliance and establishes a session for use with subsequent requests. Prompts will be displayed for any omitted values.

Appliance hostname or IP can include an alternate TCP port number. While the appliance does not allow the default TCP port 443 to be changed, the appliance could reside behind a firewall, which is redirecting an alternate TCP port number.

### Parameters

#### -AuthLoginDomain &lt;String&gt;

The Directory Name for LDAP/Active Directory authentication, or LOCAL for appliance internal user accounts.

Default is determined by connecting to the requested appliance and retrieving the default login directory. If not LOCAL, and you attempt to use an embedded user account, you must use -AuthLoginDomain parameter with the Local value..

| Aliases | authProvider |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | LOCAL |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Certificate &lt;Object&gt; 

Provide the X.509 certificate/SmartCard digital badge in order to authenticate to a supported appliance. Two-factor authentication must be configured on the appliance in order to provide a X.509 certificate.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential&gt; 

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | PSCredential |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

Aliases \[-Appliance, -Computername\]

The hostname or IP address of the appliance.

| Aliases | Appliance, Computername |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -LoginAcknowledge &lt;SwitchParameter&gt; 

When a Login Message has been configured and acknowledgement is Required, use this parameter to acknowledge it during the initial call. Otherwise, if omitted, and a Login Banner acknowledgement is required, the caller will be prompted. This prompt does not support the -Confirm parameter.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;Object&gt; 

{% hint style="info" %}
This parameter is obsolete and should not be used.
{% endhint %}

Password to log into the appliance. Can be either `[System.String]` or  \[`SecureString]` value.

| Aliases | p |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -UserName &lt;String&gt; 

User name to authenticate.

| Aliases | u, user |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.Connection**_

When a valid connection is established with an appliance, this object is then added to ${Global:ConnectedSessions} connection tracker variable.

The object returned will contain the following public properties:

```
 ==============================================================================
 | Name                   | Type       | Value                                |
 |-----------------------------------------------------------------------------
 | AuthLoginDomain        | String     | Local                                |
 ------------------------------------------------------------------------------
 | ConnectionId           | Int        | 1                                    |
 ------------------------------------------------------------------------------
 | Name                   | String     | Hostname value                       |
 ---------------------- -------------------------------------------------------
 | SessionID              | String     | AUTH string returned from API        |
 ------------------------------------------------------------------------------
 | ApplianceType          | String     | Indicate connected appliance type.   |
 -------------------- ---------------------------------------------------------
 | UserName               | String     | Username value                       |
 ------------------------------------------------------------------------------
 | AuthType               | String     | Credential or Certificate/2FA        |
 ------------------------------------------------------------------------------
 | ActivePermissions      | IList      | Collection of Scopes and permissions |
 ------------------------------------------------------------------------------
 | ApplianceSecurityRoles | IList      | Collection of roles                  |
 ------------------------------------------------------------------------------
 | Default                | Boolean    | Is connection default for library    |
 ------------------------------------------------------------------------------
```

_**System.Management.Automation.ErrorRecord**_

On error, appliance response is returned as a terminating error.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
Connect-HPOVMgmt -appliance myappliance.domain.com
ConnectionID Name                   UserName      AuthLoginDomain
------------ ----                   --------      ---------------
1            myappliance.domain.com Administrator LOCAL

```

 Connect to a specific appliance FQDN. The user will be prompted for authentication provider, user name and password.

```
 -------------------------- EXAMPLE 2 --------------------------
Connect-HPOVMgmt -appliance myappliance.domain.com:11223
```

 Connect to a specific appliance, where the target TCP port isn"t the default. The user will be prompted for authentication provider, user name and password.

```
 -------------------------- EXAMPLE 3 --------------------------
$MySmartCard = gci Cert:\CurrentUser\my | ? { $_.EnhancedKeyUsageList.FriendlyName -match "Smart Card Logon" }
Connect-HPOVMgmt -appliance myappliance.domain.com -Certificate $MySmartCard
```

 Connect to a specific appliance using a digital badge. 

### Related Links 

* [Disconnect-HPOVMgmt](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disconnect-HPOVMgmt) 

## HPE OneView 4.20 Library 

### Syntax

```
Connect-HPOVMgmt [-Hostname] <String> [-Username] <String> [-Password] <Object> [[-AuthLoginDomain] <String>] [[-LoginAcknowledge] <SwitchParameter>] [<CommonParameters>]
```

```
Connect-HPOVMgmt [-Hostname] <String> [-Credential] <PSCredential> [[-AuthLoginDomain] <String>] [[-LoginAcknowledge] <SwitchParameter>] [<CommonParameters>]
```

```
Connect-HPOVMgmt [-Hostname] <String> [[-Certificate] <Object>] [[-LoginAcknowledge] <SwitchParameter>] [<CommonParameters>]
```

### Description

Establish a connection with the specified HPE OneView appliance. Logs the user into the appliance and establishes a session for use with subsequent requests. Prompts will be displayed for any omitted values.

Appliance hostname or IP can include an alternate TCP port number. While the appliance does not allow the default TCP port 443 to be changed, the appliance could reside behind a firewall, which is redirecting an alternate TCP port number.

### Parameters

#### -AuthLoginDomain &lt;String&gt;

The Directory Name for LDAP/Active Directory authentication, or LOCAL for appliance internal user accounts.

Default is determined by connecting to the requested appliance and retrieving the default login directory. If not LOCAL, and you attempt to use an embedded user account, you must use -AuthLoginDomain parameter with the Local value..

| Aliases | authProvider |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | LOCAL |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Certificate &lt;Object&gt; 

Provide the X.509 certificate/SmartCard digital badge in order to authenticate to a supported appliance. Two-factor authentication must be configured on the appliance in order to provide a X.509 certificate.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential&gt; 

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | PSCredential |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

The hostname or IP address of the appliance.

| Aliases | Appliance, Computername |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -LoginAcknowledge &lt;SwitchParameter&gt; 

When a Login Message has been configured and acknowledgement is Required, use this parameter to acknowledge it during the initial call. Otherwise, if omitted, and a Login Banner acknowledgement is required, the caller will be prompted. This prompt does not support the -Confirm parameter.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;Object&gt;

{% hint style="info" %}
This parameter is deprecated and will be removed in a future release.  Please transition to using the `-Credential` parameter.
{% endhint %}

Password to log into the appliance. Can be either `[System.String]` or `[SecureString]` value..

| Aliases | p |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -UserName &lt;String&gt;

{% hint style="info" %}
This parameter is deprecated and will be removed in a future release.  Please transition to using the `-Credential` parameter.
{% endhint %}

User name to authenticate.

| Aliases | u, user |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.Connection**_

When a valid connection is established with an appliance, this object is then added to ${Global:ConnectedSessions} connection tracker variable.

The object returned will contain the following public properties:

```
 ==============================================================================
 | Name                   | Type       | Value                                |
 |-----------------------------------------------------------------------------
 | AuthLoginDomain        | String     | Local                                |
 ------------------------------------------------------------------------------
 | ConnectionId           | Int        | 1                                    |
 ------------------------------------------------------------------------------
 | Name                   | String     | Hostname value                       |
 ---------------------- -------------------------------------------------------
 | SessionID              | String     | AUTH string returned from API        |
 ------------------------------------------------------------------------------
 | ApplianceType          | String     | Indicate connected appliance type.   |
 -------------------- ---------------------------------------------------------
 | UserName               | String     | Username value                       |
 ------------------------------------------------------------------------------
 | AuthType               | String     | Credential or Certificate/2FA        |
 ------------------------------------------------------------------------------
 | ActivePermissions      | IList      | Collection of Scopes and permissions |
 ------------------------------------------------------------------------------
 | ApplianceSecurityRoles | IList      | Collection of roles                  |
 ------------------------------------------------------------------------------
 | Default                | Boolean    | Is connection default for library    |
 ------------------------------------------------------------------------------
```

_**System.Management.Automation.ErrorRecord**_

On error, appliance response is returned as a terminating error.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
Connect-HPOVMgmt -appliance myappliance.domain.com
ConnectionID Name                   UserName      AuthLoginDomain
------------ ----                   --------      ---------------
1            myappliance.domain.com Administrator LOCAL

```

Connect to a specific appliance FQDN. The user will be prompted for authentication provider, user name and password.

```
 -------------------------- EXAMPLE 2 --------------------------
Connect-HPOVMgmt -appliance myappliance.domain.com:11223
```

Connect to a specific appliance, where the target TCP port isn"t the default. The user will be prompted for authentication provider, user name and password.

```
 -------------------------- EXAMPLE 3 --------------------------
$MySmartCard = gci Cert:\CurrentUser\my | ? { $_.EnhancedKeyUsageList.FriendlyName -match "Smart Card Logon" }
Connect-HPOVMgmt -appliance myappliance.domain.com -Certificate $MySmartCard
```

Connect to a specific appliance using a digital badge. 

### Related Links 

* [Disconnect-HPOVMgmt](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disconnect-HPOVMgmt) 

## HPE OneView 4.10 Library

### Syntax

```
Connect-HPOVMgmt [-Hostname] <String> [-Username] <String> [-Password] <Object> [[-AuthLoginDomain] <String>] [[-LoginAcknowledge] <SwitchParameter>] [<CommonParameters>]
```

```
Connect-HPOVMgmt [-Hostname] <String> [-Credential] <PSCredential> [[-AuthLoginDomain] <String>] [[-LoginAcknowledge] <SwitchParameter>] [<CommonParameters>]
```

```
Connect-HPOVMgmt [-Hostname] <String> [[-Certificate] <Object>] [[-LoginAcknowledge] <SwitchParameter>] [<CommonParameters>]
```

### Description

Establish a connection with the specified HPE OneView appliance. Logs the user into the appliance and establishes a session for use with subsequent requests. Prompts will be displayed for any omitted values.

Appliance hostname or IP can include an alternate TCP port number. While the appliance does not allow the default TCP port 443 to be changed, the appliance could reside behind a firewall, which is redirecting an alternate TCP port number.

### Parameters

#### -AuthLoginDomain &lt;String&gt;

The Directory Name for LDAP/Active Directory authentication, or LOCAL for appliance internal user accounts.

Default is determined by connecting to the requested appliance and retrieving the default login directory. If not LOCAL, and you attempt to use an embedded user account, you must use -AuthLoginDomain parameter with the Local value..

| Aliases | authProvider |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value | LOCAL |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Certificate &lt;Object&gt; 

Provide the X.509 certificate/SmartCard digital badge in order to authenticate to a supported appliance. Two-factor authentication must be configured on the appliance in order to provide a X.509 certificate.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | PSCredential |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt;

The hostname or IP address of the appliance.

| Aliases | Appliance, Computername |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -LoginAcknowledge &lt;SwitchParameter&gt; 

When a Login Message has been configured and acknowledgement is Required, use this parameter to acknowledge it during the initial call. Otherwise, if omitted, and a Login Banner acknowledgement is required, the caller will be prompted. This prompt does not support the -Confirm parameter.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Password &lt;Object&gt;

{% hint style="info" %}
This parameter is deprecated and will be removed in a future release.  Please transition to using the `-Credential` parameter.
{% endhint %}

Password to log into the appliance. Can be either System.String or SecureString value.

| Aliases | p |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -UserName &lt;String&gt;

{% hint style="info" %}
This parameter is deprecated and will be removed in a future release.  Please transition to using the `-Credential` parameter.
{% endhint %}

User name to authenticate.

| Aliases | u, user |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.Connection**_

When a valid connection is established with an appliance, this object is then added to ${Global:ConnectedSessions} connection tracker variable.

The object returned will contain the following public properties:

```
 ==============================================================================
 | Name                   | Type       | Value                                |
 |-----------------------------------------------------------------------------
 | AuthLoginDomain        | String     | Local                                |
 ------------------------------------------------------------------------------
 | ConnectionId           | Int        | 1                                    |
 ------------------------------------------------------------------------------
 | Name                   | String     | Hostname value                       |
 ---------------------- -------------------------------------------------------
 | SessionID              | String     | AUTH string returned from API        |
 ------------------------------------------------------------------------------
 | ApplianceType          | String     | Indicate connected appliance type.   |
 -------------------- ---------------------------------------------------------
 | UserName               | String     | Username value                       |
 ------------------------------------------------------------------------------
 | AuthType               | String     | Credential or Certificate/2FA        |
 ------------------------------------------------------------------------------
 | ActivePermissions      | IList      | Collection of Scopes and permissions |
 ------------------------------------------------------------------------------
 | ApplianceSecurityRoles | IList      | Collection of roles                  |
 ------------------------------------------------------------------------------
 | Default                | Boolean    | Is connection default for library    |
 ------------------------------------------------------------------------------
```

_**System.Management.Automation.ErrorRecord**_

On error, appliance response is returned as a terminating error.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
Connect-HPOVMgmt -appliance myappliance.domain.com

ConnectionID Name                   UserName      AuthLoginDomain
------------ ----                   --------      ---------------
1            myappliance.domain.com Administrator LOCAL

```

Connect to a specific appliance FQDN. The user will be prompted for authentication provider, user name and password.

```
 -------------------------- EXAMPLE 2 --------------------------
Connect-HPOVMgmt -appliance myappliance.domain.com:11223
```

Connect to a specific appliance, where the target TCP port isn"t the default. The user will be prompted for authentication provider, user name and password.

```
 -------------------------- EXAMPLE 3 --------------------------
$MySmartCard = gci Cert:\CurrentUser\my | ? { $_.EnhancedKeyUsageList.FriendlyName -match "Smart Card Logon" }
Connect-HPOVMgmt -appliance myappliance.domain.com -Certificate $MySmartCard
```

Connect to a specific appliance using a digital badge. 

### Related Links 

* [Disconnect-HPOVMgmt](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disconnect-HPOVMgmt) 

