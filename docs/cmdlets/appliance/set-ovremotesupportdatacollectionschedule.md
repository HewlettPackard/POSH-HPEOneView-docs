---
description: Modify Remote Support Schedule settings on an appliance.
---

# Set-OVRemoteSupportDataCollectionSchedule

## Syntax

```powershell
Set-OVRemoteSupportDataCollectionSchedule
    [-DateTime] <DateTime>
    [-Type <String>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to set a new schedule to collect Remote Support logs.  There are two defined schedules: Active Health scheduled on a weekly basis, and Server Basic Configuration scheduled on a monthly basis.  Either scheduled collection task can be modified, to set the Day of Week, Day of Month, Hour and Minute.
When supplying a DateTime value, the Day will be converted to the Day of Month, and Day of the Week respectively.  For instance, if "Oct 30, 2016 13:00" is provided, Day of Month will be every "30th" day, and Day of Week will be every "Sunday" (which Oct 30th 2016 is a Sunday).
To schedule different Day of the Month and Day of the Week, use the -Type paramter to specify AHS or Basic.  The -DateTime paramter value will only be applied to that schedule. 

## Examples

###  Example 1 

```powershell
Set-OVRemoteSupportDataCollectionSchedule -DateTime "11/01/2016 20:00"
```

Set a new Remote Support schedule for November 11, 2016, which is a Monday, at 20:00 (8:00pm).

###  Example 2 

```powershell
Set-OVRemoteSupportDataCollectionSchedule -Type AHS -DateTime "11/01/2016 20:00"
```

Set a new schedule to collect AHS logs every Monday of every week, at 20:00 (8:00pm).

## Parameters

### -Type &lt;String&gt;

Specify the schedule type to modify.  Allowed value is:
* AHS
    *Basic
If no value is provided, both schedules will be modified.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DateTime &lt;DateTime&gt;

Specify a DateTime value for the schedule to execute.  AHS schedule is executed on a weekly basis, and Server Basic Configuration is executed on a monthly basis.  When needing to configure a schedule for AHS log collection, the Month Day"s week day name will be used.  For instance, if "Oct 30, 2016" is provided and scheduling for AHS log collection, the task will execute every Sunday, which October 30th 2016 is on a Sunday.  When providing the hour of the day to execute, the value must be in 24hr time.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for modifying the Remote Support Collection schedules.
    

## Related Links

* [Get-OVRemoteSupportDataCollectionSchedule](get-ovremotesupportdatacollectionschedule.md)
