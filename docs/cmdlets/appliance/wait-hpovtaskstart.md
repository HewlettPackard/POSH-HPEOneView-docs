---
description: Wait for a task to start.
---

# Wait-HPOVTaskStart

## HPE OneView 5.00 Library

### Syntax

```text
Wait-HPOVTaskStart [-InputObject] <Object> [[-ResourceName] <String>] [[-Timeout] <TimeSpan>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

HPE OneView utilizes a task subsystem for operations that will take longer than 200ms, and will execute them Asyncrounously. An async task resource object is created and returned to the caller once the request has passed validation.

This blocking Cmdlet assists a caller with waiting for the given task to "start" \(get beyond validation phase\) or timeout.

Once the task enters the running state, the Cmdlet will return the task resource object. The caller could then use [Wait-HPOVTaskComplete](wait-hpovtaskcomplete.md) to further monitor the task progression.

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 3 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Specify the associated ResourceName to the task in order to display in the Write-Progress -activity parameter.

| Aliases | taskuri, task |
| :--- | :--- |
| Required? | false |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Timeout &lt;TimeSpan&gt; 

The time or object to wait for the task to start. Default is to wait for 20 minutes.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 2 |
| Default value | $script:defaultTimeout |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ResourceName &lt;String&gt; 

Specify the associated ResourceName to the task to display in the Write-Progress -activity parameter.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Task async object

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Task async object

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$Task = Add-HPOVServer -Hostname MyiLO.domain.com -Username Administrator -Password password | Wait-HPOVTaskStart
```

Add a new Server Device to the appliance, wait for the asyncronous task to enter Starting State, and save the task object. 

### Related Links

* [Get-HPOVTask](get-hpovtask.md)
* [Wait-HPOVTaskComplete](wait-hpovtaskcomplete.md)

## HPE OneView 4.20 Library

### Syntax

```text
Wait-HPOVTaskStart [-InputObject] <Object> [[-ResourceName] <String>] [[-Timeout] <TimeSpan>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

HPE OneView utilizes a task subsystem for operations that will take longer than 200ms, and will execute them Asyncrounously. An async task resource object is created and returned to the caller once the request has passed validation.

This blocking Cmdlet assists a caller with waiting for the given task to "start" \(get beyond validation phase\) or timeout.

Once the task enters the running state, the Cmdlet will return the task resource object. The caller could then use [Wait-HPOVTaskComplete](wait-hpovtaskcomplete.md) to further monitor the task progression.

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 3 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Specify the associated ResourceName to the task in order to display in the Write-Progress -activity parameter.

| Aliases | taskuri, task |
| :--- | :--- |
| Required? | false |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Timeout &lt;TimeSpan&gt; 

The time or object to wait for the task to start. Default is to wait for 20 minutes.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 2 |
| Default value | $script:defaultTimeout |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ResourceName &lt;String&gt; 

Specify the associated ResourceName to the task to display in the Write-Progress -activity parameter.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Task async object

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Task async object

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$Task = Add-HPOVServer -Hostname MyiLO.domain.com -Username Administrator -Password password | Wait-HPOVTaskStart
```

Add a new Server Device to the appliance, wait for the asyncronous task to enter Starting State, and save the task object. 

### Related Links

* [Get-HPOVTask](get-hpovtask.md)
* [Wait-HPOVTaskComplete](wait-hpovtaskcomplete.md)

## HPE OneView 4.10 Library

### Syntax

```text
Wait-HPOVTaskStart [-InputObject] <Object> [[-ResourceName] <String>] [[-Timeout] <TimeSpan>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

HPE OneView utilizes a task subsystem for operations that will take longer than 200ms, and will execute them Asyncrounously. An async task resource object is created and returned to the caller once the request has passed validation.

This blocking Cmdlet assists a caller with waiting for the given task to "start" \(get beyond validation phase\) or timeout.

Once the task enters the running state, the Cmdlet will return the task resource object. The caller could then use [Wait-HPOVTaskComplete](wait-hpovtaskcomplete.md) to further monitor the task progression.

### Parameters

#### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 3 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Specify the associated ResourceName to the task in order to display in the Write-Progress -activity parameter.

| Aliases | taskuri, task |
| :--- | :--- |
| Required? | false |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Timeout &lt;TimeSpan&gt; 

The time or object to wait for the task to start. Default is to wait for 20 minutes.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 2 |
| Default value | $script:defaultTimeout |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ResourceName &lt;String&gt; 

Specify the associated ResourceName to the task to display in the Write-Progress -activity parameter.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | 1 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Task async object

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Task async object

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
$Task = Add-HPOVServer -Hostname MyiLO.domain.com -Username Administrator -Password password | Wait-HPOVTaskStart
```

Add a new Server Device to the appliance, wait for the asyncronous task to enter Starting State, and save the task object. 

### Related Links

* [Get-HPOVTask](get-hpovtask.md)
* [Wait-HPOVTaskComplete](wait-hpovtaskcomplete.md)



