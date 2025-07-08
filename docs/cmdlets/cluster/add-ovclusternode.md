---
description: Add a new cluster member to an existing cluster.
---

# Add-OVClusterNode

## Syntax

```powershell
Add-OVClusterNode
    [-ComputerName] <String>
    [-Credential] <PSCredential>
    [-Scope <Object>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A hypervisor is software deployed on a server node that creates and runs virtual machines. Hypervisors are clustered to ensure high availability, to optimize resource utilization, and to be fault tolerant. A hypervisor cluster profile enables you to deploy and manage a cluster of hypervisors running on servers managed by HPE OneView and orchestrates consistent configuration on cluster of server nodes to share the same workload.

A hypervisor cluster profile and the associated server profile template are used to define a consistent configuration from server nodes to hypervisors in the cluster. The server profiles define physical server configurations for server nodes in the cluster, which are derived from hypervisor cluster profile and the associated server profile template. The hypervisor profiles define network and storage configurations for hypervisors in the cluster, which are derived from hypervisor cluster profile. Hypervisor network and storage configurations in the hypervisor cluster profile are defined based on physical server configuration to ensure consistent configuration from server node to hypervisor.

You can import additional hypervisors into the hypervisor cluster profile by adding existing hypervisors. Use this option if you are deploying the hypervisor OS on the server nodes outside of HPE OneView. This option helps you to deploy and manage hypervisor clusters using the hypervisor OS deployment tool of your choice.

To add a node to an existing cluster, a server profile must be assigned to a server resource, created from the same server profile template the cluster was created from.  The hypervisor OS must be installed and host added to the hypervisor manager using its management interface.

???+ info
    Minimum required privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.

## Examples

###  Example 1 

```powershell
Add-OVClusterNode
```

Default example

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ComputerName &lt;String&gt;

The computer name of the hypervisor host to add.

| Aliases | Name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter to provide the hypervisor manager credentials.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Provide an `[HPEOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the Add-OVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

## Return Values

## Related Links

* [Add-OVClusterNodeToCluster](add-ovclusternodetocluster.md)
* [Enter-OVClusterNodeMaintenanceMode](enter-ovclusternodemaintenancemode.md)
* [Exit-OVClusterNodeMaintenanceMode](exit-ovclusternodemaintenancemode.md)
* [Get-OVClusterNode](get-ovclusternode.md)
* [Update-OVClusterNode](update-ovclusternode.md)
