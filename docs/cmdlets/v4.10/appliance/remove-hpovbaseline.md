---
description: Delete a Baseline from an appliance repository.
---

# Remove-HPOVBaseline

## Syntax

```text
Remove-HPOVBaseline
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
Remove-HPOVBaseline -Name "My Custom Baseline"

```

Remove "My Custom Baseline" from `[MyAppliance.domain.com]`, using the `-Name` alias to the InputObject parameter.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-b, `-Baseline`]
The SPP Baseline resource Name or Object.  Can be accepted via pipeline input.

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

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

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
