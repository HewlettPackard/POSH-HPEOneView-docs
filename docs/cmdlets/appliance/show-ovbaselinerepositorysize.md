---
description: View appliance basline repository size.
---

# Show-OVBaselineRepositorySize

## Syntax

## Description

This Cmdlet will display the appliance baseline repository size

## Examples

###  Example 1 

```powershell
Show-OVBaselineRepositorySize
```

Show the appliance baseline repository size.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None. You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.BaselineRepository [System.Management.Automation.PSCustomObject]"
    Appliance baseline repository capacity object.
    

## Related Links

