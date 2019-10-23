<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVRemoteSupportDataCollectionSchedule
<p>
Retrieve Remote Support Schedule settings on an appliance.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupportDataCollectionSchedule [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVRemoteSupportDataCollectionSchedule[ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to retrieve configured schedules to collect Remote Support logs.  There are two defined schedules: Active Health scheduled on a weekly basis, and Server Basic Configuration scheduled on a monthly basis.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify the schedule type to modify.  Allowed value is:
	* AHS
	*Basic
If no value is provided, both schedules will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.RemtoeSupport.Schedule [System.Management.Automation.PSCustomObject]**_

 

The configured Remote Support data collection schedule.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRemoteSupportDataCollectionSchedule"
</pre>
Get the Remote Support data collection schedules.



### Related Links

* [Set-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDataCollectionSchedule)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVRemoteSupportDataCollectionSchedule
<p>
Retrieve Remote Support Schedule settings on an appliance.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupportDataCollectionSchedule [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVRemoteSupportDataCollectionSchedule[ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to retrieve configured schedules to collect Remote Support logs.  There are two defined schedules: Active Health scheduled on a weekly basis, and Server Basic Configuration scheduled on a monthly basis.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify the schedule type to modify.  Allowed value is:
	* AHS
	*Basic
If no value is provided, both schedules will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.RemtoeSupport.Schedule [System.Management.Automation.PSCustomObject]**_

 

The configured Remote Support data collection schedule.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRemoteSupportDataCollectionSchedule"
</pre>
Get the Remote Support data collection schedules.



### Related Links

* [Set-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDataCollectionSchedule)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVRemoteSupportDataCollectionSchedule
<p>
Retrieve Remote Support Schedule settings on an appliance.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupportDataCollectionSchedule [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVRemoteSupportDataCollectionSchedule[ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to retrieve configured schedules to collect Remote Support logs.  There are two defined schedules: Active Health scheduled on a weekly basis, and Server Basic Configuration scheduled on a monthly basis.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify the schedule type to modify.  Allowed value is:
	* AHS
	*Basic
If no value is provided, both schedules will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.RemtoeSupport.Schedule [System.Management.Automation.PSCustomObject]**_

 

The configured Remote Support data collection schedule.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRemoteSupportDataCollectionSchedule"
</pre>
Get the Remote Support data collection schedules.



### Related Links

* [Set-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDataCollectionSchedule)


***
<div align=right><a href="#Top">Top</a></div>
