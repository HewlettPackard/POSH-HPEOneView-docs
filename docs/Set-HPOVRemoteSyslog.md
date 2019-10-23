<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVRemoteSyslog
<p>
Configure remote syslog.

### SYNTAX
<p>
<pre><code>Set-HPOVRemoteSyslog [-Destination] &lt;IPAddress&gt; [-Port] &lt;Int32&gt;[ [-SendTestMessage] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView.  This Cmdlet handles setting or updating the remote syslog configuration.  Only a single destination can be set.  When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Destination &lt;IPAddress&gt;<p>
Destination IPv4 Address of the Remote SysLog.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int32&gt;<p>
The destination TCP port.

Default value: 514

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>514</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SendTestMessage &lt;SwitchParameter&gt;<p>
Use to generate a syslog test message after the managed endpoint has finished configuring.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 


### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

If successful, returns Appliance Async Task object to monitor

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of Appliance Async Task objects to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVRemoteSyslog -Destination 10.150.20.1 -SendTestMessage -Async | Wait-HPOVTaskComplete
</pre>
Set the remote syslog to the provided destination, using the default destination TCP port, and send a test message for all connected appliances.



### Related Links

* [Disable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSyslog)
* [Enable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSyslog)
* [Get-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSyslog)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVRemoteSyslog
<p>
Configure remote syslog.

### SYNTAX
<p>
<pre><code>Set-HPOVRemoteSyslog [-Destination] &lt;IPAddress&gt; [-Port] &lt;Int32&gt;[ [-SendTestMessage] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView.  This Cmdlet handles setting or updating the remote syslog configuration.  Only a single destination can be set.  When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Destination &lt;IPAddress&gt;<p>
Destination IPv4 Address of the Remote SysLog.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int32&gt;<p>
The destination TCP port.

Default value: 514

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>514</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SendTestMessage &lt;SwitchParameter&gt;<p>
Use to generate a syslog test message after the managed endpoint has finished configuring.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 


### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

If successful, returns Appliance Async Task object to monitor

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of Appliance Async Task objects to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVRemoteSyslog -Destination 10.150.20.1 -SendTestMessage -Async | Wait-HPOVTaskComplete
</pre>
Set the remote syslog to the provided destination, using the default destination TCP port, and send a test message for all connected appliances.



### Related Links

* [Disable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSyslog)
* [Enable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSyslog)
* [Get-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSyslog)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVRemoteSyslog
<p>
Configure remote syslog.

### SYNTAX
<p>
<pre><code>Set-HPOVRemoteSyslog [-Destination] &lt;IPAddress&gt; [-Port] &lt;Int32&gt;[ [-SendTestMessage] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView.  This Cmdlet handles setting or updating the remote syslog configuration.  Only a single destination can be set.  When configured, the HPE OneView appliance will deploy the SysLog settings to managed resources automatically.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Destination &lt;IPAddress&gt;<p>
Destination IPv4 Address of the Remote SysLog.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int32&gt;<p>
The destination TCP port.

Default value: 514

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>514</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SendTestMessage &lt;SwitchParameter&gt;<p>
Use to generate a syslog test message after the managed endpoint has finished configuring.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 


### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

If successful, returns Appliance Async Task object to monitor

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of Appliance Async Task objects to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVRemoteSyslog -Destination 10.150.20.1 -SendTestMessage -Async | Wait-HPOVTaskComplete
</pre>
Set the remote syslog to the provided destination, using the default destination TCP port, and send a test message for all connected appliances.



### Related Links

* [Disable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSyslog)
* [Enable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSyslog)
* [Get-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSyslog)


***
<div align=right><a href="#Top">Top</a></div>
