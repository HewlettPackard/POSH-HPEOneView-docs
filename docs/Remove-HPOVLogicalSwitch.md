<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVLogicalSwitch
<p>
Remove a new Logical Switch resource.

### SYNTAX
<p>
<pre><code>Remove-HPOVLogicalSwitch [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will remove the configured Logical Switch from the requested appliance(s).  When you delete a logical switch, HPE OneView no longer manages the physical switches associated with it.
 Required privileges: Infrastructure administrator or Network administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Bypass the confirmation prompt, and process all of the objects.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove resource, even if there are communication problems.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Logical Switch resource Name or Object to update.

<table><tbody><tr><td>Aliases</td><td>ls, LogicalSwitch</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalSwitch [System.Management.Automation.PSCustomObject]**_

 Logical Switch resource.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task resource object to monitor (if -Async was used) or results.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of remove Logical Switch async task resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalSwitch | Remove-HPOVLogicalSwitch</pre>
Remove all logical switch resources found on the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalSwitch -Name "My Logical Switch 1" | Remove-HPOVLogicalSwitch -confirm:$false</pre>
Remove the "My Logical Switch 1" resource.



### Related Links

* [Get-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitch)
* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [New-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitch)
* [New-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitchGroup)
* [Remove-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitchGroup)
* [Update-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalSwitch)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVLogicalSwitch
<p>
Remove a new Logical Switch resource.

### SYNTAX
<p>
<pre><code>Remove-HPOVLogicalSwitch [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will remove the configured Logical Switch from the requested appliance(s).  When you delete a logical switch, HPE OneView no longer manages the physical switches associated with it.
 Required privileges: Infrastructure administrator or Network administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Bypass the confirmation prompt, and process all of the objects.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove resource, even if there are communication problems.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Logical Switch resource Name or Object to update.

<table><tbody><tr><td>Aliases</td><td>ls, LogicalSwitch</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalSwitch [System.Management.Automation.PSCustomObject]**_

 Logical Switch resource.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task resource object to monitor (if -Async was used) or results.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of remove Logical Switch async task resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalSwitch | Remove-HPOVLogicalSwitch</pre>
Remove all logical switch resources found on the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalSwitch -Name "My Logical Switch 1" | Remove-HPOVLogicalSwitch -confirm:$false</pre>
Remove the "My Logical Switch 1" resource.



### Related Links

* [Get-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitch)
* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [New-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitch)
* [New-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitchGroup)
* [Remove-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitchGroup)
* [Update-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalSwitch)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVLogicalSwitch
<p>
Remove a new Logical Switch resource.

### SYNTAX
<p>
<pre><code>Remove-HPOVLogicalSwitch [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will remove the configured Logical Switch from the requested appliance(s).  When you delete a logical switch, HPE OneView no longer manages the physical switches associated with it.
 Required privileges: Infrastructure administrator or Network administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Bypass the confirmation prompt, and process all of the objects.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove resource, even if there are communication problems.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Logical Switch resource Name or Object to update.

<table><tbody><tr><td>Aliases</td><td>ls, LogicalSwitch</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalSwitch [System.Management.Automation.PSCustomObject]**_

 Logical Switch resource.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task resource object to monitor (if -Async was used) or results.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of remove Logical Switch async task resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalSwitch | Remove-HPOVLogicalSwitch</pre>
Remove all logical switch resources found on the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalSwitch -Name "My Logical Switch 1" | Remove-HPOVLogicalSwitch -confirm:$false</pre>
Remove the "My Logical Switch 1" resource.



### Related Links

* [Get-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitch)
* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [New-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitch)
* [New-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitchGroup)
* [Remove-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitchGroup)
* [Update-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalSwitch)


***
<div align=right><a href="#Top">Top</a></div>
