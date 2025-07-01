---
description: Get appliance audit log entries.
---

# Get-OVAuditLog

## Syntax

```powershell
Get-OVAuditLog
    [<CommonParameters>]
```

```powershell
Get-OVAuditLog
    [-Count <Int>]
    [-TimeSpan <Timespan>]
    [-Start <DateTime>]
    [-End <DateTime>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

The audit log contains a record of actions performed on the appliance, which you can use for individual accountability. Because the logs are rolled over periodically to prevent them from getting too large, Hewlett Packard Enterprise recommends downloading the audit logs to monitor the actions being performed. You can also download the audit logs periodically to maintain a long-term audit history.

Each user has a unique logging ID per session, enabling you to follow a user?s trail in the audit log. Some actions are performed by the appliance and might not have a logging ID.

A breakdown of an audit entry follows:

* Date/time - The date and time of the event
* Internal component ID - The unique identifier of an internal component
* Reserved - The organization ID. Reserved for internal use
* User domain - The login domain name of the user
* User name/ID - The user name
* Session ID - The user session ID associated with the message
* Task ID - The URI of the task resource associated with the message
* Client host/IP - The client (browser) IP address identifies the client machine that initiated the request
* Result - The result of the action, which can be one of the following values:
    * SUCCESS
    * FAILURE
    * SOME_FAILURES
    * CANCELED
    * KILLED
* Action - A description of the action, which can be one of the following values:
    * ADD
    * MODIFY
    * DELETE
    * ACCESS
    * RUN
    * LIST
    * ENABLE
    * DISABLE
    * SAVE
    * SETUP
    * UNSETUP
    * DEPLOY
    * START
    * DONE
    * KILLED
    * CANCELED
    * LOGIN
    * LOGOUT
    * DOWNLOAD_START
* Severity - A description of the severity of the event, which can be one of the following values, listed in descending order of importance:
    * INFO
    * NOTICE
    * WARNING
    * ERROR
    * ALERT
    * CRITICAL
* Resource category - For REST API category information, see the HPE OneView API Reference.
* Resource URI/name - The resource URI/name associated with the task
* Message - The output message that appears in the audit log

The audit log includes entries for all Maintenance console events except for viewing.

Use this Cmdlet to retrieve appliance audit log entries.  Audit log entries can be filtered based on number of entries to return, and a date range.

???+ info
    Minimum required privileges:  Infrastructure administrator

## Examples

###  Example 1 

```powershell
Get-OVAuditLog
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

```powershell
Get-OVAuditLog -Start ([DateTime]::Now).AddDays("-5")
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

Specify the Start datetime object to begin the search.  Can be combined with End parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -End &lt;DateTime&gt;

Specify the End datetime object to begin the search.  Should be combined with Start parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | [DateTime]::Now |
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

=== "HPEOneView.Appliance.AuditLogEntry [System.Management.Automation.PSCustomObject]"
    Single Appliance Audit Log Entry
    

=== "System.Collections.ArrayList"
    Multiple  Appliance Audit Log Entries
    

## Related Links

* [Get-OVAuditLogArchive](get-ovauditlogarchive.md)
