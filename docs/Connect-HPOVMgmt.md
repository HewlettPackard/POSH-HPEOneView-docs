<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Connect-HPOVMgmt
<p>
Initiate a connection to an HPE OneView appliance.

### SYNTAX
<p>
<pre><code>Connect-HPOVMgmt [-Hostname] &lt;String&gt; [-UserName] &lt;String&gt; [-AuthLoginDomain] &lt;String&gt; [-Password] &lt;Object&gt;[ [-LoginAcknowledge] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Connect-HPOVMgmt [-Hostname] &lt;String&gt;[ [-Certificate] &lt;Object&gt;][ [-LoginAcknowledge] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Connect-HPOVMgmt [-Hostname] &lt;String&gt; [-Credential] &lt;PSCredential&gt; [-AuthLoginDomain] &lt;String&gt;[ [-LoginAcknowledge] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Establish a connection with the specified HPE OneView appliance.  Logs the user into the appliance and establishes a session for use with subsequent requests.  Prompts will be displayed for any omitted values.

Appliance hostname or IP can include an alternate TCP port number.  While the appliance does not allow the default TCP port 443 to be changed, the appliance could reside behind a firewall, which is redirecting an alternate TCP port number.


### Parameters

-AuthLoginDomain &lt;String&gt;<p>
Aliases [-AuthProvider]

The Directory Name for LDAP/Active Directory authentication, or LOCAL for appliance internal user accounts.  
	
Default is determined by connecting to the requested appliance and retrieving the default login directory.  If not LOCAL, and you attempt to use an embedded user account, you must use -AuthLoginDomain parameter with the Local value..

<table><tbody><tr><td>Aliases</td><td>authProvider</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>LOCAL</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Certificate &lt;Object&gt;<p>
Provide the X.509 certificate/SmartCard digital badge in order to authenticate to a supported appliance.  Two-factor authentication must be configured on the appliance in order to provide a X.509 certificate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>PSCredential</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Aliases [-Appliance, -Computername]

The hostname or IP address of the appliance.

<table><tbody><tr><td>Aliases</td><td>Appliance, Computername</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LoginAcknowledge &lt;SwitchParameter&gt;<p>
When a Login Message has been configured and acknowledgement is Required, use this parameter to acknowledge it during the initial call.  Otherwise, if omitted, and a Login Banner acknowledgement is required, the caller will be prompted.  This prompt does not support the -Confirm parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p]

Password to log into the appliance.  Can be either System.String or SecureString value..

<table><tbody><tr><td>Aliases</td><td>p</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
Aliases [-u, -user]

User name to authenticate.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.Connection**_

 

When a valid connection is established with an appliance, this object is then added to ${Global:ConnectedSessions} connection tracker variable.
 
 The object returned will contain the following public properties:
 
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

 _**System.Management.Automation.ErrorRecord**_

 

On error, appliance response is returned as a terminating error.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Connect-HPOVMgmt -appliance myappliance.domain.com
ConnectionID Name                   UserName      AuthLoginDomain
------------ ----                   --------      ---------------
1            myappliance.domain.com Administrator LOCAL

</pre>
Connect to a specific appliance FQDN.  The user will be prompted for authentication provider, user name and password.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Connect-HPOVMgmt -appliance myappliance.domain.com:11223
</pre>
Connect to a specific appliance, where the target TCP port isn"t the default.  The user will be prompted for authentication provider, user name and password.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$MySmartCard = gci Cert:\CurrentUser\my | ? { $_.EnhancedKeyUsageList.FriendlyName -match "Smart Card Logon" }
Connect-HPOVMgmt -appliance myappliance.domain.com -Certificate $MySmartCard
</pre>
Connect to a specific appliance using a digital badge.



### Related Links

* [Disconnect-HPOVMgmt](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disconnect-HPOVMgmt)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Connect-HPOVMgmt
<p>
Initiate a connection to an HPE OneView appliance.

### SYNTAX
<p>
<pre><code>Connect-HPOVMgmt [-Hostname] &lt;String&gt; [-UserName] &lt;String&gt; [-AuthLoginDomain] &lt;String&gt; [-Password] &lt;Object&gt;[ [-LoginAcknowledge] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Connect-HPOVMgmt [-Hostname] &lt;String&gt;[ [-Certificate] &lt;Object&gt;][ [-LoginAcknowledge] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Connect-HPOVMgmt [-Hostname] &lt;String&gt; [-Credential] &lt;PSCredential&gt; [-AuthLoginDomain] &lt;String&gt;[ [-LoginAcknowledge] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Establish a connection with the specified HPE OneView appliance.  Logs the user into the appliance and establishes a session for use with subsequent requests.  Prompts will be displayed for any omitted values.

Appliance hostname or IP can include an alternate TCP port number.  While the appliance does not allow the default TCP port 443 to be changed, the appliance could reside behind a firewall, which is redirecting an alternate TCP port number.


### Parameters

-AuthLoginDomain &lt;String&gt;<p>
Aliases [-AuthProvider]

The Directory Name for LDAP/Active Directory authentication, or LOCAL for appliance internal user accounts.  
	
Default is determined by connecting to the requested appliance and retrieving the default login directory.  If not LOCAL, and you attempt to use an embedded user account, you must use -AuthLoginDomain parameter with the Local value..

<table><tbody><tr><td>Aliases</td><td>authProvider</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>LOCAL</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Certificate &lt;Object&gt;<p>
Provide the X.509 certificate/SmartCard digital badge in order to authenticate to a supported appliance.  Two-factor authentication must be configured on the appliance in order to provide a X.509 certificate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>PSCredential</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Aliases [-Appliance, -Computername]

The hostname or IP address of the appliance.

<table><tbody><tr><td>Aliases</td><td>Appliance, Computername</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LoginAcknowledge &lt;SwitchParameter&gt;<p>
When a Login Message has been configured and acknowledgement is Required, use this parameter to acknowledge it during the initial call.  Otherwise, if omitted, and a Login Banner acknowledgement is required, the caller will be prompted.  This prompt does not support the -Confirm parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p]

Password to log into the appliance.  Can be either System.String or SecureString value..

<table><tbody><tr><td>Aliases</td><td>p</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
Aliases [-u, -user]

User name to authenticate.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.Connection**_

 

When a valid connection is established with an appliance, this object is then added to ${Global:ConnectedSessions} connection tracker variable.
 
 The object returned will contain the following public properties:
 
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

 _**System.Management.Automation.ErrorRecord**_

 

On error, appliance response is returned as a terminating error.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Connect-HPOVMgmt -appliance myappliance.domain.com
ConnectionID Name                   UserName      AuthLoginDomain
------------ ----                   --------      ---------------
1            myappliance.domain.com Administrator LOCAL

</pre>
Connect to a specific appliance FQDN.  The user will be prompted for authentication provider, user name and password.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Connect-HPOVMgmt -appliance myappliance.domain.com:11223
</pre>
Connect to a specific appliance, where the target TCP port isn"t the default.  The user will be prompted for authentication provider, user name and password.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$MySmartCard = gci Cert:\CurrentUser\my | ? { $_.EnhancedKeyUsageList.FriendlyName -match "Smart Card Logon" }
Connect-HPOVMgmt -appliance myappliance.domain.com -Certificate $MySmartCard
</pre>
Connect to a specific appliance using a digital badge.



### Related Links

* [Disconnect-HPOVMgmt](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disconnect-HPOVMgmt)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Connect-HPOVMgmt
<p>
Initiate a connection to an HPE OneView appliance.

### SYNTAX
<p>
<pre><code>Connect-HPOVMgmt [-Hostname] &lt;String&gt; [-UserName] &lt;String&gt; [-AuthLoginDomain] &lt;String&gt; [-Password] &lt;Object&gt;[ [-LoginAcknowledge] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Connect-HPOVMgmt [-Hostname] &lt;String&gt;[ [-Certificate] &lt;Object&gt;][ [-LoginAcknowledge] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Connect-HPOVMgmt [-Hostname] &lt;String&gt; [-Credential] &lt;PSCredential&gt; [-AuthLoginDomain] &lt;String&gt;[ [-LoginAcknowledge] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Establish a connection with the specified HPE OneView appliance.  Logs the user into the appliance and establishes a session for use with subsequent requests.  Prompts will be displayed for any omitted values.

Appliance hostname or IP can include an alternate TCP port number.  While the appliance does not allow the default TCP port 443 to be changed, the appliance could reside behind a firewall, which is redirecting an alternate TCP port number.


### Parameters

-AuthLoginDomain &lt;String&gt;<p>
Aliases [-AuthProvider]

The Directory Name for LDAP/Active Directory authentication, or LOCAL for appliance internal user accounts.  
	
Default is determined by connecting to the requested appliance and retrieving the default login directory.  If not LOCAL, and you attempt to use an embedded user account, you must use -AuthLoginDomain parameter with the Local value..

<table><tbody><tr><td>Aliases</td><td>authProvider</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>LOCAL</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Certificate &lt;Object&gt;<p>
Provide the X.509 certificate/SmartCard digital badge in order to authenticate to a supported appliance.  Two-factor authentication must be configured on the appliance in order to provide a X.509 certificate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>PSCredential</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Aliases [-Appliance, -Computername]

The hostname or IP address of the appliance.

<table><tbody><tr><td>Aliases</td><td>Appliance, Computername</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LoginAcknowledge &lt;SwitchParameter&gt;<p>
When a Login Message has been configured and acknowledgement is Required, use this parameter to acknowledge it during the initial call.  Otherwise, if omitted, and a Login Banner acknowledgement is required, the caller will be prompted.  This prompt does not support the -Confirm parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p]

Password to log into the appliance.  Can be either System.String or SecureString value..

<table><tbody><tr><td>Aliases</td><td>p</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
Aliases [-u, -user]

User name to authenticate.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.Connection**_

 

When a valid connection is established with an appliance, this object is then added to ${Global:ConnectedSessions} connection tracker variable.
 
 The object returned will contain the following public properties:
 
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

 _**System.Management.Automation.ErrorRecord**_

 

On error, appliance response is returned as a terminating error.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Connect-HPOVMgmt -appliance myappliance.domain.com
ConnectionID Name                   UserName      AuthLoginDomain
------------ ----                   --------      ---------------
1            myappliance.domain.com Administrator LOCAL

</pre>
Connect to a specific appliance FQDN.  The user will be prompted for authentication provider, user name and password.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Connect-HPOVMgmt -appliance myappliance.domain.com:11223
</pre>
Connect to a specific appliance, where the target TCP port isn"t the default.  The user will be prompted for authentication provider, user name and password.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$MySmartCard = gci Cert:\CurrentUser\my | ? { $_.EnhancedKeyUsageList.FriendlyName -match "Smart Card Logon" }
Connect-HPOVMgmt -appliance myappliance.domain.com -Certificate $MySmartCard
</pre>
Connect to a specific appliance using a digital badge.



### Related Links

* [Disconnect-HPOVMgmt](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disconnect-HPOVMgmt)


***
<div align=right><a href="#Top">Top</a></div>
