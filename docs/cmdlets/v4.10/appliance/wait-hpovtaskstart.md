---
description: Wait for a task to start.
---

# Wait-HPOVTaskStart

## Syntax

```text
Wait-HPOVTaskStart
    [<CommonParameters>]
```

## Description

Wait for the given task to "start" (get beyond validation phase) or timeout.

## Examples

###  Example 1 

```text
$Task = Add-HPOVServer MyiLO.domain.com Administrator password | Wait-HPOVTaskstart

```

Add a new Server Device to the appliance, wait for the asyncronous task to enter Starting State, and save the task object.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-taskuri, `-task`]
The uri or object of the task resource to wait for.

| Aliases | taskuri, task |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ResourceName &lt;String&gt;

Specify the associated ResourceName to the task to display in the Write-Progress `-activity` parameter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Timeout &lt;TimeSpan&gt;

The time or object to wait for the task to start.  Default is to wait for 20 minutes.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | $script:defaultTimeout |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Task async object

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Task async object

## Related Links

