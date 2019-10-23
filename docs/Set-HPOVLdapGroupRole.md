<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVLdapGroupRole
<p>
Assign or change roles for LDAP Groups.

### SYNTAX
<p>
<pre><code>Set-HPOVLdapGroupRole [-InputObject] &lt;Object&gt; [-Roles] &lt;Array&gt; [-UserName] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVLdapGroupRole [-InputObject] &lt;Object&gt; [-Roles] &lt;Array&gt;[ [-ScopePermissions] &lt;Array&gt;] [-UserName] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVLdapGroupRole [-InputObject] &lt;Object&gt;[ [-ScopePermissions] &lt;Array&gt;] [-UserName] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Changes current roles of an LDAP Group with a given set of roles.  You must provide the list of all roles the LDAP Group should be set to, and not a subset of roles.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-g, -GroupName, -Group]

Directroy Group to add.

<table><tbody><tr><td>Aliases</td><td>g, name, GroupName, Group</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Aliases [-p]

Directory User account password

<table><tbody><tr><td>Aliases</td><td>p</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>r, role</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopePermissions &lt;Array&gt;<p>
Array collection of Hashtable<Role; Scope>.  Will overwrite existing scope to role mappings.  To indiate all resouroures, use 'All' as the value.

Example: -ScopePermissions @{Role = "Network administrator"; Scope = (Get-HPOVScope -Name CorpNetAdmins -ErrorAction Stop) }

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
Aliases [-u]

Directory Username to authenticate with

<table><tbody><tr><td>Aliases</td><td>u</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.SecureString**_

 Directory User Account password



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Updated LDAP Group object with new role assignment(s)



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVLdapGroupRole -d Domain1 -GroupName "MY Directory Group1" -roles "Server administrator" -u "Sarah Peterson"
</pre>
Add "MY Directory Group1" from Domain1 with Server Administrator role and prompt for password for group validation.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$roles = "Server administrator","Backup administrator"
$password = convertto-SecureString -asplaintext "password123890" -force
Set-HPOVLdapGroupRole -d Domain1 -GroupName "MY Directory Group1" -roles $roles -u "Sarah Peterson" -p $password
</pre>
Set "MY Directory Group1" from Domain1 with Server and Backup administrator roles, and specify password for group validation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$LdapDirectoryName = "CorpDomain"
$MyAdCreds = Get-Credential
Get-HPOVLdapGroup -Group $CorpNetworkAdmins -ErrorAction Stop | ? loginDomain -eq $LdapDirectoryName | Set-HPOVLdapGroupRole -ScopePermissions @{Role = "Network administrator"; Scope = $NewSBACScope } -Credential $MyAdCreds
</pre>
Change the Scope permissions for the specified authentication directory group.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$scope = Get-HPOVScope -Name $scopename
$ScopePermissions = @{ Role = "Server administrator"; Scope = $scope
}
Get-HPOVLdapGroup -Name $scopename | Set-HPOVLdapGroupRole -ScopePermissions $ScopePermissions -Roles "Software administrator" -Credential $MyAdCreds
</pre>
Change the Scope permissions for the specified authentication directory group by using both ScopePermissions and Roles parameters.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVLdapGroupRole
<p>
Assign or change roles for LDAP Groups.

### SYNTAX
<p>
<pre><code>Set-HPOVLdapGroupRole [-InputObject] &lt;Object&gt; [-Roles] &lt;Array&gt; [-UserName] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVLdapGroupRole [-InputObject] &lt;Object&gt; [-Roles] &lt;Array&gt;[ [-ScopePermissions] &lt;Array&gt;] [-UserName] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVLdapGroupRole [-InputObject] &lt;Object&gt;[ [-ScopePermissions] &lt;Array&gt;] [-UserName] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Changes current roles of an LDAP Group with a given set of roles.  You must provide the list of all roles the LDAP Group should be set to, and not a subset of roles.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-g, -GroupName, -Group]

Directroy Group to add.

<table><tbody><tr><td>Aliases</td><td>g, name, GroupName, Group</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Aliases [-p]

Directory User account password

<table><tbody><tr><td>Aliases</td><td>p</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>r, role</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopePermissions &lt;Array&gt;<p>
Array collection of Hashtable<Role; Scope>.  Will overwrite existing scope to role mappings.  To indiate all resouroures, use 'All' as the value.

Example: -ScopePermissions @{Role = "Network administrator"; Scope = (Get-HPOVScope -Name CorpNetAdmins -ErrorAction Stop) }

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
Aliases [-u]

Directory Username to authenticate with

