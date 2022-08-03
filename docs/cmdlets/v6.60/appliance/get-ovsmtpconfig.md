---
description: Configure appliance SMTP Reporting settings.
---

# Get-OVSMTPConfig

## Syntax

```powershell
Get-OVSMTPConfig
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet will retrieve the SMTP settings for the appliance.

## Examples

###  Example 1 

```powershell
Get-OVSMTPConfig
```

Get SMTP Email Alert configuration from the default appliance connection.

## Parameters

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

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

Returns SMTP Email Configurtion object from the specified appliance(s).

## Related Links

* [Set-OVSMTPConfig](set-ovsmtpconfig.md)
* [Add-OVSmtpAlertEmailFilter](add-ovsmtpalertemailfilter.md)
* [Get-OVSmtpAlertEmailFilter](get-ovsmtpalertemailfilter.md)
* [Set-OVSmtpAlertEmailFilter](set-ovsmtpalertemailfilter.md)
* [Remove-OVSmtpAlertEmailFilter](remove-ovsmtpalertemailfilter.md)
