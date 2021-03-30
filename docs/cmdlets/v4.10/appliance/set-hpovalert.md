---
description: Change status of an alert.
---

# Set-HPOVAlert

## Syntax

```text
Set-HPOVAlert
    [-InputObject] <Object>
    [-AssignToUser] <String>
    [-Notes] <String>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Set-HPOVAlert
    [-InputObject] <Object>
    [-Active]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Set-HPOVAlert
    [-InputObject] <Object>
    [-Cleared]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Alerts can be in one of two administratively controlled states: Active or Cleared.  This Cmdlet allows the administrator to change the status of an alert to either Active or Cleared.

In order for an Administrator to change the status of an Alert, the Administrator must be assigned to the respective resource role (Network, Server, Storage, or Infrastructure.)

## Examples

###  Example 1 

```text
Set-HPOVAlert -InputObject $Alert -Cleared

```

Clears the alert.

###  Example 2 

```text
Get-HPOVAlert -AlertState Active | Set-HPOVAlert -Cleared

```

Get all alerts in an "Active" state, and set their state to "Cleared".

## Parameters

### -InputObject &lt;Object&gt;

The alert to be cleared.  Can be URI or resource object.

| Aliases | alertUri, Alert |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -AssignToUser &lt;String&gt;

The users name in String value to assign the alert to.  The user name does not require, nor is mapped to, a local user account.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Notes &lt;String&gt;

Notes of the action for the alert.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Cleared &lt;SwitchParameter&gt;

Change the alert to "Cleared" status.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Active &lt;SwitchParameter&gt;

Change the alert to "Active" status.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
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

_**System.String**_

Alert URI

_**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

Alert resource object (i.e. Get-HPOVAlert)

## Return Values

_**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

The updated alert

## Related Links

* [Clear-HPOVAlert](clear-hpovalert.md)
* [Get-HPOVAlert](get-hpovalert.md)
* [Remove-HPOVAlert](remove-hpovalert.md)
