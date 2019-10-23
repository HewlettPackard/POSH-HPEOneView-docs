<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVAlert
<p>
List alerts logged.

### SYNTAX
<p>
<pre><code>Get-HPOVAlert[ [-InputObject] &lt;Object&gt;][ [-Severity] &lt;String&gt;][ [-HealthCategory] &lt;String&gt;][ [-AssignedToUser] &lt;String&gt;][ [-AlertState] &lt;String&gt;][ [-Count] &lt;String&gt;][ [-TimeSpan] &lt;Timespan&gt;][ [-Start] &lt;DateTime&gt;][ [-End] &lt;DateTime&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain all the alerts for the specified resource and/or with the specified severity.


### Parameters

-AlertState &lt;String&gt;<p>
Alerts with given alert state will be returned.  State values include Active and Cleared

<table><tbody><tr><td>Aliases</td><td>State</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AssignedToUser &lt;String&gt;<p>
Alerts assigned to the given user will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;String&gt;<p>
Return only the number of alerts from the appliance.  Can be combined with other parameters to return a pruned list of alerts.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -End &lt;DateTime&gt;<p>
Return alerts that were created on the specified date.  Hour, Min and Seconds will not be used, only Month, Day and Year of the DateTime value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HealthCategory &lt;String&gt;<p>
Alerts with given health category will be returned.  Allowed health category values are: 

    * Appliance
    * DeviceBay
    * Enclosure
    * Fan
    * Firmware
    * Host
    * Instance
    * InterconnectBay
    * LogicalSwitch
    * Logs
    * ManagementProcessor
    * Memory
    * Network
    * Operational
    * Power
    * Processor
    * RemoteSupport
    * Storage
    * Thermal
    * Unknown

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-resourceUri]
Alerts for the specified resource will be returned.

<table><tbody><tr><td>Aliases</td><td>resourceUri, Resource</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Severity &lt;String&gt;<p>
Alerts with given severity will be returned.  Allowed severity values are:

    * Unknown
    * Ok
    * Disabled
    * Warning
    * Critical

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;DateTime&gt;<p>
Return alerts that were created starting from the specified date.  Hour, Min and Seconds will not be used, only Month, Day and Year of the DateTime value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TimeSpan &lt;Timespan&gt;<p>
Return the number of alerts created from today to the defined number of days.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Resource URI.

 _**System.Management.Automation.PSCustomObject**_

 Resource object (i.e. Get-HPOVServer).



### Return Values

_**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

 

Singel HPE OneView Alert.

 _**System.Collections.ArrayList**_

 

Collection of HPE OneView Alerts.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$alerts = Get-HPOVAlert -severity CRITICAL
</pre>
Return all the critical alerts.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServer "Encl1, Bay 2" | Get-HPOVAlert -severity CRITICAL
</pre>
Return all the critical alerts for server "Encl1, Bay 2".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVServerProfile "Profile 1" | Get-HPOVAlert
</pre>
Return all the alerts for server profile "Profile 1".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVInterconnect "Encl1, interconnect 2" | Get-HPOVAlert
</pre>
Get all alerts for "Encl1, interconnect 2" interconnect module.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVInterconnect "Encl1, interconnect 2" | Get-HPOVAlert -severity Critical
</pre>
Get "critical" severity alerts for "Encl1, interconnect 2" interconnect module.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVAlert -severity Critical -Count 5
</pre>
Return the first 5 "critical" severity alerts.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
Get-HPOVAlert -severity Critical -Timespan (New-TimeSpan -Days 8)
</pre>
Return "critical" severity alerts for the past 8 days.


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
Get-HPOVAlert -severity Critical -Start "2016-12-01"
</pre>
Return "critical" severity alerts Starting at 2016-12-01 to now.


 <pre> -------------------------- EXAMPLE 9 --------------------------<p>
Get-HPOVAlert -Start "2016-12-01" -End "2016-12-09
</pre>
Return all alerts Starting at 2016-12-01 to 2016-12-09.



### Related Links

