---
description: Associate resource with new or existing Label.
---

# Add-OVResourceToLabel

## Syntax

```powershell
Add-OVResourceToLabel
    [-Name] <String>
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Labels identify resources so that you can organize them into groups. After labeling your resources, you can quickly view them by searching on the labels.  For example, you might want to identify the servers that are used primarily by the Finance team, or identify the storage systems assigned to the Asia/Pacific division.

Resources supporting labels also have filters to allow you to filter by the labels that have been placed on the resource. The global search can be used to search for resources by label.

Using this Cmdlet will add supported resources to a new or existing Label.  If the Label does not exist, it will be created.

???+ info
    Minimum required privileges: Edit privileges for the resource.

## Examples

###  Example 1 

```powershell
$Resources = Get-OVNetwork -Name Finance* -ErrorAction Stop
$Resources += Get-OVServerHardware -Name Finance*
Add-OVResourceToLabel -Name Finance -InputObject $Resources
```

Collect various resources for Finance, creating a new label called "Finance".

## Parameters

### -Name &lt;String&gt;

The name of the Label to associate resources to.  If Label does not exist, a new one will be created.

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
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

=== "System.Array"
    Collection of resources to associate with the label.
    

## Return Values

=== "System.Management.Automation.PSCustomObject"
    The created or modified Label resource.
    

## Related Links

* [Get-OVLabel](../appliance/get-ovlabel.md)
