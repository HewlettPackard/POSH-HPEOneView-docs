---
description: Retrieve SMTP email alert filter(s) configured on the appliance.
---

# Get-HPOVSmtpAlertEmailFilter

## Syntax

```text
Get-HPOVSmtpAlertEmailFilter
    [-Name <String>]
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

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator.
{% endhint %}

## Examples

###  Example 1 

```text
Get-HPOVSmtpAlertEmailFilter -Name "Monitor CPU Error and Warning conditions"
```

Get the specified email alert filter.

###  Example 2 

```text
Get-HPOVSmtpAlertEmailFilter -Name "Remote Support"
```

Get the remote support email filter.

## Parameters

### -Name &lt;String&gt;

Name of the Filter to return.  Supports wildcard.  To return the remote support email filter configuration, specify "Remote Support" as the filter name.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | True |

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

_**HPOneView.Appliance.AlertEmailFilter [System.Management.Automation.PSCustomObject]**_

The configured email alert filter on the appliance.


## Related Links

* [Get-HPOVSMTPConfig](get-hpovsmtpconfig.md)
* [Set-HPOVSMTPConfig](set-hpovsmtpconfig.md)
* [Test-HPOVEmailAlert](test-hpovemailalert.md)
* [Add-HPOVSmtpAlertEmailFilter](add-hpovsmtpalertemailfilter.md)
* [Set-HPOVSmtpAlertEmailFilter](set-hpovsmtpalertemailfilter.md)
* [Remove-HPOVSmtpAlertEmailFilter](remove-hpovsmtpalertemailfilter.md)
