﻿---
description: Add supported resource to Scope.
---

# Add-HPOVResourceToScope

## Syntax

```text
Add-HPOVResourceToScope
    [-Scope] <HPOneView.Appliance.ScopeCollection>
    [-InputObject] <Object>
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

This Cmdlet will add supported resources to a specified Scope..  All the resources in these categories can be added to or removed from a scope:

    * Enclosures
    * Server Hardware
    * Networks (Ethernet, FC, and FCoE)
    * Network Sets
    * Interconnects, excluding SAS resources
    * Logical Interconnects, excluding SAS resources
    * Logical Interconnect Groups, excluding SAS resources
    * Switches
    * Logical Switches
    * Logical Switch Groups

{% hint style="info" %}
Resources in other categories are considered to be included in all scopes, and they cannot be removed.
{% endhint %}


{% hint style="info" %}
Minimum required privileges: Infrastructure administrator
{% endhint %}

## Examples

###  Example 1 

```text
$Resources += Get-HPOVNetwork -Name ProdVLan* 
$Resources += Get-HPOVServer -Name Encl1* 
Get-HPOVScope -Name MyScope | Add-HPOVResourceToScope -InputObject $Resources

```

Add the resources collected to the MyScope scope.

## Parameters

### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;

The Scope resource to add the resource(s) to.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Specify to return asyncronous task after file upload has completed.

| Aliases | Resource |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.ScopeCollection**_

Scope resource object from Get-HPOVScope.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Asyncronous task resource that updates the Scope and associated resources.

## Related Links

