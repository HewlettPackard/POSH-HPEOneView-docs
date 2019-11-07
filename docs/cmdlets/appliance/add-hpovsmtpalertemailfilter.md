---
description: Add SMTP email alert filter.
---

# Add-HPOVSmtpAlertEmailFilter

## HPE OneView 5.00 Library

### Syntax

```text
Add-HPOVSmtpAlertEmailFilter [-Name] <String> [-Emails] <Net.Mail.MailAddress[]> [[-Filter] <String>] [[-Scope] <Array>] [[-ScopeMatchPreference] <String>] [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Add-HPOVSmtpAlertEmailFilter [-RemoteSupportFilter] <SwitchParameter> [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Email alerting feature notifies specified recipients when a certain alert occurs. When this feature is configured and enabled, the appliance performs these steps in addition to posting the alert:

* The appliance compares the alert to configured search criteria.
* If the alert matches, it creates an email message containing the text of the alert.
* The appliance sends the email message to designated recipients in both plain text and HTML MIME types. Sending in both types allows the recipient’s mail application to determine the display.

You can enable or disable this email notification feature, or you can enable or disable individual filter notifications, as required.

The appliance provides for as many as 100 recipient and filter combinations, and allows as many as 50 recipients in a single email message. This flexibility lets you fine-tune which alert messages are sent and to whom. For example, you can configure the appliance to send Warning alerts to one recipient and Critical alerts to another.

This Cmdlet will help create an advanced alert to the specified recipient\(s\). You can also use the Cmdlet to add default OneView Remote Support alerting to specified recipient\(s\) using the `-RemoteSupportFilter` parameter. Appliance Email notification must be configured.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Emails &lt;**Net.Mail.MailAddress\[\]**&gt; 

Destination Email address\(es\).

| Aliases | recipients |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Filter &lt;String&gt; 

REST API filter specifying the resource category, URI, name, and severity.

Example: CPU status:"warning" or status:"critical"

| Aliases | query |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

Name of the Filter you are creating.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -RemoteSupportFilter &lt;SwitchParameter&gt; 

Use to create the HPE OneView Remote Support email filter for service events.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt; 

Scope\(s\) the Filter should apply to. Omitting parameter will apply filter to all resources.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ScopeMatchPreference &lt;String&gt; 

If providing multiple Scope resources, specify AND or OR to indicate match preference.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | OR |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

#### _**Net.Mail.MailAddress\[\]**_

Array of email address recipient\(s\).

### Return Values

_**HPOneView.Appliance.TaskResource {System.Management.Automation.PSCustomObject}**_

Returns an async task resource to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVSmtpAlertEmailFilter -Name "Monitor CPU Error and Warning conditions" -query "CPU status:warning or status:critical" -emails admin1@domain.com,admin2@domain.com
```

Set SMTP Alert to notify when system CPU status is either "warning" or "critical", and email 2 addresses.

```text
 -------------------------- EXAMPLE 2 --------------------------
Add-HPOVSmtpAlertEmailFilter -Name "My Test Filter 3" -Filter "status:critical" -Emails "user1@domain.com","user2@domain.com" -Scope "My new Scope","My new Scope2" -Async
```

Create a new email critical alert for the two scope names, and return the Async Task object without waiting.

```text
 -------------------------- EXAMPLE 3 --------------------------
Add-HPOVSmtpAlertEmailFilter -RemoteSupportFilter
```

Create OneView Remote Support filter on the appliance.

### Related Links 

* Get-HPOVSMTPConfig
* Set-HPOVSMTPConfig
* Test-HPOVEmailAlert

## HPE OneView 4.20 Library

### Syntax

```text
Add-HPOVSmtpAlertEmailFilter [-Name] <String> [-Emails] <Net.Mail.MailAddress[]> [[-Filter] <String>] [[-Scope] <Array>] [[-ScopeMatchPreference] <String>] [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Add-HPOVSmtpAlertEmailFilter [-RemoteSupportFilter] <SwitchParameter> [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Email alerting feature notifies specified recipients when a certain alert occurs. When this feature is configured and enabled, the appliance performs these steps in addition to posting the alert:

* The appliance compares the alert to configured search criteria.
* If the alert matches, it creates an email message containing the text of the alert.
* The appliance sends the email message to designated recipients in both plain text and HTML MIME types. Sending in both types allows the recipient’s mail application to determine the display.

You can enable or disable this email notification feature, or you can enable or disable individual filter notifications, as required.

The appliance provides for as many as 100 recipient and filter combinations, and allows as many as 50 recipients in a single email message. This flexibility lets you fine-tune which alert messages are sent and to whom. For example, you can configure the appliance to send Warning alerts to one recipient and Critical alerts to another.

This Cmdlet will help create an advanced alert to the specified recipient\(s\). You can also use the Cmdlet to add default OneView Remote Support alerting to specified recipient\(s\) using the `-RemoteSupportFilter` parameter. Appliance Email notification must be configured.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Emails &lt;**Net.Mail.MailAddress\[\]**&gt; 

Destination Email address\(es\).

| Aliases | recipients |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Filter &lt;String&gt; 

REST API filter specifying the resource category, URI, name, and severity.

Example: CPU status:"warning" or status:"critical"

| Aliases | query |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

Name of the Filter you are creating.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -RemoteSupportFilter &lt;SwitchParameter&gt; 

Use to create the HPE OneView Remote Support email filter for service events.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt; 

Scope\(s\) the Filter should apply to. Omitting parameter will apply filter to all resources.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ScopeMatchPreference &lt;String&gt; 

If providing multiple Scope resources, specify AND or OR to indicate match preference.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | OR |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

#### _**Net.Mail.MailAddress\[\]**_

Array of email address recipient\(s\).

### Return Values

_**HPOneView.Appliance.TaskResource {System.Management.Automation.PSCustomObject}**_

Returns an async task resource to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVSmtpAlertEmailFilter -Name "Monitor CPU Error and Warning conditions" -query "CPU status:warning or status:critical" -emails admin1@domain.com,admin2@domain.com
```

