---
description: Request a cluster node member to exit maintenance mode.
---

# Exit-HPOVClusterNodeMaintenanceMode

## Syntax

```text
Exit-HPOVClusterNodeMaintenanceMode
    [-InputObject] <Object>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A cluster in an active state runs a shared workload, like virtual machines within a Hypervisor Cluser. When you place a cluster node into maintenance mode, the workload running on the cluster member is migrated to other available cluster member.  While in maintenance state the server administrator can perform updates on the host software, server hardware, or both, preventing business downtime.

After the maintenance operation on the cluster member completes, you must release it from maintenance mode to resume hosting the shared workload.

Privileges: Infrastructure administrator, Server administrator, Server Profile administrator, Server Profile architect, or Server Profile operator

## Examples

###  Example 1 

```text
Get-HPOVClusterNode -Name Cluster1-Node1 | Exit-HPOVClusterNodeMaintenanceMode

```

Request to the specific node exit maintenance mode.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;

Use to override the confirmation prompt.

| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The cluster member from `Get-HPOVClusterNode`

| Aliases | Name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Cluster.ClusterNode [System.Management.Automation.PSCustomObject]**_

Cluster node member from [`Get-HPOVClusterNode`](get-hpovclusternode.md).

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Asyncronous task resource to monitor.


## Related Links

* [Enter-HPOVClusterNodeMaintenanceMode](enter-hpovclusternodemaintenancemode.md)
