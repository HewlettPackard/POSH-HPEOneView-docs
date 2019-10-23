<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Test-HPOVEmailAlert
<p>
Test appliance Email Alerting configuration.

### SYNTAX
<p>
<pre><code>Test-HPOVEmailAlert [-Recipients] &lt;Array&gt;[ [-Subject] &lt;String&gt;] [-Body] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will generate a test email message. 


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Body &lt;String&gt;<p>
Provide a custom message body.  Can be either a plan text or HTML message.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>fasle</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>Test email message from HPE OneView appliance.</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Recipients &lt;Array&gt;<p>
Specify the Sender Email Address for the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Subject &lt;String&gt;<p>
Provide a custom subject for the email message.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>This is a test message.</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**System.Management.Automation.PSCustomObject**_

 

If successful, returns an object with the test message details.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Test-HPOVEmailAlert -Recipients user1@contoso.com
</pre>
Generate a test email message to "user1@contoso.com".


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Test-HPOVEmailAlert -Recipients user1@contoso.com.,user2@contoso.com -Subject "This is a test email message." 
</pre>
Generate a test email message to multiple recipients with a custom subject.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Test-HPOVEmailAlert
<p>
Test appliance Email Alerting configuration.

### SYNTAX
<p>
<pre><code>Test-HPOVEmailAlert [-Recipients] &lt;Array&gt;[ [-Subject] &lt;String&gt;] [-Body] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will generate a test email message. 


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Body &lt;String&gt;<p>
Provide a custom message body.  Can be either a plan text or HTML message.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>fasle</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>Test email message from HPE OneView appliance.</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Recipients &lt;Array&gt;<p>
Specify the Sender Email Address for the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Subject &lt;String&gt;<p>
Provide a custom subject for the email message.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>This is a test message.</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**System.Management.Automation.PSCustomObject**_

 

If successful, returns an object with the test message details.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Test-HPOVEmailAlert -Recipients user1@contoso.com
</pre>
Generate a test email message to "user1@contoso.com".


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Test-HPOVEmailAlert -Recipients user1@contoso.com.,user2@contoso.com -Subject "This is a test email message." 
</pre>
Generate a test email message to multiple recipients with a custom subject.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Test-HPOVEmailAlert
<p>
Test appliance Email Alerting configuration.

### SYNTAX
<p>
<pre><code>Test-HPOVEmailAlert [-Recipients] &lt;Array&gt;[ [-Subject] &lt;String&gt;] [-Body] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will generate a test email message. 


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Body &lt;String&gt;<p>
Provide a custom message body.  Can be either a plan text or HTML message.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>fasle</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>Test email message from HPE OneView appliance.</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Recipients &lt;Array&gt;<p>
Specify the Sender Email Address for the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Subject &lt;String&gt;<p>
Provide a custom subject for the email message.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>This is a test message.</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**System.Management.Automation.PSCustomObject**_

 

If successful, returns an object with the test message details.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Test-HPOVEmailAlert -Recipients user1@contoso.com
</pre>
Generate a test email message to "user1@contoso.com".


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Test-HPOVEmailAlert -Recipients user1@contoso.com.,user2@contoso.com -Subject "This is a test email message." 
</pre>
Generate a test email message to multiple recipients with a custom subject.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
