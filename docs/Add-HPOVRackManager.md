<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Add-HPOVRackManager
<p>
Add support Rack Manager (HPE Superdome Flex) resource

### SYNTAX
<p>
<pre><code>Add-HPOVRackManager [-ComputerName] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-Scope] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack manager platform is a multinode system. The nodes are housed within a rack or across racks, and are centrally managed by a management controller. The Rack Managers screen enables you to manage and visualize the physical location of rack manager platforms within a rack.
 A rack manager platform consists of the following:
 	* One or more chassis - The chassis are individual nodes that are used to build logical components such as systems or partitions. Each chassis is a physical container for system components like the compute, storage, or network nodes.
 	 In an HPE Superdome Flex Server, the chassis are 5U nodes that represent the compute nodes with CPU, memory, I/O, power supplies, and fans.
 	* One or more systems or partitions - The system is a logical entity that functions as a server, and runs a single instance of an operating system to host services. In HPE OneView, the partition is modeled as a server hardware resource.
 	 In an HPE Superdome Flex Server, the systems are also called partitions. A partition consists of one or more compute chassis that are interconnected through an ultra-fast fabric. Each partition starts with a base chassis and can be extended using expansion chassis to form a large system.
 	* One or more managers - The manager component manages the rack manager platform, and hosts the management controller function. HPE OneView communicates with the rack manager through this management controller enabling system administration, control, and platform management of the rack manager platform. Some platforms have multiple manager components to support redundancy.
 	 In an HPE Superdome Flex Server, the manager component is called the Rack Management Controller (RMC). The RMC hosts the DMTF Redfish APIs.
 	* One or more racks - The racks physically contain all the rack manager platform components.
 When you add a rack manager, HPE OneView automatically applies the HPE OneView Standard license to the rack manager. HPE OneView discovers and monitors the hardware subcomponents of the rack manager. Minimum required privileges: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ComputerName &lt;String&gt;<p>
The IP/Address of the supported rack manager

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force add the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Credential = Get-Credential -Username Administrator -Message "RackManager Password" Add-HPOVRackManager -ComputerName rackmanger1.domain.com -Credential $Credential</pre>
Add the specified rack manager.



### Related Links

* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Add-HPOVRackManager
<p>
Add support Rack Manager (HPE Superdome Flex) resource

### SYNTAX
<p>
<pre><code>Add-HPOVRackManager [-ComputerName] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-Scope] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack manager platform is a multinode system. The nodes are housed within a rack or across racks, and are centrally managed by a management controller. The Rack Managers screen enables you to manage and visualize the physical location of rack manager platforms within a rack.
 A rack manager platform consists of the following:
 	* One or more chassis - The chassis are individual nodes that are used to build logical components such as systems or partitions. Each chassis is a physical container for system components like the compute, storage, or network nodes.
 	 In an HPE Superdome Flex Server, the chassis are 5U nodes that represent the compute nodes with CPU, memory, I/O, power supplies, and fans.
 	* One or more systems or partitions - The system is a logical entity that functions as a server, and runs a single instance of an operating system to host services. In HPE OneView, the partition is modeled as a server hardware resource.
 	 In an HPE Superdome Flex Server, the systems are also called partitions. A partition consists of one or more compute chassis that are interconnected through an ultra-fast fabric. Each partition starts with a base chassis and can be extended using expansion chassis to form a large system.
 	* One or more managers - The manager component manages the rack manager platform, and hosts the management controller function. HPE OneView communicates with the rack manager through this management controller enabling system administration, control, and platform management of the rack manager platform. Some platforms have multiple manager components to support redundancy.
 	 In an HPE Superdome Flex Server, the manager component is called the Rack Management Controller (RMC). The RMC hosts the DMTF Redfish APIs.
 	* One or more racks - The racks physically contain all the rack manager platform components.
 When you add a rack manager, HPE OneView automatically applies the HPE OneView Standard license to the rack manager. HPE OneView discovers and monitors the hardware subcomponents of the rack manager. Minimum required privileges: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ComputerName &lt;String&gt;<p>
The IP/Address of the supported rack manager

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force add the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Credential = Get-Credential -Username Administrator -Message "RackManager Password" Add-HPOVRackManager -ComputerName rackmanger1.domain.com -Credential $Credential</pre>
Add the specified rack manager.



### Related Links

* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Add-HPOVRackManager
<p>
Add support Rack Manager (HPE Superdome Flex) resource

### SYNTAX
<p>
<pre><code>Add-HPOVRackManager [-ComputerName] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-Scope] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A rack manager platform is a multinode system. The nodes are housed within a rack or across racks, and are centrally managed by a management controller. The Rack Managers screen enables you to manage and visualize the physical location of rack manager platforms within a rack.
 A rack manager platform consists of the following:
 	* One or more chassis - The chassis are individual nodes that are used to build logical components such as systems or partitions. Each chassis is a physical container for system components like the compute, storage, or network nodes.
 	 In an HPE Superdome Flex Server, the chassis are 5U nodes that represent the compute nodes with CPU, memory, I/O, power supplies, and fans.
 	* One or more systems or partitions - The system is a logical entity that functions as a server, and runs a single instance of an operating system to host services. In HPE OneView, the partition is modeled as a server hardware resource.
 	 In an HPE Superdome Flex Server, the systems are also called partitions. A partition consists of one or more compute chassis that are interconnected through an ultra-fast fabric. Each partition starts with a base chassis and can be extended using expansion chassis to form a large system.
 	* One or more managers - The manager component manages the rack manager platform, and hosts the management controller function. HPE OneView communicates with the rack manager through this management controller enabling system administration, control, and platform management of the rack manager platform. Some platforms have multiple manager components to support redundancy.
 	 In an HPE Superdome Flex Server, the manager component is called the Rack Management Controller (RMC). The RMC hosts the DMTF Redfish APIs.
 	* One or more racks - The racks physically contain all the rack manager platform components.
 When you add a rack manager, HPE OneView automatically applies the HPE OneView Standard license to the rack manager. HPE OneView discovers and monitors the hardware subcomponents of the rack manager. Minimum required privileges: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ComputerName &lt;String&gt;<p>
The IP/Address of the supported rack manager

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force add the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Credential = Get-Credential -Username Administrator -Message "RackManager Password" Add-HPOVRackManager -ComputerName rackmanger1.domain.com -Credential $Credential</pre>
Add the specified rack manager.



### Related Links

* [Get-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRackManager)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