Set SMTP Alert to notify when system CPU status is either "warning" or "critical", and email 2 addresses.

```text
 -------------------------- EXAMPLE 2 --------------------------
Add-HPOVSmtpAlertEmailFilter -Name "My Test Filter 3" -Filter "status:critical" -Emails "user1@domain.com","user2@domain.com" -Scope "My new Scope","My new Scope2" -Async
```

Create a new email critical alert for the two scope names, and return the Async Task object without waiting.

```text
 -------------------------- EXAMPLE 3 --------------------------
Add-HPOVSmtpAlertEmailFilter -RemoteSupportFilter
```

Create OneView Remote Support filter on the appliance.

### Related Links 

* Get-HPOVSMTPConfig
* Set-HPOVSMTPConfig
* Test-HPOVEmailAlert

## HPE OneView 4.10 Library

### Syntax

```text
Add-HPOVSmtpAlertEmailFilter [-Name] <String> [-Emails] <Net.Mail.MailAddress[]> [[-Filter] <String>] [[-Scope] <Array>] [[-ScopeMatchPreference] <String>] [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Add-HPOVSmtpAlertEmailFilter [-RemoteSupportFilter] <SwitchParameter> [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Email alerting feature notifies specified recipients when a certain alert occurs. When this feature is configured and enabled, the appliance performs these steps in addition to posting the alert:

* The appliance compares the alert to configured search criteria.
* If the alert matches, it creates an email message containing the text of the alert.
* The appliance sends the email message to designated recipients in both plain text and HTML MIME types. Sending in both types allows the recipient’s mail application to determine the display.

You can enable or disable this email notification feature, or you can enable or disable individual filter notifications, as required.

The appliance provides for as many as 100 recipient and filter combinations, and allows as many as 50 recipients in a single email message. This flexibility lets you fine-tune which alert messages are sent and to whom. For example, you can configure the appliance to send Warning alerts to one recipient and Critical alerts to another.

This Cmdlet will help create an advanced alert to the specified recipient\(s\). You can also use the Cmdlet to add default OneView Remote Support alerting to specified recipient\(s\) using the `-RemoteSupportFilter` parameter. Appliance Email notification must be configured.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Emails &lt;**Net.Mail.MailAddress\[\]**&gt; 

Destination Email address\(es\).

| Aliases | recipients |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

#### -Filter &lt;String&gt; 

REST API filter specifying the resource category, URI, name, and severity.

Example: CPU status:"warning" or status:"critical"

| Aliases | query |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

Name of the Filter you are creating.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -RemoteSupportFilter &lt;SwitchParameter&gt; 

Use to create the HPE OneView Remote Support email filter for service events.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt; 

Scope\(s\) the Filter should apply to. Omitting parameter will apply filter to all resources.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -ScopeMatchPreference &lt;String&gt; 

If providing multiple Scope resources, specify AND or OR to indicate match preference.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | OR |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

#### _**Net.Mail.MailAddress\[\]**_

Array of email address recipient\(s\).

### Return Values

_**HPOneView.Appliance.TaskResource {System.Management.Automation.PSCustomObject}**_

Returns an async task resource to monitor.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVSmtpAlertEmailFilter -Name "Monitor CPU Error and Warning conditions" -query "CPU status:warning or status:critical" -emails admin1@domain.com,admin2@domain.com
```

Set SMTP Alert to notify when system CPU status is either "warning" or "critical", and email 2 addresses.

```text
 -------------------------- EXAMPLE 2 --------------------------
Add-HPOVSmtpAlertEmailFilter -Name "My Test Filter 3" -Filter "status:critical" -Emails "user1@domain.com","user2@domain.com" -Scope "My new Scope","My new Scope2" -Async
```

Create a new email critical alert for the two scope names, and return the Async Task object without waiting.

```text
 -------------------------- EXAMPLE 3 --------------------------
Add-HPOVSmtpAlertEmailFilter -RemoteSupportFilter
```

Create OneView Remote Support filter on the appliance.

### Related Links 

* Get-HPOVSMTPConfig
* Set-HPOVSMTPConfig
* Test-HPOVEmailAlert



