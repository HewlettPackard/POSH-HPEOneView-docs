<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVClusterProfile
<p>
Get a deployed cluster profile.

### SYNTAX
<p>
<pre><code>Get-HPOVClusterProfile[ [-Name] &lt;String&gt;][ [-NonCompliant] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A cluster profile enables you to deploy and manage a cluster of servers (nodes) managed by HPE OneView and orchestrates consistent configuration on cluster of server nodes to share the same workload.  A cluster profile and the associated server profile template are used to define a consistent configuration from server nodes to members in the cluster. The associated server profiles define physical server configurations for server nodes in the cluster, which are derived from parent cluster profile and its associated server profile template. 

NOTE: The server profile template must have a configured connection to the hypervisor management network for the template to be valid for use by a hypervisor cluster profile.

The cluster profile helps you manage life cycle operations, such as growing or shrinking the cluster, modifying configurations based on needs, consistency checks, and nondisruptive firmware updates on the member nodes. For example, you can grow or shrink a cluster by adding or removing members from the cluster profile. Any change in the configuration of the cluster profile will be reported as an inconsistency. When inconsistencies are remediated, the changed configurations can be applied on cluster and member nodes.

A cluster profile can manage VMware ESXi-based hypervisor clusters by leveraging VMware vCenter server. A hypervisor cluster must be managed by one instance of HPE OneView to avoid inconsistencies.

Use this Cmdlet to create a new cluster profile within OneView.  Any new created clusters within OneView cannot be removed from OneView withour destroying the cluster within the cluster manager.

Privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify a string value to filter for the specific resource

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NonCompliant &lt;SwitchParameter&gt;<p>
Filter resources based on their non-compliant state.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Cluster.ClusterProfile [System.Management.Automation.PSCustomObject]**_

 

The returned cluster profile resource.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVClusterProfile
</pre>
Default example



### Related Links

* [New-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfile)
* [New-HPOVClusterProfileMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfileMember)
* [Remove-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVClusterProfile)
* [Update-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVClusterProfile)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVClusterProfile
<p>
Get a deployed cluster profile.

### SYNTAX
<p>
<pre><code>Get-HPOVClusterProfile[ [-Name] &lt;String&gt;][ [-NonCompliant] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A cluster profile enables you to deploy and manage a cluster of servers (nodes) managed by HPE OneView and orchestrates consistent configuration on cluster of server nodes to share the same workload.  A cluster profile and the associated server profile template are used to define a consistent configuration from server nodes to members in the cluster. The associated server profiles define physical server configurations for server nodes in the cluster, which are derived from parent cluster profile and its associated server profile template. 

NOTE: The server profile template must have a configured connection to the hypervisor management network for the template to be valid for use by a hypervisor cluster profile.

The cluster profile helps you manage life cycle operations, such as growing or shrinking the cluster, modifying configurations based on needs, consistency checks, and nondisruptive firmware updates on the member nodes. For example, you can grow or shrink a cluster by adding or removing members from the cluster profile. Any change in the configuration of the cluster profile will be reported as an inconsistency. When inconsistencies are remediated, the changed configurations can be applied on cluster and member nodes.

A cluster profile can manage VMware ESXi-based hypervisor clusters by leveraging VMware vCenter server. A hypervisor cluster must be managed by one instance of HPE OneView to avoid inconsistencies.

Use this Cmdlet to create a new cluster profile within OneView.  Any new created clusters within OneView cannot be removed from OneView withour destroying the cluster within the cluster manager.

Privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify a string value to filter for the specific resource

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NonCompliant &lt;SwitchParameter&gt;<p>
Filter resources based on their non-compliant state.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Cluster.ClusterProfile [System.Management.Automation.PSCustomObject]**_

 

The returned cluster profile resource.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVClusterProfile
</pre>
Default example



### Related Links

* [New-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfile)
* [New-HPOVClusterProfileMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfileMember)
* [Remove-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVClusterProfile)
* [Update-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVClusterProfile)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVClusterProfile
<p>
Get a deployed cluster profile.

### SYNTAX
<p>
<pre><code>Get-HPOVClusterProfile[ [-Name] &lt;String&gt;][ [-NonCompliant] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A cluster profile enables you to deploy and manage a cluster of servers (nodes) managed by HPE OneView and orchestrates consistent configuration on cluster of server nodes to share the same workload.  A cluster profile and the associated server profile template are used to define a consistent configuration from server nodes to members in the cluster. The associated server profiles define physical server configurations for server nodes in the cluster, which are derived from parent cluster profile and its associated server profile template. 

NOTE: The server profile template must have a configured connection to the hypervisor management network for the template to be valid for use by a hypervisor cluster profile.

The cluster profile helps you manage life cycle operations, such as growing or shrinking the cluster, modifying configurations based on needs, consistency checks, and nondisruptive firmware updates on the member nodes. For example, you can grow or shrink a cluster by adding or removing members from the cluster profile. Any change in the configuration of the cluster profile will be reported as an inconsistency. When inconsistencies are remediated, the changed configurations can be applied on cluster and member nodes.

A cluster profile can manage VMware ESXi-based hypervisor clusters by leveraging VMware vCenter server. A hypervisor cluster must be managed by one instance of HPE OneView to avoid inconsistencies.

Use this Cmdlet to create a new cluster profile within OneView.  Any new created clusters within OneView cannot be removed from OneView withour destroying the cluster within the cluster manager.

Privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify a string value to filter for the specific resource

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NonCompliant &lt;SwitchParameter&gt;<p>
Filter resources based on their non-compliant state.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Cluster.ClusterProfile [System.Management.Automation.PSCustomObject]**_

 

The returned cluster profile resource.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVClusterProfile
</pre>
Default example



### Related Links

* [New-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfile)
* [New-HPOVClusterProfileMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfileMember)
* [Remove-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVClusterProfile)
* [Update-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVClusterProfile)


***
<div align=right><a href="#Top">Top</a></div>