* [Clear-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Clear-HPOVAlert)
* [Remove-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAlert)
* [Set-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAlert)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVAlert
<p>
List alerts logged.

### SYNTAX
<p>
<pre><code>Get-HPOVAlert[ [-InputObject] &lt;Object&gt;][ [-Severity] &lt;String&gt;][ [-HealthCategory] &lt;String&gt;][ [-AssignedToUser] &lt;String&gt;][ [-AlertState] &lt;String&gt;][ [-Count] &lt;String&gt;][ [-TimeSpan] &lt;Timespan&gt;][ [-Start] &lt;DateTime&gt;][ [-End] &lt;DateTime&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain all the alerts for the specified resource and/or with the specified severity.


### Parameters

-AlertState &lt;String&gt;<p>
Alerts with given alert state will be returned.  State values include Active and Cleared

<table><tbody><tr><td>Aliases</td><td>State</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AssignedToUser &lt;String&gt;<p>
Alerts assigned to the given user will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;String&gt;<p>
Return only the number of alerts from the appliance.  Can be combined with other parameters to return a pruned list of alerts.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -End &lt;DateTime&gt;<p>
Return alerts that were created on the specified date.  Hour, Min and Seconds will not be used, only Month, Day and Year of the DateTime value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HealthCategory &lt;String&gt;<p>
Alerts with given health category will be returned.  Allowed health category values are: 

    * Appliance
    * DeviceBay
    * Enclosure
    * Fan
    * Firmware
    * Host
    * Instance
    * InterconnectBay
    * LogicalSwitch
    * Logs
    * ManagementProcessor
    * Memory
    * Network
    * Operational
    * Power
    * Processor
    * RemoteSupport
    * Storage
    * Thermal
    * Unknown

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-resourceUri]
Alerts for the specified resource will be returned.

<table><tbody><tr><td>Aliases</td><td>resourceUri, Resource</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Severity &lt;String&gt;<p>
Alerts with given severity will be returned.  Allowed severity values are:

    * Unknown
    * Ok
    * Disabled
    * Warning
    * Critical

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;DateTime&gt;<p>
Return alerts that were created starting from the specified date.  Hour, Min and Seconds will not be used, only Month, Day and Year of the DateTime value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TimeSpan &lt;Timespan&gt;<p>
Return the number of alerts created from today to the defined number of days.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Resource URI.

 _**System.Management.Automation.PSCustomObject**_

 Resource object (i.e. Get-HPOVServer).



### Return Values

_**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

 

Singel HPE OneView Alert.

 _**System.Collections.ArrayList**_

 

Collection of HPE OneView Alerts.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$alerts = Get-HPOVAlert -severity CRITICAL
</pre>
Return all the critical alerts.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServer "Encl1, Bay 2" | Get-HPOVAlert -severity CRITICAL
</pre>
Return all the critical alerts for server "Encl1, Bay 2".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVServerProfile "Profile 1" | Get-HPOVAlert
</pre>
Return all the alerts for server profile "Profile 1".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVInterconnect "Encl1, interconnect 2" | Get-HPOVAlert
</pre>
Get all alerts for "Encl1, interconnect 2" interconnect module.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVInterconnect "Encl1, interconnect 2" | Get-HPOVAlert -severity Critical
</pre>
Get "critical" severity alerts for "Encl1, interconnect 2" interconnect module.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVAlert -severity Critical -Count 5
</pre>
Return the first 5 "critical" severity alerts.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
Get-HPOVAlert -severity Critical -Timespan (New-TimeSpan -Days 8)
</pre>
Return "critical" severity alerts for the past 8 days.


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
Get-HPOVAlert -severity Critical -Start "2016-12-01"
</pre>
Return "critical" severity alerts Starting at 2016-12-01 to now.


 <pre> -------------------------- EXAMPLE 9 --------------------------<p>
Get-HPOVAlert -Start "2016-12-01" -End "2016-12-09
</pre>
Return all alerts Starting at 2016-12-01 to 2016-12-09.



### Related Links

* [Clear-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Clear-HPOVAlert)
* [Remove-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAlert)
* [Set-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAlert)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVAlert
<p>
List alerts logged.

