<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVUser
<p>
Modify an existing user account.

### SYNTAX
<p>
<pre><code>Set-HPOVUser [-UserName] &lt;String&gt; [-Password] &lt;String&gt; [-FullName] &lt;String&gt; [-Roles] &lt;Array&gt;[ [-ScopePermissions] &lt;Array&gt;] [-EmailAddress] &lt;String&gt; [-OfficePhone] &lt;String&gt; [-MobilePhone] &lt;String&gt;[ [-Enabled] &lt;SwitchParameter&gt;][ [-Disabled] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVUser [-UserObject] &lt;Object&gt; [-Password] &lt;String&gt; [-FullName] &lt;String&gt; [-Roles] &lt;Array&gt;[ [-ScopePermissions] &lt;Array&gt;] [-EmailAddress] &lt;String&gt; [-OfficePhone] &lt;String&gt; [-MobilePhone] &lt;String&gt;[ [-Enabled] &lt;SwitchParameter&gt;][ [-Disabled] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Modify or update an existing local user account on the management appliance.  This cmdlet will not update the password or roles of the currently logged in user account.  To update your HPE OneView appliance local account"s password, please use the Set-HPOVUserPassword cmdlet.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disabled &lt;SwitchParameter&gt;<p>
Disable the local user account.

<table><tbody><tr><td>Aliases</td><td>disable</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EmailAddress &lt;String&gt;<p>
Updated Email Address of the User Account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enabled &lt;SwitchParameter&gt;<p>
Enable the local user account.

<table><tbody><tr><td>Aliases</td><td>enable</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FullName &lt;String&gt;<p>
Updated Full Name of the User Account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MobilePhone &lt;String&gt;<p>
Updated mobile phone number

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OfficePhone &lt;String&gt;<p>
Updated office phone of the User Account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
New password for the user account.  Passwords must be at least 8 characters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopePermissions &lt;Array&gt;<p>
Array collection of Hashtable<Role; Scope>.  Will overwrite existing scope to role mappings.

Example: -ScopePermissions @{Role = "Network administrator"; Scope = (Get-HPOVScope -Name CorpNetAdmins -ErrorAction Stop) }

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
The name or object of the user account to be updated.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserObject &lt;Object&gt;<p>
The object of the user account to be updated.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 HPE OneView User Account object created on an appliance



### Return Values

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 

If successful, returns a user resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVUser -username Sally -roles @("server administrator","network administrator")
</pre>
Update the user account "Sally" with new roles.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVUser -username Sally -password NewP@ssw0rd
</pre>
Update the user account "Sally" with a new password.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$Scope = Get-HPOVScope -Name Scope1 -ErrorAction Stop
Get-HPOVUser -Username Sally | Set-HPOVUser -Roles "Server administrator" -ScopePermissions @{Role = "Network administrator"; Scope = $Scope }
</pre>
Modify the user account with the new role and scope permissions.



### Related Links

* [Get-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUser)
* [New-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUser)
* [Remove-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUser)
* [Set-HPOVUserPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserPassword)
* [Set-HPOVUserRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserRole)
* [Show-HPOVUserSession](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVUserSession)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVUser
<p>
Modify an existing user account.

### SYNTAX
<p>
<pre><code>Set-HPOVUser [-UserName] &lt;String&gt; [-Password] &lt;String&gt; [-FullName] &lt;String&gt; [-Roles] &lt;Array&gt;[ [-ScopePermissions] &lt;Array&gt;] [-EmailAddress] &lt;String&gt; [-OfficePhone] &lt;String&gt; [-MobilePhone] &lt;String&gt;[ [-Enabled] &lt;SwitchParameter&gt;][ [-Disabled] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVUser [-UserObject] &lt;Object&gt; [-Password] &lt;String&gt; [-FullName] &lt;String&gt; [-Roles] &lt;Array&gt;[ [-ScopePermissions] &lt;Array&gt;] [-EmailAddress] &lt;String&gt; [-OfficePhone] &lt;String&gt; [-MobilePhone] &lt;String&gt;[ [-Enabled] &lt;SwitchParameter&gt;][ [-Disabled] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Modify or update an existing local user account on the management appliance.  This cmdlet will not update the password or roles of the currently logged in user account.  To update your HPE OneView appliance local account"s password, please use the Set-HPOVUserPassword cmdlet.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disabled &lt;SwitchParameter&gt;<p>
Disable the local user account.

<table><tbody><tr><td>Aliases</td><td>disable</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EmailAddress &lt;String&gt;<p>
Updated Email Address of the User Account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enabled &lt;SwitchParameter&gt;<p>
Enable the local user account.

<table><tbody><tr><td>Aliases</td><td>enable</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FullName &lt;String&gt;<p>
Updated Full Name of the User Account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MobilePhone &lt;String&gt;<p>
Updated mobile phone number

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OfficePhone &lt;String&gt;<p>
Updated office phone of the User Account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
New password for the user account.  Passwords must be at least 8 characters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopePermissions &lt;Array&gt;<p>
Array collection of Hashtable<Role; Scope>.  Will overwrite existing scope to role mappings.

Example: -ScopePermissions @{Role = "Network administrator"; Scope = (Get-HPOVScope -Name CorpNetAdmins -ErrorAction Stop) }

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
The name or object of the user account to be updated.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserObject &lt;Object&gt;<p>
The object of the user account to be updated.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 HPE OneView User Account object created on an appliance



### Return Values

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 

If successful, returns a user resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVUser -username Sally -roles @("server administrator","network administrator")
</pre>
Update the user account "Sally" with new roles.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVUser -username Sally -password NewP@ssw0rd
</pre>
Update the user account "Sally" with a new password.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$Scope = Get-HPOVScope -Name Scope1 -ErrorAction Stop
Get-HPOVUser -Username Sally | Set-HPOVUser -Roles "Server administrator" -ScopePermissions @{Role = "Network administrator"; Scope = $Scope }
</pre>
Modify the user account with the new role and scope permissions.



### Related Links

* [Get-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUser)
* [New-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUser)
* [Remove-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUser)
* [Set-HPOVUserPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserPassword)
* [Set-HPOVUserRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserRole)
* [Show-HPOVUserSession](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVUserSession)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVUser
<p>
Modify an existing user account.

### SYNTAX
<p>
<pre><code>Set-HPOVUser [-UserName] &lt;String&gt; [-Password] &lt;String&gt; [-FullName] &lt;String&gt; [-Roles] &lt;Array&gt;[ [-ScopePermissions] &lt;Array&gt;] [-EmailAddress] &lt;String&gt; [-OfficePhone] &lt;String&gt; [-MobilePhone] &lt;String&gt;[ [-Enabled] &lt;SwitchParameter&gt;][ [-Disabled] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVUser [-UserObject] &lt;Object&gt; [-Password] &lt;String&gt; [-FullName] &lt;String&gt; [-Roles] &lt;Array&gt;[ [-ScopePermissions] &lt;Array&gt;] [-EmailAddress] &lt;String&gt; [-OfficePhone] &lt;String&gt; [-MobilePhone] &lt;String&gt;[ [-Enabled] &lt;SwitchParameter&gt;][ [-Disabled] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Modify or update an existing local user account on the management appliance.  This cmdlet will not update the password or roles of the currently logged in user account.  To update your HPE OneView appliance local account"s password, please use the Set-HPOVUserPassword cmdlet.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disabled &lt;SwitchParameter&gt;<p>
Disable the local user account.

<table><tbody><tr><td>Aliases</td><td>disable</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EmailAddress &lt;String&gt;<p>
Updated Email Address of the User Account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enabled &lt;SwitchParameter&gt;<p>
Enable the local user account.

<table><tbody><tr><td>Aliases</td><td>enable</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FullName &lt;String&gt;<p>
Updated Full Name of the User Account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MobilePhone &lt;String&gt;<p>
Updated mobile phone number

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OfficePhone &lt;String&gt;<p>
Updated office phone of the User Account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
New password for the user account.  Passwords must be at least 8 characters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopePermissions &lt;Array&gt;<p>
Array collection of Hashtable<Role; Scope>.  Will overwrite existing scope to role mappings.

Example: -ScopePermissions @{Role = "Network administrator"; Scope = (Get-HPOVScope -Name CorpNetAdmins -ErrorAction Stop) }

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserName &lt;String&gt;<p>
The name or object of the user account to be updated.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UserObject &lt;Object&gt;<p>
The object of the user account to be updated.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 HPE OneView User Account object created on an appliance



### Return Values

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 

If successful, returns a user resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVUser -username Sally -roles @("server administrator","network administrator")
</pre>
Update the user account "Sally" with new roles.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVUser -username Sally -password NewP@ssw0rd
</pre>
Update the user account "Sally" with a new password.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$Scope = Get-HPOVScope -Name Scope1 -ErrorAction Stop
Get-HPOVUser -Username Sally | Set-HPOVUser -Roles "Server administrator" -ScopePermissions @{Role = "Network administrator"; Scope = $Scope }
</pre>
Modify the user account with the new role and scope permissions.



### Related Links

* [Get-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUser)
* [New-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUser)
* [Remove-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUser)
* [Set-HPOVUserPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserPassword)
* [Set-HPOVUserRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserRole)
* [Show-HPOVUserSession](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVUserSession)


***
<div align=right><a href="#Top">Top</a></div>
