<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVSwitch
<p>
Get a Switch resource.

### SYNTAX
<p>
<pre><code>Get-HPOVSwitch[ [-Name] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVSwitch[ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieve a Switch that is managed by HPE OneView.  Currently, HPE OneView can Manage or Monitor Cisco Nexus-family of switches.
 This Cmdlet will retrieve the specified or all Logical Switch Group resources.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The Switch resource Name.  Supports the * wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 Async task resource after a Logical Switch Group has been created.



### Return Values

_**HPOneView.Networking.LogicalSwitchGroup [System.Management.Automation.PSCustomObject]**_

 

The async task resource object to monitor (if -Async was used) or results.

 _**System.Collections.ArrayList &lt;HPOneView.Networking.LogicalSwitchGroup&gt;**_

 

Collection of Logical Switch Group resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSwitch</pre>
Get all logical switch group resources found on the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVSwitch -Name "10.1.1.1"</pre>
Get the "10.1.1.1" switch resource.



### Related Links

* [Get-HPOVSwitchType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSwitchType)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVSwitch
<p>
Get a Switch resource.

### SYNTAX
<p>
<pre><code>Get-HPOVSwitch[ [-Name] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVSwitch[ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieve a Switch that is managed by HPE OneView.  Currently, HPE OneView can Manage or Monitor Cisco Nexus-family of switches.
 This Cmdlet will retrieve the specified or all Logical Switch Group resources.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The Switch resource Name.  Supports the * wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 Async task resource after a Logical Switch Group has been created.



### Return Values

_**HPOneView.Networking.LogicalSwitchGroup [System.Management.Automation.PSCustomObject]**_

 

The async task resource object to monitor (if -Async was used) or results.

 _**System.Collections.ArrayList &lt;HPOneView.Networking.LogicalSwitchGroup&gt;**_

 

Collection of Logical Switch Group resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSwitch</pre>
Get all logical switch group resources found on the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVSwitch -Name "10.1.1.1"</pre>
Get the "10.1.1.1" switch resource.



### Related Links

* [Get-HPOVSwitchType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSwitchType)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVSwitch
<p>
Get a Switch resource.

### SYNTAX
<p>
<pre><code>Get-HPOVSwitch[ [-Name] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVSwitch[ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieve a Switch that is managed by HPE OneView.  Currently, HPE OneView can Manage or Monitor Cisco Nexus-family of switches.
 This Cmdlet will retrieve the specified or all Logical Switch Group resources.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The Switch resource Name.  Supports the * wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 Async task resource after a Logical Switch Group has been created.



### Return Values

_**HPOneView.Networking.LogicalSwitchGroup [System.Management.Automation.PSCustomObject]**_

 

The async task resource object to monitor (if -Async was used) or results.

 _**System.Collections.ArrayList &lt;HPOneView.Networking.LogicalSwitchGroup&gt;**_

 

Collection of Logical Switch Group resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSwitch</pre>
Get all logical switch group resources found on the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVSwitch -Name "10.1.1.1"</pre>
Get the "10.1.1.1" switch resource.



### Related Links

* [Get-HPOVSwitchType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSwitchType)


***
<div align=right><a href="#Top">Top</a></div>
