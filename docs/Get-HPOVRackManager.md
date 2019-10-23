<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVRackManager
<p>
Get claimed rack manage resource.

### SYNTAX
<p>
<pre><code>Get-HPOVRackManager[ [-Name] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

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
 Minimum required privileges: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify a resource name to filter for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	*AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Servers.RackManager**_

 

Rack manager resource object, with associated sub components like managers, chassis and rack.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRackManager</pre>
Get all added rack manager resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVRackManager -Name manager1.domain.com -ErrorAction Stop</pre>
Get the specified rack manager resource.



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVRackManager
<p>
Get claimed rack manage resource.

### SYNTAX
<p>
<pre><code>Get-HPOVRackManager[ [-Name] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

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
 Minimum required privileges: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify a resource name to filter for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	*AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Servers.RackManager**_

 

Rack manager resource object, with associated sub components like managers, chassis and rack.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRackManager</pre>
Get all added rack manager resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVRackManager -Name manager1.domain.com -ErrorAction Stop</pre>
Get the specified rack manager resource.



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVRackManager
<p>
Get claimed rack manage resource.

### SYNTAX
<p>
<pre><code>Get-HPOVRackManager[ [-Name] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

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
 Minimum required privileges: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify a resource name to filter for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	*AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Servers.RackManager**_

 

Rack manager resource object, with associated sub components like managers, chassis and rack.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRackManager</pre>
Get all added rack manager resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVRackManager -Name manager1.domain.com -ErrorAction Stop</pre>
Get the specified rack manager resource.



### Related Links

* [Add-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVRackManager)
* [Remove-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRackManager)
* [Update-HPOVRackManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRackManager)


***
<div align=right><a href="#Top">Top</a></div>
