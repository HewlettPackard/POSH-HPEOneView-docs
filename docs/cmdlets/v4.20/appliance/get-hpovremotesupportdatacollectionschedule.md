---
description: Retrieve Remote Support Schedule settings on an appliance.
---

# Get-HPOVRemoteSupportDataCollectionSchedule

## Syntax

```text
Get-HPOVRemoteSupportDataCollectionSchedule
    [<CommonParameters>]
```

```text
Get-HPOVRemoteSupportDataCollectionSchedule
    [-Type <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to retrieve configured schedules to collect Remote Support logs.  There are two defined schedules: Active Health scheduled on a weekly basis, and Server Basic Configuration scheduled on a monthly basis. 

## Examples

###  Example 1 

```text
Get-HPOVRemoteSupportDataCollectionSchedule"

```

Get the Remote Support data collection schedules.

## Parameters

### -Type &lt;String&gt;

Specify the schedule type to modify.  Allowed value is:
    * AHS
    *Basic
If no value is provided, both schedules will be returned.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

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

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.RemtoeSupport.Schedule [System.Management.Automation.PSCustomObject]**_

The configured Remote Support data collection schedule.

## Related Links

* [Set-HPOVRemoteSupportDataCollectionSchedule](set-hpovremotesupportdatacollectionschedule.md)
