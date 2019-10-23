<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Update-HPOVRackManager
<p>
Refresh or reconnect a rack manager resource.

### SYNTAX
<p>
<pre><code>Update-HPOVRackManager [-InputObject] &lt;HPOneView.Servers.RackManager[]&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVRackManager [-InputObject] &lt;HPOneView.Servers.RackManager[]&gt; [-Hostname] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVRackManager[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack manager platform is a multinode system. The nodes are housed within a rack or across racks, and are centrally managed by a management controller. The Rack Managers screen enables you to manage and visualize the physical location of rack manager platforms within a rack.
 This Cmdlet will perform a refresh of the claimed rack manager.  If there is a communication issue, the -Hostname and -Crednetial parameters will need to be provided, which will then re-establish communication to the rack manager.
 Minimum required privileges: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
****WARNING****
Please use with caution.  Using this parameter will force delete a resource for any reason and cannot be undone.

Force update the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
The FQDN or IP Address of the rack manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Servers.RackManager[]&gt;<p>
The HPOneView.Servers.RackManager resource to refresh.

<table><tbody><tr><td>Aliases</td><td>name, Server</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Servers.RackManager**_

 The rack manager resource from Get-HPOVRackManager.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRackManager -Name rackmanager1.domain.com -ErrorAction Stop | Update-HPOVRackManager</pre>
Refresh the specified rack manager resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$RackManager = Get-HPOVRackManager -Name rackmanager1.domain.com -ErrorAction Stop $Credential = Get-Credential Administrator -Message "Password" 	$RefreshParams = @{ InputObject = $RackManager} 
# Check the rack manager for its state and refresh state reason if ($RackManager.State -eq 'Unmanaged' -and $RackManager.RefreshState -eq 'RefreshFailed') { 	# Add the "Credential" parameter to the Hashtable splat 	$RackManager.Add("Credential", $Credential) 
	# Add the Hostname to the Hashtable splat 	$RackManager.Add("Hostname", $RackManager.SubResources.Managers[0].Hostname) } Update-HPOVRackManager @RefreshParams</pre>
Refresh the specified rack manager resource, and provide the credentials to restablish.



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Update-HPOVRackManager
<p>
Refresh or reconnect a rack manager resource.

### SYNTAX
<p>
<pre><code>Update-HPOVRackManager [-InputObject] &lt;HPOneView.Servers.RackManager[]&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVRackManager [-InputObject] &lt;HPOneView.Servers.RackManager[]&gt; [-Hostname] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVRackManager[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack manager platform is a multinode system. The nodes are housed within a rack or across racks, and are centrally managed by a management controller. The Rack Managers screen enables you to manage and visualize the physical location of rack manager platforms within a rack.
 This Cmdlet will perform a refresh of the claimed rack manager.  If there is a communication issue, the -Hostname and -Crednetial parameters will need to be provided, which will then re-establish communication to the rack manager.
 Minimum required privileges: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
****WARNING****
Please use with caution.  Using this parameter will force delete a resource for any reason and cannot be undone.

Force update the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
The FQDN or IP Address of the rack manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Servers.RackManager[]&gt;<p>
The HPOneView.Servers.RackManager resource to refresh.

<table><tbody><tr><td>Aliases</td><td>name, Server</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Servers.RackManager**_

 The rack manager resource from Get-HPOVRackManager.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRackManager -Name rackmanager1.domain.com -ErrorAction Stop | Update-HPOVRackManager</pre>
Refresh the specified rack manager resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$RackManager = Get-HPOVRackManager -Name rackmanager1.domain.com -ErrorAction Stop $Credential = Get-Credential Administrator -Message "Password" 	$RefreshParams = @{ InputObject = $RackManager} 
# Check the rack manager for its state and refresh state reason if ($RackManager.State -eq 'Unmanaged' -and $RackManager.RefreshState -eq 'RefreshFailed') { 	# Add the "Credential" parameter to the Hashtable splat 	$RackManager.Add("Credential", $Credential) 
	# Add the Hostname to the Hashtable splat 	$RackManager.Add("Hostname", $RackManager.SubResources.Managers[0].Hostname) } Update-HPOVRackManager @RefreshParams</pre>
Refresh the specified rack manager resource, and provide the credentials to restablish.



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Update-HPOVRackManager
<p>
Refresh or reconnect a rack manager resource.

### SYNTAX
<p>
<pre><code>Update-HPOVRackManager [-InputObject] &lt;HPOneView.Servers.RackManager[]&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVRackManager [-InputObject] &lt;HPOneView.Servers.RackManager[]&gt; [-Hostname] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVRackManager[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack manager platform is a multinode system. The nodes are housed within a rack or across racks, and are centrally managed by a management controller. The Rack Managers screen enables you to manage and visualize the physical location of rack manager platforms within a rack.
 This Cmdlet will perform a refresh of the claimed rack manager.  If there is a communication issue, the -Hostname and -Crednetial parameters will need to be provided, which will then re-establish communication to the rack manager.
 Minimum required privileges: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force update the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
The FQDN or IP Address of the rack manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Servers.RackManager[]&gt;<p>
The HPOneView.Servers.RackManager resource to refresh.

<table><tbody><tr><td>Aliases</td><td>name, Server</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Servers.RackManager**_

 The rack manager resource from Get-HPOVRackManager.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRackManager -Name rackmanager1.domain.com -ErrorAction Stop | Update-HPOVRackManager</pre>
Refresh the specified rack manager resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$RackManager = Get-HPOVRackManager -Name rackmanager1.domain.com -ErrorAction Stop $Credential = Get-Credential Administrator -Message "Password" 	$RefreshParams = @{ InputObject = $RackManager} 
# Check the rack manager for its state and refresh state reason if ($RackManager.State -eq 'Unmanaged' -and $RackManager.RefreshState -eq 'RefreshFailed') { 	# Add the "Credential" parameter to the Hashtable splat 	$RackManager.Add("Credential", $Credential) 
	# Add the Hostname to the Hashtable splat 	$RackManager.Add("Hostname", $RackManager.SubResources.Managers[0].Hostname) } Update-HPOVRackManager @RefreshParams</pre>
Refresh the specified rack manager resource, and provide the credentials to restablish.



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
