---
description: Add a new cluster member to an existing cluster.
---

# Add-HPOVClusterNode

## HPE OneView 5.00 Library

### Syntax

```
Add-HPOVClusterNode [-ComputerName] <string> [-Credential] <PSCredential> [[-Scope] <Object>] [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Detailed Description

 Use this Cmdlet to add a new cluster member to an existing cluster.

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ComputerName &lt;string&gt; 

The computer name of the hypervisor host to add.

| Aliases | Name |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential&gt; 

Use this parameter to provide the hypervisor manager credentials.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with. Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

### Return Values

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVClusterNode
```

 Default example 

### Related Links 

* [Add-HPOVClusterNodeToCluster](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVClusterNodeToCluster) 
* [Enter-HPOVClusterNodeMaintenanceMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enter-HPOVClusterNodeMaintenanceMode) 
* [Exit-HPOVClusterNodeMaintenanceMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Exit-HPOVClusterNodeMaintenanceMode) 
* [Get-HPOVClusterNode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVClusterNode) 
* [Update-HPOVClusterNode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVClusterNode) 

## HPE OneView 4.20 Library

### Syntax

```
Add-HPOVClusterNode [-ComputerName] <string> [[-Credential] <PSCredential>] [[-Scope] <Object>] [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Detailed Description

 Use this Cmdlet to add a new cluster member to an existing cluster.

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ComputerName &lt;string&gt; 

The computer name of the hypervisor host to add.

| Aliases | Name |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Credential &lt;PSCredential&gt; 

Use this parameter to provide the hypervisor manager credentials.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt; 

Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with. Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

### Return Values

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVClusterNode
```

 Default example 

### Related Links 

* [Add-HPOVClusterNodeToCluster](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVClusterNodeToCluster) 
* [Enter-HPOVClusterNodeMaintenanceMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enter-HPOVClusterNodeMaintenanceMode) 
* [Exit-HPOVClusterNodeMaintenanceMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Exit-HPOVClusterNodeMaintenanceMode) 
* [Get-HPOVClusterNode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVClusterNode) 
* [Update-HPOVClusterNode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVClusterNode) 