<table><tbody><tr><td>Aliases</td><td>u</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.SecureString**_

 Directory User Account password



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Updated LDAP Group object with new role assignment(s)



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVLdapGroupRole -d Domain1 -GroupName "MY Directory Group1" -roles "Server administrator" -u "Sarah Peterson"
</pre>
Add "MY Directory Group1" from Domain1 with Server Administrator role and prompt for password for group validation.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$roles = "Server administrator","Backup administrator"
$password = convertto-SecureString -asplaintext "password123890" -force
Set-HPOVLdapGroupRole -d Domain1 -GroupName "MY Directory Group1" -roles $roles -u "Sarah Peterson" -p $password
</pre>
Set "MY Directory Group1" from Domain1 with Server and Backup administrator roles, and specify password for group validation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$LdapDirectoryName = "CorpDomain"
$MyAdCreds = Get-Credential
Get-HPOVLdapGroup -Group $CorpNetworkAdmins -ErrorAction Stop | ? loginDomain -eq $LdapDirectoryName | Set-HPOVLdapGroupRole -ScopePermissions @{Role = "Network administrator"; Scope = $NewSBACScope } -Credential $MyAdCreds
</pre>
Change the Scope permissions for the specified authentication directory group.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$scope = Get-HPOVScope -Name $scopename
$ScopePermissions = @{ Role = "Server administrator"; Scope = $scope
}
Get-HPOVLdapGroup -Name $scopename | Set-HPOVLdapGroupRole -ScopePermissions $ScopePermissions -Roles "Software administrator" -Credential $MyAdCreds
</pre>
Change the Scope permissions for the specified authentication directory group by using both ScopePermissions and Roles parameters.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVLdapGroupRole
<p>
Assign or change roles for LDAP Groups.

### SYNTAX
<p>
<pre><code>Set-HPOVLdapGroupRole [-InputObject] &lt;Object&gt; [-Roles] &lt;Array&gt; [-UserName] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVLdapGroupRole [-InputObject] &lt;Object&gt; [-Roles] &lt;Array&gt;[ [-ScopePermissions] &lt;Array&gt;] [-UserName] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVLdapGroupRole [-InputObject] &lt;Object&gt;[ [-ScopePermissions] &lt;Array&gt;] [-UserName] &lt;String&gt; [-Password] &lt;SecureString&gt;[ [-Credential] &lt;PSCredential&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Changes current roles of an LDAP Group with a given set of roles.  You must provide the list of all roles the LDAP Group should be set to, and not a subset of roles.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-g, -GroupName, -Group]

Directroy Group to add.

<table><tbody><tr><td>Aliases</td><td>g, name, GroupName, Group</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Aliases [-p]

Directory User account password

<table><tbody><tr><td>Aliases</td><td>p</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>r, role</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopePermissions &lt;Array&gt;<p>
Array collection of Hashtable<Role; Scope>.  Will overwrite existing scope to role mappings.  To indiate all resouroures, use 'All' as the value.

Example: -ScopePermissions @{Role = "Network administrator"; Scope = (Get-HPOVScope -Name CorpNetAdmins -ErrorAction Stop) }

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
Aliases [-u]

Directory Username to authenticate with

<table><tbody><tr><td>Aliases</td><td>u</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.SecureString**_

 Directory User Account password



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Updated LDAP Group object with new role assignment(s)



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVLdapGroupRole -d Domain1 -GroupName "MY Directory Group1" -roles "Server administrator" -u "Sarah Peterson"
</pre>
Add "MY Directory Group1" from Domain1 with Server Administrator role and prompt for password for group validation.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$roles = "Server administrator","Backup administrator"
$password = convertto-SecureString -asplaintext "password123890" -force
Set-HPOVLdapGroupRole -d Domain1 -GroupName "MY Directory Group1" -roles $roles -u "Sarah Peterson" -p $password
</pre>
Set "MY Directory Group1" from Domain1 with Server and Backup administrator roles, and specify password for group validation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$LdapDirectoryName = "CorpDomain"
$MyAdCreds = Get-Credential
Get-HPOVLdapGroup -Group $CorpNetworkAdmins -ErrorAction Stop | ? loginDomain -eq $LdapDirectoryName | Set-HPOVLdapGroupRole -ScopePermissions @{Role = "Network administrator"; Scope = $NewSBACScope } -Credential $MyAdCreds
</pre>
Change the Scope permissions for the specified authentication directory group.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$scope = Get-HPOVScope -Name $scopename
$ScopePermissions = @{ Role = "Server administrator"; Scope = $scope
}
Get-HPOVLdapGroup -Name $scopename | Set-HPOVLdapGroupRole -ScopePermissions $ScopePermissions -Roles "Software administrator" -Credential $MyAdCreds
</pre>
Change the Scope permissions for the specified authentication directory group by using both ScopePermissions and Roles parameters.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
