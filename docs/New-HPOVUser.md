<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVUser
<p>
Create a new user account.

### SYNTAX
<p>
<pre><code>New-HPOVUser [-UserName] &lt;String&gt; [-Password] &lt;String&gt; [-FullName] &lt;String&gt; [-Roles] &lt;Array&gt;[ [-ScopePermissions] &lt;Array&gt;][ [-EmailAddress] &lt;String&gt;][ [-OfficePhone] &lt;String&gt;][ [-MobilePhone] &lt;String&gt;][ [-Enabled] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Create a new local user account on the management appliance


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EmailAddress &lt;String&gt;<p>
Provide the users email address.  This does not set the Email Notification value when configuring SMTP Notifications.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enabled &lt;SwitchParameter&gt;<p>
Deprecated parameter.  By default, all new user accounts will be enabled.  In order to disable a user account, use the Set-HPOVUser Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FullName &lt;String&gt;<p>
Full name for the user.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MobilePhone &lt;String&gt;<p>
Mobile phone number.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OfficePhone &lt;String&gt;<p>
Office phone number.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
The initial password to be assigned to the new user.
Passwords must be at least 8 characters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopePermissions &lt;Array&gt;<p>
Array collection of Hashtable<Role; Scope>.  Will overwrite existing scope to role mappings.

Example: -ScopePermissions @{Role = "Network administrator"; Scope = (Get-HPOVScope -Name CorpNetAdmins -ErrorAction Stop) }

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
The name of the new user account to be created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 

If successful, returns a user resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVUser -username Sally -fullName "Sally Smith" -password SallysPassword -roles "server administrator","network administrator"
</pre>
Create the Sally user account, and assigning to the Server Administrator and Network Administrator roles, on all connected appliances.



### Related Links

* [Get-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUser)
* [Remove-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUser)
* [Set-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUser)
* [Set-HPOVUserPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserPassword)
* [Set-HPOVUserRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserRole)
* [Show-HPOVUserSession](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVUserSession)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVUser
<p>
Create a new user account.

### SYNTAX
<p>
<pre><code>New-HPOVUser [-UserName] &lt;String&gt; [-Password] &lt;String&gt; [-FullName] &lt;String&gt; [-Roles] &lt;Array&gt;[ [-ScopePermissions] &lt;Array&gt;][ [-EmailAddress] &lt;String&gt;][ [-OfficePhone] &lt;String&gt;][ [-MobilePhone] &lt;String&gt;][ [-Enabled] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Create a new local user account on the management appliance


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EmailAddress &lt;String&gt;<p>
Provide the users email address.  This does not set the Email Notification value when configuring SMTP Notifications.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enabled &lt;SwitchParameter&gt;<p>
Deprecated parameter.  By default, all new user accounts will be enabled.  In order to disable a user account, use the Set-HPOVUser Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FullName &lt;String&gt;<p>
Full name for the user.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MobilePhone &lt;String&gt;<p>
Mobile phone number.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OfficePhone &lt;String&gt;<p>
Office phone number.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
The initial password to be assigned to the new user.
Passwords must be at least 8 characters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopePermissions &lt;Array&gt;<p>
Array collection of Hashtable<Role; Scope>.  Will overwrite existing scope to role mappings.

Example: -ScopePermissions @{Role = "Network administrator"; Scope = (Get-HPOVScope -Name CorpNetAdmins -ErrorAction Stop) }

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
The name of the new user account to be created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 

If successful, returns a user resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVUser -username Sally -fullName "Sally Smith" -password SallysPassword -roles "server administrator","network administrator"
</pre>
Create the Sally user account, and assigning to the Server Administrator and Network Administrator roles, on all connected appliances.



### Related Links

* [Get-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUser)
* [Remove-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUser)
* [Set-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUser)
* [Set-HPOVUserPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserPassword)
* [Set-HPOVUserRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserRole)
* [Show-HPOVUserSession](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVUserSession)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVUser
<p>
Create a new user account.

### SYNTAX
<p>
<pre><code>New-HPOVUser [-UserName] &lt;String&gt; [-Password] &lt;String&gt; [-FullName] &lt;String&gt; [-Roles] &lt;Array&gt;[ [-ScopePermissions] &lt;Array&gt;][ [-EmailAddress] &lt;String&gt;][ [-OfficePhone] &lt;String&gt;][ [-MobilePhone] &lt;String&gt;][ [-Enabled] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Create a new local user account on the management appliance


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EmailAddress &lt;String&gt;<p>
Provide the users email address.  This does not set the Email Notification value when configuring SMTP Notifications.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enabled &lt;SwitchParameter&gt;<p>
Deprecated parameter.  By default, all new user accounts will be enabled.  In order to disable a user account, use the Set-HPOVUser Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FullName &lt;String&gt;<p>
Full name for the user.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MobilePhone &lt;String&gt;<p>
Mobile phone number.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OfficePhone &lt;String&gt;<p>
Office phone number.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
The initial password to be assigned to the new user.
Passwords must be at least 8 characters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopePermissions &lt;Array&gt;<p>
Array collection of Hashtable<Role; Scope>.  Will overwrite existing scope to role mappings.

Example: -ScopePermissions @{Role = "Network administrator"; Scope = (Get-HPOVScope -Name CorpNetAdmins -ErrorAction Stop) }

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
The name of the new user account to be created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 

If successful, returns a user resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVUser -username Sally -fullName "Sally Smith" -password SallysPassword -roles "server administrator","network administrator"
</pre>
Create the Sally user account, and assigning to the Server Administrator and Network Administrator roles, on all connected appliances.



### Related Links

* [Get-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUser)
* [Remove-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUser)
* [Set-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUser)
* [Set-HPOVUserPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserPassword)
* [Set-HPOVUserRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserRole)
* [Show-HPOVUserSession](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVUserSession)


***
<div align=right><a href="#Top">Top</a></div>
