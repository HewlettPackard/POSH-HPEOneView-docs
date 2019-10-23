<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVAuditLog
<p>
Get appliance audit log entries.

### SYNTAX
<p>
<pre><code>Get-HPOVAuditLog [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVAuditLog[ [-Count] &lt;Int&gt;][ [-TimeSpan] &lt;Timespan&gt;][ [-Start] &lt;DateTime&gt;][ [-End] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Using this CMDLET will retrive the appliance Audit Log enteries and display them to the console.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;Int&gt;<p>
Specify the number of audit log entries to return.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -End &lt;Object&gt;<p>
Specify the End datetime object to begin the serach.  Should be combined with Start parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>[DateTime]::Now</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;DateTime&gt;<p>
Specify the Start datetime object to begin the serach.  Can be combined with End parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TimeSpan &lt;Timespan&gt;<p>
Specify the time span of to filter results on.  Cannot be combined with Start or End.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AuditLogEntry [System.Management.Automation.PSCustomObject]**_

 

Single Appliance Audit Log Entry

 _**System.Collections.ArrayList**_

 

Multiple  Appliance Audit Log Entries



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAuditLog
Appliance : hpov.mydomain.com
Date      : 2015-10-05 18:14:17.679 UTC
Source    : AUTHENTICATION
Action    : LOGIN
Result    : SUCCESS
Severity  : INFO
Details   : Login Message Acknowledgment is "false".
Source IP : 172.20.253.1

Appliance : hpov.mydomain.com
Date      : 2015-10-05 18:14:17.761 UTC
Source    : AUTHENTICATION
Action    : LOGIN
Result    : SUCCESS
Severity  : INFO
Details   : Authentication SUCCESS. User "Administrator" logged in successfully from client "172.20.253.1" and
			directory "LOCAL" on server "". [logID:LTY4ODgyMTcyMTMz]
Source IP : 172.20.253.1

Appliance : hpov.mydomain.com
Date      : 2015-10-05 20:51:45.754 UTC
Source    : firmware-drivers
Action    : ADD
Result    : SUCCESS
Severity  : INFO
Details   : Add firmware bundle /rest/firmware-drivers/CP026527
</pre>
Return the audit logs from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAuditLog -Start ([DateTime]::Now).AddDays("-5")</pre>
Return the audit logs from the appliance from 5 days ago from today.



### Related Links

* [Get-HPOVAuditLogArchive](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAuditLogArchive)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVAuditLog
<p>
Get appliance audit log entries.

### SYNTAX
<p>
<pre><code>Get-HPOVAuditLog [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVAuditLog[ [-Count] &lt;Int&gt;][ [-TimeSpan] &lt;Timespan&gt;][ [-Start] &lt;DateTime&gt;][ [-End] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Using this CMDLET will retrive the appliance Audit Log enteries and display them to the console.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;Int&gt;<p>
Specify the number of audit log entries to return.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -End &lt;Object&gt;<p>
Specify the End datetime object to begin the serach.  Should be combined with Start parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>[DateTime]::Now</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;DateTime&gt;<p>
Specify the Start datetime object to begin the serach.  Can be combined with End parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TimeSpan &lt;Timespan&gt;<p>
Specify the time span of to filter results on.  Cannot be combined with Start or End.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AuditLogEntry [System.Management.Automation.PSCustomObject]**_

 

Single Appliance Audit Log Entry

 _**System.Collections.ArrayList**_

 

Multiple  Appliance Audit Log Entries



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAuditLog
Appliance : hpov.mydomain.com
Date      : 2015-10-05 18:14:17.679 UTC
Source    : AUTHENTICATION
Action    : LOGIN
Result    : SUCCESS
Severity  : INFO
Details   : Login Message Acknowledgment is "false".
Source IP : 172.20.253.1

Appliance : hpov.mydomain.com
Date      : 2015-10-05 18:14:17.761 UTC
Source    : AUTHENTICATION
Action    : LOGIN
Result    : SUCCESS
Severity  : INFO
Details   : Authentication SUCCESS. User "Administrator" logged in successfully from client "172.20.253.1" and
			directory "LOCAL" on server "". [logID:LTY4ODgyMTcyMTMz]
Source IP : 172.20.253.1

Appliance : hpov.mydomain.com
Date      : 2015-10-05 20:51:45.754 UTC
Source    : firmware-drivers
Action    : ADD
Result    : SUCCESS
Severity  : INFO
Details   : Add firmware bundle /rest/firmware-drivers/CP026527
</pre>
Return the audit logs from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAuditLog -Start ([DateTime]::Now).AddDays("-5")</pre>
Return the audit logs from the appliance from 5 days ago from today.



### Related Links

* [Get-HPOVAuditLogArchive](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAuditLogArchive)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVAuditLog
<p>
Get appliance audit log entries.

### SYNTAX
<p>
<pre><code>Get-HPOVAuditLog [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVAuditLog[ [-Count] &lt;Int&gt;][ [-TimeSpan] &lt;Timespan&gt;][ [-Start] &lt;DateTime&gt;][ [-End] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Using this CMDLET will retrive the appliance Audit Log enteries and display them to the console.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;Int&gt;<p>
Specify the number of audit log entries to return.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -End &lt;Object&gt;<p>
Specify the End datetime object to begin the serach.  Should be combined with Start parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>[DateTime]::Now</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;DateTime&gt;<p>
Specify the Start datetime object to begin the serach.  Can be combined with End parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TimeSpan &lt;Timespan&gt;<p>
Specify the time span of to filter results on.  Cannot be combined with Start or End.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AuditLogEntry [System.Management.Automation.PSCustomObject]**_

 

Single Appliance Audit Log Entry

 _**System.Collections.ArrayList**_

 

Multiple  Appliance Audit Log Entries



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAuditLog
Appliance : hpov.mydomain.com
Date      : 2015-10-05 18:14:17.679 UTC
Source    : AUTHENTICATION
Action    : LOGIN
Result    : SUCCESS
Severity  : INFO
Details   : Login Message Acknowledgment is "false".
Source IP : 172.20.253.1

Appliance : hpov.mydomain.com
Date      : 2015-10-05 18:14:17.761 UTC
Source    : AUTHENTICATION
Action    : LOGIN
Result    : SUCCESS
Severity  : INFO
Details   : Authentication SUCCESS. User "Administrator" logged in successfully from client "172.20.253.1" and
			directory "LOCAL" on server "". [logID:LTY4ODgyMTcyMTMz]
Source IP : 172.20.253.1

Appliance : hpov.mydomain.com
Date      : 2015-10-05 20:51:45.754 UTC
Source    : firmware-drivers
Action    : ADD
Result    : SUCCESS
Severity  : INFO
Details   : Add firmware bundle /rest/firmware-drivers/CP026527
</pre>
Return the audit logs from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAuditLog -Start ([DateTime]::Now).AddDays("-5")</pre>
Return the audit logs from the appliance from 5 days ago from today.



### Related Links

* [Get-HPOVAuditLogArchive](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAuditLogArchive)


***
<div align=right><a href="#Top">Top</a></div>
