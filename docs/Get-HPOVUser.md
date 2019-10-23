<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVUser
<p>
Retrieve user account resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVUser [-Name] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Get a local user account on the management appliance, and display it"s properties.  The account password will not be displayed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the new user account to display.

<table><tbody><tr><td>Aliases</td><td>Username</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Single User resource

 _**System.Collections.ArrayList**_

 

Multiple User resourses, or formatted table displaying a report of user accounts

 _**User Account Information**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVUser
</pre>
List all user accounts from all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVUser "Sally"
</pre>
List Sally"s user account from MyAppliance.domain.com.



### Related Links

* [New-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUser)
* [Remove-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUser)
* [Set-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUser)
* [Set-HPOVUserPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserPassword)
* [Set-HPOVUserRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserRole)
* [Show-HPOVUserSession](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVUserSession)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVUser
<p>
Retrieve user account resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVUser [-Name] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Get a local user account on the management appliance, and display it"s properties.  The account password will not be displayed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the new user account to display.

<table><tbody><tr><td>Aliases</td><td>Username</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Single User resource

 _**System.Collections.ArrayList**_

 

Multiple User resourses, or formatted table displaying a report of user accounts

 _**User Account Information**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVUser
</pre>
List all user accounts from all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVUser "Sally"
</pre>
List Sally"s user account from MyAppliance.domain.com.



### Related Links

* [New-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUser)
* [Remove-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUser)
* [Set-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUser)
* [Set-HPOVUserPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserPassword)
* [Set-HPOVUserRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserRole)
* [Show-HPOVUserSession](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVUserSession)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVUser
<p>
Retrieve user account resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVUser [-Name] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Get a local user account on the management appliance, and display it"s properties.  The account password will not be displayed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the new user account to display.

<table><tbody><tr><td>Aliases</td><td>Username</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Single User resource

 _**System.Collections.ArrayList**_

 

Multiple User resourses, or formatted table displaying a report of user accounts

 _**User Account Information**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVUser
</pre>
List all user accounts from all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVUser "Sally"
</pre>
List Sally"s user account from MyAppliance.domain.com.



### Related Links

* [New-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUser)
* [Remove-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUser)
* [Set-HPOVUser](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUser)
* [Set-HPOVUserPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserPassword)
* [Set-HPOVUserRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVUserRole)
* [Show-HPOVUserSession](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVUserSession)


***
<div align=right><a href="#Top">Top</a></div>
