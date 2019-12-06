# Get-HPOVOSDeploymentPlan

 [Library Version 5.00]() [Library Version 4.20]() [Library Version 4.10]() 

### HPE OneView 5.00 Library

## Get-HPOVOSDeploymentPlan

 Retrieve an HPE Synergy Image Streamer OS Deployment Plan.

### Syntax

```text
Get-HPOVOSDeploymentPlan [[-Name] <String>] [[-Scope] <Object>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

 Use this Cmdlet to return defined OS Deployment Plans on an HPE Synergy Image Streamer appliance. The OS Deployment Plan will define the delivery of the stateless OS. The resource object will also provide the custom attributes allowed. Use the Get-HPOVOSDeploymentAttribute to return the collection object of attributes.

### Parameters

-ApplianceConnection &lt;Object&gt; Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-Name &lt;String&gt; OS Deployment Plan name. Supports wildcard \(\*\) character.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-Scope &lt;Object&gt; Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

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

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.OSDeploymentPlan**_

An HPE Synergy Image Streamer OS Deployment plan object.

_**System.Collections.ArrayList&lt;HPOneView.Appliance.OSDeploymentPlan&gt;**_

A collection or HPE Synergy Image Streamer OS Deployment plan objects.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVOSDeploymentPlan
```

 Retrieve all defined OS Deployment Plans found on the appliance.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVOSDeploymentPlan -Name "My OS Deployment Plan"
```

 Retrieve the specified OS Deployment Plan on the appliance. \#\#\# Related Links \* \[Get-HPOVOSDeploymentPlanAttribute\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVOSDeploymentPlanAttribute\) \*\*\*[Top]() \#\#\# HPE OneView 4.20 Library \#\# Get-HPOVOSDeploymentPlan

 Retreive an HPE Synergy Image Streamer OS Deployment Plan. \#\#\# Syntax

```text
Get-HPOVOSDeploymentPlan [[-Name] <String>] [[-Scope] <Object>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

 Use this Cmdlet to return defined OS Deployment Plans on an HPE Synergy Image Streamer appliance. The OS Deployment Plan will define the delivery of the stateless OS. The resource object will also provide the custom attributes allowed. Use the Get-HPOVOSDeploymentAttribute to return the collection object of attributes.

### Parameters

-ApplianceConnection &lt;Object&gt; Aliases \[-Appliance\]

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-Name &lt;String&gt; OS Deployment Plan name. Supports wildcard \(\*\) character.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-Scope &lt;Object&gt; Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

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

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.OSDeploymentPlan**_

An HPE Synergy Image Streamer OS Deployment plan object.

_**System.Collections.ArrayList&lt;HPOneView.Appliance.OSDeploymentPlan&gt;**_

A collection or HPE Synergy Image Streamer OS Deployment plan objects.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVOSDeploymentPlan
```

 Retrieve all defined OS Deployment Plans found on the appliance.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVOSDeploymentPlan -Name "My OS Deployment Plan"
```

 Retrieve the specified OS Deployment Plan on the appliance. \#\#\# Related Links \* \[Get-HPOVOSDeploymentPlanAttribute\]\(https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVOSDeploymentPlanAttribute\) \*\*\*[Top]() \#\#\# HPE OneView 4.10 Library \#\# Get-HPOVOSDeploymentPlan

 Retreive an HPE Synergy Image Streamer OS Deployment Plan. \#\#\# Syntax

```text
Get-HPOVOSDeploymentPlan [[-Name] <String>] [[-Scope] <Object>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

 Use this Cmdlet to return defined OS Deployment Plans on an HPE Synergy Image Streamer appliance. The OS Deployment Plan will define the delivery of the stateless OS. The resource object will also provide the custom attributes allowed. Use the Get-HPOVOSDeploymentAttribute to return the collection object of attributes.

### Parameters

-ApplianceConnection &lt;Object&gt; Aliases \[-Appliance\]

Specify one or more HPOneView.Appliance.Connection object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-Name &lt;String&gt; OS Deployment Plan name. Supports wildcard \(\*\) character.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

-Scope &lt;Object&gt; Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:

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

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.OSDeploymentPlan**_

An HPE Synergy Image Streamer OS Deployment plan object.

_**System.Collections.ArrayList&lt;HPOneView.Appliance.OSDeploymentPlan&gt;**_

A collection or HPE Synergy Image Streamer OS Deployment plan objects.

### Examples

```
 -------------------------- EXAMPLE 1 -------------------------- Get-HPOVOSDeploymentPlan
 -------------------------- EXAMPLE 2 -------------------------- Get-HPOVOSDeploymentPlan -Name "My OS Deployment Plan"
```

### Related Links

* [Get-HPOVOSDeploymentPlanAttribute](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVOSDeploymentPlanAttribute)

[Top]()

