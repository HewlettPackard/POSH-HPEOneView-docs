<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVApplianceAuditLogForwarding
<p>
Modify remote Syslog audit log forwarding.

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceAuditLogForwarding[ [-Enable] &lt;SwitchParameter&gt;] [-ComputerName] &lt;string[]&gt;[ [-Port] &lt;int&gt;][ [-RemoveComputerName] &lt;string[]&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVApplianceAuditLogForwarding [-Disable] &lt;SwitchParameter&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView can forward the internal audit log entries to a remote syslog server, in standard Syslog format.  This cmdlet will chnage the current status, remote Syslog destination and port to be configured on the appliance.

Required permissions: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ComputerName &lt;string[]&gt;<p>
The target remote Syslog server IP Address or FQDN.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disable &lt;SwitchParameter&gt;<p>
Using this parameter will disable remote Syslog audit log forwarding on the specified appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enable &lt;SwitchParameter&gt;<p>
Using this parameter will enable remote Syslog audit log forwarding on the specified appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;int&gt;<p>
The target remote Syslog server port if not using the default 514/UDP port.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RemoveComputerName &lt;string[]&gt;<p>
Specify one or more remote Syslog server IP Address or FQDN to remove from the configuration.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AuditLogForwardingConfig**_

 

The appliance audit log forwarding configuration.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVApplianceAuditLogForwarding -Enable -ComputerName MyTargetHost1.domain.com
</pre>
Enable appliance remote Syslog audit log forwarding to the specified host.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVApplianceAuditLogForwarding -Enable -ComputerName MyTargetHost1.domain.com, MyTargetHost2.domain.com -Port 5514
</pre>
Enable appliance remote Syslog audit log forwarding to the specified hosts and custom UDP target port.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Set-HPOVApplianceAuditLogForwarding -RemoveComputerName MyTargetHost2.domain.com
</pre>
Remove the specified host from the existing remote Syslog audit log forwarding configuration.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Set-HPOVApplianceAuditLogForwarding -Disable
</pre>
Disable remote Syslog audit log forwarding configuration.



### Related Links

* [Get-HPOVApplianceAuditLogForwarding](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceAuditLogForwarding)
* [Test-HPOVApplianceAuditLogForwarding](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Test-HPOVApplianceAuditLogForwarding)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVApplianceAuditLogForwarding
<p>
Modify remote Syslog audit log forwarding.

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceAuditLogForwarding[ [-Enable] &lt;SwitchParameter&gt;] [-ComputerName] &lt;string[]&gt;[ [-Port] &lt;int&gt;][ [-RemoveComputerName] &lt;string[]&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVApplianceAuditLogForwarding [-Disable] &lt;SwitchParameter&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView can forward the internal audit log entries to a remote syslog server, in standard Syslog format.  This cmdlet will chnage the current status, remote Syslog destination and port to be configured on the appliance.

Required permissions: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ComputerName &lt;string[]&gt;<p>
The target remote Syslog server IP Address or FQDN.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disable &lt;SwitchParameter&gt;<p>
Using this parameter will disable remote Syslog audit log forwarding on the specified appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enable &lt;SwitchParameter&gt;<p>
Using this parameter will enable remote Syslog audit log forwarding on the specified appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;int&gt;<p>
The target remote Syslog server port if not using the default 514/UDP port.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RemoveComputerName &lt;string[]&gt;<p>
Specify one or more remote Syslog server IP Address or FQDN to remove from the configuration.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AuditLogForwardingConfig**_

 

The appliance audit log forwarding configuration.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVApplianceAuditLogForwarding -Enable -ComputerName MyTargetHost1.domain.com
</pre>
Enable appliance remote Syslog audit log forwarding to the specified host.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVApplianceAuditLogForwarding -Enable -ComputerName MyTargetHost1.domain.com, MyTargetHost2.domain.com -Port 5514
</pre>
Enable appliance remote Syslog audit log forwarding to the specified hosts and custom UDP target port.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Set-HPOVApplianceAuditLogForwarding -RemoveComputerName MyTargetHost2.domain.com
</pre>
Remove the specified host from the existing remote Syslog audit log forwarding configuration.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Set-HPOVApplianceAuditLogForwarding -Disable
</pre>
Disable remote Syslog audit log forwarding configuration.



### Related Links

* [Get-HPOVApplianceAuditLogForwarding](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceAuditLogForwarding)
* [Test-HPOVApplianceAuditLogForwarding](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Test-HPOVApplianceAuditLogForwarding)


***
<div align=right><a href="#Top">Top</a></div>
