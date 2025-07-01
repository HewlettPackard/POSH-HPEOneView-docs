---
description: Change the appliance current security mode.
---

# Set-OVApplianceCurrentSecurityMode

## Syntax

```powershell
Set-OVApplianceCurrentSecurityMode
    [-SecurityMode] <HPOVApplianceAvailableSecurityMode>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to change the current security mode (Legacy, FIPS or CNSA) of the appliance. Before modifying the appliance security mode, a compatibility report should be run using the Show-OVApplianceSecurityModeCompatibilityReport. When changing active security mode will require an immediate appliance reboot.

## Examples

###  Example 1 

```powershell
Get-OVApplianceAvailableSecurityMode -ModeName CNSA | Set-OVApplianceCurrentSecurityMode
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

Specify the Security Mode to change the appliance to by using Get-OVApplianceAvailableSecurityMode.

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

=== "HPEOneView.Appliance.SecurityMode"
    The specified appliance security mode from Get-OVApplianceAvailableSecurityMode.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource to monitor.
    

## Related Links

* [Get-OVApplianceAvailableSecurityMode](get-ovapplianceavailablesecuritymode.md)
* [Get-OVApplianceCurrentSecurityMode](get-ovappliancecurrentsecuritymode.md)
* [Show-OVApplianceSecurityModeCompatibilityReport](show-ovappliancesecuritymodecompatibilityreport.md)
