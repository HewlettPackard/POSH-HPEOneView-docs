---
description: Add supported resource(s) to a Scope.
---

# Add-HPOVResourceToScope

## HPE OneView 5.00 Library

### Syntax

```
Add-HPOVResourceToScope [-Scope] <HPOneView.Appliance.ScopeCollection> [-InputObject] <Object> [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This Cmdlet will add supported resources to a specified Scope. All the resources in these categories can be added to or removed from a scope:

* Enclosure Groups
* Enclosures
* Logical Enclosures
* Server Hardware
* Rack Managers
* Server Profiles
* Server Profile Templates
* OS Deployment Plans
* Networks \(Ethernet, FC, and FCoE\)
* Network Sets
* Hypervisor Cluster Profiles, Hypervisor Profiles, Hypervisor Managers
* Interconnects, excluding SAS resources
* Logical Interconnects, excluding SAS resources
* Logical Interconnect Groups, excluding SAS resources
* Switches
* Logical Switches
* Logical Switch Groups
* Storage Pools
* Volume Sets
* Volume Templates
* Volumes

{% hint style="warning" %}
Resources in other categories are considered to be included in all scopes, and they cannot be removed or modified.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, scope administrator, scope operator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one HPOneView.Appliance.Connection object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The supported resource object to add to the intended scope provided in the -Scope parameter.

| Aliases | Resource |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt; 

The Scope resource to add the resource\(s\) to.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Appliance.ScopeCollection**_

Scope resource object from Get-HPOVScope.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Asyncronous task resource that updates the Scope and associated resources.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
$Resources += Get-HPOVNetwork -Name ProdVLan* 
$Resources += Get-HPOVServer -Name Encl1* 
Get-HPOVScope -Name MyScope | Add-HPOVResourceToScope -InputObject $Resources
```

 Add the resources collected to the MyScope scope. 

### Related Links

* Remove-HPOVResourceFromScope

## HPE OneView 4.20 Library

### Syntax

```
Add-HPOVResourceToScope [-Scope] <HPOneView.Appliance.ScopeCollection> [-InputObject] <Object> [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This Cmdlet will add supported resources to a specified Scope. All the resources in these categories can be added to or removed from a scope:

* Enclosure Groups
* Enclosures
* Logical Enclosures
* Server Hardware
* Rack Managers
* Server Profiles
* Server Profile Templates
* OS Deployment Plans
* Networks \(Ethernet, FC, and FCoE\)
* Network Sets
* Hypervisor Cluster Profiles, Hypervisor Profiles, Hypervisor Managers
* Interconnects, excluding SAS resources
* Logical Interconnects, excluding SAS resources
* Logical Interconnect Groups, excluding SAS resources
* Switches
* Logical Switches
* Logical Switch Groups
* Storage Pools
* Volume Sets
* Volume Templates
* Volumes

{% hint style="warning" %}
Resources in other categories are considered to be included in all scopes, and they cannot be removed or modified.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, scope administrator, scope operator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one HPOneView.Appliance.Connection object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The supported resource object to add to the intended scope provided in the -Scope parameter.

| Aliases | Resource |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt; 

The Scope resource to add the resource\(s\) to.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Appliance.ScopeCollection**_

Scope resource object from Get-HPOVScope.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Asyncronous task resource that updates the Scope and associated resources.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
$Resources += Get-HPOVNetwork -Name ProdVLan* 
$Resources += Get-HPOVServer -Name Encl1* 
Get-HPOVScope -Name MyScope | Add-HPOVResourceToScope -InputObject $Resources
```

 Add the resources collected to the MyScope scope. 

### Related Links

* Remove-HPOVResourceFromScope

## HPE OneView 4.10 Library

### Syntax

```
Add-HPOVResourceToScope [-Scope] <HPOneView.Appliance.ScopeCollection> [-InputObject] <Object> [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

This Cmdlet will add supported resources to a specified Scope. All the resources in these categories can be added to or removed from a scope:

* Enclosure Groups
* Enclosures
* Logical Enclosures
* Server Hardware
* Server Profiles
* Server Profile Templates
* OS Deployment Plans
* Networks \(Ethernet, FC, and FCoE\)
* Network Sets
* Hypervisor Cluster Profiles, Hypervisor Profiles, Hypervisor Managers
* Interconnects, excluding SAS resources
* Logical Interconnects, excluding SAS resources
* Logical Interconnect Groups, excluding SAS resources
* Switches
* Logical Switches
* Logical Switch Groups
* Storage Pools
* Volume Templates
* Volumes

{% hint style="warning" %}
Resources in other categories are considered to be included in all scopes, and they cannot be removed or modified.
{% endhint %}

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator, scope administrator, scope operator
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one HPOneView.Appliance.Connection object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The supported resource object to add to the intended scope provided in the -Scope parameter.

| Aliases | Resource |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt; 

The Scope resource to add the resource\(s\) to.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Appliance.ScopeCollection**_

Scope resource object from Get-HPOVScope.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Asyncronous task resource that updates the Scope and associated resources.

### Examples

```
 -------------------------- EXAMPLE 1 --------------------------
$Resources += Get-HPOVNetwork -Name ProdVLan* 
$Resources += Get-HPOVServer -Name Encl1* 
Get-HPOVScope -Name MyScope | Add-HPOVResourceToScope -InputObject $Resources
```

 Add the resources collected to the MyScope scope. 

### Related Links

* Remove-HPOVResourceFromScope



