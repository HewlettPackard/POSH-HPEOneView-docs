---
description: Change status of an alert.
---

# Set-HPOVAlert

## Syntax

```text
Set-HPOVAlert
    [-InputObject] <>
    [-AssignToUser <>]
    [-Notes <>]
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

```text
Set-HPOVAlert
    [-InputObject] <>
    [-Active] <>
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

```text
Set-HPOVAlert
    [-InputObject] <>
    [-Cleared] <>
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

## Description

The appliance uses alert messages to report issues with the resources it manages and monitors. The resources generate alerts to notify you that some meaningful event occurred and that an action might be required.

An event describes a single problem or change that occurred on a resource. For example, an event might be an SNMP trap received from a server's (iLO) management processor.

Each alert includes the following information about the event it reports: severity, state, description, and urgency. You can clear alerts, assign owners to alerts, and add notes to alerts.

While alerts have an active or locked state, they contribute to the overall displayed status for a resource. After you change their state to Cleared, they no longer affect the displayed status.

You can filter the display of the activity list to help you locate and view specific activities. However, you cannot customize filters to otherwise manage the display of the activities.

This Cmdlet allows the administrator to change the status of an alert to either Active or Cleared.  Notes can also be added to an alert, which will appear with in the alert contents.  If an alert should be owned by a specific user, use the -AssignToUser and provide their name.  This does not correlate with any user login name.

In order for an Administrator to change the status of an Alert, the Administrator must be scoped or have use rights to the respective resource role (Network, Server, Storage, or Infrastructure.)

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

###  Example 3 

```text
Get-HPOVServer -name "Encl1, bay 1*" | Get-HPOVAlert -State active | Set-HPOVAlert -Cleared
```

Get aassociated alerts to the servers in an "Active" state, and set their state to "Cleared".

## Parameters

### -InputObject &lt;&gt;

The alert to be cleared.  Can be URI or resource object.

| Aliases | alertUri, Alert |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -AssignToUser &lt;&gt;

The users name in String value to assign the alert to.  The user name does not require, nor is mapped to, a local user account.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Notes &lt;&gt;

Notes of the action for the alert.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Cleared &lt;&gt;

Change the alert to "Cleared" status.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Active &lt;&gt;

Change the alert to "Active" status.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

Alert resource object (i.e. [`Get-HPOVAlert`](get-hpovalert.md))

## Return Values

_**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

The updated alert

## Related Links

* [Clear-HPOVAlert](clear-hpovalert.md)
* [Get-HPOVAlert](get-hpovalert.md)
* [Remove-HPOVAlert](remove-hpovalert.md)
