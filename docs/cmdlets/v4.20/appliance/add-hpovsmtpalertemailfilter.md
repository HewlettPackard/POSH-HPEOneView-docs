---
description: Add SMPT Email Alert Filter
---

# Add-HPOVSmtpAlertEmailFilter

## Syntax

```text
Add-HPOVSmtpAlertEmailFilter
    [-Name] <String>
    [-Emails] <Array>
    [-Filter <String>]
    [-Scope <Array>]
    [-ScopeMatchPreference <String>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Add-HPOVSmtpAlertEmailFilter
    [-RemoteSupportFilter]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

SMTP Email Filters can be created using this CMDLET.

## Examples

###  Example 1 

```text
Add-HPOVSmtpAlertEmailFilter -Name "Monitor CPU Error and Warning conditions" -query "CPU status:warning or status:critical" -emails admin1@domain.com,admin2@domain.com

```

Set SMTP Alert to notify when system CPU status is either "warning" or "critical", and email 2 addresses.

###  Example 1 

```text
$Script:NewAlertFilterResults = Add-HPOVSmtpAlertEmailFilter -Name "My Test Filter 3" -Filter "status:critical" -Emails "user1@domain.com","user2@domain.com" -Scope "My new Scope","My new Scope2" -Async

```

Create a new email critical alert for the two scope names, and return the Async Task object without waiting.

## Parameters

### -Name &lt;String&gt;

Name of the Filter you are creating.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Filter &lt;String&gt;

REST API filter specifying the resource category, URI, name, and severity.  
    
Example:  CPU status:"warning" or status:"critical"

| Aliases | query |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Array&gt;

Scope(s) the Filter should apply to.  Omitting parameter will apply filter to all defined scopes.  Value is an Array of <HPOneView.Appliance.ScopeResource> or <System.String> of 1 or more names of Scopes.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ScopeMatchPreference &lt;String&gt;

If providing multiple Scope resources, specify AND or OR to indicate match preference.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | OR |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Emails &lt;Array&gt;

Destination EMail address(es).

| Aliases | recipients |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

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

### -RemoteSupportFilter &lt;SwitchParameter&gt;

Use to create the HPE OneView Remote Support email filter for service events.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.Array <Net.Mail.MailAddress>**_

Array of email address recipient(s).

## Return Values

_**HPOneView.Appliance.TaskResource {System.Management.Automation.PSCustomObject}**_

Returns an async task resource to monitor.

## Related Links

