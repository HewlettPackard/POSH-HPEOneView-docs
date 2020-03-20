---
description: Default content
---

# Get-HPOVClusterNode

## Syntax

```text
Get-HPOVClusterNode
    [-Name] <string>
    [-Label <String>]
    [-Scope <Object>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Default content

## Examples

### Example 1

```text
Get-HPOVClusterNode
```

Default example

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Name &lt;string&gt;

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership. By default, all resources for the accounts Active Permissions will be displayed. Allowed values:\r\n\r\n\t _AllResources\r\n\t_AllResourcesInScope\r\n\t _`[HPOneView.Appliance.ScopeCollection]`\r\n\t_ `[HPOneView.Appliance.ConnectionPermission]`

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

## Return Values

## Related Links

* [Add-HPOVClusterNode](add-hpovclusternode.md)
* [Add-HPOVClusterNodeToCluster](add-hpovclusternodetocluster.md)
* [Enter-HPOVClusterNodeMaintenanceMode](enter-hpovclusternodemaintenancemode.md)
* [Exit-HPOVClusterNodeMaintenanceMode](exit-hpovclusternodemaintenancemode.md)
* [Update-HPOVClusterNode](update-hpovclusternode.md)

