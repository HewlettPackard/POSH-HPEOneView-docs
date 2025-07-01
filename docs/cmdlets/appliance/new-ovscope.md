---
description: Create new Scope.
---

# New-OVScope

## Syntax

```powershell
New-OVScope
    [-Name] <String>
    [-Description <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A scope is a grouping of resources that can be used to restrict the range of an operation or action. For example, you can create scopes based on:

* Organizations (Marketing, Research and Development, Finance)
* Usage (Production, Development, Testing)
* Skills (Linux, Windows)

The resources are arranged by categories. All the resources in these categories can be added to or removed from a scope:

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

???+ info
    Resources in other categories are considered to be included in all scopes, and they cannot be removed.


When scopes are defined and resources assigned to them, you can:

* Restrict your view of the user interface (UI) to the resources in the scope.
* Filter email notifications for alerts based on the scope of the associated resources.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
New-OVScope -Name MyFinanceScope
```

Create a "MyFinanceScope" for the default appliance connection.

###  Example 2 

```powershell
New-OVScope -Name MyFinanceScope -Descrition "Finance Scope of resources"
```

Create a "MyFinanceScope" with a descrition for the default appliance connection.

###  Example 3 

```powershell
New-OVScope -Name MyFinanceScope -Descrition "Finance Scope of resources" -ApplianceConnection $ConnectedSessions
```

Create a "MyFinanceScope" with a descrition for all appliance connections.

## Parameters

### -Name &lt;String&gt;

Name of the scope to create.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Description &lt;String&gt;

Administrator account of the target iLO.

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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.Scope [System.Management.Automation.PSCustomObject]"
    Appliance Scope resource object.
    

## Related Links

* [Get-OVScope](get-ovscope.md)
* [Remove-OVScope](remove-ovscope.md)
