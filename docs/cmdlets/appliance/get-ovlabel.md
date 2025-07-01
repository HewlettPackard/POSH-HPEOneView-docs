---
description: Return created label resources.
---

# Get-OVLabel

## Syntax

```powershell
Get-OVLabel
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Labels identify resources so you can organize them into groups. For example, you might want to identify the servers that are used primarily by the Finance team, or identify the storage systems assigned to the Asia/Pacific division.

This Cmdlet will return all of the created labels on the specifed appliance.

## Examples

###  Example 1 

```powershell
Get-OVLabel
```

Return all labels from the appliance.

## Parameters

### -Name &lt;String&gt;

The name of the Label to associate resources to.  If Label does not exist, a new one will be created.

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

=== "HPEOneView.Appliance.Label"
    Label resource.
    

## Related Links

