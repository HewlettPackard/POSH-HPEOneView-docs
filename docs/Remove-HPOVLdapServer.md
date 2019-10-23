<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVLdapServer
<p>
Remove an existing LDAP Directory Server.

### SYNTAX
<p>
<pre><code>Remove-HPOVLdapServer [-InputObject] &lt;Object&gt; [-DirectoryServerName] &lt;String&gt; [-Username] &lt;String&gt;[ [-Password] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Remove-HPOVLdapServer [-InputObject] &lt;Object&gt; [-DirectoryServerName] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will remove an existing LDAP Directory Server resource from an existing LDAP Directory.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DirectoryServerName &lt;String&gt;<p>
Aliases [-Name]
Directory server name.

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The LDAP Directory Object from Get-HPOVLdapDirectory.

<table><tbody><tr><td>Aliases</td><td>Directory</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p]
Directory User account password in order to validate LDAP configuration.  Can be System.String or SecureString object.

<table><tbody><tr><td>Aliases</td><td>p, pass</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u]
Directory Username to authenticate with in order to validate LDAP configuration.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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
Get-HPOVLdapDirectory -Name MyDirectory | Remove-HPOVLdapServer -DirectoryServerName servera.domain.com -Username MyAdminName -Password (ConvertTo-SecureString "MyPAssword" -AsPlanText -Force)
</pre>
Remove the specified LDAP Directory server from "MyDirectory".  Will be prompted for confirmation.



### Related Links

* [Add-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVLdapServer)
* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVLdapServer
<p>
Remove an existing LDAP Directory Server.

### SYNTAX
<p>
<pre><code>Remove-HPOVLdapServer [-InputObject] &lt;Object&gt; [-DirectoryServerName] &lt;String&gt; [-Username] &lt;String&gt;[ [-Password] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Remove-HPOVLdapServer [-InputObject] &lt;Object&gt; [-DirectoryServerName] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will remove an existing LDAP Directory Server resource from an existing LDAP Directory.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DirectoryServerName &lt;String&gt;<p>
Aliases [-Name]
Directory server name.

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The LDAP Directory Object from Get-HPOVLdapDirectory.

<table><tbody><tr><td>Aliases</td><td>Directory</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p]
Directory User account password in order to validate LDAP configuration.  Can be System.String or SecureString object.

<table><tbody><tr><td>Aliases</td><td>p, pass</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u]
Directory Username to authenticate with in order to validate LDAP configuration.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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
Get-HPOVLdapDirectory -Name MyDirectory | Remove-HPOVLdapServer -DirectoryServerName servera.domain.com -Username MyAdminName -Password (ConvertTo-SecureString "MyPAssword" -AsPlanText -Force)
</pre>
Remove the specified LDAP Directory server from "MyDirectory".  Will be prompted for confirmation.



### Related Links

* [Add-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVLdapServer)
* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVLdapServer
<p>
Remove an existing LDAP Directory Server.

### SYNTAX
<p>
<pre><code>Remove-HPOVLdapServer [-InputObject] &lt;Object&gt; [-DirectoryServerName] &lt;String&gt; [-Username] &lt;String&gt;[ [-Password] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Remove-HPOVLdapServer [-InputObject] &lt;Object&gt; [-DirectoryServerName] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will remove an existing LDAP Directory Server resource from an existing LDAP Directory.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DirectoryServerName &lt;String&gt;<p>
Aliases [-Name]
Directory server name.

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The LDAP Directory Object from Get-HPOVLdapDirectory.

<table><tbody><tr><td>Aliases</td><td>Directory</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p]
Directory User account password in order to validate LDAP configuration.  Can be System.String or SecureString object.

<table><tbody><tr><td>Aliases</td><td>p, pass</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u]
Directory Username to authenticate with in order to validate LDAP configuration.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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
Get-HPOVLdapDirectory -Name MyDirectory | Remove-HPOVLdapServer -DirectoryServerName servera.domain.com -Username MyAdminName -Password (ConvertTo-SecureString "MyPAssword" -AsPlanText -Force)
</pre>
Remove the specified LDAP Directory server from "MyDirectory".  Will be prompted for confirmation.



### Related Links

* [Add-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVLdapServer)
* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer)


***
<div align=right><a href="#Top">Top</a></div>
