---
description: Associate resource with new or existing Label.
---

# Add-HPOVResourceToLabel

## Syntax

```text
Add-HPOVResourceToLabel
    [-Name] <String>
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Labels identify resources so you can organize them into groups. For example, you might want to identify the servers that are used primarily by the Finance team, or identify the storage systems assigned to the Asia/Pacific division.

This Cmdlet will allow you to add resources to a new label. If the Label does not exist, a new one will be created.

Minimum Privileges: Edit privileges for the resource

## Examples

### Example 1

```text
$Resources = Get-HPOVNetwork -Name Finance* -ErrorAction Stop
$Resources += Get-HPOVServerHardware -Name Finance*
Add-HPOVResourceToLabel -Name Finance -InputObject $Resources
```

Collect various resources for Finance, creating a new label called "Finance".

## Parameters

### -Name &lt;String&gt;

The name of the Label to associate resources to. If Label does not exist, a new one will be created.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The collection of resources to associate the label with.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.Array**_

Collection of resources to associate with the label.

## Return Values

_**System.Management.Automation.PSCustomObject**_

The created or modified Label resource.

## Related Links

* [Get-HPOVLabel](../appliance/get-hpovlabel.md)

