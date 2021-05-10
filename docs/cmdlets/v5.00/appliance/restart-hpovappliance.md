---
description: Restart an HPE OneView appliance.
---

# Restart-HPOVAppliance

## Syntax

```text
Restart-HPOVAppliance
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

## Description

This Cmdlet will allow the administrator to restart/reboot the appliance.  Restarting the appliance will cause all users to be disconnected and all ongoing tasks to be interrupted.

Only the Infrastructure (Full) Administrator may restart the appliance.

## Examples

###  Example 1 

```text
Connect-HPOVMgmt appliance.contoso.com Administrator P@ssw0rd
Restart-HPOVAppliance
```

Restart the appliance

###  Example 2 

```text
Restart-HPOVAppliance -confirm:$false
```

Restart all connected appliances without confirmation.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.Connection**_

Appliance Connection object

_**System.Collections.ArrayList**_

Collection of HPOneView.Appliance.Connection objects

## Return Values

_**System.String**_

Warning message the appliance is stopping

_**Management.Automation.ErrorRecord**_

Generated error message

## Related Links

* [Add-HPOVApplianceTrustedCertificate](add-hpovappliancetrustedcertificate.md)
* [Disable-HPOVApplianceComplexPasswords](disable-hpovappliancecomplexpasswords.md)
* [Disable-HPOVApplianceServiceConsoleAccess](disable-hpovapplianceserviceconsoleaccess.md)
* [Disable-HPOVApplianceSshAccess](disable-hpovappliancesshaccess.md)
* [Disable-HPOVApplianceTwoFactorAuthentication](disable-hpovappliancetwofactorauthentication.md)
* [Enable-HPOVApplianceComplexPasswords](enable-hpovappliancecomplexpasswords.md)
* [Enable-HPOVApplianceServiceConsoleAccess](enable-hpovapplianceserviceconsoleaccess.md)
* [Enable-HPOVApplianceSshAccess](enable-hpovappliancesshaccess.md)
* [Get-HPOVApplianceAuditLogForwarding](get-hpovapplianceauditlogforwarding.md)
* [Get-HPOVApplianceAvailableSecurityMode](get-hpovapplianceavailablesecuritymode.md)
* [Get-HPOVApplianceCertificateStatus](get-hpovappliancecertificatestatus.md)
* [Get-HPOVApplianceCurrentSecurityMode](get-hpovappliancecurrentsecuritymode.md)
* [Get-HPOVApplianceDateTime](get-hpovappliancedatetime.md)
* [Get-HPOVApplianceGlobalSetting](get-hpovapplianceglobalsetting.md)
* [Get-HPOVApplianceNetworkConfig](get-hpovappliancenetworkconfig.md)
* [Get-HPOVApplianceProxy](get-hpovapplianceproxy.md)
* [Get-HPOVApplianceSecurityProtocol](get-hpovappliancesecurityprotocol.md)
* [Get-HPOVApplianceServiceConsoleAccess](get-hpovapplianceserviceconsoleaccess.md)
* [Get-HPOVApplianceSnmpV3EngineId](get-hpovappliancesnmpv3engineid.md)
* [Get-HPOVApplianceSshAccess](get-hpovappliancesshaccess.md)
* [Get-HPOVApplianceTrapDestination](get-hpovappliancetrapdestination.md)
* [Get-HPOVApplianceTrustedCertificate](get-hpovappliancetrustedcertificate.md)
* [Get-HPOVApplianceTwoFactorAuthentication](get-hpovappliancetwofactorauthentication.md)
* [Install-HPOVApplianceCertificate](install-hpovappliancecertificate.md)
* [New-HPOVApplianceCsr](new-hpovappliancecsr.md)
* [New-HPOVApplianceSelfSignedCertificate](new-hpovapplianceselfsignedcertificate.md)
* [New-HPOVApplianceTrapDestination](new-hpovappliancetrapdestination.md)
* [Pop-HPOVAppliancePermission](../library/pop-hpovappliancepermission.md)
* [Push-HPOVAppliancePermission](../library/push-hpovappliancepermission.md)
* [Remove-HPOVApplianceProxy](remove-hpovapplianceproxy.md)
* [Remove-HPOVApplianceTrapDestination](remove-hpovappliancetrapdestination.md)
* [Remove-HPOVApplianceTrustedCertificate](remove-hpovappliancetrustedcertificate.md)
* [Set-HPOVApplianceAuditLogForwarding](set-hpovapplianceauditlogforwarding.md)
* [Set-HPOVApplianceCurrentSecurityMode](set-hpovappliancecurrentsecuritymode.md)
* [Set-HPOVApplianceDateTime](set-hpovappliancedatetime.md)
* [Set-HPOVApplianceDefaultConnection](../library/set-hpovappliancedefaultconnection.md)
* [Set-HPOVApplianceGlobalSetting](set-hpovapplianceglobalsetting.md)
* [Set-HPOVApplianceNetworkConfig](set-hpovappliancenetworkconfig.md)
* [Set-HPOVApplianceProxy](set-hpovapplianceproxy.md)
* [Set-HPOVApplianceSecurityProtocol](set-hpovappliancesecurityprotocol.md)
* [Set-HPOVApplianceSnmpV3EngineId](set-hpovappliancesnmpv3engineid.md)
* [Set-HPOVApplianceTwoFactorAuthentication](set-hpovappliancetwofactorauthentication.md)
* [Show-HPOVApplianceSecurityModeCompatibilityReport](show-hpovappliancesecuritymodecompatibilityreport.md)
* [Stop-HPOVAppliance](stop-hpovappliance.md)
* [Test-HPOVApplianceAuditLogForwarding](test-hpovapplianceauditlogforwarding.md)
* [Update-HPOVApplianceTrustedAuthorityCrl](update-hpovappliancetrustedauthoritycrl.md)
* [Wait-HPOVApplianceStart](../library/wait-hpovappliancestart.md)
