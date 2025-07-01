---
description: Retrieve SMTP email alert filter(s) configured on the appliance.
---

# Get-OVSmtpAlertEmailFilter

## Syntax

```powershell
Get-OVSmtpAlertEmailFilter
    [-Name] <String>
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

This Cmdlet will help get the configured email alert filter(s) configured on the appliance.

???+ info
    Minimum required privileges: Infrastructure administrator.

## Examples

###  Example 1 

```powershell
Get-OVSmtpAlertEmailFilter -Name "Monitor CPU Error and Warning conditions"
```

Get the specified email alert filter.

###  Example 2 

```powershell
Get-OVSmtpAlertEmailFilter -Name "Remote Support"
```

Get the remote support email filter.

## Parameters

### -Name &lt;String&gt;

Name of the Filter to return.  Supports wildcard.  To return the remote support email filter configuration, specify "Remote Support" as the filter name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | True |

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

None.  You cannot pipe objects to this cmdlet.


## Return Values

=== "HPEOneView.Appliance.AlertEmailFilter [System.Management.Automation.PSCustomObject]"
    The configured email alert filter on the appliance.
    
    

## Related Links

* [Get-OVSMTPConfig](get-ovsmtpconfig.md)
* [Set-OVSMTPConfig](set-ovsmtpconfig.md)
* [Test-OVEmailAlert](test-ovemailalert.md)
* [Add-OVSmtpAlertEmailFilter](add-ovsmtpalertemailfilter.md)
* [Set-OVSmtpAlertEmailFilter](set-ovsmtpalertemailfilter.md)
* [Remove-OVSmtpAlertEmailFilter](remove-ovsmtpalertemailfilter.md)
