<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVLdapDirectory
<p>
Add a new Directory for Authentication

### SYNTAX
<p>
<pre><code>New-HPOVLdapDirectory [-Name] &lt;String&gt;[ [-AD] &lt;SwitchParameter&gt;] [-BaseDN] &lt;String&gt; [-Servers] &lt;Array&gt; [-Username] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;][ [-ServiceAccount] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLdapDirectory [-Name] &lt;String&gt;[ [-OpenLDAP] &lt;SwitchParameter&gt;] [-BaseDN] &lt;String&gt; [-OrganizationalUnits] &lt;Array&gt; [-Servers] &lt;Array&gt;[ [-UserNamingAttribute] &lt;string&gt;] [-Username] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;][ [-ServiceAccount] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will create a new Directory for appliance authentication.  HPE OneView currently supports either Active Directory or LDAP (e.g. OpenLDAP) for user authentication.  The New-HPOVLdapServer cmdlet is used to assist defining directory servers address, public SSL certificate and LDAP over SSL TCP port.


### Parameters

-AD &lt;SwitchParameter&gt;<p>
Using Active Directory, which sets the authProtocol to AD and userNameField to CN

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -BaseDN &lt;String&gt;<p>
Aliases [-Root, -RootDN]

Directory Base DN (E.g. dc=domian,dc=local)

<table><tbody><tr><td>Aliases</td><td>root, rootdn</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Directory name to add.  Does not need to match LDAP/AD Directory Name, but should.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OpenLDAP &lt;SwitchParameter&gt;<p>
Aliases [-LDAP]

Using LDAP (i.e. OpenLDAP), which sets the authProtocol to LDAP and userNameField to UID

<table><tbody><tr><td>Aliases</td><td>LDAP</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OrganizationalUnits &lt;Array&gt;<p>
OpenLDAP OU"s to begin search for Directory Group and User Account authentication.
E.g. ou=admins,ou=contoso

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Aliases [-p, -pass]
Directory Username password.

<table><tbody><tr><td>Aliases</td><td>p, pass</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Servers &lt;Array&gt;<p>
Array of Directory Servers and their settings.  Must include the following:

	* Server Name (FQDN or IP)
	* Public SSL Certificate
	* SSL Port, if not default 636

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceAccount &lt;SwitchParameter&gt;<p>
Use to indicate the provided credential is a Service Account.  Required for when configuring an Active Directory auth directory for two-factor authentication.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserNamingAttribute &lt;string&gt;<p>
Specify the naming attribute for OpenLDAP directories.  Allowed values: 	* CN 	* UID 
Default Value: CN

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>CN</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u, -user]
Directory Username to authenticate with.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Security.SecureString**_

 Account Password that will be used to validate the directory



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Configured Authentication Directory

 _**System.Collections.ArrayList**_

 

Multiple configured Authentication Directories



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ServerA,$ServerB = servera.domain.com,serverb.domain.com | New-HPOVLdapServer
New-HPOVLdapDirectory -name Domain1 -AD -basedn "dc=domain,dc=com" -servers $ServerA,$ServerB -Username MyAdminAccount@domain.com

</pre>
Add a new directory with two directory servers, and be prompted for your directory account password.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ServerA = New-HPOVLdapServer -Name contoso.com
New-HPOVLdapDirectory -name Domain1 -AD -basedn "dc=domain,dc=com" -servers $ServerA -Username MyAdminAccount@domain.com -ServiceAccount

</pre>
Add a new Active Directory authentication directory, using SRV domain name, and specify to use the account as a service account.



### Related Links

* [Get-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapDirectory)
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVLdapDirectory
<p>
Add a new Directory for Authentication

### SYNTAX
<p>
<pre><code>New-HPOVLdapDirectory [-Name] &lt;String&gt;[ [-AD] &lt;SwitchParameter&gt;] [-BaseDN] &lt;String&gt; [-Servers] &lt;Array&gt; [-Username] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;][ [-ServiceAccount] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLdapDirectory [-Name] &lt;String&gt;[ [-OpenLDAP] &lt;SwitchParameter&gt;] [-BaseDN] &lt;String&gt; [-OrganizationalUnits] &lt;Array&gt; [-Servers] &lt;Array&gt;[ [-UserNamingAttribute] &lt;string&gt;] [-Username] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;][ [-ServiceAccount] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will create a new Directory for appliance authentication.  HPE OneView currently supports either Active Directory or LDAP (e.g. OpenLDAP) for user authentication.  The New-HPOVLdapServer cmdlet is used to assist defining directory servers address, public SSL certificate and LDAP over SSL TCP port.


### Parameters

-AD &lt;SwitchParameter&gt;<p>
Using Active Directory, which sets the authProtocol to AD and userNameField to CN

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -BaseDN &lt;String&gt;<p>
Aliases [-Root, -RootDN]

Directory Base DN (E.g. dc=domian,dc=local)

<table><tbody><tr><td>Aliases</td><td>root, rootdn</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Directory name to add.  Does not need to match LDAP/AD Directory Name, but should.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OpenLDAP &lt;SwitchParameter&gt;<p>
Aliases [-LDAP]

Using LDAP (i.e. OpenLDAP), which sets the authProtocol to LDAP and userNameField to UID

<table><tbody><tr><td>Aliases</td><td>LDAP</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OrganizationalUnits &lt;Array&gt;<p>
OpenLDAP OU"s to begin search for Directory Group and User Account authentication.
E.g. ou=admins,ou=contoso

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Aliases [-p, -pass]
Directory Username password.

<table><tbody><tr><td>Aliases</td><td>p, pass</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Servers &lt;Array&gt;<p>
Array of Directory Servers and their settings.  Must include the following:

	* Server Name (FQDN or IP)
	* Public SSL Certificate
	* SSL Port, if not default 636

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceAccount &lt;SwitchParameter&gt;<p>
Use to indicate the provided credential is a Service Account.  Required for when configuring an Active Directory auth directory for two-factor authentication.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserNamingAttribute &lt;string&gt;<p>
Specify the naming attribute for OpenLDAP directories.  Allowed values: 	* CN 	* UID 
Default Value: CN

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>CN</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u, -user]
Directory Username to authenticate with.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Security.SecureString**_

 Account Password that will be used to validate the directory



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Configured Authentication Directory

 _**System.Collections.ArrayList**_

 

