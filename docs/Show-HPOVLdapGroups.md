<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Show-HPOVLdapGroups
<p>
List Directory Groups from the configured LDAP Directory.

### SYNTAX
<p>
<pre><code>Show-HPOVLdapGroups [-Directory] &lt;Object&gt; [-UserName] &lt;String&gt; [-Password] &lt;SecureString&gt; [-GroupName] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVLdapGroups [-Directory] &lt;Object&gt;[ [-Credential] &lt;PSCredential&gt;] [-GroupName] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display the available Authentication Directory security groups.  The displayed Directory Groups can then be used to define new Directory Group Role assignment on the appliance with the New-HPOVLdapGroup cmdlet.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Directory &lt;Object&gt;<p>
Aliases [-d, -domain, -AuthProvider]

The configured LDAP Directory object on the appliance.

<table><tbody><tr><td>Aliases</td><td>d, domain, AuthProvider</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -GroupName &lt;String&gt;<p>
Provide the name of the Directory Group to search for.  If omitted, all found Directory Groups will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Aliases [-p]

User account password

<table><tbody><tr><td>Aliases</td><td>p</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
Aliases [-u]

Username to authenticate with

<table><tbody><tr><td>Aliases</td><td>u</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Security.SecureString**_

 Directory User Account password



### Return Values

_**HPOneView.Appliance.AuthDirectoryGroup [System.Management.Automation.PSCustomObject]**_

 

Authentication Directory Group

 _**System.Collections.ArrayList&lt;HPOneView.Appliance.AuthDirectoryGroup&gt;**_

 

Array of Authentication Directory Groups found



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Show-HPOVLdapGroups -u "Sarah Peterson" -d Domain1
</pre>
Get list of Directory Groups from Domain1 and prompt for password.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$password = convertto-SecureString -asplaintext "password123890" -force
$Directory = Get-HPOVLdapDirectory "Domain99"
Show-HPOVLdapGroups -u "Sarah Peterson" -p $password -d $Directory

</pre>
Automate list of Directory Groups from Domain99 with the provided password.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$password = convertto-SecureString -asplaintext "password123890" -force
$Directory = Get-HPOVLdapDirectory "Domain99"
Show-HPOVLdapGroups -u "Sarah Peterson" -p $password -d $Directory -GroupName "Admins"

</pre>
Automate list of Directory Groups from Domain99 with the provided password, searching for group names that contain "Admins".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Show-HPOVLdapGroups
<p>
List Directory Groups from the configured LDAP Directory.

### SYNTAX
<p>
<pre><code>Show-HPOVLdapGroups [-Directory] &lt;Object&gt; [-UserName] &lt;String&gt; [-Password] &lt;SecureString&gt; [-GroupName] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVLdapGroups [-Directory] &lt;Object&gt;[ [-Credential] &lt;PSCredential&gt;] [-GroupName] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display the available Authentication Directory security groups.  The displayed Directory Groups can then be used to define new Directory Group Role assignment on the appliance with the New-HPOVLdapGroup cmdlet.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Directory &lt;Object&gt;<p>
Aliases [-d, -domain, -AuthProvider]

The configured LDAP Directory object on the appliance.

<table><tbody><tr><td>Aliases</td><td>d, domain, AuthProvider</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -GroupName &lt;String&gt;<p>
Provide the name of the Directory Group to search for.  If omitted, all found Directory Groups will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Aliases [-p]

User account password

<table><tbody><tr><td>Aliases</td><td>p</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
Aliases [-u]

Username to authenticate with

<table><tbody><tr><td>Aliases</td><td>u</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Security.SecureString**_

 Directory User Account password



### Return Values

_**HPOneView.Appliance.AuthDirectoryGroup [System.Management.Automation.PSCustomObject]**_

 

Authentication Directory Group

 _**System.Collections.ArrayList&lt;HPOneView.Appliance.AuthDirectoryGroup&gt;**_

 

Array of Authentication Directory Groups found



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Show-HPOVLdapGroups -u "Sarah Peterson" -d Domain1
</pre>
Get list of Directory Groups from Domain1 and prompt for password.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$password = convertto-SecureString -asplaintext "password123890" -force
$Directory = Get-HPOVLdapDirectory "Domain99"
Show-HPOVLdapGroups -u "Sarah Peterson" -p $password -d $Directory

</pre>
Automate list of Directory Groups from Domain99 with the provided password.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$password = convertto-SecureString -asplaintext "password123890" -force
$Directory = Get-HPOVLdapDirectory "Domain99"
Show-HPOVLdapGroups -u "Sarah Peterson" -p $password -d $Directory -GroupName "Admins"

</pre>
Automate list of Directory Groups from Domain99 with the provided password, searching for group names that contain "Admins".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Show-HPOVLdapGroups
<p>
List Directory Groups from the configured LDAP Directory.

### SYNTAX
<p>
<pre><code>Show-HPOVLdapGroups [-Directory] &lt;Object&gt; [-UserName] &lt;String&gt; [-Password] &lt;SecureString&gt; [-GroupName] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVLdapGroups [-Directory] &lt;Object&gt;[ [-Credential] &lt;PSCredential&gt;] [-GroupName] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display the available Authentication Directory security groups.  The displayed Directory Groups can then be used to define new Directory Group Role assignment on the appliance with the New-HPOVLdapGroup cmdlet.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Directory &lt;Object&gt;<p>
Aliases [-d, -domain, -AuthProvider]

The configured LDAP Directory object on the appliance.

<table><tbody><tr><td>Aliases</td><td>d, domain, AuthProvider</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -GroupName &lt;String&gt;<p>
Provide the name of the Directory Group to search for.  If omitted, all found Directory Groups will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Aliases [-p]

User account password

<table><tbody><tr><td>Aliases</td><td>p</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
Aliases [-u]

Username to authenticate with

<table><tbody><tr><td>Aliases</td><td>u</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Security.SecureString**_

 Directory User Account password



### Return Values

_**HPOneView.Appliance.AuthDirectoryGroup [System.Management.Automation.PSCustomObject]**_

 

Authentication Directory Group

 _**System.Collections.ArrayList&lt;HPOneView.Appliance.AuthDirectoryGroup&gt;**_

 

Array of Authentication Directory Groups found



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Show-HPOVLdapGroups -u "Sarah Peterson" -d Domain1
</pre>
Get list of Directory Groups from Domain1 and prompt for password.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$password = convertto-SecureString -asplaintext "password123890" -force
$Directory = Get-HPOVLdapDirectory "Domain99"
Show-HPOVLdapGroups -u "Sarah Peterson" -p $password -d $Directory

</pre>
Automate list of Directory Groups from Domain99 with the provided password.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$password = convertto-SecureString -asplaintext "password123890" -force
$Directory = Get-HPOVLdapDirectory "Domain99"
Show-HPOVLdapGroups -u "Sarah Peterson" -p $password -d $Directory -GroupName "Admins"

</pre>
Automate list of Directory Groups from Domain99 with the provided password, searching for group names that contain "Admins".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
