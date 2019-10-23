<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVServiceAlert
<p>
Generate report of HPE OneView Remote Support service events.

### SYNTAX
<p>
<pre><code>Get-HPOVServiceAlert[ [-InputObject] &lt;Object&gt;][ [-State] &lt;String&gt;][ [-Count] &lt;int&gt;][ [-TimeSpan] &lt;TimeSpan&gt;][ [-Start] &lt;DateTime&gt;][ [-End] &lt;DateTime&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView automatically checks if your hardware has a valid entitlement to Hewlett Packard Enterprise support. A valid entitlement is a Hewlett Packard Enterprise warranty or an active contract. If a valid entitlement to support is found, HPE OneView Remote Support opens a support case for a hardware failure. This Cmdlet allows administrators to display and/or export service events logged by the HPE OneView appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;int&gt;<p>
Specify the number of service alerts to return.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -End &lt;DateTime&gt;<p>
DateTime object of the end date and time accompanied with the -Start parameter.  If omitted, the current time of the PC is used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Use to filter for the supported hardware resource object.  Enclosures, Server Hardware and Server Profile objects are supported.  If an Enclosure resource is provided, only the Enclousre service events are queried.  Associated Server Hardare within the enclosure is not.  If providing a Server Profile object, it must be assigned to a supported hardware platform.  If the Server Profile has moved between hardware resources, only the currently assigned server hardware resource object will be used to query for service events.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;DateTime&gt;<p>
DateTime object of the start date and time to being query.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -State &lt;String&gt;<p>
Specify the state of the Service Alert.  The state is not correlated to the associated Alert.

	* Closed - The state of Service event when the service call is closed.
	* Error - The Service request has some error None This is a default state.
	* Open - The state of Service event when the service call is open.
	* Pending - The state of Service event when the service call is pending.
	* Received - The state of Service event when the service call is received.
	* Submitted - The state of Service event when the service call is submitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TimeSpan &lt;TimeSpan&gt;<p>
Specify a TimeSpan object in number of days.  Cannot be combined with -Start and -End parameters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware**_

 A Server Hardware resource object from Get-HPOVServer.

 _**HPOneView.ServerProfile**_

 A Server Profile resource object from Get-HPOVServerProfile.  If the Server Profile is not associated with a server hardware resource, an excpetion is thrown.  If the Server Profile has moved from one server hardware resource to another, only the currently assigned server hardware resource will be queried.

 _**HPOneView.Enclosure**_

 An Enclosure resource object from Get-HPOVEnclosure.



### Return Values

_**HPOneView.Appliance.ServiceAlert**_

 

The Service Alert object that contains the CaseID, associated resource name, URI and serial number, and description of the service event.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServiceAlert
</pre>
Get all Service Alerts from the connected appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServiceAlert -Count 10 
</pre>
Get the first 10 Service Alerts from the connected appliance.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$TimeSpan = New-TimeSpan -Days 30
Get-HPOVServiceAlert -Count 10 -TimeSpan $TimeSpan
</pre>
Get the first 10 Service Alerts within the last 30 days from the connected appliance.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVServiceAlert -Start ([DateTime]"2018-01-05") -End ([DateTime]"2018-01-30")
</pre>
Get the Service Alerts within the specified date range from the connected appliance.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVServer -Name "Encl1, Bay 1" -ErrorAction Stop | Get-HPOVServiceAlert -Start ([DateTime]"2018-01-05") -End ([DateTime]"2018-01-30")
</pre>
Get the Service Alerts within the specified date range for the specified server hardware resource from the connected appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVServiceAlert
<p>
Generate report of HPE OneView Remote Support service events.

### SYNTAX
<p>
<pre><code>Get-HPOVServiceAlert[ [-InputObject] &lt;Object&gt;][ [-State] &lt;String&gt;][ [-Count] &lt;int&gt;][ [-TimeSpan] &lt;TimeSpan&gt;][ [-Start] &lt;DateTime&gt;][ [-End] &lt;DateTime&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView automatically checks if your hardware has a valid entitlement to Hewlett Packard Enterprise support. A valid entitlement is a Hewlett Packard Enterprise warranty or an active contract. If a valid entitlement to support is found, HPE OneView Remote Support opens a support case for a hardware failure. This Cmdlet allows administrators to display and/or export service events logged by the HPE OneView appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;int&gt;<p>
Specify the number of service alerts to return.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -End &lt;DateTime&gt;<p>
DateTime object of the end date and time accompanied with the -Start parameter.  If omitted, the current time of the PC is used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Use to filter for the supported hardware resource object.  Enclosures, Server Hardware and Server Profile objects are supported.  If an Enclosure resource is provided, only the Enclousre service events are queried.  Associated Server Hardare within the enclosure is not.  If providing a Server Profile object, it must be assigned to a supported hardware platform.  If the Server Profile has moved between hardware resources, only the currently assigned server hardware resource object will be used to query for service events.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;DateTime&gt;<p>
DateTime object of the start date and time to being query.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -State &lt;String&gt;<p>
Specify the state of the Service Alert.  The state is not correlated to the associated Alert.

	* Closed - The state of Service event when the service call is closed.
	* Error - The Service request has some error None This is a default state.
	* Open - The state of Service event when the service call is open.
	* Pending - The state of Service event when the service call is pending.
	* Received - The state of Service event when the service call is received.
	* Submitted - The state of Service event when the service call is submitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TimeSpan &lt;TimeSpan&gt;<p>
Specify a TimeSpan object in number of days.  Cannot be combined with -Start and -End parameters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware**_

 A Server Hardware resource object from Get-HPOVServer.

 _**HPOneView.ServerProfile**_

 A Server Profile resource object from Get-HPOVServerProfile.  If the Server Profile is not associated with a server hardware resource, an excpetion is thrown.  If the Server Profile has moved from one server hardware resource to another, only the currently assigned server hardware resource will be queried.

 _**HPOneView.Enclosure**_

 An Enclosure resource object from Get-HPOVEnclosure.



### Return Values

_**HPOneView.Appliance.ServiceAlert**_

 

The Service Alert object that contains the CaseID, associated resource name, URI and serial number, and description of the service event.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServiceAlert
</pre>
Get all Service Alerts from the connected appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServiceAlert -Count 10 
</pre>
Get the first 10 Service Alerts from the connected appliance.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$TimeSpan = New-TimeSpan -Days 30
Get-HPOVServiceAlert -Count 10 -TimeSpan $TimeSpan
</pre>
Get the first 10 Service Alerts within the last 30 days from the connected appliance.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVServiceAlert -Start ([DateTime]"2018-01-05") -End ([DateTime]"2018-01-30")
</pre>
Get the Service Alerts within the specified date range from the connected appliance.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVServer -Name "Encl1, Bay 1" -ErrorAction Stop | Get-HPOVServiceAlert -Start ([DateTime]"2018-01-05") -End ([DateTime]"2018-01-30")
</pre>
Get the Service Alerts within the specified date range for the specified server hardware resource from the connected appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVServiceAlert
<p>
Generate report of HPE OneView Remote Support service events.

### SYNTAX
<p>
<pre><code>Get-HPOVServiceAlert[ [-InputObject] &lt;Object&gt;][ [-State] &lt;String&gt;][ [-Count] &lt;int&gt;][ [-TimeSpan] &lt;TimeSpan&gt;][ [-Start] &lt;DateTime&gt;][ [-End] &lt;DateTime&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView automatically checks if your hardware has a valid entitlement to Hewlett Packard Enterprise support. A valid entitlement is a Hewlett Packard Enterprise warranty or an active contract. If a valid entitlement to support is found, HPE OneView Remote Support opens a support case for a hardware failure. This Cmdlet allows administrators to display and/or export service events logged by the HPE OneView appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;int&gt;<p>
Specify the number of service alerts to return.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -End &lt;DateTime&gt;<p>
DateTime object of the end date and time accompanied with the -Start parameter.  If omitted, the current time of the PC is used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Use to filter for the supported hardware resource object.  Enclosures, Server Hardware and Server Profile objects are supported.  If an Enclosure resource is provided, only the Enclousre service events are queried.  Associated Server Hardare within the enclosure is not.  If providing a Server Profile object, it must be assigned to a supported hardware platform.  If the Server Profile has moved between hardware resources, only the currently assigned server hardware resource object will be used to query for service events.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;DateTime&gt;<p>
DateTime object of the start date and time to being query.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -State &lt;String&gt;<p>
Specify the state of the Service Alert.  The state is not correlated to the associated Alert.

	* Closed - The state of Service event when the service call is closed.
	* Error - The Service request has some error None This is a default state.
	* Open - The state of Service event when the service call is open.
	* Pending - The state of Service event when the service call is pending.
	* Received - The state of Service event when the service call is received.
	* Submitted - The state of Service event when the service call is submitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TimeSpan &lt;TimeSpan&gt;<p>
Specify a TimeSpan object in number of days.  Cannot be combined with -Start and -End parameters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware**_

 A Server Hardware resource object from Get-HPOVServer.

 _**HPOneView.ServerProfile**_

 A Server Profile resource object from Get-HPOVServerProfile.  If the Server Profile is not associated with a server hardware resource, an excpetion is thrown.  If the Server Profile has moved from one server hardware resource to another, only the currently assigned server hardware resource will be queried.

 _**HPOneView.Enclosure**_

 An Enclosure resource object from Get-HPOVEnclosure.



### Return Values

_**HPOneView.Appliance.ServiceAlert**_

 

The Service Alert object that contains the CaseID, associated resource name, URI and serial number, and description of the service event.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServiceAlert
</pre>
Get all Service Alerts from the connected appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServiceAlert -Count 10 
</pre>
Get the first 10 Service Alerts from the connected appliance.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$TimeSpan = New-TimeSpan -Days 30
Get-HPOVServiceAlert -Count 10 -TimeSpan $TimeSpan
</pre>
Get the first 10 Service Alerts within the last 30 days from the connected appliance.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVServiceAlert -Start ([DateTime]"2018-01-05") -End ([DateTime]"2018-01-30")
</pre>
Get the Service Alerts within the specified date range from the connected appliance.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVServer -Name "Encl1, Bay 1" -ErrorAction Stop | Get-HPOVServiceAlert -Start ([DateTime]"2018-01-05") -End ([DateTime]"2018-01-30")
</pre>
Get the Service Alerts within the specified date range for the specified server hardware resource from the connected appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
