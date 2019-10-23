<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVUser
<p>
Remove a user account.

### SYNTAX
<p>
<pre><code>Remove-HPOVUser [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Remove a specific local user account from the management appliance


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The user account object to be removed.

<table><tbody><tr><td>Aliases</td><td>u, user, UserName, Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 HPE OneView User Account object created on an appliance



### Return Values

_**System.Collections.Hashtable**_

 

Success message if user was deleted



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVUser Sally | Remove-HPOVUser
</pre>
Retrieve "Sally" user account using Get-HPOVUser, then pipe it to Remove-HPOVUser.



### Related Links

* [Get-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUser)
* [New-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUser)
* [Set-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUser)
* [Set-HPOVUserPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserPassword)
* [Set-HPOVUserRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserRole)
* [Show-HPOVUserSession](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVUserSession)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVUser
<p>
Remove a user account.

### SYNTAX
<p>
<pre><code>Remove-HPOVUser [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Remove a specific local user account from the management appliance


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The user account object to be removed.

<table><tbody><tr><td>Aliases</td><td>u, user, UserName, Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 HPE OneView User Account object created on an appliance



### Return Values

_**System.Collections.Hashtable**_

 

Success message if user was deleted



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVUser Sally | Remove-HPOVUser
</pre>
Retrieve "Sally" user account using Get-HPOVUser, then pipe it to Remove-HPOVUser.



### Related Links

* [Get-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUser)
* [New-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUser)
* [Set-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUser)
* [Set-HPOVUserPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserPassword)
* [Set-HPOVUserRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserRole)
* [Show-HPOVUserSession](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVUserSession)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVUser
<p>
Remove a user account.

### SYNTAX
<p>
<pre><code>Remove-HPOVUser [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Remove a specific local user account from the management appliance


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The user account object to be removed.

<table><tbody><tr><td>Aliases</td><td>u, user, UserName, Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.User [System.Management.Automation.PSCustomObject]**_

 HPE OneView User Account object created on an appliance



### Return Values

_**System.Collections.Hashtable**_

 

Success message if user was deleted



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVUser Sally | Remove-HPOVUser
</pre>
Retrieve "Sally" user account using Get-HPOVUser, then pipe it to Remove-HPOVUser.



### Related Links

* [Get-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUser)
* [New-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUser)
* [Set-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUser)
* [Set-HPOVUserPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserPassword)
* [Set-HPOVUserRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserRole)
* [Show-HPOVUserSession](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVUserSession)


***
<div align=right><a href="#Top">Top</a></div>
