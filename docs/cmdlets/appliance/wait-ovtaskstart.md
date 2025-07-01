---
description: Wait for a task to start.
---

# Wait-OVTaskStart

## Syntax

```powershell
Wait-OVTaskStart
    [-InputObject] <Object>
    [-resourceName <String>]
    [-Timeout <TimeSpan>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

HPE OneView utilizes a task subsystem for operations that will take longer than 200ms, and will execute them Asyncrounously. An async task resource object is created and returned to the caller once the request has passed validation.

This blocking Cmdlet assists a caller with waiting for the given task to "start" (get beyond validation phase) or timeout.

Once the task enters the running state, the Cmdlet will return the task resource object. The caller could then use Wait-OVTaskComplete to further monitor the task progression.

## Examples

###  Example 1 

```powershell
$Task = Add-OVServer -Hostname MyiLO.domain.com -Username Administrator -Password password | Wait-OVTaskStart
```

Add a new Server Device to the appliance, wait for the Asynchronous task to enter Starting State, and save the task object.

## Parameters

### -InputObject &lt;Object&gt;

The object of the task resource to wait for.

| Aliases | taskuri, task |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ResourceName &lt;String&gt;

Specify the associated ResourceName to the task in order to display in the Write-Progress `-activity` parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Timeout &lt;TimeSpan&gt;

The time or object to wait for the task to start.  Default is to wait for 20 minutes.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | $script:defaultTimeout |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Task async object
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Task async object
    

## Related Links

* [Get-OVTask](get-ovtask.md)
* [Wait-OVTaskComplete](wait-ovtaskcomplete.md)
