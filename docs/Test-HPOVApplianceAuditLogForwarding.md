<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Test-HPOVApplianceAuditLogForwarding
<p>
Generate test audit log forward message.

### SYNTAX
<p>
<pre><code>Test-HPOVApplianceAuditLogForwarding[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will generate a syslog message to test connectivity to the appliance configured remote Syslog server.

Required permissions: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 


### Return Values



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Test-HPOVApplianceAuditLogForwarding
</pre>
Generate audit log test message.



### Related Links

* [Get-HPOVApplianceAuditLogForwarding](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceAuditLogForwarding)
* [Set-HPOVApplianceAuditLogForwarding](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceAuditLogForwarding)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Test-HPOVApplianceAuditLogForwarding
<p>
Generate test audit log forward message.

### SYNTAX
<p>
<pre><code>Test-HPOVApplianceAuditLogForwarding[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will generate a syslog message to test connectivity to the appliance configured remote Syslog server.

Required permissions: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 


### Return Values



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Test-HPOVApplianceAuditLogForwarding
</pre>
Generate audit log test message.



### Related Links

* [Get-HPOVApplianceAuditLogForwarding](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceAuditLogForwarding)
* [Set-HPOVApplianceAuditLogForwarding](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceAuditLogForwarding)


***
<div align=right><a href="#Top">Top</a></div>
