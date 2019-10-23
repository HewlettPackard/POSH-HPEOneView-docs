<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVLdapGroup
<p>
Add a new Directory Group to appliance.

### SYNTAX
<p>
<pre><code>New-HPOVLdapGroup [-Directory] &lt;Object&gt; [-Group] &lt;Object&gt; [-Roles] &lt;Array&gt; [-Username] &lt;String&gt;[ [-Password] &lt;Object&gt;][ [-Credential] &lt;PSCredential&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLdapGroup [-Directory] &lt;Object&gt; [-Group] &lt;Object&gt;[ [-ScopePermissions] &lt;Array&gt;] [-Username] &lt;String&gt;[ [-Password] &lt;Object&gt;][ [-Credential] &lt;PSCredential&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet provides the ability to add a new Directory Group to the appliance.  You can use the Show-HPOVLdapGroups to retrieve a list of avialable Directory Groups from the specified Directory.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Directory &lt;Object&gt;<p>
Aliases [-d, -domain, -AuthProvider]
LDAP/Active Directory Domain object.

<table><tbody><tr><td>Aliases</td><td>d, domain, authProvider</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Group &lt;Object&gt;<p>
Aliases [-g, -GroupName, -name]
Directroy Group to add.  Can either be a string value of a Cononical Name of directory group, or object from Show-HPOVLdapGroups.

<table><tbody><tr><td>Aliases</td><td>g, GroupName, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p]
Directory User account password.  Can be System.String or SecureString object.

<table><tbody><tr><td>Aliases</td><td>p</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>r, role</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopePermissions &lt;Array&gt;<p>
Array collection of Hashtable<Role; Scope>.

Example: -ScopePermissions @{Role = "Network administrator"; Scope = (Get-HPOVScope -Name CorpNetAdmins -ErrorAction Stop) }

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u]
Directory Username to authenticate with

<table><tbody><tr><td>Aliases</td><td>u</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.DirectoryGroup [System.Management.Automation.PSCustomObject]**_

 The external authentication directory object from -Get-HPOVLdapDirectory.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

New LDAP Group object with role assignment(s)



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVLdapGroup -d Domain1 -GroupName "MY Directory Group1" -roles @("Server administrator") -u "Sarah Peterson"
</pre>
Add "MY Directory Group1" from Domain1 with Server Administrator role and prompt for password for group validation.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
# Get the defined directory group from the appliance. $Directory = Get-HPOVLdapDirectory -Name "Domain1" -ErrorAction Stop  # Collect the users AD password.  This does not require Domain Admins or an administrator level account.  Only a standard user account that can query the directory. $Password = ConvertTo-SecureString -AsPlainText "password123890" -force  # Get the directory group object. $Group = Show-HPOVLdapDirectoryGroup -Name "Domain1" -Directory $Directory -Username "Sarah.Peterson@domain1.com" -Password $Password -ErrorAction Stop  # Specify the roles needed to be assigned to the directory group. $Roles = "Server administrator","Backup administrator"  # Create the directory group resource on the appliance, and associate with the SBAC permissions. New-HPOVLdapGroup -Directory $Directory -GroupName "MY Directory Group1" -Roles $Roles -Username "Sarah.Peterson@domain1.com" -Password $Password

</pre>
Add "MY Directory Group1" from Domain1 with Server and Backup administrator roles, and specify password for group validation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
# Get the defined directory group from the appliance. $Directory = Get-HPOVLdapDirectory -Name "Domain1" -ErrorAction Stop  # Collect the scope needed to assign permissions. $VirtAdminsScope = Get-HPOVScope -Name CorpVirtAdmins -ErrorAction Stop  # Create a hashtable of the roles to scopes (SBAC) which would then be assigned to the directory group. $ScopeRoles = @{Role = "Server administrator"; Scope = $VirtAdminsScope},@{Role = "Storage administrator"; Scope = $VirtAdminsScope}  # Collect the users AD credentials.  This does not require Domain Admins or an administrator level account.  Only a standard user account that can query the directory. $MyAdCreds = Get-Credential  # Get the directory group object. $Group = Show-HPOVLdapDirectoryGroup -Name "CorpVirtAdmins" -Directory $Directory -Credential $MyAdCreds -ErrorAction Stop  # Create the directory group resource on the appliance, and associate with the SBAC permissions. New-HPOVLdapGroup -Directory Directory -GroupName CorpVirtAdmins -ScopePermissions $ScopeRoles -Credential $MyAdCreds

</pre>
Add the new directory group with specific scope permissions, and using a PSCredential object for authentication directory validation.



### Related Links

