<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Enable-HPOVRemoteSyslog
<p>
Enable remote syslog.

### SYNTAX
<p>
<pre><code>Enable-HPOVRemoteSyslog[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView.  This Cmdlet handles enabling the remote syslog configuration.  Only a single destination can be set.  When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

If successful, returns Appliance Async Task object to monitor.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of Appliance Async Task objects to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Enable-HPOVRemoteSyslog
</pre>
Enable remote syslog configuration on all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Enable-HPOVRemoteSyslog -ApplianceConnection appliance1.domain.com -Async | Wait-HPOVTaskComplete
</pre>
Enable remote syslog configuration on the specific connected appliance.



### Related Links

* [Disable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSyslog)
* [Get-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSyslog)
* [Set-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSyslog)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Enable-HPOVRemoteSyslog
<p>
Enable remote syslog.

### SYNTAX
<p>
<pre><code>Enable-HPOVRemoteSyslog[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView.  This Cmdlet handles enabling the remote syslog configuration.  Only a single destination can be set.  When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

If successful, returns Appliance Async Task object to monitor.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of Appliance Async Task objects to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Enable-HPOVRemoteSyslog
</pre>
Enable remote syslog configuration on all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Enable-HPOVRemoteSyslog -ApplianceConnection appliance1.domain.com -Async | Wait-HPOVTaskComplete
</pre>
Enable remote syslog configuration on the specific connected appliance.



### Related Links

* [Disable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSyslog)
* [Get-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSyslog)
* [Set-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSyslog)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Enable-HPOVRemoteSyslog
<p>
Enable remote syslog.

### SYNTAX
<p>
<pre><code>Enable-HPOVRemoteSyslog[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView.  This Cmdlet handles enabling the remote syslog configuration.  Only a single destination can be set.  When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>false</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

If successful, returns Appliance Async Task object to monitor.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of Appliance Async Task objects to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Enable-HPOVRemoteSyslog
</pre>
Enable remote syslog configuration on all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Enable-HPOVRemoteSyslog -ApplianceConnection appliance1.domain.com -Async | Wait-HPOVTaskComplete
</pre>
Enable remote syslog configuration on the specific connected appliance.



### Related Links

* [Disable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSyslog)
* [Get-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSyslog)
* [Set-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSyslog)


***
<div align=right><a href="#Top">Top</a></div>
