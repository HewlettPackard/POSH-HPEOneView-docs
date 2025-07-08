---
description: Delete a baseline or hotfix from an appliance repository.
---

# Remove-OVBaseline

## Syntax

```powershell
Remove-OVBaseline
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [-Force]
    [<CommonParameters>]
```

## Description

This Cmdlet provides the ability to remove one or more SPP Baselines from one or more appliances.

## Examples

###  Example 1 

```powershell
Get-OVBaseline | Remove-OVBaseline
```

Remove all baselines from any connected appliance.

###  Example 2 

```powershell
Get-OVBaseline -Name "My Custom Baseline" | Remove-OVBaseline
```

Remove the specified "My Custom Baseline" baseline.

## Parameters

### -InputObject &lt;Object&gt;

The SPP Baseline or hotfix resource object.  Can be accepted via pipeline input.

| Aliases | b, Baseline |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Force remove the resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Appliance.Baseline [System.Management.Automation.PSCustomObject]"
    Source HPE OneView Baseline from Get-OVBaseline
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    The progress of uploading the file to the appliance, and in-progress or completion result
    

## Related Links

* [Add-OVBaseline](add-ovbaseline.md)
* [Get-OVBaseline](get-ovbaseline.md)
* [Get-OVBaselineRepository](get-ovbaselinerepository.md)
* [Show-OVBaselineRepositorySize](show-ovbaselinerepositorysize.md)
