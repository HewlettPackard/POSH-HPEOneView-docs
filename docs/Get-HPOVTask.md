<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVTask
<p>
Retrieve Task resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVTask[ [-Name] &lt;String&gt;][ [-InputObject] &lt;Object&gt;][ [-State] &lt;String&gt;][ [-Count] &lt;Int32&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVTask[ [-Name] &lt;String&gt;][ [-ResourceCategory] &lt;String&gt;][ [-State] &lt;String&gt;][ [-Count] &lt;Int32&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of task resources which have the specified name and/or state.  The returned data will include the task name, owner, state and status.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;Int32&gt;<p>
Specify the maximum amount of task objects to return.  0 will return all found task objects.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Related resource Name or Object to the task. To be used for filtering tasks specific to a resource object (i.e. Server Profile).

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-TaskName]
The name of the task resource to be returned.  All names will match if omitted.

<table><tbody><tr><td>Aliases</td><td>TaskName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ResourceCategory &lt;String&gt;<p>
Aliases [-Category]
Specify the Resource Category to filter task results to.  Cannot be combined with Resource parameter.

Some examples are:

	* ethernet-networks
	* fc-networks
	* power-devices
	* unmanaged-devices
	* server-profiles
	* server-hardware
	* enclosures
	* enclosure-groups
	* interconnects
	* logical-interconnects
	* logical-interconnect-groups
	* appliance
	* firmware-drivers

<table><tbody><tr><td>Aliases</td><td>Category</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -State &lt;String&gt;<p>
The state of the task resource a to be returned. May be one of the following strings:
            
	* Unknown
	* New
	* Running
	* Suspended
	* Terminated
	* Killed
	* Completed
	* Error
	* Warning
	
All states will match if omitted.  All tasks will be returned if both names and state are omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject ]**_

 Resource Object to retrieve task resources of



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Single Task resource

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple Task resources or formatted table list of tasks

 _**The matching task resources.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$tasks = Get-HPOVTask -state Error
</pre>
Return all the tasks with a taskState="Error"


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServerProfile -Name "Server 1" | Get-HPOVTask -State Completed
</pre>
Return completed (successful) tasks associated with the "Server 1" Server Profile.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVTask -count 10
</pre>
Display the 10 most recent tasks from the specified appliance connection.



### Related Links

* [Wait-HPOVTaskComplete](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Wait-HPOVTaskComplete)
* [Wait-HPOVTaskStart](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Wait-HPOVTaskStart)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVTask
<p>
Retrieve Task resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVTask[ [-Name] &lt;String&gt;][ [-InputObject] &lt;Object&gt;][ [-State] &lt;String&gt;][ [-Count] &lt;Int32&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVTask[ [-Name] &lt;String&gt;][ [-ResourceCategory] &lt;String&gt;][ [-State] &lt;String&gt;][ [-Count] &lt;Int32&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of task resources which have the specified name and/or state.  The returned data will include the task name, owner, state and status.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;Int32&gt;<p>
Specify the maximum amount of task objects to return.  0 will return all found task objects.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Related resource Name or Object to the task. To be used for filtering tasks specific to a resource object (i.e. Server Profile).

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-TaskName]
The name of the task resource to be returned.  All names will match if omitted.

<table><tbody><tr><td>Aliases</td><td>TaskName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ResourceCategory &lt;String&gt;<p>
Aliases [-Category]
Specify the Resource Category to filter task results to.  Cannot be combined with Resource parameter.

Some examples are:

	* ethernet-networks
	* fc-networks
	* power-devices
	* unmanaged-devices
	* server-profiles
	* server-hardware
	* enclosures
	* enclosure-groups
	* interconnects
	* logical-interconnects
	* logical-interconnect-groups
	* appliance
	* firmware-drivers

<table><tbody><tr><td>Aliases</td><td>Category</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -State &lt;String&gt;<p>
The state of the task resource a to be returned. May be one of the following strings:
            
	* Unknown
	* New
	* Running
	* Suspended
	* Terminated
	* Killed
	* Completed
	* Error
	* Warning
	
All states will match if omitted.  All tasks will be returned if both names and state are omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject ]**_

 Resource Object to retrieve task resources of



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Single Task resource

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple Task resources or formatted table list of tasks

 _**The matching task resources.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$tasks = Get-HPOVTask -state Error
</pre>
Return all the tasks with a taskState="Error"


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServerProfile -Name "Server 1" | Get-HPOVTask -State Completed
</pre>
Return completed (successful) tasks associated with the "Server 1" Server Profile.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVTask -count 10
</pre>
Display the 10 most recent tasks from the specified appliance connection.



### Related Links

* [Wait-HPOVTaskComplete](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Wait-HPOVTaskComplete)
* [Wait-HPOVTaskStart](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Wait-HPOVTaskStart)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVTask
<p>
Retrieve Task resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVTask[ [-Name] &lt;String&gt;][ [-InputObject] &lt;Object&gt;][ [-State] &lt;String&gt;][ [-Count] &lt;Int32&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVTask[ [-Name] &lt;String&gt;][ [-ResourceCategory] &lt;String&gt;][ [-State] &lt;String&gt;][ [-Count] &lt;Int32&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of task resources which have the specified name and/or state.  The returned data will include the task name, owner, state and status.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;Int32&gt;<p>
Specify the maximum amount of task objects to return.  0 will return all found task objects.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Related resource Name or Object to the task. To be used for filtering tasks specific to a resource object (i.e. Server Profile).

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-TaskName]
The name of the task resource to be returned.  All names will match if omitted.

<table><tbody><tr><td>Aliases</td><td>TaskName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ResourceCategory &lt;String&gt;<p>
Aliases [-Category]
Specify the Resource Category to filter task results to.  Cannot be combined with Resource parameter.

Some examples are:

	* ethernet-networks
	* fc-networks
	* power-devices
	* unmanaged-devices
	* server-profiles
	* server-hardware
	* enclosures
	* enclosure-groups
	* interconnects
	* logical-interconnects
	* logical-interconnect-groups
	* appliance
	* firmware-drivers

<table><tbody><tr><td>Aliases</td><td>Category</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -State &lt;String&gt;<p>
The state of the task resource a to be returned. May be one of the following strings:
            
	* Unknown
	* New
	* Running
	* Suspended
	* Terminated
	* Killed
	* Completed
	* Error
	* Warning
	
All states will match if omitted.  All tasks will be returned if both names and state are omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject ]**_

 Resource Object to retrieve task resources of



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Single Task resource

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple Task resources or formatted table list of tasks

 _**The matching task resources.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$tasks = Get-HPOVTask -state Error
</pre>
Return all the tasks with a taskState="Error"


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServerProfile -Name "Server 1" | Get-HPOVTask -State Completed
</pre>
Return completed (successful) tasks associated with the "Server 1" Server Profile.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVTask -count 10
</pre>
Display the 10 most recent tasks from the specified appliance connection.



### Related Links

* [Wait-HPOVTaskComplete](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Wait-HPOVTaskComplete)
* [Wait-HPOVTaskStart](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Wait-HPOVTaskStart)


***
<div align=right><a href="#Top">Top</a></div>
