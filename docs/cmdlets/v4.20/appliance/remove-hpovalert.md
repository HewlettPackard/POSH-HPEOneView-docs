---
description: 
---

# Remove-HPOVAlert

## Syntax

```text
Remove-HPOVAlert
    [-InputObject] <Object>
    [-Force]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet allows the administrator to remove one or more alerts.  Alerts can be in one of two administratively controlled states: Active or Cleared.    Only alerts that are no longer active (in a Cleared state) can be removed.

In order for an administrator to remove an Alert, the administrator must be assigned to the respective resource role (Network, Server, Storage, or Infrastructure.)
## Examples

###  Example 1 

```text
Get-HPOVAlert -State Cleared | Remove-HPOVAlert

```

Remove all cleared alerts on the appliance.

## Parameters

### -InputObject &lt;Object&gt;

The alert to be removed.

| Aliases | None |
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
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

Alert resource object (i.e. [`Get-HPOVAlert`](get-hpovalert.md))

## Return Values

_**System.Management.Automation.PSCustomObject**_

Status object indicating the resource was removed.

## Related Links

* [Clear-HPOVAlert](clear-hpovalert.md)
* [Get-HPOVAlert](get-hpovalert.md)
* [Set-HPOVAlert](set-hpovalert.md)