### SYNTAX
<p>
<pre><code>Get-HPOVAlert[ [-InputObject] &lt;Object&gt;][ [-Severity] &lt;String&gt;][ [-HealthCategory] &lt;String&gt;][ [-AssignedToUser] &lt;String&gt;][ [-AlertState] &lt;String&gt;][ [-Count] &lt;String&gt;][ [-TimeSpan] &lt;Timespan&gt;][ [-Start] &lt;DateTime&gt;][ [-End] &lt;DateTime&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain all the alerts for the specified resource and/or with the specified severity.


### Parameters

-AlertState &lt;String&gt;<p>
Alerts with given alert state will be returned.  State values include Active and Cleared

<table><tbody><tr><td>Aliases</td><td>State</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AssignedToUser &lt;String&gt;<p>
Alerts assigned to the given user will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;String&gt;<p>
Return only the number of alerts from the appliance.  Can be combined with other parameters to return a pruned list of alerts.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -End &lt;DateTime&gt;<p>
Return alerts that were created on the specified date.  Hour, Min and Seconds will not be used, only Month, Day and Year of the DateTime value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HealthCategory &lt;String&gt;<p>
Alerts with given health category will be returned.  Allowed health category values are: 

    * Appliance
    * DeviceBay
    * Enclosure
    * Fan
    * Firmware
    * Host
    * Instance
    * InterconnectBay
    * LogicalSwitch
    * Logs
    * ManagementProcessor
    * Memory
    * Network
    * Operational
    * Power
    * Processor
    * RemoteSupport
    * Storage
    * Thermal
    * Unknown

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-resourceUri]
Alerts for the specified resource will be returned.

<table><tbody><tr><td>Aliases</td><td>resourceUri, Resource</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Severity &lt;String&gt;<p>
Alerts with given severity will be returned.  Allowed severity values are:

    * Unknown
    * Ok
    * Disabled
    * Warning
    * Critical

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;DateTime&gt;<p>
Return alerts that were created starting from the specified date.  Hour, Min and Seconds will not be used, only Month, Day and Year of the DateTime value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TimeSpan &lt;Timespan&gt;<p>
Return the number of alerts created from today to the defined number of days.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Resource URI.

 _**System.Management.Automation.PSCustomObject**_

 Resource object (i.e. Get-HPOVServer).



### Return Values

_**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

 

Singel HPE OneView Alert.

 _**System.Collections.ArrayList**_

 

Collection of HPE OneView Alerts.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$alerts = Get-HPOVAlert -severity CRITICAL
</pre>
Return all the critical alerts.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServer "Encl1, Bay 2" | Get-HPOVAlert -severity CRITICAL
</pre>
Return all the critical alerts for server "Encl1, Bay 2".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVServerProfile "Profile 1" | Get-HPOVAlert
</pre>
Return all the alerts for server profile "Profile 1".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVInterconnect "Encl1, interconnect 2" | Get-HPOVAlert
</pre>
Get all alerts for "Encl1, interconnect 2" interconnect module.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVInterconnect "Encl1, interconnect 2" | Get-HPOVAlert -severity Critical
</pre>
Get "critical" severity alerts for "Encl1, interconnect 2" interconnect module.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVAlert -severity Critical -Count 5
</pre>
Return the first 5 "critical" severity alerts.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
Get-HPOVAlert -severity Critical -Timespan (New-TimeSpan -Days 8)
</pre>
Return "critical" severity alerts for the past 8 days.


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
Get-HPOVAlert -severity Critical -Start "2016-12-01"
</pre>
Return "critical" severity alerts Starting at 2016-12-01 to now.


 <pre> -------------------------- EXAMPLE 9 --------------------------<p>
Get-HPOVAlert -Start "2016-12-01" -End "2016-12-09
</pre>
Return all alerts Starting at 2016-12-01 to 2016-12-09.



### Related Links

* [Clear-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Clear-HPOVAlert)
* [Remove-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAlert)
* [Set-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAlert)


***
<div align=right><a href="#Top">Top</a></div>
