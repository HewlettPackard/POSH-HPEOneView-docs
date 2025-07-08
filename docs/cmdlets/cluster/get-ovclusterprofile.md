---
description: Get a deployed cluster profile.
---

# Get-OVClusterProfile

## Syntax

```powershell
Get-OVClusterProfile
    [-Name <String>]
    [-NonCompliant]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A cluster profile enables you to deploy and manage a cluster of servers (nodes) managed by HPE OneView and orchestrates consistent configuration on cluster of server nodes to share the same workload. A cluster profile and the associated server profile template are used to define a consistent configuration from server nodes to members in the cluster. The associated server profiles define physical server configurations for server nodes in the cluster, which are derived from parent cluster profile and its associated server profile template.

???+ info
    The server profile template must have a configured connection to the hypervisor management network for the template to be valid for use by a hypervisor cluster profile.


The cluster profile helps you manage life cycle operations, such as growing or shrinking the cluster, modifying configurations based on needs, consistency checks, and nondisruptive firmware updates on the member nodes. For example, you can grow or shrink a cluster by adding or removing members from the cluster profile. Any change in the configuration of the cluster profile will be reported as an inconsistency. When inconsistencies are remediated, the changed configurations can be applied on cluster and member nodes.

A cluster profile can manage VMware ESXi-based hypervisor clusters by leveraging VMware vCenter server. A hypervisor cluster must be managed by one instance of HPE OneView to avoid inconsistencies.

Use this Cmdlet to get created cluster profiles within OneView.

???+ info
    Minimum required privileges: Read only

## Examples

###  Example 1 

```powershell
Get-OVClusterProfile
```

Get the available and managed cluster profiles.

###  Example 2 

```powershell
Get-OVClusterProfile -NonCompliant
```

Get the non compliant and managed cluster profiles.

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

### -Name &lt;String&gt;

Specify a string value to filter for the specific resource

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NonCompliant &lt;SwitchParameter&gt;

Filter resources based on their non-compliant state.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Cluster.ClusterProfile [System.Management.Automation.PSCustomObject]"
    The returned cluster profile resource.
    

## Related Links

* [New-OVClusterProfile](new-ovclusterprofile.md)
* [New-OVClusterProfileMember](new-ovclusterprofilemember.md)
* [Remove-OVClusterProfile](remove-ovclusterprofile.md)
* [Update-OVClusterProfile](update-ovclusterprofile.md)
