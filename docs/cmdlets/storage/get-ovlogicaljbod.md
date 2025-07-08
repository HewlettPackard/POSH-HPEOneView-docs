---
description: Get defined logical JBODs.
---

# Get-OVLogicalJBOD

## Syntax

```powershell
Get-OVLogicalJBOD
    [-Name] <String>
    [-Scope <Object>]
    [-Label <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A logical JBOD is a group of physical drives that are dynamically defined as virtual drives. Logical JBOD uses the drives from the drive enclosures that are installed in the device bays of the enclosure and are associated with a SAS logical interconnect. You can assign or unassign a logical JBOD to a server hardware through the server profile.

If the logical drive settings in the server profile indicate that the data in the logical JBOD is to be retained when you delete the server profile, then the data is retained and you can assign this logical JBOD to a different server profile.

Using this Cmdlet will return defined logical JBOD resources from the connected appliance.

## Examples

###  Example 1 

```powershell
Get-OVLogicalJBOD
```

Get the defined logical JBOD resources from an appliance.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Specify to filter resources by the specific name or wildcard search.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

* AllResources
    *AllResourcesInScope
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

=== "HPEOneView.Storage.LogicalJBOD"
    The defined logical JBOD resource from the appliance.
    

## Related Links

* [Get-OVDriveEnclosure](get-ovdriveenclosure.md)
* [New-OVLogicalJBOD](new-ovlogicaljbod.md)
* [Remove-OVLogicalJBOD](remove-ovlogicaljbod.md)
* [Set-OVLogicalJBOD](set-ovlogicaljbod.md)
