---
description: Change the appliance current security mode.
---

# Set-HPOVApplianceCurrentSecurityMode

## Syntax

```text
Set-HPOVApplianceCurrentSecurityMode
    [-SecurityMode] <HPOVApplianceAvailableSecurityMode>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to change the current security mode (Legacy, FIPS or CNSA) of the appliance. Before modifying the appliance security mode, a compatibility report should be run using the Show-HPOVApplianceSecurityModeCompatibilityReport. When changing active security mode will require an immediate appliance reboot.

## Examples

###  Example 1 

```text
Get-HPOVApplianceAvailableSecurityMode -ModeName CNSA | Set-HPOVApplianceCurrentSecurityMode
```

Put the appliance into CNSA mode. After confirmation prompt, appliance will immediately reboot.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -SecurityMode &lt;HPOVApplianceAvailableSecurityMode&gt;

Specify the Security Mode to change the appliance to by using `Get-HPOVApplianceAvailableSecurityMode`.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Appliance.SecurityMode**_

The specified appliance security mode from [`Get-HPOVApplianceAvailableSecurityMode`](get-hpovapplianceavailablesecuritymode.md).

## Return Values

_**HPEOneView.Appliance.SecurityMode**_

After appliance reboots, the appliance current security mode is returned.

## Related Links

* [Get-HPOVApplianceAvailableSecurityMode](get-hpovapplianceavailablesecuritymode.md)
* [Get-HPOVApplianceCurrentSecurityMode](get-hpovappliancecurrentsecuritymode.md)
* [Show-HPOVApplianceSecurityModeCompatibilityReport](show-hpovappliancesecuritymodecompatibilityreport.md)
