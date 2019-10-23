<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVClusterProfile
<p>
Remove a cluster profile resource.

### SYNTAX
<p>
<pre><code>Remove-HPOVClusterProfile [-InputObject] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A cluster profile enables you to deploy and manage a cluster of servers (nodes) managed by HPE OneView and orchestrates consistent configuration on cluster of server nodes to share the same workload.  A cluster profile and the associated server profile template are used to define a consistent configuration from server nodes to members in the cluster. The associated server profiles define physical server configurations for server nodes in the cluster, which are derived from parent cluster profile and its associated server profile template.

NOTE: The server profile template must have a configured connection to the hypervisor management network for the template to be valid for use by a hypervisor cluster profile.

The cluster profile helps you manage life cycle operations, such as growing or shrinking the cluster, modifying configurations based on needs, consistency checks, and nondisruptive firmware updates on the member nodes. For example, you can grow or shrink a cluster by adding or removing members from the cluster profile. Any change in the configuration of the cluster profile will be reported as an inconsistency. When inconsistencies are remediated, the changed configurations can be applied on cluster and member nodes.

A cluster profile can manage VMware ESXi-based hypervisor clusters by leveraging VMware vCenter server. A hypervisor cluster must be managed by one instance of HPE OneView to avoid inconsistencies.

Use this Cmdlet to remove a cluster profile within OneView.  Removing a cluster within OneView will also destroy the cluster within the cluster manager.

Privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Use to override the prompt.

**** WARNING **** - Use this with caution, as removing a cluster from OneView will also destroy the cluster within the cluster manager.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force delete the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The cluster profile from Get-HPOVClusterProfile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Cluster.ClusterProfile [System.Management.Automation.PSCustomObject]**_

 Cluster profile resource from Get-HPOVClusterProfile.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVClusterProfile -Name ProdCluster1 | Remove-HPOVClusterProfile
</pre>
Remove the specified cluster profile.



### Related Links

* [Get-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVClusterProfile)
* [New-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfile)
* [New-HPOVClusterProfileMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfileMember)
* [Update-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVClusterProfile)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVClusterProfile
<p>
Remove a cluster profile resource.

### SYNTAX
<p>
<pre><code>Remove-HPOVClusterProfile [-InputObject] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A cluster profile enables you to deploy and manage a cluster of servers (nodes) managed by HPE OneView and orchestrates consistent configuration on cluster of server nodes to share the same workload.  A cluster profile and the associated server profile template are used to define a consistent configuration from server nodes to members in the cluster. The associated server profiles define physical server configurations for server nodes in the cluster, which are derived from parent cluster profile and its associated server profile template.

NOTE: The server profile template must have a configured connection to the hypervisor management network for the template to be valid for use by a hypervisor cluster profile.

The cluster profile helps you manage life cycle operations, such as growing or shrinking the cluster, modifying configurations based on needs, consistency checks, and nondisruptive firmware updates on the member nodes. For example, you can grow or shrink a cluster by adding or removing members from the cluster profile. Any change in the configuration of the cluster profile will be reported as an inconsistency. When inconsistencies are remediated, the changed configurations can be applied on cluster and member nodes.

A cluster profile can manage VMware ESXi-based hypervisor clusters by leveraging VMware vCenter server. A hypervisor cluster must be managed by one instance of HPE OneView to avoid inconsistencies.

Use this Cmdlet to remove a cluster profile within OneView.  Removing a cluster within OneView will also destroy the cluster within the cluster manager.

Privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Use to override the prompt.

**** WARNING **** - Use this with caution, as removing a cluster from OneView will also destroy the cluster within the cluster manager.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force delete the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The cluster profile from Get-HPOVClusterProfile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Cluster.ClusterProfile [System.Management.Automation.PSCustomObject]**_

 Cluster profile resource from Get-HPOVClusterProfile.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVClusterProfile -Name ProdCluster1 | Remove-HPOVClusterProfile
</pre>
Remove the specified cluster profile.



### Related Links

* [Get-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVClusterProfile)
* [New-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfile)
* [New-HPOVClusterProfileMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfileMember)
* [Update-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVClusterProfile)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVClusterProfile
<p>
Remove a cluster profile resource.

### SYNTAX
<p>
<pre><code>Remove-HPOVClusterProfile [-InputObject] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A cluster profile enables you to deploy and manage a cluster of servers (nodes) managed by HPE OneView and orchestrates consistent configuration on cluster of server nodes to share the same workload.  A cluster profile and the associated server profile template are used to define a consistent configuration from server nodes to members in the cluster. The associated server profiles define physical server configurations for server nodes in the cluster, which are derived from parent cluster profile and its associated server profile template.

NOTE: The server profile template must have a configured connection to the hypervisor management network for the template to be valid for use by a hypervisor cluster profile.

The cluster profile helps you manage life cycle operations, such as growing or shrinking the cluster, modifying configurations based on needs, consistency checks, and nondisruptive firmware updates on the member nodes. For example, you can grow or shrink a cluster by adding or removing members from the cluster profile. Any change in the configuration of the cluster profile will be reported as an inconsistency. When inconsistencies are remediated, the changed configurations can be applied on cluster and member nodes.

A cluster profile can manage VMware ESXi-based hypervisor clusters by leveraging VMware vCenter server. A hypervisor cluster must be managed by one instance of HPE OneView to avoid inconsistencies.

Use this Cmdlet to remove a cluster profile within OneView.  Removing a cluster within OneView will also destroy the cluster within the cluster manager.

Privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Use to override the prompt.

**** WARNING **** - Use this with caution, as removing a cluster from OneView will also destroy the cluster within the cluster manager.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force delete the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The cluster profile from Get-HPOVClusterProfile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Cluster.ClusterProfile [System.Management.Automation.PSCustomObject]**_

 Cluster profile resource from Get-HPOVClusterProfile.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVClusterProfile -Name ProdCluster1 | Remove-HPOVClusterProfile
</pre>
Remove the specified cluster profile.



### Related Links

* [Get-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVClusterProfile)
* [New-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfile)
* [New-HPOVClusterProfileMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfileMember)
* [Update-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVClusterProfile)


***
<div align=right><a href="#Top">Top</a></div>
