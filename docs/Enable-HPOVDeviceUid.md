<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Enable-HPOVDeviceUid
<p>
Enable UID of a device.

### SYNTAX
<p>
<pre><code>Enable-HPOVDeviceUid [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will enable the UID of a managed or monitored resource, and only supports objects.  Use Get-HPOVServer or Get-HPOVEnclosure to retrieve the required resource(s), which can be passed via the pipeline.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Server, -Enclosure, -Frame]
Resource object to turn on the UID.  Supported resources are Server Hardware and Enclosures.

<table><tbody><tr><td>Aliases</td><td>Server, Enclosure, Frame, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject] or HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Server Hardware or Enclosure resource.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

If successful, returns Appliance Async Task object to monitor.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of Appliance Async Task objects to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer "MyEncl, Bay 1" | Enable-HPOVDeviceUid | Wait-HPOVTaskComplete
</pre>
Enable the UID for "MyEncl, Bay 1" server.



### Related Links

* [Disable-HPOVDeviceUid](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVDeviceUid)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Enable-HPOVDeviceUid
<p>
Enable UID of a device.

### SYNTAX
<p>
<pre><code>Enable-HPOVDeviceUid [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will enable the UID of a managed or monitored resource, and only supports objects.  Use Get-HPOVServer or Get-HPOVEnclosure to retrieve the required resource(s), which can be passed via the pipeline.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Server, -Enclosure, -Frame]
Resource object to turn on the UID.  Supported resources are Server Hardware and Enclosures.

<table><tbody><tr><td>Aliases</td><td>Server, Enclosure, Frame, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject] or HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Server Hardware or Enclosure resource.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

If successful, returns Appliance Async Task object to monitor.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of Appliance Async Task objects to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer "MyEncl, Bay 1" | Enable-HPOVDeviceUid | Wait-HPOVTaskComplete
</pre>
Enable the UID for "MyEncl, Bay 1" server.



### Related Links

* [Disable-HPOVDeviceUid](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVDeviceUid)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Enable-HPOVDeviceUid
<p>
Enable UID of a device.

### SYNTAX
<p>
<pre><code>Enable-HPOVDeviceUid [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will enable the UID of a managed or monitored resource, and only supports objects.  Use Get-HPOVServer or Get-HPOVEnclosure to retrieve the required resource(s), which can be passed via the pipeline.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Server, -Enclosure, -Frame]
Resource object to turn on the UID.  Supported resources are Server Hardware and Enclosures.

<table><tbody><tr><td>Aliases</td><td>Server, Enclosure, Frame, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject] or HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Server Hardware or Enclosure resource.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

If successful, returns Appliance Async Task object to monitor.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of Appliance Async Task objects to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer "MyEncl, Bay 1" | Enable-HPOVDeviceUid | Wait-HPOVTaskComplete
</pre>
Enable the UID for "MyEncl, Bay 1" server.



### Related Links

* [Disable-HPOVDeviceUid](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVDeviceUid)


***
<div align=right><a href="#Top">Top</a></div>
