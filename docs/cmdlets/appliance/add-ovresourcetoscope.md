---
description: Add supported resource(s) to a Scope.
---

# Add-OVResourceToScope

## Syntax

```powershell
Add-OVResourceToScope
    [-Scope] <HPEOneView.Appliance.ScopeCollection[]>
    [-InputObject] <Object>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A scope is a grouping of resources that can be used to restrict the range of an operation or action. For example, you can create scopes based on:

* Organization or department (Marketing, Research and Development, Finance)
* Usage (Production, Development, Testing)
* Skills (Linux, Windows)

For example, a data center could be organized so that all servers running Linux are monitored using one scope and all servers running MS Windows are monitored using another scope. Email notifications can be configured such that Windows technicians are notified for issues on the servers running Windows and Linux technicians are notified for issues on the servers running Linux.

When scopes are defined and resources assigned to them, you can:

* Restrict the resources displayed in the user interface (UI) to those assigned to the scope.
* Restrict user permissions to grant access only to the resources in a scope.
* Configure filtered email notifications for alerts based on previously-defined scopes.

This Cmdlet will add supported resources to a specified Scope.  All the resources in these categories can be added to
or removed from a scope:

* Enclosure Groups
* Enclosures
* Logical Enclosures
* Server Hardware
* Rack Managers
* Server Profiles
* Server Profile Templates
* OS Deployment Plans
* Networks (Ethernet, FC, and FCoE)
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

???+ info
    Resources in other categories are considered to be included in all scopes, and they cannot be removed.


???+ info
    Minimum required privileges: Infrastructure administrator, scope administrator, scope operator

## Examples

###  Example 1 

```powershell
$Resources += Get-OVNetwork -Name ProdVLan* 
$Resources += Get-OVServer -Name Encl1* 
Get-OVScope -Name MyScope | Add-OVResourceToScope -InputObject $Resources
```

Add the resources collected to the MyScope scope.

## Parameters

### -Scope &lt;HPEOneView.Appliance.ScopeCollection[]&gt;

The Scope resource to add the resource(s) to.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The supported resource object to add to the intended scope provided in the `-Scope` parameter.

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

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value.

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

=== "HPEOneView.Appliance.ScopeCollection"
    Scope resource object from Get-OVScope.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Asynchronous task resource that updates the Scope and associated resources.
    

## Related Links

* [Remove-OVResourceFromScope](remove-ovresourcefromscope.md)
