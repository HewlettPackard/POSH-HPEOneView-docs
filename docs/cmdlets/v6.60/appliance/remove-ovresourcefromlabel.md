---
description: Remove association of resource with existing Label.
---

# Remove-OVResourceFromLabel

## Syntax

```powershell
Remove-OVResourceFromLabel
    [-Name] <String>
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Remove-OVResourceFromLabel
    [-InputObject] <Object>
    [-RemoveAllLabelsFromResource]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Labels identify resources so you can organize them into groups. For example, you might want to identify the servers that are used primarily by the Finance team, or identify the storage systems assigned to the Asia/Pacific division.

This Cmdlet will remove the specified resource from the requested label.  To remove the resource from all labels, use the -RemoveAllLabelsFromResource switch parameter.  If there are no more associated resources with a label, the appliance will automatically delete the label. 

## Examples

###  Example 1 

```powershell
Get-OVNetwork -Name Finance* | Remove-OVResourceFromLabel -Name Finance
```

Remove the Finance network resources from the "Finance" label.

###  Example 2 

```powershell
Get-OVNetwork | Remove-OVResourceFromLabel -RemoveAllLabelsFromResource
```

Remove all label associations from network resources.

## Parameters

### -Name &lt;String&gt;

The name of the Label associated with the resource.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The resource to remove associatation with the label.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -RemoveAllLabelsFromResource &lt;SwitchParameter&gt;

Use to remove all associated labels with the provide resource.

| Aliases | None |
| :--- | :--- |
| Required? | True |
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
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.Management.Automation.PSCustomObject**_

Resource to remove label association.

## Return Values

_**System.Management.Automation.PSCustomObject**_

The created or modified Label resource.

## Related Links

