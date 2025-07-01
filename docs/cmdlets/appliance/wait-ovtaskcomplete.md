---
description: Wait for a task to complete.
---

# Wait-OVTaskComplete

## Syntax

```powershell
Wait-OVTaskComplete
    [-InputObject] <Object>
    [-Timeout <TimeSpan>]
    [-ApplianceConnection <Object>]
    [-ApplianceWillReboot]
    [<CommonParameters>]
```

## Description

HPE OneView utilizes a task subsystem for operations that will take longer than 200ms, and will execute them Asyncrounously.  An async task resource object is created and returned to the caller once the request has passed validation.

This blocking Cmdlet assists a caller with monitoring a specific task resource, and will wait for the given task to "complete" (get to a terminal state, including error) or timeout.  The Cmdlet accepts either the task URI or resource object via pipeline.  

Once the task is no longer in a running state, the cmlet will return the task resource object.  The caller should examine the taskState property/key for the final task status.

## Examples

###  Example 1 

```powershell
Wait-OVTaskComplete -InputObject $task -timeout (New-TimeSpan -minute 10)
Waiting for task to complete..Task completed successfully!
```

Wait for task to complete, modifying the default timeout to 10 minutes.

###  Example 2 

```powershell
$svr = Get-OVServer -Name "ServerA"
$taskResults = New-OVServerProfile -name "Profile 1" -server $svr | Wait-OVTaskComplete
```

Retrieve the server details for ServerA, create a Server Profile and pass via pipeline the task resource object.

## Parameters

### -InputObject &lt;Object&gt;

The uri of the task resource to wait for.

| Aliases | TaskUri, Task |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Timeout &lt;TimeSpan&gt;

The timespan to wait for the task to complete.  Default is to wait for 20 minutes.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | $DefaultTimeout |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceWillReboot &lt;SwitchParameter&gt;

Internal use: to indicate if a task will cause appliance to reboot.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
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

=== "System.String"
    Task URI
    

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Task resource object
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    The finished Task object that includes the task result
    

## Related Links

* [Get-OVTask](get-ovtask.md)
* [Wait-OVTaskStart](wait-ovtaskstart.md)
