---
description: Get configured hypervisor managers.
---

# Get-HPOVClusterManager

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVClusterManager [[-Name] <String>] [[-Version] <String>] [[-Label] <String>] [[-Scope] <Object>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

A hypervisor is software deployed on a server node that creates and runs virtual machines. Hypervisors are clustered to ensure high availability, to optimize resource utilization, and to be fault tolerant. A hypervisor cluster profile enables you to deploy and manage a cluster of hypervisors running on servers managed by HPE OneView and orchestrates consistent configuration on cluster of server nodes to share the same workload.

A hypervisor cluster profile and the associated server profile template are used to define a consistent configuration from server nodes to hypervisors in the cluster. The server profiles define physical server configurations for server nodes in the cluster, which are derived from hypervisor cluster profile and the associated server profile template. The hypervisor profiles define network and storage configurations for hypervisors in the cluster, which are derived from hypervisor cluster profile. Hypervisor network and storage configurations in the hypervisor cluster profile are defined based on physical server configuration to ensure consistent configuration from server node to hypervisor.

You can register a hypervisor manager with HPE OneView by using [Add-HPOVClusterManager](add-hpovclustermanager.md#hpe-oneview-5-00-library). The registered hypervisor manager contains preferences, which are used as default hypervisor or cluster settings during hypervisor cluster profile creation. You can modify the hypervisor manager preferences when adding, or using Set-HPOVClusterManager. You can override these values when creating a hypervisor cluster profile.

This Cmdlet will get the configured hypervisor cluster manager on the appliance.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Label &lt;String&gt; 

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

Filter for vCenter name.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* HPOneView.Appliance.ScopeCollection
* HPOneView.Appliance.ConnectionPermission

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Version &lt;String&gt; 

Filter for specific vCenter version.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Cluster.HypervisorManager**_

The configured hypervisor cluster manager and its properties

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVClusterManager -Name vcenter.domain.com
```

Get the specified hypervisor manager by resource name.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVClusterManager -Version 5.5.0
```

Get all of the configured hypervisor managers that are vSphere 5.5.0. 

### Related Links 

* [Add-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVClusterManager) 
* [Remove-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVClusterManager) 
* [Set-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVClusterManager) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVClusterManager [[-Name] <String>] [[-Version] <String>] [[-Label] <String>] [[-Scope] <Object>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description



A hypervisor is software deployed on a server node that creates and runs virtual machines. Hypervisors are clustered to ensure high availability, to optimize resource utilization, and to be fault tolerant. A hypervisor cluster profile enables you to deploy and manage a cluster of hypervisors running on servers managed by HPE OneView and orchestrates consistent configuration on cluster of server nodes to share the same workload.

A hypervisor cluster profile and the associated server profile template are used to define a consistent configuration from server nodes to hypervisors in the cluster. The server profiles define physical server configurations for server nodes in the cluster, which are derived from hypervisor cluster profile and the associated server profile template. The hypervisor profiles define network and storage configurations for hypervisors in the cluster, which are derived from hypervisor cluster profile. Hypervisor network and storage configurations in the hypervisor cluster profile are defined based on physical server configuration to ensure consistent configuration from server node to hypervisor.

You can register a hypervisor manager with HPE OneView by using [Add-HPOVClusterManager](add-hpovclustermanager.md#hpe-oneview-4-20-library). The registered hypervisor manager contains preferences, which are used as default hypervisor or cluster settings during hypervisor cluster profile creation. You can modify the hypervisor manager preferences when adding, or using Set-HPOVClusterManager. You can override these values when creating a hypervisor cluster profile.

This Cmdlet will get the configured hypervisor cluster manager on the appliance.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Label &lt;String&gt; 

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

Filter for vCenter name.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

* AllResources
* AllResourcesInScope
* HPOneView.Appliance.ScopeCollection
* HPOneView.Appliance.ConnectionPermission

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Version &lt;String&gt; 

Filter for specific vCenter version.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Cluster.HypervisorManager**_

The configured hypervisor cluster manager and its properties

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVClusterManager -Name vcenter.domain.com
```

Get the specified hypervisor manager by resource name.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVClusterManager -Version 5.5.0
```

Get all of the configured hypervisor managers that are vSphere 5.5.0. 

### Related Links 

* [Add-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVClusterManager) 
* [Remove-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVClusterManager) 
* [Set-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVClusterManager) 



