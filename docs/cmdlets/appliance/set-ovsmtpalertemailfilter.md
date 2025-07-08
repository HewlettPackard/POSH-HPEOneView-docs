---
description: Modify an existing SMTP email alert filter.
---

# Set-OVSmtpAlertEmailFilter

## Syntax

```powershell
Set-OVSmtpAlertEmailFilter
    [-InputObject] <Object>
    [-Name <String>]
    [-Disable <bool>]
    [-Filter <String>]
    [-Emails <Net.Mail.MailAddress[]>]
    [-EnableSenderEmailAddress <bool>]
    [-SenderEmail <mailaddress>]
    [-SenderEmailPassword <securestring>]
    [-Scope <HPEOneView.Appliance.ScopeCollection[]>]
    [-ScopeMatchPreference <String>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Email alerting feature notifies specified recipients when a certain alert occurs.  When this feature is configured and enabled, the appliance performs these steps in addition to posting the alert:

* The appliance compares the alert to configured search criteria.
* If the alert matches, it creates an email message containing the text of the alert.
* The appliance sends the email message to designated recipients in both plain text and HTML MIME types. Sending in both types allows the recipient?s mail application to determine the display.

You can enable or disable this email notification feature, or you can enable or disable individual filter notifications, as required.

The appliance provides for as many as 100 recipient and filter combinations, and allows as many as 50 recipients in a single email message. This flexibility lets you fine-tune which alert messages are sent and to whom. For example, you can configure the appliance to send Warning alerts to one recipient and Critical alerts to another.

This Cmdlet will allow you to modify an existing alert filter.  Parameters will replace the existing value if specified in the Cmdlet call.

???+ info
    Minimum required privileges: Infrastructure administrator.

## Examples

###  Example 1 

```powershell
Add-OVSmtpAlertEmailFilter -Name "Monitor CPU Error and Warning conditions" -query "CPU status:warning or status:critical" -emails admin1@domain.com,admin2@domain.com
```

Set SMTP Alert to notify when system CPU status is either "warning" or "critical", and email 2 addresses.

###  Example 2 

```powershell
Add-OVSmtpAlertEmailFilter -Name "My Test Filter 3" -Filter "status:critical" -Emails "user1@domain.com","user2@domain.com" -Scope "My new Scope","My new Scope2" -Async
```

Create a new email critical alert for the two scope names, and return the Async Task object without waiting.

###  Example 3 

```powershell
Add-OVSmtpAlertEmailFilter -RemoteSupportFilter
```

Create OneView Remote Support filter on the appliance.

## Parameters

### -InputObject &lt;Object&gt;

The email alert filter from Get-OVSmtpAlertEmailFilter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Name of the Filter you want to change to.

| Aliases | None |
| :--- | :--- |
| Required? | False |
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

### -Scope &lt;HPEOneView.Appliance.ScopeCollection[]&gt;

Scope(s) the Filter should apply to.

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

### -Emails &lt;Net.Mail.MailAddress[]&gt;

Destination EMail address(es).

| Aliases | recipients |
| :--- | :--- |
| Required? | False |
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

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Disable &lt;bool&gt;

Disable the selected email alert filter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnableSenderEmailAddress &lt;bool&gt;

Specify a boolean value to enable or disable the alert filter sender email address.  When enabling (True), you must provide the sender email parameter.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SenderEmail &lt;mailaddress&gt;

Sending email address option to set filters-specific email sender address.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SenderEmailPassword &lt;securestring&gt;

Sending email address option is provided, you can optionally specify an email address password to authenticate with.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Appliance.AlertEmailFilter [System.Management.Automation.PSCustomObject]"
    The configured email alert filter on the appliance.
    
    

## Return Values

=== "HPEOneView.Appliance.TaskResource {System.Management.Automation.PSCustomObject}"
    Returns an async task resource to monitor.
    

## Related Links

* [Get-OVSMTPConfig](get-ovsmtpconfig.md)
* [Set-OVSMTPConfig](set-ovsmtpconfig.md)
* [Test-OVEmailAlert](test-ovemailalert.md)
* [Add-OVSmtpAlertEmailFilter](add-ovsmtpalertemailfilter.md)
* [Get-OVSmtpAlertEmailFilter](get-ovsmtpalertemailfilter.md)
* [Remove-OVSmtpAlertEmailFilter](remove-ovsmtpalertemailfilter.md)