* [Get-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapGroup)
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup)
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole)
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVLdapGroup
<p>
Add a new Directory Group to appliance.

### SYNTAX
<p>
<pre><code>New-HPOVLdapGroup [-Directory] &lt;Object&gt; [-Group] &lt;Object&gt; [-Roles] &lt;Array&gt; [-Username] &lt;String&gt;[ [-Password] &lt;Object&gt;][ [-Credential] &lt;PSCredential&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLdapGroup [-Directory] &lt;Object&gt; [-Group] &lt;Object&gt;[ [-ScopePermissions] &lt;Array&gt;] [-Username] &lt;String&gt;[ [-Password] &lt;Object&gt;][ [-Credential] &lt;PSCredential&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet provides the ability to add a new Directory Group to the appliance.  You can use the Show-HPOVLdapGroups to retrieve a list of avialable Directory Groups from the specified Directory.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Directory &lt;Object&gt;<p>
Aliases [-d, -domain, -AuthProvider]
LDAP/Active Directory Domain object.

<table><tbody><tr><td>Aliases</td><td>d, domain, authProvider</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Group &lt;Object&gt;<p>
Aliases [-g, -GroupName, -name]
Directroy Group to add.  Can either be a string value of a Cononical Name of directory group, or object from Show-HPOVLdapGroups.

<table><tbody><tr><td>Aliases</td><td>g, GroupName, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p]
Directory User account password.  Can be System.String or SecureString object.

<table><tbody><tr><td>Aliases</td><td>p</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>r, role</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopePermissions &lt;Array&gt;<p>
Array collection of Hashtable<Role; Scope>.

Example: -ScopePermissions @{Role = "Network administrator"; Scope = (Get-HPOVScope -Name CorpNetAdmins -ErrorAction Stop) }

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u]
Directory Username to authenticate with

<table><tbody><tr><td>Aliases</td><td>u</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.DirectoryGroup [System.Management.Automation.PSCustomObject]**_

 The external authentication directory object from -Get-HPOVLdapDirectory.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

New LDAP Group object with role assignment(s)



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVLdapGroup -d Domain1 -GroupName "MY Directory Group1" -roles @("Server administrator") -u "Sarah Peterson"
</pre>
Add "MY Directory Group1" from Domain1 with Server Administrator role and prompt for password for group validation.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
# Get the defined directory group from the appliance. $Directory = Get-HPOVLdapDirectory -Name "Domain1" -ErrorAction Stop  # Collect the users AD password.  This does not require Domain Admins or an administrator level account.  Only a standard user account that can query the directory. $Password = ConvertTo-SecureString -AsPlainText "password123890" -force  # Get the directory group object. $Group = Show-HPOVLdapDirectoryGroup -Name "Domain1" -Directory $Directory -Username "Sarah.Peterson@domain1.com" -Password $Password -ErrorAction Stop  # Specify the roles needed to be assigned to the directory group. $Roles = "Server administrator","Backup administrator"  # Create the directory group resource on the appliance, and associate with the SBAC permissions. New-HPOVLdapGroup -Directory $Directory -GroupName "MY Directory Group1" -Roles $Roles -Username "Sarah.Peterson@domain1.com" -Password $Password

</pre>
Add "MY Directory Group1" from Domain1 with Server and Backup administrator roles, and specify password for group validation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
# Get the defined directory group from the appliance. $Directory = Get-HPOVLdapDirectory -Name "Domain1" -ErrorAction Stop  # Collect the scope needed to assign permissions. $VirtAdminsScope = Get-HPOVScope -Name CorpVirtAdmins -ErrorAction Stop  # Create a hashtable of the roles to scopes (SBAC) which would then be assigned to the directory group. $ScopeRoles = @{Role = "Server administrator"; Scope = $VirtAdminsScope},@{Role = "Storage administrator"; Scope = $VirtAdminsScope}  # Collect the users AD credentials.  This does not require Domain Admins or an administrator level account.  Only a standard user account that can query the directory. $MyAdCreds = Get-Credential  # Get the directory group object. $Group = Show-HPOVLdapDirectoryGroup -Name "CorpVirtAdmins" -Directory $Directory -Credential $MyAdCreds -ErrorAction Stop  # Create the directory group resource on the appliance, and associate with the SBAC permissions. New-HPOVLdapGroup -Directory Directory -GroupName CorpVirtAdmins -ScopePermissions $ScopeRoles -Credential $MyAdCreds

</pre>
Add the new directory group with specific scope permissions, and using a PSCredential object for authentication directory validation.



### Related Links

* [Get-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapGroup)
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup)
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole)
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVLdapGroup
<p>
Add a new Directory Group to appliance.

