---
description: Remove a datacenter resource.
---

# Remove-HPOVDataCenter

## Syntax

```text
Remove-HPOVDataCenter
    [-InputObject] <>
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

## Description

A data center represents a physically contiguous area in which racks containing IT equipment are located.
For example, you have IT equipment in two rooms or on separate floors. You could create a data center for each of these areas.
Each server, enclosure, or power distribution device in your data center can report its power requirements, but it can be difficult to understand the power and cooling requirements for your data center as a whole. The appliance enables you to bring power and cooling management of your servers, enclosures, and power delivery devices together in a single management system.
When you initialize the appliance for the first time, it creates a data center named Datacenter 1. The appliance provides this data center as a place to visualize your racks. You can rename or edit this data center to match the values and layout of your data center, you can use it as the basis for a planned data center model, or you can delete this data center without adverse effects.

This Cmdlet will remove 1 or more datacenter resources from an appliance.  Removing a datacenter resource will not delete or remove associated resources, like Racks.

## Examples

###  Example 1 

```text
Get-HPOVDataCenter -Name DC2 | Remove-HPOVDataCenter
```

Remove "DC2" datacenter resource from the appliance.

###  Example 2 

```text
Get-HPOVDataCenter | Remove-HPOVDataCenter
```

Remove Datacenter resources from the appliance.

## Parameters

### -InputObject &lt;&gt;

Datacenter object, from `Get-HPOVDataCenter`.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

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

_**HPOneView.Facilities.DataCenter**_

Datacenter resource from [`Get-HPOVDataCenter`](get-hpovdatacenter.md).

## Return Values

_**System.Management.Automation.PSCustomObject**_

Object with status confirmation the resource was deleted.

## Related Links

* [Get-HPOVDataCenter](get-hpovdatacenter.md)
* [New-HPOVDataCenter](new-hpovdatacenter.md)
* [Set-HPOVDataCenter](set-hpovdatacenter.md)
* [Set-HPOVDataCenterRemoteSupport](../appliance/set-hpovdatacenterremotesupport.md)
