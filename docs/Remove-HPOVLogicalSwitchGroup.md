<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVLogicalSwitchGroup
<p>
Remove a new Logical Switch Group resource.

### SYNTAX
<p>
<pre><code>Remove-HPOVLogicalSwitchGroup [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;][ [-Force] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will remove the configured Logical Switch Group from the requested appliance(s).  You cannot delete a logical switch group while it is being used by one or more logical switches. To delete the logical switch group, first delete the logical switches using the logical switch group.
 Required privileges: Infrastructure administrator or Network administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Bypass the confirmation prompt, and process all of the objects.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove resource, even if there are communication problems.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Logical Switch resource Name or Object to update.

<table><tbody><tr><td>Aliases</td><td>ls, LogicalSwitchGroup</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalSwitchGroup [System.Management.Automation.PSCustomObject]**_

 Logical Switch Group resource.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task resource object results.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of remove Logical Switch async task resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalSwitchGroup | Remove-HPOVLogicalSwitchGroup</pre>
Remove all logical switch group resources found on the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalSwitchGroup -Name "My Logical Switch Group Policy 1" | Remove-HPOVLogicalSwitchGroup -confirm:$false</pre>
Remove the "My Logical SwitchGroup Policy 1" resource.



### Related Links

* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [New-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitchGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVLogicalSwitchGroup
<p>
Remove a new Logical Switch Group resource.

### SYNTAX
<p>
<pre><code>Remove-HPOVLogicalSwitchGroup [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;][ [-Force] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will remove the configured Logical Switch Group from the requested appliance(s).  You cannot delete a logical switch group while it is being used by one or more logical switches. To delete the logical switch group, first delete the logical switches using the logical switch group.
 Required privileges: Infrastructure administrator or Network administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Bypass the confirmation prompt, and process all of the objects.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove resource, even if there are communication problems.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Logical Switch resource Name or Object to update.

<table><tbody><tr><td>Aliases</td><td>ls, LogicalSwitchGroup</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalSwitchGroup [System.Management.Automation.PSCustomObject]**_

 Logical Switch Group resource.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task resource object results.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of remove Logical Switch async task resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalSwitchGroup | Remove-HPOVLogicalSwitchGroup</pre>
Remove all logical switch group resources found on the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalSwitchGroup -Name "My Logical Switch Group Policy 1" | Remove-HPOVLogicalSwitchGroup -confirm:$false</pre>
Remove the "My Logical SwitchGroup Policy 1" resource.



### Related Links

* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [New-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitchGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVLogicalSwitchGroup
<p>
Remove a new Logical Switch Group resource.

### SYNTAX
<p>
<pre><code>Remove-HPOVLogicalSwitchGroup [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;][ [-Force] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will remove the configured Logical Switch Group from the requested appliance(s).  You cannot delete a logical switch group while it is being used by one or more logical switches. To delete the logical switch group, first delete the logical switches using the logical switch group.
 Required privileges: Infrastructure administrator or Network administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Bypass the confirmation prompt, and process all of the objects.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove resource, even if there are communication problems.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Logical Switch resource Name or Object to update.

<table><tbody><tr><td>Aliases</td><td>ls, LogicalSwitchGroup</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalSwitchGroup [System.Management.Automation.PSCustomObject]**_

 Logical Switch Group resource.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task resource object results.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of remove Logical Switch async task resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalSwitchGroup | Remove-HPOVLogicalSwitchGroup</pre>
Remove all logical switch group resources found on the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalSwitchGroup -Name "My Logical Switch Group Policy 1" | Remove-HPOVLogicalSwitchGroup -confirm:$false</pre>
Remove the "My Logical SwitchGroup Policy 1" resource.



### Related Links

* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [New-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitchGroup)


***
<div align=right><a href="#Top">Top</a></div>
