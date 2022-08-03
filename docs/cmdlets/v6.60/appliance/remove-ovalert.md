---
description: Delete alerts.
---

# Remove-OVAlert

## Syntax

```powershell
Remove-OVAlert
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

```powershell
Get-OVAlert -State Cleared | Remove-OVAlert
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

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

_**HPEOneView.Alert [System.Management.Automation.PSCustomObject]**_

Alert resource object (i.e. Get-OVAlert)

## Return Values

_**System.Management.Automation.PSCustomObject**_

Status object indicating the resource was removed.

## Related Links

* [Clear-OVAlert](clear-ovalert.md)
* [Get-OVAlert](get-ovalert.md)
* [Set-OVAlert](set-ovalert.md)
