<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVUserRole
<p>
(Deprecated) Assign or change roles for an existing user.

### SYNTAX
<p>
<pre><code>Set-HPOVUserRole [-Name] &lt;Object&gt; [-Roles] &lt;Array&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET is now deprecated. Please use the Set-HPOVUser CMDLET to modify user accounts and associated roles/permissions


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;Object&gt;<p>
Aliases [-user, -username]
The name of the user account to have a role assigned.

<table><tbody><tr><td>Aliases</td><td>user, userName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>roleName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 HPE OneView applinace user account



### Return Values

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 

Updated user account with new role(s)



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVUserRole -user Sally -roleName "Server Administrator"
</pre>
Set the Server Administrator role for Sally"s user account.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVUserRole
<p>
(Deprecated) Assign or change roles for an existing user.

### SYNTAX
<p>
<pre><code>Set-HPOVUserRole [-Name] &lt;Object&gt; [-Roles] &lt;Array&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET is now deprecated. Please use the Set-HPOVUser CMDLET to modify user accounts and associated roles/permissions


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;Object&gt;<p>
Aliases [-user, -username]
The name of the user account to have a role assigned.

<table><tbody><tr><td>Aliases</td><td>user, userName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>roleName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 HPE OneView applinace user account



### Return Values

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 

Updated user account with new role(s)



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVUserRole -user Sally -roleName "Server Administrator"
</pre>
Set the Server Administrator role for Sally"s user account.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVUserRole
<p>
(Deprecated) Assign or change roles for an existing user.

### SYNTAX
<p>
<pre><code>Set-HPOVUserRole [-Name] &lt;Object&gt; [-Roles] &lt;Array&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET is now deprecated. Please use the Set-HPOVUser CMDLET to modify user accounts and associated roles/permissions


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;Object&gt;<p>
Aliases [-user, -username]
The name of the user account to have a role assigned.

<table><tbody><tr><td>Aliases</td><td>user, userName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Roles &lt;Array&gt;<p>
Aliases [-r, -role]
The role(s) to assign to the Directroy Group, in System.Collections.ArrayList format.  Accepted values are noted within the ApplianceRoles property of the HPOneView.Appliance.Connection object stored in the $Global:ConnectedSessions variable.

Example: $roles = "Server administrator","Network administrator"

<table><tbody><tr><td>Aliases</td><td>roleName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 HPE OneView applinace user account



### Return Values

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 

Updated user account with new role(s)



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVUserRole -user Sally -roleName "Server Administrator"
</pre>
Set the Server Administrator role for Sally"s user account.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
