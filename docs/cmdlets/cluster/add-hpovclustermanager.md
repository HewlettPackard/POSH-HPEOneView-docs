---
description: Add new hypervisor cluster manager.
---

# Add-HPOVClusterManager

## HPE OneView 5.00 Library

### Syntax

```text
Add-HPOVClusterManager [-Hostname] <String> [-Credential] <PSCredential> [[-DisplayName] <String>] [[-Port] <int>] [[-TrustLeafCertificate] <SwitchParameter>] [[-Scope] <Object>] [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Detailed Description

You can register a new hypervisor cluster manager with HPE OneView by providing the hostname and credentials. The registered hypervisor manager contains preferences, which are used as default hypervisor or cluster settings during hypervisor cluster profile creation. You can modify the hypervisor manager preferences using the edit operation. You can override these values in a hypervisor cluster profile.

A valid hypervisor manager certificate must be added to HPE OneView trust store to be able to successfully communicate with a hypervisor manager.

The user must have an infrastructure administrator privilege to register or update the hypervisor manager resource in HPE OneView. You can assign scopes to the hypervisor manager resource in HPE OneView.

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

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

#### -Credential &lt;PSCredential&gt; 

Use this parameter to provide the cluster manager credentials.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -DisplayName &lt;String&gt; 

Override display name of the hypervisor manager. By default Hostname will be used.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

IP or FQDN address of the hypervisor manager.

| Aliases | Name, ComputerName |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Port &lt;int&gt; 

HTTPS port of the target hypervisor manager. Default is 443.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | 443 |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt;

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with. Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -TrustLeafCertificate &lt;SwitchParameter&gt; 

If the resource SSL certificate is not trusted, use this parameter to add the certificate to the appliance trust store.

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

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async Task resource to monitor progress.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVClusterManager -Hostname vcenter.domain.local -Credential (Get-Credential -Username administrator@vsphere.local -Message Password)
```

 Add hypervisor manager by providing prompted PSCredential. 

### Related Links 

* [Get-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVClusterManager) 
* [Remove-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVClusterManager) 
* [Set-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVClusterManager) 

## HPE OneView 4.20 Library

### Syntax

```text
Add-HPOVClusterManager [-Hostname] <String> [-Credential] <PSCredential> [[-DisplayName] <String>] [[-Port] <int>] [[-TrustLeafCertificate] <SwitchParameter>] [[-Scope] <Object>] [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Detailed Description

You can register a new hypervisor cluster manager with HPE OneView by providing the hostname and credentials. The registered hypervisor manager contains preferences, which are used as default hypervisor or cluster settings during hypervisor cluster profile creation. You can modify the hypervisor manager preferences using the edit operation. You can override these values in a hypervisor cluster profile.

A valid hypervisor manager certificate must be added to HPE OneView trust store to be able to successfully communicate with a hypervisor manager.

The user must have an infrastructure administrator privilege to register or update the hypervisor manager resource in HPE OneView. You can assign scopes to the hypervisor manager resource in HPE OneView.

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

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

#### -Credential &lt;PSCredential&gt; 

Use this parameter to provide the cluster manager credentials.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -DisplayName &lt;String&gt; 

Override display name of the hypervisor manager. By default Hostname will be used.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

IP or FQDN address of the hypervisor manager.

| Aliases | Name, ComputerName |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Port &lt;int&gt; 

HTTPS port of the target hypervisor manager. Default is 443.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | 443 |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt;

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with. Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -TrustLeafCertificate &lt;SwitchParameter&gt; 

If the resource SSL certificate is not trusted, use this parameter to add the certificate to the appliance trust store.

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

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async Task resource to monitor progress.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVClusterManager -Hostname vcenter.domain.local -Credential (Get-Credential -Username administrator@vsphere.local -Message Password)
```

 Add hypervisor manager by providing prompted PSCredential. 

### Related Links 

* [Get-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVClusterManager) 
* [Remove-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVClusterManager) 
* [Set-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVClusterManager) 

## HPE OneView 4.10 Library

### Syntax

```text
Add-HPOVClusterManager [-Hostname] <String> [-Credential] <PSCredential> [[-DisplayName] <String>] [[-Port] <int>] [[-TrustLeafCertificate] <SwitchParameter>] [[-Scope] <Object>] [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Detailed Description

You can register a new hypervisor cluster manager with HPE OneView by providing the hostname and credentials. The registered hypervisor manager contains preferences, which are used as default hypervisor or cluster settings during hypervisor cluster profile creation. You can modify the hypervisor manager preferences using the edit operation. You can override these values in a hypervisor cluster profile.

A valid hypervisor manager certificate must be added to HPE OneView trust store to be able to successfully communicate with a hypervisor manager.

The user must have an infrastructure administrator privilege to register or update the hypervisor manager resource in HPE OneView. You can assign scopes to the hypervisor manager resource in HPE OneView.

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

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

#### -Credential &lt;PSCredential&gt; 

Use this parameter to provide the cluster manager credentials.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -DisplayName &lt;String&gt; 

Override display name of the hypervisor manager. By default Hostname will be used.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Hostname &lt;String&gt; 

IP or FQDN address of the hypervisor manager.

| Aliases | Name, ComputerName |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Port &lt;int&gt; 

HTTPS port of the target hypervisor manager. Default is 443.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | 443 |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;Object&gt;

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with. Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -TrustLeafCertificate &lt;SwitchParameter&gt; 

If the resource SSL certificate is not trusted, use this parameter to add the certificate to the appliance trust store.

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

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async Task resource to monitor progress.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVClusterManager -Hostname vcenter.domain.local -Credential (Get-Credential -Username administrator@vsphere.local -Message Password)
```

 Add hypervisor manager by providing prompted PSCredential. 

### Related Links 

* [Get-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVClusterManager) 
* [Remove-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVClusterManager) 
* [Set-HPOVClusterManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVClusterManager) 



