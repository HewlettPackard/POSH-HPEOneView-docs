---
description: Get appliance audit log entries.
---

# Get-HPOVAuditLog

## Syntax

```text
Get-HPOVAuditLog
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```text
Get-HPOVAuditLog
    [-Count <Int>]
    [-TimeSpan <Timespan>]
    [-Start <DateTime>]
    [-End <Object>]
    [<CommonParameters>]
```

## Description

Using this CMDLET will retrive the appliance Audit Log enteries and display them to the console.

## Examples

###  Example 1 

```text
Get-HPOVAuditLog
Appliance : hpov.mydomain.com
Date      : 2015-10-05 18:14:17.679 UTC
Source    : AUTHENTICATION
Action    : LOGIN
Result    : SUCCESS
Severity  : INFO
Details   : Login Message Acknowledgment is "false".
Source IP : 172.20.253.1

Appliance : hpov.mydomain.com
Date      : 2015-10-05 18:14:17.761 UTC
Source    : AUTHENTICATION
Action    : LOGIN
Result    : SUCCESS
Severity  : INFO
Details   : Authentication SUCCESS. User "Administrator" logged in successfully from client "172.20.253.1" and
            directory "LOCAL" on server "". [logID:LTY4ODgyMTcyMTMz]
Source IP : 172.20.253.1

Appliance : hpov.mydomain.com
Date      : 2015-10-05 20:51:45.754 UTC
Source    : firmware-drivers
Action    : ADD
Result    : SUCCESS
Severity  : INFO
Details   : Add firmware bundle /rest/firmware-drivers/CP026527
```

Return the audit logs from the appliance.

###  Example 2 

```text
Get-HPOVAuditLog -Start ([DateTime]::Now).AddDays("-5")
```

Return the audit logs from the appliance from 5 days ago from today.

## Parameters

### -Count &lt;Int&gt;

Specify the number of audit log entries to return.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Timespan &lt;Timespan&gt;

Specify the time span of to filter results on.  Cannot be combined with Start or End.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Start &lt;DateTime&gt;

Specify the Start datetime object to begin the serach.  Can be combined with End parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -End &lt;Object&gt;

Specify the End datetime object to begin the serach.  Should be combined with Start parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | [DateTime]::Now |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.AuditLogEntry [System.Management.Automation.PSCustomObject]**_

Single Appliance Audit Log Entry

_**System.Collections.ArrayList**_

Multiple  Appliance Audit Log Entries

## Related Links

* [Get-HPOVAuditLogArchive](get-hpovauditlogarchive.md)
