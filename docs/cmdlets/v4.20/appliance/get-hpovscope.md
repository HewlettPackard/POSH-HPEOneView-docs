---
description: Get Scope resource(s)
---

# Get-HPOVScope

## Syntax

```text
Get-HPOVScope
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A scope is a grouping of resources that can be used to restrict the range of an operation or action. For example, you can create scopes based on:

* Organizations \(Marketing, Research and Development, Finance\)
* Usage \(Production, Development, Testing\)
* Skills \(Linux, Windows\)

The resources are arranged by categories. All the resources in these categories can be added to or removed from a scope:

* Enclosures
* Server Hardware
* Networks \(Ethernet, FC, and FCoE\)
* Network Sets
* Interconnects, excluding SAS resources
* Logical Interconnects, excluding SAS resources
* Logical Interconnect Groups, excluding SAS resources
* Switches
* Logical Switches
* Logical Switch Groups

{% hint style="info" %}
Resources in other categories are considered to be included in all scopes,
{% endhint %}

and they cannot be removed.

When scopes are defined and resources assigned to them, you can:

* Restrict your view of the user interface \(UI\) to the resources in the scope.
* Filter email notifications for alerts based on the scope of the associated resources.

Returned Scope object\(s\) will contain a collection of associated resources.

## Examples

### Example 1

```text
Get-HPOVScope
```

List all available scopes on the connected default appliance.

### Example 2

```text
Get-HPOVScope -Name MyFinanceScope
```

Return the "MyFinanceScope" scope resource from the conncted default appliance.

### Example 3

```text
Get-HPOVScope -Name My* -ApplianceConnection $ConnectedSessions
```

Use wildcard search for a specific scope on all connected appliances.

## Parameters

### -Name &lt;String&gt;

Name of the scope to return.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.ScopeCollection**_

Collection of Appliance Scope resource objects.

## Related Links

* [New-HPOVScope](new-hpovscope.md)
* [Remove-HPOVScope]()

