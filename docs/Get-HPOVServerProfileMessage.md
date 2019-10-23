<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVServerProfileMessage
<p>
Display Server Profile alert messages.

### SYNTAX
<p>
<pre><code>Get-HPOVServerProfileMessage [-ServerProfile] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to display alert or other activity messages that are not tracked as Alerts or Tasks.  For instance, failed Connection will be reported as a Server Profile Message.  Firmware update status (using HPSUT) wil be displayed as messages.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfile &lt;Object&gt;<p>
The Server Profile resource object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

 Server Profile resource object from Get-HPOVServerProfile



### Return Values

_**HPOneView.ServerProfileMessage [System.Management.Automation.PSCustomObject]**_

 

Server Profile message object.

 _**System.Collections.ArrayList &lt;HPOneView.ServerProfileMessage&gt;**_

 

Server Profile message object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile MyProfile | Get-HPOVServerProfileMessage
</pre>
Display the Server Profile messages for the provided resource.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVServerProfileMessage
<p>
Display Server Profile alert messages.

### SYNTAX
<p>
<pre><code>Get-HPOVServerProfileMessage [-ServerProfile] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to display alert or other activity messages that are not tracked as Alerts or Tasks.  For instance, failed Connection will be reported as a Server Profile Message.  Firmware update status (using HPSUT) wil be displayed as messages.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfile &lt;Object&gt;<p>
The Server Profile resource object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

 Server Profile resource object from Get-HPOVServerProfile



### Return Values

_**HPOneView.ServerProfileMessage [System.Management.Automation.PSCustomObject]**_

 

Server Profile message object.

 _**System.Collections.ArrayList &lt;HPOneView.ServerProfileMessage&gt;**_

 

Server Profile message object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile MyProfile | Get-HPOVServerProfileMessage
</pre>
Display the Server Profile messages for the provided resource.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVServerProfileMessage
<p>
Display Server Profile alert messages.

### SYNTAX
<p>
<pre><code>Get-HPOVServerProfileMessage [-ServerProfile] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to display alert or other activity messages that are not tracked as Alerts or Tasks.  For instance, failed Connection will be reported as a Server Profile Message.  Firmware update status (using HPSUT) wil be displayed as messages.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfile &lt;Object&gt;<p>
The Server Profile resource object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

 Server Profile resource object from Get-HPOVServerProfile



### Return Values

_**HPOneView.ServerProfileMessage [System.Management.Automation.PSCustomObject]**_

 

Server Profile message object.

 _**System.Collections.ArrayList &lt;HPOneView.ServerProfileMessage&gt;**_

 

Server Profile message object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile MyProfile | Get-HPOVServerProfileMessage
</pre>
Display the Server Profile messages for the provided resource.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
