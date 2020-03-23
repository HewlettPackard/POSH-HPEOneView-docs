---
description: Configure appliance SMTP Reporting settings.
---

# Set-HPOVSMTPConfig

## Syntax

```text
Set-HPOVSMTPConfig
    [-SenderEmailAddress <String>]
    [-Server <String>]
    [-Port <Int32>]
    [-ConnectionSecurity <>]
    [-Password <String>]
    [-AlertEmailEnabled]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Set-HPOVSMTPConfig
    [-AlertEmailDisabled]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This cmdlet configures the SMTP settings for the appliance.  SMTP settings include deining the Sender EMAIL Address, SMTP relay server address, SMTP relay server TCP port, optional password, and if SMTP alerting is enabled or disabled.

Currently, HPE OneView does not support Secure SMTP, even though the TCP Port can be modified.  Using the SmtpPort parameter is to specify an alternate TCP Port than the default TCP/25.

## Examples

###  Example 1 

```text
Set-HPOVSMTPConfig -SenderEmailAddress hpov-alerts@contoso.com -alertEmailEnabled

```

Set the appliance"s SMTP Sender Email Address to "hpov-alerts@contoso.com" and enable SMTP Email Alerting.

###  Example 2 

```text
Set-HPOVSMTPConfig -SenderEmailAddress hpov-alerts@contoso.com -alertEmailEnabled

```

Set the appliance"s SMTP Sender Email Address to "hpov-alerts@contoso.com" and enable SMTP Email Alerting.

###  Example 3 

```text
Set-HPOVSMTPConfig -SenderEmailAddress hpov-alerts@contoso.com -AlertEmailEnabled -ConnectionSecurity StartTls

```

Set the appliance"s SMTP Sender Email Address to "hpov-alerts@contoso.com", enabling SMTP Email Alerting and specifying StartTls connection security.

## Parameters

### -SenderEmailAddress &lt;String&gt;

Specify the Sender Email Address for the appliance.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Server &lt;String&gt;

Aliases [-SmtpServer]
Specify the SMTP Relay Server if DNS does not contain a valid DNS MX record for the sender email address domain name.

| Aliases | SmtpServer |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Port &lt;Int32&gt;

Aliases [-SmtpPort]
Provide an alternate TCP port number than the default SMTP port value 25/TCP.

| Aliases | SmtpPort |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `25` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Password &lt;String&gt;

Provide an SMTP Password to authenticate to the SMTP Server.  This password will be sent in clear text to the SMTP server.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AlertEmailDisabled &lt;SwitchParameter&gt;

Disable SMTP Email Alerting.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AlertEmailEnabled &lt;SwitchParameter&gt;

Enable SMTP Email Alerting

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ConnectionSecurity &lt;&gt;

Use to specify if the target SMTP server requires TLS security/authentication.  Supported values:

	* None
	* TLS
	* StartTls

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `None` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

The finished Task object that includes the task result

## Related Links

* [Get-HPOVSMTPConfig](get-hpovsmtpconfig.md)
