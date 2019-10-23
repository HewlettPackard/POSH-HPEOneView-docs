<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Add-HPOVSmtpAlertEmailFilter
<p>
Add SMPT Email Alert Filter

### SYNTAX
<p>
<pre><code>Add-HPOVSmtpAlertEmailFilter [-Name] &lt;String&gt; [-Emails] &lt;Array&gt;[ [-Filter] &lt;String&gt;][ [-Scope] &lt;Array&gt;][ [-ScopeMatchPreference] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVSmtpAlertEmailFilter [-RemoteSupportFilter] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
SMTP Email Filters can be created using this CMDLET.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Emails &lt;Array&gt;<p>
Destination EMail address(es).

<table><tbody><tr><td>Aliases</td><td>recipients</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Filter &lt;String&gt;<p>
Aliases [-query]

REST API filter specifying the resource category, URI, name, and severity.  
	
Example:  CPU status:"warning" or status:"critical"

<table><tbody><tr><td>Aliases</td><td>query</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of the Filter you are creating.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RemoteSupportFilter &lt;SwitchParameter&gt;<p>
Use to create the HPE OneView Remote Support email filter for service events.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Array&gt;<p>
Scope(s) the Filter should apply to.  Omitting parameter will apply filter to all defined scopes.  Value is an Array of <HPOneView.Appliance.ScopeResource> or <System.String> of 1 or more names of Scopes.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopeMatchPreference &lt;String&gt;<p>
If providing multiple Scope resources, specify AND or OR to indicate match preference.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>OR</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Array &lt;Net.Mail.MailAddress&gt;**_

 Array of email address recipient(s).



### Return Values

_**HPOneView.Appliance.TaskResource {System.Management.Automation.PSCustomObject}**_

 

Returns an async task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVSmtpAlertEmailFilter -Name "Monitor CPU Error and Warning conditions" -query "CPU status:warning or status:critical" -emails admin1@domain.com,admin2@domain.com
</pre>
Set SMTP Alert to notify when system CPU status is either "warning" or "critical", and email 2 addresses.


 <pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Script:NewAlertFilterResults = Add-HPOVSmtpAlertEmailFilter -Name "My Test Filter 3" -Filter "status:critical" -Emails "user1@domain.com","user2@domain.com" -Scope "My new Scope","My new Scope2" -Async
</pre>
Create a new email critical alert for the two scope names, and return the Async Task object without waiting.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Add-HPOVSmtpAlertEmailFilter
<p>
Add SMPT Email Alert Filter

### SYNTAX
<p>
<pre><code>Add-HPOVSmtpAlertEmailFilter [-Name] &lt;String&gt; [-Emails] &lt;Array&gt;[ [-Filter] &lt;String&gt;][ [-Scope] &lt;Array&gt;][ [-ScopeMatchPreference] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVSmtpAlertEmailFilter [-RemoteSupportFilter] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
SMTP Email Filters can be created using this CMDLET.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Emails &lt;Array&gt;<p>
Destination EMail address(es).

<table><tbody><tr><td>Aliases</td><td>recipients</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Filter &lt;String&gt;<p>
Aliases [-query]

REST API filter specifying the resource category, URI, name, and severity.  
	
Example:  CPU status:"warning" or status:"critical"

<table><tbody><tr><td>Aliases</td><td>query</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of the Filter you are creating.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RemoteSupportFilter &lt;SwitchParameter&gt;<p>
Use to create the HPE OneView Remote Support email filter for service events.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Array&gt;<p>
Scope(s) the Filter should apply to.  Omitting parameter will apply filter to all defined scopes.  Value is an Array of <HPOneView.Appliance.ScopeResource> or <System.String> of 1 or more names of Scopes.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopeMatchPreference &lt;String&gt;<p>
If providing multiple Scope resources, specify AND or OR to indicate match preference.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>OR</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Array &lt;Net.Mail.MailAddress&gt;**_

 Array of email address recipient(s).



### Return Values

_**HPOneView.Appliance.TaskResource {System.Management.Automation.PSCustomObject}**_

 

Returns an async task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVSmtpAlertEmailFilter -Name "Monitor CPU Error and Warning conditions" -query "CPU status:warning or status:critical" -emails admin1@domain.com,admin2@domain.com
</pre>
Set SMTP Alert to notify when system CPU status is either "warning" or "critical", and email 2 addresses.


 <pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Script:NewAlertFilterResults = Add-HPOVSmtpAlertEmailFilter -Name "My Test Filter 3" -Filter "status:critical" -Emails "user1@domain.com","user2@domain.com" -Scope "My new Scope","My new Scope2" -Async
</pre>
Create a new email critical alert for the two scope names, and return the Async Task object without waiting.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Add-HPOVSmtpAlertEmailFilter
<p>
Add SMPT Email Alert Filter

### SYNTAX
<p>
<pre><code>Add-HPOVSmtpAlertEmailFilter [-Name] &lt;String&gt; [-Emails] &lt;Array&gt;[ [-Filter] &lt;String&gt;][ [-Scope] &lt;Array&gt;][ [-ScopeMatchPreference] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVSmtpAlertEmailFilter [-RemoteSupportFilter] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
SMTP Email Filters can be created using this CMDLET.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Emails &lt;Array&gt;<p>
Destination EMail address(es).

<table><tbody><tr><td>Aliases</td><td>recipients</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Filter &lt;String&gt;<p>
Aliases [-query]

REST API filter specifying the resource category, URI, name, and severity.  
	
Example:  CPU status:"warning" or status:"critical"

<table><tbody><tr><td>Aliases</td><td>query</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of the Filter you are creating.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RemoteSupportFilter &lt;SwitchParameter&gt;<p>
Use to create the HPE OneView Remote Support email filter for service events.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Array&gt;<p>
Scope(s) the Filter should apply to.  Omitting parameter will apply filter to all defined scopes.  Value is an Array of <HPOneView.Appliance.ScopeResource> or <System.String> of 1 or more names of Scopes.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScopeMatchPreference &lt;String&gt;<p>
If providing multiple Scope resources, specify AND or OR to indicate match preference.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>OR</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Array &lt;Net.Mail.MailAddress&gt;**_

 Array of email address recipient(s).



### Return Values

_**HPOneView.Appliance.TaskResource {System.Management.Automation.PSCustomObject}**_

 

Returns an async task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVSmtpAlertEmailFilter -Name "Monitor CPU Error and Warning conditions" -query "CPU status:warning or status:critical" -emails admin1@domain.com,admin2@domain.com
</pre>
Set SMTP Alert to notify when system CPU status is either "warning" or "critical", and email 2 addresses.


 <pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Script:NewAlertFilterResults = Add-HPOVSmtpAlertEmailFilter -Name "My Test Filter 3" -Filter "status:critical" -Emails "user1@domain.com","user2@domain.com" -Scope "My new Scope","My new Scope2" -Async
</pre>
Create a new email critical alert for the two scope names, and return the Async Task object without waiting.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
