---
description: Configure appliance SMTP Reporting settings.
---

# Get-HPOVSMTPConfig

## Syntax

```text
Get-HPOVSMTPConfig
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will retrieve the SMTP settings for the appliance.

## Examples

###  Example 1 

```text
Get-HPOVSMTPConfig
```

Get SMTP Email Alert configuration from the default appliance connection.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

Returns SMTP Email Configurtion object from the specified appliance(s).

## Related Links

* [Set-HPOVSMTPConfig](set-hpovsmtpconfig.md)
* [Add-HPOVSmtpAlertEmailFilter](add-hpovsmtpalertemailfilter.md)
* [Get-HPOVSmtpAlertEmailFilter](get-hpovsmtpalertemailfilter.md)
* [Set-HPOVSmtpAlertEmailFilter](set-hpovsmtpalertemailfilter.md)
* [Remove-HPOVSmtpAlertEmailFilter](remove-hpovsmtpalertemailfilter.md)
