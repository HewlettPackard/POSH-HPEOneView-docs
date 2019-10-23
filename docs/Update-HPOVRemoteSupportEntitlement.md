<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Update-HPOVRemoteSupportEntitlement
<p>
Refresh Remote Support entitlement for a supported resource.

### SYNTAX
<p>
<pre><code>Update-HPOVRemoteSupportEntitlement [-InputObject] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will initiate a refresh of the Remote Support entitlement for a compute or enclosure resource.  If remote support has not been globally enabled and configured on the appliance, this Cmdlet will fail.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The compute or enclosure resource to enable Remote Support for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer -Name Prod* | Update-HPOVRemoteSupportEntitlement
</pre>
Get the servers with their name matching "Prod" and refresh their Remote Support entitlement.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Enclosure = Get-HPOVEnclousre -Name Enclosure-1A
Update-HPOVRemoteSupportEntitlement -InputObject $Enclusre
</pre>
Get the specific enclosure reousrce and refresh Remote Support entitlement.



### Related Links

* [Get-HPOVRemoteSupportEntitlementStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportEntitlementStatus)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Update-HPOVRemoteSupportEntitlement
<p>
Refresh Remote Support entitlement for a supported resource.

### SYNTAX
<p>
<pre><code>Update-HPOVRemoteSupportEntitlement [-InputObject] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will initiate a refresh of the Remote Support entitlement for a compute or enclosure resource.  If remote support has not been globally enabled and configured on the appliance, this Cmdlet will fail.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The compute or enclosure resource to enable Remote Support for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer -Name Prod* | Update-HPOVRemoteSupportEntitlement
</pre>
Get the servers with their name matching "Prod" and refresh their Remote Support entitlement.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Enclosure = Get-HPOVEnclousre -Name Enclosure-1A
Update-HPOVRemoteSupportEntitlement -InputObject $Enclusre
</pre>
Get the specific enclosure reousrce and refresh Remote Support entitlement.



### Related Links

* [Get-HPOVRemoteSupportEntitlementStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportEntitlementStatus)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Update-HPOVRemoteSupportEntitlement
<p>
Refresh Remote Support entitlement for a supported resource.

### SYNTAX
<p>
<pre><code>Update-HPOVRemoteSupportEntitlement [-InputObject] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will initiate a refresh of the Remote Support entitlement for a compute or enclosure resource.  If remote support has not been globally enabled and configured on the appliance, this Cmdlet will fail.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The compute or enclosure resource to enable Remote Support for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer -Name Prod* | Update-HPOVRemoteSupportEntitlement
</pre>
Get the servers with their name matching "Prod" and refresh their Remote Support entitlement.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Enclosure = Get-HPOVEnclousre -Name Enclosure-1A
Update-HPOVRemoteSupportEntitlement -InputObject $Enclusre
</pre>
Get the specific enclosure reousrce and refresh Remote Support entitlement.



### Related Links

* [Get-HPOVRemoteSupportEntitlementStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportEntitlementStatus)


***
<div align=right><a href="#Top">Top</a></div>
