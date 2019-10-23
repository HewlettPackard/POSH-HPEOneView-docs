<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Wait-HPOVTaskComplete
<p>
Wait for a task to complete.

### SYNTAX
<p>
<pre><code>Wait-HPOVTaskComplete [-InputObject] &lt;Object&gt; [-Timeout] &lt;TimeSpan&gt; [-ApplianceConnection] &lt;Object&gt;[ [-ApplianceWillReboot] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView utilizes a task subsystem for operations that will take longer than 200ms, and will execute them Asyncrounously.  An async task resource object is created and returned to the caller once the request has passed validation.

This blocking cmdlet assists a caller with monitoring a specific task resource, and will wait for the given task to "complete" (get to a terminal state, including error) or timeout.  The cmdlet accepts either the task URI or resource object via pipeline.  

Once the task is no longer in a running state, the cmlet will return the task resource object.  The caller should examine the taskState property/key for the final task status.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceWillReboot &lt;SwitchParameter&gt;<p>
Internal use t indicate if a task will cause appliance to reboot.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-TaskUri, -Task]
The uri of the task resource to wait for.

<table><tbody><tr><td>Aliases</td><td>TaskUri, Task</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Timeout &lt;TimeSpan&gt;<p>
The timespan to wait for the task to complete.  Default is to wait for 20 minutes.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>$DefaultTimeout</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Task URI

 _**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 Task resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The finished Task object that includes the task result



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Wait-HPOVTaskComplete /rest/tasks/F08EE040-DBA7-4806-BB62-993DD0CB4250
Waiting for task to complete...Task completed successfully!

</pre>
Wait for task to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Wait-HPOVTaskComplete $task -timeout (New-TimeSpan -minute 10)
Waiting for task to complete...Task completed successfully!

</pre>
Wait for task to complete, modifying the default timeout to 10 minutes.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$svr = Get-HPOVServer "ServerA"
$taskResults = New-HPOVServerProfile -name "Profile 1" -server $svr | Wait-HPOVTaskComplete

</pre>
Retreive the server details for ServerA, create a Server Profile and pass via pipeline the task resource object.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Wait-HPOVTaskComplete
<p>
Wait for a task to complete.

### SYNTAX
<p>
<pre><code>Wait-HPOVTaskComplete [-InputObject] &lt;Object&gt; [-Timeout] &lt;TimeSpan&gt; [-ApplianceConnection] &lt;Object&gt;[ [-ApplianceWillReboot] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView utilizes a task subsystem for operations that will take longer than 200ms, and will execute them Asyncrounously.  An async task resource object is created and returned to the caller once the request has passed validation.

This blocking cmdlet assists a caller with monitoring a specific task resource, and will wait for the given task to "complete" (get to a terminal state, including error) or timeout.  The cmdlet accepts either the task URI or resource object via pipeline.  

Once the task is no longer in a running state, the cmlet will return the task resource object.  The caller should examine the taskState property/key for the final task status.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceWillReboot &lt;SwitchParameter&gt;<p>
Internal use t indicate if a task will cause appliance to reboot.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-TaskUri, -Task]
The uri of the task resource to wait for.

<table><tbody><tr><td>Aliases</td><td>TaskUri, Task</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Timeout &lt;TimeSpan&gt;<p>
The timespan to wait for the task to complete.  Default is to wait for 20 minutes.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>$DefaultTimeout</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Task URI

 _**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 Task resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The finished Task object that includes the task result



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Wait-HPOVTaskComplete /rest/tasks/F08EE040-DBA7-4806-BB62-993DD0CB4250
Waiting for task to complete...Task completed successfully!

</pre>
Wait for task to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Wait-HPOVTaskComplete $task -timeout (New-TimeSpan -minute 10)
Waiting for task to complete...Task completed successfully!

</pre>
Wait for task to complete, modifying the default timeout to 10 minutes.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$svr = Get-HPOVServer "ServerA"
$taskResults = New-HPOVServerProfile -name "Profile 1" -server $svr | Wait-HPOVTaskComplete

</pre>
Retreive the server details for ServerA, create a Server Profile and pass via pipeline the task resource object.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Wait-HPOVTaskComplete
<p>
Wait for a task to complete.

### SYNTAX
<p>
<pre><code>Wait-HPOVTaskComplete [-InputObject] &lt;Object&gt; [-Timeout] &lt;TimeSpan&gt; [-ApplianceConnection] &lt;Object&gt;[ [-ApplianceWillReboot] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView utilizes a task subsystem for operations that will take longer than 200ms, and will execute them Asyncrounously.  An async task resource object is created and returned to the caller once the request has passed validation.

This blocking cmdlet assists a caller with monitoring a specific task resource, and will wait for the given task to "complete" (get to a terminal state, including error) or timeout.  The cmdlet accepts either the task URI or resource object via pipeline.  

Once the task is no longer in a running state, the cmlet will return the task resource object.  The caller should examine the taskState property/key for the final task status.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceWillReboot &lt;SwitchParameter&gt;<p>
Internal use t indicate if a task will cause appliance to reboot.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-TaskUri, -Task]
The uri of the task resource to wait for.

<table><tbody><tr><td>Aliases</td><td>TaskUri, Task</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Timeout &lt;TimeSpan&gt;<p>
The timespan to wait for the task to complete.  Default is to wait for 20 minutes.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>$DefaultTimeout</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Task URI

 _**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 Task resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The finished Task object that includes the task result



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Wait-HPOVTaskComplete /rest/tasks/F08EE040-DBA7-4806-BB62-993DD0CB4250
Waiting for task to complete...Task completed successfully!

</pre>
Wait for task to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Wait-HPOVTaskComplete $task -timeout (New-TimeSpan -minute 10)
Waiting for task to complete...Task completed successfully!

</pre>
Wait for task to complete, modifying the default timeout to 10 minutes.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$svr = Get-HPOVServer "ServerA"
$taskResults = New-HPOVServerProfile -name "Profile 1" -server $svr | Wait-HPOVTaskComplete

</pre>
Retreive the server details for ServerA, create a Server Profile and pass via pipeline the task resource object.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
