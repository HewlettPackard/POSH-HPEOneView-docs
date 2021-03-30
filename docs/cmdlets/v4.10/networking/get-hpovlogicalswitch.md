---
description: Retrieve Logical Switch resources.
---

# Get-HPOVLogicalSwitch

## Syntax

```text
Get-HPOVLogicalSwitch
    [-Name <String>]
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Object>]
    [-exportFile <String>]
    [<CommonParameters>]
```

```text
Get-HPOVLogicalSwitch
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This cmdlet will retrieve one or more Logical Switch resources configured on the appliance.

## Examples

###  Example 1 

```text
Get-HPOVLogicalSwitch

```

Retrieve all Logical Switch resources from the default appliance connection.

###  Example 2 

```text
Get-HPOVLogicalSwitch -Name MyLogicalSwitch1

```

Retrieve the specified MyLogicalSwitch1 resource from the default appliance connection.

## Parameters

### -Name &lt;String&gt;

Name of the Logical Switch resource.  Supports wildcard * character.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Provide an `[HPOneView.Appliance.TaskResource]` object and the Cmdlet will return the associated Logical Switch resource created from the New-HPOVLogicalSwitch Cmdlet..

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* `[HPOneView.Appliance.ScopeCollection]`
	* `[HPOneView.Appliance.ConnectionPermission]`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ExportFile &lt;String&gt;

Save the Logical Switch resource(s) to the specified JSON file.

| Aliases | x, export |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async Task resource object, from New-HPOVLogicalSwitch.

## Return Values

_**HPOneView.Networking.LogicalSwitch [System.Management.Automation.PSCustomObject]**_

Single Logical Switch resource.

_**System.Collections.ArrayList <HPOneView.Networking.LogicalSwitch>**_

Collection of Logical Switch resources.

## Related Links

* [Get-HPOVLogicalSwitchGroup](get-hpovlogicalswitchgroup.md)
* [New-HPOVLogicalSwitch](new-hpovlogicalswitch.md)
* [New-HPOVLogicalSwitchGroup](new-hpovlogicalswitchgroup.md)
* [Remove-HPOVLogicalSwitch](remove-hpovlogicalswitch.md)
* [Remove-HPOVLogicalSwitchGroup](remove-hpovlogicalswitchgroup.md)
* [Update-HPOVLogicalSwitch](update-hpovlogicalswitch.md)
