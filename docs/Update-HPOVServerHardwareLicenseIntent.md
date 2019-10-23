<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Update-HPOVServerHardwareLicenseIntent
<p>
Change the license intent of a server.

### SYNTAX
<p>
<pre><code>Update-HPOVServerHardwareLicenseIntent [-InputObject] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The licensing intent of a server may be changed to either "OneView" (HPE OneView Advanced) or "OneViewNoiLO" (HPE OneView Advanced w/o iLO). The server must be unlicensed and managed in order to be able to update the licensing intent. In addition, a server licensed with "OneViewNoiLO" may be upgraded to "OneView", provided a "OneView" license is available and the server does not already have an embedded or "iLO Advanced" license installed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
A server hardware resource from Get-HPOVServer.

<table><tbody><tr><td>Aliases</td><td>name, Server</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A server hardware resource from Get-HPOVServer.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.

 _**null**_

 

If the resource is already assigned a valid upgraded license, a null response is returned.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Server = Get-HPOVServer -Name iLO123.domain.com -ErrorAction Stop
Update-HPOVServerHardwareLicenseIntent -InputObject $Server
</pre>
Get the specific server resource, and attempt upgrading the license to "OneView".


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Servers = Get-HPOVServer | ? licensingIntent -eq "OneViewNoIlo"
$Tasks = $Servers | Update-HPOVServerHardwareLicenseIntent -async
</pre>
Get server resources with "OneViewNoIlo" license, and attempt upgrading the license to "OneView".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Update-HPOVServerHardwareLicenseIntent
<p>
Change the license intent of a server.

### SYNTAX
<p>
<pre><code>Update-HPOVServerHardwareLicenseIntent [-InputObject] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The licensing intent of a server may be changed to either "OneView" (HPE OneView Advanced) or "OneViewNoiLO" (HPE OneView Advanced w/o iLO). The server must be unlicensed and managed in order to be able to update the licensing intent. In addition, a server licensed with "OneViewNoiLO" may be upgraded to "OneView", provided a "OneView" license is available and the server does not already have an embedded or "iLO Advanced" license installed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
A server hardware resource from Get-HPOVServer.

<table><tbody><tr><td>Aliases</td><td>name, Server</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A server hardware resource from Get-HPOVServer.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.

 _**null**_

 

If the resource is already assigned a valid upgraded license, a null response is returned.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Server = Get-HPOVServer -Name iLO123.domain.com -ErrorAction Stop
Update-HPOVServerHardwareLicenseIntent -InputObject $Server
</pre>
Get the specific server resource, and attempt upgrading the license to "OneView".


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Servers = Get-HPOVServer | ? licensingIntent -eq "OneViewNoIlo"
$Tasks = $Servers | Update-HPOVServerHardwareLicenseIntent -async
</pre>
Get server resources with "OneViewNoIlo" license, and attempt upgrading the license to "OneView".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Update-HPOVServerHardwareLicenseIntent
<p>
Change the license intent of a server.

### SYNTAX
<p>
<pre><code>Update-HPOVServerHardwareLicenseIntent [-InputObject] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The licensing intent of a server may be changed to either "OneView" (HPE OneView Advanced) or "OneViewNoiLO" (HPE OneView Advanced w/o iLO). The server must be unlicensed and managed in order to be able to update the licensing intent. In addition, a server licensed with "OneViewNoiLO" may be upgraded to "OneView", provided a "OneView" license is available and the server does not already have an embedded or "iLO Advanced" license installed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
A server hardware resource from Get-HPOVServer.

<table><tbody><tr><td>Aliases</td><td>name, Server</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A server hardware resource from Get-HPOVServer.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.

 _**null**_

 

If the resource is already assigned a valid upgraded license, a null response is returned.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Server = Get-HPOVServer -Name iLO123.domain.com -ErrorAction Stop
Update-HPOVServerHardwareLicenseIntent -InputObject $Server
</pre>
Get the specific server resource, and attempt upgrading the license to "OneView".


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Servers = Get-HPOVServer | ? licensingIntent -eq "OneViewNoIlo"
$Tasks = $Servers | Update-HPOVServerHardwareLicenseIntent -async
</pre>
Get server resources with "OneViewNoIlo" license, and attempt upgrading the license to "OneView".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
