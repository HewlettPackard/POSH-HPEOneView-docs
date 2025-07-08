---
description: Retrieve OS deployment server deployment plan.
---

# Get-OVOSDeploymentPlan

## Syntax

```powershell
Get-OVOSDeploymentPlan
    [-Name <String>]
    [-Scope <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

An OS Deployment Plan is a recipe on how to deploy and configure an operating system, which has been created and is managed from on the associated OS deployment server.  It will contain custom attributes that are necessary to personalize the OS deployment plan.  The supported OS deployment server is HPE Image Streamer for Synergy.

Use this Cmdlet to return defined OS Deployment Plans on an HPE Synergy Image Streamer appliance.  The resource object will also provide the custom attributes allowed. Use the Get-OVOSDeploymentPlanAttribute to return the collection object of attributes.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVOSDeploymentPlan
```

Retrieve all defined OS Deployment Plans found on the appliance.

###  Example 2 

```powershell
Get-OVOSDeploymentPlan -Name "My OS Deployment Plan"
```

Retrieve the specified OS Deployment Plan on the appliance.

## Parameters

### -Name &lt;String&gt;

OS Deployment Plan name.  Supports wildcard (*) character.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

* AllResources
* AllResourcesInScope
* `[HPEOneView.Appliance.ScopeCollection]`
* `[HPEOneView.Appliance.ConnectionPermission]`

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.OSDeploymentPlan"
    An HPE Synergy Image Streamer OS Deployment plan object.
    

=== "System.Collections.ArrayList<HPEOneView.Appliance.OSDeploymentPlan>"
    A collection or HPE Synergy Image Streamer OS Deployment plan objects.
    

## Related Links

* [Get-OVOSDeploymentPlanAttribute](get-ovosdeploymentplanattribute.md)