### SYNTAX
<p>
<pre><code>New-HPOVLdapGroup [-Directory] &lt;Object&gt; [-Group] &lt;Object&gt; [-Roles] &lt;Array&gt; [-Username] &lt;String&gt;[ [-Password] &lt;Object&gt;][ [-Credential] &lt;PSCredential&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLdapGroup [-Directory] &lt;Object&gt; [-Group] &lt;Object&gt;[ [-ScopePermissions] &lt;Array&gt;] [-Username] &lt;String&gt;[ [-Password] &lt;Object&gt;][ [-Credential] &lt;PSCredential&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet provides the ability to add a new Directory Group to the appliance.  You can use the Show-HPOVLdapGroups to retrieve a list of avialable Directory Groups from the specified Directory.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Directory &lt;Object&gt;<p>
Aliases [-d, -domain, -AuthProvider]
LDAP/Active Directory Domain object.

<table><tbody><tr><td>Aliases</td><td>d, domain, authProvider</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Group &lt;Object&gt;<p>
Aliases [-g, -GroupName, -name]
Directroy Group to add.  Can either be a string value of a Cononical Name of directory group, or object from Show-HPOVLdapGroups.

<table><tbody><tr><td>Aliases</td><td>g, GroupName, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p]
Directory User account password.  Can be System.String or SecureString object.

<table><tbody><tr><td>Aliases</td><td>p</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>r, role</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopePermissions &lt;Array&gt;<p>
Array collection of Hashtable<Role; Scope>.

Example: -ScopePermissions @{Role = "Network administrator"; Scope = (Get-HPOVScope -Name CorpNetAdmins -ErrorAction Stop) }

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u]
Directory Username to authenticate with

<table><tbody><tr><td>Aliases</td><td>u</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.DirectoryGroup [System.Management.Automation.PSCustomObject]**_

 The external authentication directory object from -Get-HPOVLdapDirectory.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

New LDAP Group object with role assignment(s)



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVLdapGroup -d Domain1 -GroupName "MY Directory Group1" -roles @("Server administrator") -u "Sarah Peterson"
</pre>
Add "MY Directory Group1" from Domain1 with Server Administrator role and prompt for password for group validation.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
# Get the defined directory group from the appliance. $Directory = Get-HPOVLdapDirectory -Name "Domain1" -ErrorAction Stop  # Collect the users AD password.  This does not require Domain Admins or an administrator level account.  Only a standard user account that can query the directory. $Password = ConvertTo-SecureString -AsPlainText "password123890" -force  # Get the directory group object. $Group = Show-HPOVLdapDirectoryGroup -Name "Domain1" -Directory $Directory -Username "Sarah.Peterson@domain1.com" -Password $Password -ErrorAction Stop  # Specify the roles needed to be assigned to the directory group. $Roles = "Server administrator","Backup administrator"  # Create the directory group resource on the appliance, and associate with the SBAC permissions. New-HPOVLdapGroup -Directory $Directory -GroupName "MY Directory Group1" -Roles $Roles -Username "Sarah.Peterson@domain1.com" -Password $Password

</pre>
Add "MY Directory Group1" from Domain1 with Server and Backup administrator roles, and specify password for group validation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
# Get the defined directory group from the appliance. $Directory = Get-HPOVLdapDirectory -Name "Domain1" -ErrorAction Stop  # Collect the scope needed to assign permissions. $VirtAdminsScope = Get-HPOVScope -Name CorpVirtAdmins -ErrorAction Stop  # Create a hashtable of the roles to scopes (SBAC) which would then be assigned to the directory group. $ScopeRoles = @{Role = "Server administrator"; Scope = $VirtAdminsScope},@{Role = "Storage administrator"; Scope = $VirtAdminsScope}  # Collect the users AD credentials.  This does not require Domain Admins or an administrator level account.  Only a standard user account that can query the directory. $MyAdCreds = Get-Credential  # Get the directory group object. $Group = Show-HPOVLdapDirectoryGroup -Name "CorpVirtAdmins" -Directory $Directory -Credential $MyAdCreds -ErrorAction Stop  # Create the directory group resource on the appliance, and associate with the SBAC permissions. New-HPOVLdapGroup -Directory Directory -GroupName CorpVirtAdmins -ScopePermissions $ScopeRoles -Credential $MyAdCreds

</pre>
Add the new directory group with specific scope permissions, and using a PSCredential object for authentication directory validation.



### Related Links

* [Get-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapGroup)
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup)
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole)
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups)


***
<div align=right><a href="#Top">Top</a></div>
