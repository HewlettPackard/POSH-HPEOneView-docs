<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Start-HPOVRemoteSupportCollection
<p>
Begin Remote Support collection from endpoints.

### SYNTAX
<p>
<pre><code>Start-HPOVRemoteSupportCollection [-InputObject] &lt;Object&gt; [-Type] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to initiate colleciton of remote support data.  This will help send collection reports back to HPE that are in between the default scheduled task.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
A supported Gen8 or newer compute, HPE BladeSystem enclosure, or HPE Synergy frame.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;Object&gt;<p>
Used to specify the type of remote support collection to start.  Allowed values are:

	* AHS - Active Health Service collection
	* Basic - Basic server configuration collection


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer -Name Prod-Sql-01 | Start-HPOVRemoteSupportCollection -Type AHS</pre>
Start the collection of AHS logs immediately for the specified server.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVEnclosure | Start-HPOVRemoteSupportCollection -Type Basic</pre>
Start the collection of basic server configuration immediately.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Start-HPOVRemoteSupportCollection
<p>
Begin Remote Support collection from endpoints.

### SYNTAX
<p>
<pre><code>Start-HPOVRemoteSupportCollection [-InputObject] &lt;Object&gt; [-Type] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to initiate colleciton of remote support data.  This will help send collection reports back to HPE that are in between the default scheduled task.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
A supported Gen8 or newer compute, HPE BladeSystem enclosure, or HPE Synergy frame.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;Object&gt;<p>
Used to specify the type of remote support collection to start.  Allowed values are:

	* AHS - Active Health Service collection
	* Basic - Basic server configuration collection


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer -Name Prod-Sql-01 | Start-HPOVRemoteSupportCollection -Type AHS</pre>
Start the collection of AHS logs immediately for the specified server.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVEnclosure | Start-HPOVRemoteSupportCollection -Type Basic</pre>
Start the collection of basic server configuration immediately.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Start-HPOVRemoteSupportCollection
<p>
Begin Remote Support collection from endpoints.

### SYNTAX
<p>
<pre><code>Start-HPOVRemoteSupportCollection [-InputObject] &lt;Object&gt; [-Type] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to initiate colleciton of remote support data.  This will help send collection reports back to HPE that are in between the default scheduled task.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
A supported Gen8 or newer compute, HPE BladeSystem enclosure, or HPE Synergy frame.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;Object&gt;<p>
Used to specify the type of remote support collection to start.  Allowed values are:

	* AHS - Active Health Service collection
	* Basic - Basic server configuration collection


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer -Name Prod-Sql-01 | Start-HPOVRemoteSupportCollection -Type AHS</pre>
Start the collection of AHS logs immediately for the specified server.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVEnclosure | Start-HPOVRemoteSupportCollection -Type Basic</pre>
Start the collection of basic server configuration immediately.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
