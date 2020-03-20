---
description: Delete a baseline or hotfix from an appliance repository.
---

# Remove-HPOVBaseline

## Syntax

```text
Remove-HPOVBaseline
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [-Force]
    [<CommonParameters>]
```

## Description

This Cmdlet provides the ability to remove one or more SPP Baselines from one or more appliances.

## Examples

###  Example 1 

```text
Get-HPOVBaseline | Remove-HPOVBaseline

```

Remove all baselines from any connected appliance.

###  Example 2 

```text
Get-HPOVBaseline -Name "My Custom Baseline" | Remove-HPOVBaseline

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

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
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

_**HPOneView.Appliance.Baseline [System.Management.Automation.PSCustomObject]**_

Source HPE OneView Baseline from [`Get-HPOVBaseline`](get-hpovbaseline.md)

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

The progress of uploading the file to the appliance, and in-progress or completion result

## Related Links

* [Add-HPOVBaseline](add-hpovbaseline.md)
* [Get-HPOVBaseline](get-hpovbaseline.md)
* [Get-HPOVBaselineRepository](get-hpovbaselinerepository.md)
* [Show-HPOVBaselineRepositorySize](show-hpovbaselinerepositorysize.md)
