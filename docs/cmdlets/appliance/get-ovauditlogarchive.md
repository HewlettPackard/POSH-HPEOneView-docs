---
description: Download archive of appliance audit logs.
---

# Get-OVAuditLogArchive

## Syntax

```powershell
Get-OVAuditLogArchive
    [-Location <System.IO.DirectoryInfo>]
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

Use this Cmdlet to retrieve appliance audit log archive, which contains all available audit log entries, in ZIP format.

???+ info
    Minimum required privileges:  Infrastructure administrator

## Examples

###  Example 1 

```powershell
Get-OVAuditLogArchive -Location C:\Temp
```

Save the Appliance audit log archive to C:\Temp

## Parameters

### -Location &lt;System.IO.DirectoryInfo&gt;

The full path to where the audit log will be saved to.  If omitted, current directory location will be used.

| Aliases | save |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (get-location).Path |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

One or more Appliance Connection Objects, Connection ID, or Connection Name.  If omitted, all connected appliances will be processed.

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

=== "System.IO.FileInfo"
    The generated audit log File
    

## Related Links

* [Get-OVAuditLog](get-ovauditlog.md)
