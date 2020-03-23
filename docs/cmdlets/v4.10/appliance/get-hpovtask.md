---
description: Retrieve Task resource(s).
---

# Get-HPOVTask

## Syntax

```text
Get-HPOVTask
    [-Name <String>]
    [-InputObject <Object>]
    [-State <String>]
    [-Count <Int32>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Get-HPOVTask
    [-Name <String>]
    [-ResourceCategory <String>]
    [-State <String>]
    [-Count <Int32>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Obtain a collection of task resources which have the specified name and/or state.  The returned data will include the task name, owner, state and status.

## Examples

###  Example 1 

```text
$tasks = Get-HPOVTask -state Error

```

Return all the tasks with a taskState="Error"

###  Example 2 

```text
Get-HPOVServerProfile -Name "Server 1" | Get-HPOVTask -State Completed

```

Return completed (successful) tasks associated with the "Server 1" Server Profile.

###  Example 3 

```text
Get-HPOVTask -count 10

```

Display the 10 most recent tasks from the specified appliance connection.

## Parameters

### -Name &lt;String&gt;

Aliases [-TaskName]
The name of the task resource to be returned.  All names will match if omitted.

| Aliases | TaskName |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Related resource Name or Object to the task. To be used for filtering tasks specific to a resource object (i.e. Server Profile).

| Aliases | Resource |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ResourceCategory &lt;String&gt;

Aliases [-Category]
Specify the Resource Category to filter task results to.  Cannot be combined with Resource parameter.

Some examples are:

	* `ethernet-networks`
	* `fc-networks`
	* `power-devices`
	* `unmanaged-devices`
	* `server-profiles`
	* `server-hardware`
	* enclosures
	* `enclosure-groups`
	* interconnects
	* `logical-interconnects`
	* `logical-interconnect`-groups
	* appliance
	* `firmware-drivers`

| Aliases | Category |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -State &lt;String&gt;

The state of the task resource a to be returned. May be one of the following strings:
            
	* Unknown
	* New
	* Running
	* Suspended
	* Terminated
	* Killed
	* Completed
	* Error
	* Warning
	
All states will match if omitted.  All tasks will be returned if both names and state are omitted.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Count &lt;Int32&gt;

Specify the maximum amount of task objects to return.  0 will return all found task objects.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `0` |
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
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject ]**_

Resource Object to retrieve task resources of

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Single Task resource

_**System.Collections.ArrayList <HPOneView.Appliance.TaskResource>**_

Multiple Task resources or formatted table list of tasks

_**The matching task resources.**_



## Related Links

* [Wait-HPOVTaskComplete](wait-hpovtaskcomplete.md)
* [Wait-HPOVTaskStart](wait-hpovtaskstart.md)
