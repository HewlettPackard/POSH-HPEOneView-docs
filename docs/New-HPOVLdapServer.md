<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVLdapServer
<p>
Define LDAP Directory Server object.

### SYNTAX
<p>
<pre><code>New-HPOVLdapServer [-Hostname] &lt;String&gt; [-SSLPort] &lt;Int32&gt; [-Certificate] &lt;Object&gt;[ [-TrustLeafCertificate] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A helper cmdlet that will define an LDAP Directory Server object to be used with the New-HPOVLdapDirectory cmdlet.


### Parameters

-Certificate &lt;Object&gt;<p>
Aliases [-cert]
Directory Server SSL Certificate, either location to Base64 Cert or multi-line string value.  If omitted, the CMDLET will attempt to retrieve the Directory Servers Secure LDAP Certiciate.

<table><tbody><tr><td>Aliases</td><td>cert</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Aliases [-Name]
Directory server name or IP Address to add.

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SSLPort &lt;Int32&gt;<p>
Aliases [-port]
Directory Server"s LDAP SSL Port.

<table><tbody><tr><td>Aliases</td><td>port</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>636</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrustLeafCertificate &lt;SwitchParameter&gt;<p>
Use to specify if the certificate should be explicitly trusted, like a self-signed certificate or where the root or issuing certificate authority has not been added to the appliance trust store.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Directory Server Name or IP Address

 _**System.Collections.ArrayList**_

 Mutlple Directory Server Name or IP Address System.String values



### Return Values

_**HPOneView.Appliance.AuthDirectoryServer [System.Management.Automation.PSCustomObject]**_

 

New LDAP Server Resource Object to be used with New-HPOVLdap CMDLET



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ServerA = New-HPOVLdapServer -Name servera.domain.com -Certificate C:\dir\servera.cer
</pre>
Define a new Directory Server, ServerA, specifying the Base64 Public Certificate and using the default LDAP SSL port 636.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ServerA = New-HPOVLdapServer -Name servera.domain.com -Port 2636 -Certificate C:\dir\servera.cer
</pre>
Define a new Directory Server, ServerA, specifying the Base64 Public Certificate, using a custom LDAP SSL port.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$dc1,$dc2 = "dc1.mydomain.com","dc2.mydomain.com" | New-HPOVLdapServer
</pre>
Create two new authentication directory servers, with the CMDLET retrieving the certificate directly from the auth servers.



### Related Links

* [Add-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVLdapServer)
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVLdapServer
<p>
Define LDAP Directory Server object.

### SYNTAX
<p>
<pre><code>New-HPOVLdapServer [-Hostname] &lt;String&gt; [-SSLPort] &lt;Int32&gt; [-Certificate] &lt;Object&gt;[ [-TrustLeafCertificate] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A helper cmdlet that will define an LDAP Directory Server object to be used with the New-HPOVLdapDirectory cmdlet.


### Parameters

-Certificate &lt;Object&gt;<p>
Aliases [-cert]
Directory Server SSL Certificate, either location to Base64 Cert or multi-line string value.  If omitted, the CMDLET will attempt to retrieve the Directory Servers Secure LDAP Certiciate.

<table><tbody><tr><td>Aliases</td><td>cert</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Aliases [-Name]
Directory server name or IP Address to add.

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SSLPort &lt;Int32&gt;<p>
Aliases [-port]
Directory Server"s LDAP SSL Port.

<table><tbody><tr><td>Aliases</td><td>port</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>636</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrustLeafCertificate &lt;SwitchParameter&gt;<p>
Use to specify if the certificate should be explicitly trusted, like a self-signed certificate or where the root or issuing certificate authority has not been added to the appliance trust store.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Directory Server Name or IP Address

 _**System.Collections.ArrayList**_

 Mutlple Directory Server Name or IP Address System.String values



### Return Values

_**HPOneView.Appliance.AuthDirectoryServer [System.Management.Automation.PSCustomObject]**_

 

New LDAP Server Resource Object to be used with New-HPOVLdap CMDLET



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ServerA = New-HPOVLdapServer -Name servera.domain.com -Certificate C:\dir\servera.cer
</pre>
Define a new Directory Server, ServerA, specifying the Base64 Public Certificate and using the default LDAP SSL port 636.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ServerA = New-HPOVLdapServer -Name servera.domain.com -Port 2636 -Certificate C:\dir\servera.cer
</pre>
Define a new Directory Server, ServerA, specifying the Base64 Public Certificate, using a custom LDAP SSL port.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$dc1,$dc2 = "dc1.mydomain.com","dc2.mydomain.com" | New-HPOVLdapServer
</pre>
Create two new authentication directory servers, with the CMDLET retrieving the certificate directly from the auth servers.



### Related Links

* [Add-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVLdapServer)
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVLdapServer
<p>
Define LDAP Directory Server object.

### SYNTAX
<p>
<pre><code>New-HPOVLdapServer [-Hostname] &lt;String&gt; [-SSLPort] &lt;Int32&gt; [-Certificate] &lt;Object&gt;[ [-TrustLeafCertificate] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A helper cmdlet that will define an LDAP Directory Server object to be used with the New-HPOVLdapDirectory cmdlet.


### Parameters

-Certificate &lt;Object&gt;<p>
Aliases [-cert]
Directory Server SSL Certificate, either location to Base64 Cert or multi-line string value.  If omitted, the CMDLET will attempt to retrieve the Directory Servers Secure LDAP Certiciate.

<table><tbody><tr><td>Aliases</td><td>cert</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Aliases [-Name]
Directory server name or IP Address to add.

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SSLPort &lt;Int32&gt;<p>
Aliases [-port]
Directory Server"s LDAP SSL Port.

<table><tbody><tr><td>Aliases</td><td>port</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>636</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrustLeafCertificate &lt;SwitchParameter&gt;<p>
Use to specify if the certificate should be explicitly trusted, like a self-signed certificate or where the root or issuing certificate authority has not been added to the appliance trust store.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Directory Server Name or IP Address

 _**System.Collections.ArrayList**_

 Mutlple Directory Server Name or IP Address System.String values



### Return Values

_**HPOneView.Appliance.AuthDirectoryServer [System.Management.Automation.PSCustomObject]**_

 

New LDAP Server Resource Object to be used with New-HPOVLdap CMDLET



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ServerA = New-HPOVLdapServer -Name servera.domain.com -Certificate C:\dir\servera.cer
</pre>
Define a new Directory Server, ServerA, specifying the Base64 Public Certificate and using the default LDAP SSL port 636.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ServerA = New-HPOVLdapServer -Name servera.domain.com -Port 2636 -Certificate C:\dir\servera.cer
</pre>
Define a new Directory Server, ServerA, specifying the Base64 Public Certificate, using a custom LDAP SSL port.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$dc1,$dc2 = "dc1.mydomain.com","dc2.mydomain.com" | New-HPOVLdapServer
</pre>
Create two new authentication directory servers, with the CMDLET retrieving the certificate directly from the auth servers.



### Related Links

* [Add-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVLdapServer)
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer)


***
<div align=right><a href="#Top">Top</a></div>