Multiple configured Authentication Directories



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ServerA,$ServerB = servera.domain.com,serverb.domain.com | New-HPOVLdapServer
New-HPOVLdapDirectory -name Domain1 -AD -basedn "dc=domain,dc=com" -servers $ServerA,$ServerB -Username MyAdminAccount@domain.com

</pre>
Add a new directory with two directory servers, and be prompted for your directory account password.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ServerA = New-HPOVLdapServer -Name contoso.com
New-HPOVLdapDirectory -name Domain1 -AD -basedn "dc=domain,dc=com" -servers $ServerA -Username MyAdminAccount@domain.com -ServiceAccount

</pre>
Add a new Active Directory authentication directory, using SRV domain name, and specify to use the account as a service account.



### Related Links

* [Get-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapDirectory)
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVLdapDirectory
<p>
Add a new Directory for Authentication

### SYNTAX
<p>
<pre><code>New-HPOVLdapDirectory [-Name] &lt;String&gt;[ [-AD] &lt;SwitchParameter&gt;] [-BaseDN] &lt;String&gt; [-Servers] &lt;Array&gt; [-Username] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;][ [-ServiceAccount] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLdapDirectory [-Name] &lt;String&gt;[ [-OpenLDAP] &lt;SwitchParameter&gt;] [-BaseDN] &lt;String&gt; [-OrganizationalUnits] &lt;Array&gt; [-Servers] &lt;Array&gt;[ [-UserNamingAttribute] &lt;string&gt;] [-Username] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;][ [-ServiceAccount] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will create a new Directory for appliance authentication.  HPE OneView currently supports either Active Directory or LDAP (e.g. OpenLDAP) for user authentication.  The New-HPOVLdapServer cmdlet is used to assist defining directory servers address, public SSL certificate and LDAP over SSL TCP port.


### Parameters

-AD &lt;SwitchParameter&gt;<p>
Using Active Directory, which sets the authProtocol to AD and userNameField to CN

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -BaseDN &lt;String&gt;<p>
Aliases [-Root, -RootDN]

Directory Base DN (E.g. dc=domian,dc=local)

<table><tbody><tr><td>Aliases</td><td>root, rootdn</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Directory name to add.  Does not need to match LDAP/AD Directory Name, but should.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OpenLDAP &lt;SwitchParameter&gt;<p>
Aliases [-LDAP]

Using LDAP (i.e. OpenLDAP), which sets the authProtocol to LDAP and userNameField to UID

<table><tbody><tr><td>Aliases</td><td>LDAP</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OrganizationalUnits &lt;Array&gt;<p>
OpenLDAP OU"s to begin search for Directory Group and User Account authentication.
E.g. ou=admins,ou=contoso

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Aliases [-p, -pass]
Directory Username password.

<table><tbody><tr><td>Aliases</td><td>p, pass</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Servers &lt;Array&gt;<p>
Array of Directory Servers and their settings.  Must include the following:

	* Server Name (FQDN or IP)
	* Public SSL Certificate
	* SSL Port, if not default 636

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceAccount &lt;SwitchParameter&gt;<p>
Use to indicate the provided credential is a Service Account.  Required for when configuring an Active Directory auth directory for two-factor authentication.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserNamingAttribute &lt;string&gt;<p>
Specify the naming attribute for OpenLDAP directories.  Allowed values: 	* CN 	* UID 
Default Value: CN

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>CN</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u, -user]
Directory Username to authenticate with.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Security.SecureString**_

 Account Password that will be used to validate the directory



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Configured Authentication Directory

 _**System.Collections.ArrayList**_

 

Multiple configured Authentication Directories



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ServerA,$ServerB = servera.domain.com,serverb.domain.com | New-HPOVLdapServer
New-HPOVLdapDirectory -name Domain1 -AD -basedn "dc=domain,dc=com" -servers $ServerA,$ServerB -Username MyAdminAccount@domain.com

</pre>
Add a new directory with two directory servers, and be prompted for your directory account password.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ServerA = New-HPOVLdapServer -Name contoso.com
New-HPOVLdapDirectory -name Domain1 -AD -basedn "dc=domain,dc=com" -servers $ServerA -Username MyAdminAccount@domain.com -ServiceAccount

</pre>
Add a new Active Directory authentication directory, using SRV domain name, and specify to use the account as a service account.



### Related Links

* [Get-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapDirectory)
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory)


***
<div align=right><a href="#Top">Top</a></div>
