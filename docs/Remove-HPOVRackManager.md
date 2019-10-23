<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVRackManager
<p>
Remove rack manager from appliance.

### SYNTAX
<p>
<pre><code>Remove-HPOVRackManager [-InputObject] &lt;HPOneView.Servers.RackManager&gt;[ [-ApplianceConnection] &lt;Array&gt;][ [-Force] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack manager platform is a multinode system. The nodes are housed within a rack or across racks, and are centrally managed by a management controller. The Rack Managers screen enables you to manage and visualize the physical location of rack manager platforms within a rack.
 This Cmdlet will remove a claimed rack manager resource from the appliance.
 Minimum required privileges: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove resource, in cases where the device manager has been re-addressed and is no longer accessible, or there are other communication issues preventing the resource removal.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Servers.RackManager&gt;<p>
An HPOneView.Servers.RackManager resource from Get-HPOVRackManager.

<table><tbody><tr><td>Aliases</td><td>uri, name, Server</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Servers.RackManager**_

 An HPOneView.Servers.RackManager resource from Get-HPOVRackManager.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRackManager -Name rackmanager2.domain.com -ErrorAction Stop | Remove-HPOVRackManager</pre>
Remove the provided rack manager resource from the appliance.



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVRackManager
<p>
Remove rack manager from appliance.

### SYNTAX
<p>
<pre><code>Remove-HPOVRackManager [-InputObject] &lt;HPOneView.Servers.RackManager&gt;[ [-ApplianceConnection] &lt;Array&gt;][ [-Force] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack manager platform is a multinode system. The nodes are housed within a rack or across racks, and are centrally managed by a management controller. The Rack Managers screen enables you to manage and visualize the physical location of rack manager platforms within a rack.
 This Cmdlet will remove a claimed rack manager resource from the appliance.
 Minimum required privileges: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove resource, in cases where the device manager has been re-addressed and is no longer accessible, or there are other communication issues preventing the resource removal.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Servers.RackManager&gt;<p>
An HPOneView.Servers.RackManager resource from Get-HPOVRackManager.

<table><tbody><tr><td>Aliases</td><td>uri, name, Server</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Servers.RackManager**_

 An HPOneView.Servers.RackManager resource from Get-HPOVRackManager.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRackManager -Name rackmanager2.domain.com -ErrorAction Stop | Remove-HPOVRackManager</pre>
Remove the provided rack manager resource from the appliance.



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVRackManager
<p>
Remove rack manager from appliance.

### SYNTAX
<p>
<pre><code>Remove-HPOVRackManager [-InputObject] &lt;HPOneView.Servers.RackManager&gt;[ [-ApplianceConnection] &lt;Array&gt;][ [-Force] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack manager platform is a multinode system. The nodes are housed within a rack or across racks, and are centrally managed by a management controller. The Rack Managers screen enables you to manage and visualize the physical location of rack manager platforms within a rack.
 This Cmdlet will remove a claimed rack manager resource from the appliance.
 Minimum required privileges: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove resource, in cases where the device manager has been re-addressed and is no longer accessible, or there are other communication issues preventing the resource removal.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Servers.RackManager&gt;<p>
An HPOneView.Servers.RackManager resource from Get-HPOVRackManager.

<table><tbody><tr><td>Aliases</td><td>uri, name, Server</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Servers.RackManager**_

 An HPOneView.Servers.RackManager resource from Get-HPOVRackManager.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRackManager -Name rackmanager2.domain.com -ErrorAction Stop | Remove-HPOVRackManager</pre>
Remove the provided rack manager resource from the appliance.



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
