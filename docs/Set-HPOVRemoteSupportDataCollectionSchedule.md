<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVRemoteSupportDataCollectionSchedule
<p>
Modify Remote Support Schedule settings on an appliance.

### SYNTAX
<p>
<pre><code>Set-HPOVRemoteSupportDataCollectionSchedule [-DateTime] &lt;DateTime&gt;[ [-Type] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to set a new schedule to collect Remote Support logs.  There are two defined schedules: Active Health scheduled on a weekly basis, and Server Basic Configuration scheduled on a monthly basis.  Either scheduled collection task can be modified, to set the Day of Week, Day of Month, Hour and Minute.
When supplying a DateTime value, the Day will be converted to the Day of Month, and Day of the Week respectively.  For instance, if "Oct 30, 2016 13:00" is provided, Day of Month will be every "30th" day, and Day of Week will be every "Sunday" (which Oct 30th 2016 is a Sunday).
To schedule different Day of the Month and Day of the Week, use the -Type paramter to specify AHS or Basic.  The -DateTime paramter value will only be applied to that schedule.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DateTime &lt;DateTime&gt;<p>
Specify a DateTime value for the schedule to execute.  AHS schedule is executed on a weekly basis, and Server Basic Configuration is executed on a monthly basis.  When needing to configure a schedule for AHS log collection, the Month Day"s week day name will be used.  For instance, if "Oct 30, 2016" is provided and scheduling for AHS log collection, the task will execute every Sunday, which October 30th 2016 is on a Sunday.  When providing the hour of the day to execute, the value must be in 24hr time.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify the schedule type to modify.  Allowed value is:
	* AHS
	*Basic
If no value is provided, both schedules will be modified.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for modifying the Remote Support Collection schedules.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVRemoteSupportDataCollectionSchedule -DateTime "11/01/2016 20:00"
</pre>
Set a new Remote Support schedule for November 11, 2016, which is a Monday, at 20:00 (8:00pm).


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVRemoteSupportDataCollectionSchedule -Type AHS -DateTime "11/01/2016 20:00"
</pre>
Set a new schedule to collect AHS logs every Monday of every week, at 20:00 (8:00pm).



### Related Links

* [Get-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDataCollectionSchedule)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVRemoteSupportDataCollectionSchedule
<p>
Modify Remote Support Schedule settings on an appliance.

### SYNTAX
<p>
<pre><code>Set-HPOVRemoteSupportDataCollectionSchedule [-DateTime] &lt;DateTime&gt;[ [-Type] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to set a new schedule to collect Remote Support logs.  There are two defined schedules: Active Health scheduled on a weekly basis, and Server Basic Configuration scheduled on a monthly basis.  Either scheduled collection task can be modified, to set the Day of Week, Day of Month, Hour and Minute.
When supplying a DateTime value, the Day will be converted to the Day of Month, and Day of the Week respectively.  For instance, if "Oct 30, 2016 13:00" is provided, Day of Month will be every "30th" day, and Day of Week will be every "Sunday" (which Oct 30th 2016 is a Sunday).
To schedule different Day of the Month and Day of the Week, use the -Type paramter to specify AHS or Basic.  The -DateTime paramter value will only be applied to that schedule.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DateTime &lt;DateTime&gt;<p>
Specify a DateTime value for the schedule to execute.  AHS schedule is executed on a weekly basis, and Server Basic Configuration is executed on a monthly basis.  When needing to configure a schedule for AHS log collection, the Month Day"s week day name will be used.  For instance, if "Oct 30, 2016" is provided and scheduling for AHS log collection, the task will execute every Sunday, which October 30th 2016 is on a Sunday.  When providing the hour of the day to execute, the value must be in 24hr time.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify the schedule type to modify.  Allowed value is:
	* AHS
	*Basic
If no value is provided, both schedules will be modified.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for modifying the Remote Support Collection schedules.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVRemoteSupportDataCollectionSchedule -DateTime "11/01/2016 20:00"
</pre>
Set a new Remote Support schedule for November 11, 2016, which is a Monday, at 20:00 (8:00pm).


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVRemoteSupportDataCollectionSchedule -Type AHS -DateTime "11/01/2016 20:00"
</pre>
Set a new schedule to collect AHS logs every Monday of every week, at 20:00 (8:00pm).



### Related Links

* [Get-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDataCollectionSchedule)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVRemoteSupportDataCollectionSchedule
<p>
Modify Remote Support Schedule settings on an appliance.

### SYNTAX
<p>
<pre><code>Set-HPOVRemoteSupportDataCollectionSchedule [-DateTime] &lt;DateTime&gt;[ [-Type] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to set a new schedule to collect Remote Support logs.  There are two defined schedules: Active Health scheduled on a weekly basis, and Server Basic Configuration scheduled on a monthly basis.  Either scheduled collection task can be modified, to set the Day of Week, Day of Month, Hour and Minute.
When supplying a DateTime value, the Day will be converted to the Day of Month, and Day of the Week respectively.  For instance, if "Oct 30, 2016 13:00" is provided, Day of Month will be every "30th" day, and Day of Week will be every "Sunday" (which Oct 30th 2016 is a Sunday).
To schedule different Day of the Month and Day of the Week, use the -Type paramter to specify AHS or Basic.  The -DateTime paramter value will only be applied to that schedule.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DateTime &lt;DateTime&gt;<p>
Specify a DateTime value for the schedule to execute.  AHS schedule is executed on a weekly basis, and Server Basic Configuration is executed on a monthly basis.  When needing to configure a schedule for AHS log collection, the Month Day"s week day name will be used.  For instance, if "Oct 30, 2016" is provided and scheduling for AHS log collection, the task will execute every Sunday, which October 30th 2016 is on a Sunday.  When providing the hour of the day to execute, the value must be in 24hr time.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify the schedule type to modify.  Allowed value is:
	* AHS
	*Basic
If no value is provided, both schedules will be modified.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for modifying the Remote Support Collection schedules.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVRemoteSupportDataCollectionSchedule -DateTime "11/01/2016 20:00"
</pre>
Set a new Remote Support schedule for November 11, 2016, which is a Monday, at 20:00 (8:00pm).


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVRemoteSupportDataCollectionSchedule -Type AHS -DateTime "11/01/2016 20:00"
</pre>
Set a new schedule to collect AHS logs every Monday of every week, at 20:00 (8:00pm).



### Related Links

* [Get-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDataCollectionSchedule)


***
<div align=right><a href="#Top">Top</a></div>
