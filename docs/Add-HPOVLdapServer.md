<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Add-HPOVLdapServer
<p>
Add a new LDAP Directory Server.

### SYNTAX
<p>
<pre><code>Add-HPOVLdapServer [-InputObject] &lt;Object&gt; [-Hostname] &lt;String&gt; [-Username] &lt;String&gt;[ [-SSLPort] &lt;Int32&gt;][ [-Certificate] &lt;Object&gt;][ [-Password] &lt;Object&gt;][ [-TrustLeafCertificate] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVLdapServer [-InputObject] &lt;Object&gt; [-Hostname] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-SSLPort] &lt;Int32&gt;][ [-Certificate] &lt;Object&gt;][ [-TrustLeafCertificate] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVLdapServer[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will add a new LDAP Directory Server to an existing authentication directory.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Certificate &lt;Object&gt;<p>
Aliases [-cert]
Directory Server SSL Certificate, either location to Base64 Cert or multi-line string value.  If omitted, the CMDLET will attempt to retrieve the Directory Servers Secure LDAP Certiciate.

<table><tbody><tr><td>Aliases</td><td>cert</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Aliases [-Name]
Directory server name or IP Address to add.

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The LDAP Directory Object from Get-HPOVLdapDirectory.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p]
Directory User account password in order to validate LDAP configuration.  Can be System.String or SecureString object.

<table><tbody><tr><td>Aliases</td><td>p, pass</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SSLPort &lt;Int32&gt;<p>
Aliases [-port]
Directory Server"s LDAP SSL Port.

<table><tbody><tr><td>Aliases</td><td>port</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>636</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrustLeafCertificate &lt;SwitchParameter&gt;<p>
When adding a new LDAP directory server, the certificate may not be trusted.  Use this switch to force trust the certificate.  Or, use the Add-HPOVApplianceTrustedCertificate to add the enterprise issuing certificate authority"s certificate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u]
Directory Username to authenticate with in order to validate LDAP configuration.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

 Authentication Directory object that will have the LDAP Server added to.



### Return Values

_**HPOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

 

Updated Authentication Directory.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLdapDirectory -Name MyDirectory | Add-HPOVLdapServer -Name servera.domain.com -Username MyAdminName -Password (ConvertTo-SecureString "MyPAssword" -AsPlanText -Force)
</pre>
Add a new LDAP Directory server.



### Related Links

* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer)
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Add-HPOVLdapServer
<p>
Add a new LDAP Directory Server.

### SYNTAX
<p>
<pre><code>Add-HPOVLdapServer [-InputObject] &lt;Object&gt; [-Hostname] &lt;String&gt; [-Username] &lt;String&gt;[ [-SSLPort] &lt;Int32&gt;][ [-Certificate] &lt;Object&gt;][ [-Password] &lt;Object&gt;][ [-TrustLeafCertificate] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVLdapServer [-InputObject] &lt;Object&gt; [-Hostname] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-SSLPort] &lt;Int32&gt;][ [-Certificate] &lt;Object&gt;][ [-TrustLeafCertificate] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVLdapServer[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will add a new LDAP Directory Server to an existing authentication directory.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Certificate &lt;Object&gt;<p>
Aliases [-cert]
Directory Server SSL Certificate, either location to Base64 Cert or multi-line string value.  If omitted, the CMDLET will attempt to retrieve the Directory Servers Secure LDAP Certiciate.

<table><tbody><tr><td>Aliases</td><td>cert</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Aliases [-Name]
Directory server name or IP Address to add.

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The LDAP Directory Object from Get-HPOVLdapDirectory.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p]
Directory User account password in order to validate LDAP configuration.  Can be System.String or SecureString object.

<table><tbody><tr><td>Aliases</td><td>p, pass</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SSLPort &lt;Int32&gt;<p>
Aliases [-port]
Directory Server"s LDAP SSL Port.

<table><tbody><tr><td>Aliases</td><td>port</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>636</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrustLeafCertificate &lt;SwitchParameter&gt;<p>
When adding a new LDAP directory server, the certificate may not be trusted.  Use this switch to force trust the certificate.  Or, use the Add-HPOVApplianceTrustedCertificate to add the enterprise issuing certificate authority"s certificate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u]
Directory Username to authenticate with in order to validate LDAP configuration.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

 Authentication Directory object that will have the LDAP Server added to.



### Return Values

_**HPOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

 

Updated Authentication Directory.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLdapDirectory -Name MyDirectory | Add-HPOVLdapServer -Name servera.domain.com -Username MyAdminName -Password (ConvertTo-SecureString "MyPAssword" -AsPlanText -Force)
</pre>
Add a new LDAP Directory server.



### Related Links

* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer)
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Add-HPOVLdapServer
<p>
Add a new LDAP Directory Server.

### SYNTAX
<p>
<pre><code>Add-HPOVLdapServer [-InputObject] &lt;Object&gt; [-Hostname] &lt;String&gt; [-Username] &lt;String&gt;[ [-SSLPort] &lt;Int32&gt;][ [-Certificate] &lt;Object&gt;][ [-Password] &lt;Object&gt;][ [-TrustLeafCertificate] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVLdapServer [-InputObject] &lt;Object&gt; [-Hostname] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-SSLPort] &lt;Int32&gt;][ [-Certificate] &lt;Object&gt;][ [-TrustLeafCertificate] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVLdapServer[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will add a new LDAP Directory Server to an existing authentication directory.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Certificate &lt;Object&gt;<p>
Aliases [-cert]
Directory Server SSL Certificate, either location to Base64 Cert or multi-line string value.  If omitted, the CMDLET will attempt to retrieve the Directory Servers Secure LDAP Certiciate.

<table><tbody><tr><td>Aliases</td><td>cert</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Aliases [-Name]
Directory server name or IP Address to add.

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The LDAP Directory Object from Get-HPOVLdapDirectory.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p]
Directory User account password in order to validate LDAP configuration.  Can be System.String or SecureString object.

<table><tbody><tr><td>Aliases</td><td>p, pass</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SSLPort &lt;Int32&gt;<p>
Aliases [-port]
Directory Server"s LDAP SSL Port.

<table><tbody><tr><td>Aliases</td><td>port</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>636</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrustLeafCertificate &lt;SwitchParameter&gt;<p>
When adding a new LDAP directory server, the certificate may not be trusted.  Use this switch to force trust the certificate.  Or, use the Add-HPOVApplianceTrustedCertificate to add the enterprise issuing certificate authority"s certificate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u]
Directory Username to authenticate with in order to validate LDAP configuration.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

 Authentication Directory object that will have the LDAP Server added to.



### Return Values

_**HPOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

 

Updated Authentication Directory.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLdapDirectory -Name MyDirectory | Add-HPOVLdapServer -Name servera.domain.com -Username MyAdminName -Password (ConvertTo-SecureString "MyPAssword" -AsPlanText -Force)
</pre>
Add a new LDAP Directory server.



### Related Links

* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer)
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer)


***
<div align=right><a href="#Top">Top</a></div>
