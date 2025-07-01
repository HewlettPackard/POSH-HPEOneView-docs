---
description: Stop an HPE OneView appliance.
---

# Stop-OVAppliance

## Syntax

```powershell
Stop-OVAppliance
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

## Description

This Cmdlet will allow the administrator to stop/shutdown the appliance.  Shutdown of the appliance will cause all users to be disconnected and all ongoing tasks to be interrupted.

Only the Infrastructure (Full) Administrator may restart the appliance.

## Examples

###  Example 1 

```powershell
Connect-OVMgmt appliance.contoso.com Administrator P@ssw0rd
Stop-OVAppliance
```

Shutdown the appliance.

###  Example 2 

```powershell
Stop-OVAppliance -confirm:$false
```

Shutdown all connected appliances, disable confirmation.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Appliance.Connection"
    Connected Appliance Session
    

=== "System.Collections.ArrayList"
    Collection of HPEOneView.Appliance.Connection objects
    

## Return Values

=== "System.String"
    Warning message the appliance is stopping
    

=== "Management.Automation.ErrorRecord"
    Generated error message
    

## Related Links

* [Add-OVApplianceTrustedCertificate](add-ovappliancetrustedcertificate.md)
* [Disable-OVApplianceComplexPasswords](disable-ovappliancecomplexpasswords.md)
* [Disable-OVApplianceServiceConsoleAccess](disable-ovapplianceserviceconsoleaccess.md)
* [Disable-OVApplianceSshAccess](disable-ovappliancesshaccess.md)
* [Disable-OVApplianceTwoFactorAuthentication](disable-ovappliancetwofactorauthentication.md)
* [Enable-OVApplianceComplexPasswords](enable-ovappliancecomplexpasswords.md)
* [Enable-OVApplianceServiceConsoleAccess](enable-ovapplianceserviceconsoleaccess.md)
* [Enable-OVApplianceSshAccess](enable-ovappliancesshaccess.md)
* [Get-OVApplianceAuditLogForwarding](get-ovapplianceauditlogforwarding.md)
* [Get-OVApplianceAvailableSecurityMode](get-ovapplianceavailablesecuritymode.md)
* [Get-OVApplianceCertificateStatus](get-ovappliancecertificatestatus.md)
* [Get-OVApplianceCurrentSecurityMode](get-ovappliancecurrentsecuritymode.md)
* [Get-OVApplianceDateTime](get-ovappliancedatetime.md)
* [Get-OVApplianceGlobalSetting](get-ovapplianceglobalsetting.md)
* [Get-OVApplianceNetworkConfig](get-ovappliancenetworkconfig.md)
* [Get-OVApplianceProxy](get-ovapplianceproxy.md)
* [Get-OVApplianceSecurityProtocol](get-ovappliancesecurityprotocol.md)
* [Get-OVApplianceServiceConsoleAccess](get-ovapplianceserviceconsoleaccess.md)
* [Get-OVApplianceSnmpV3EngineId](get-ovappliancesnmpv3engineid.md)
* [Get-OVApplianceSshAccess](get-ovappliancesshaccess.md)
* [Get-OVApplianceTrapDestination](get-ovappliancetrapdestination.md)
* [Get-OVApplianceTrustedCertificate](get-ovappliancetrustedcertificate.md)
* [Get-OVApplianceTwoFactorAuthentication](get-ovappliancetwofactorauthentication.md)
* [Install-OVApplianceCertificate](install-ovappliancecertificate.md)
* [New-OVApplianceCsr](new-ovappliancecsr.md)
* [New-OVApplianceSelfSignedCertificate](new-ovapplianceselfsignedcertificate.md)
* [New-OVApplianceTrapDestination](new-ovappliancetrapdestination.md)
* [Pop-OVAppliancePermission](../library/pop-ovappliancepermission.md)
* [Push-OVAppliancePermission](../library/push-ovappliancepermission.md)
* [Remove-OVApplianceProxy](remove-ovapplianceproxy.md)
* [Remove-OVApplianceTrapDestination](remove-ovappliancetrapdestination.md)
* [Remove-OVApplianceTrustedCertificate](remove-ovappliancetrustedcertificate.md)
* [Restart-OVAppliance](restart-ovappliance.md)
* [Set-OVApplianceAuditLogForwarding](set-ovapplianceauditlogforwarding.md)
* [Set-OVApplianceCurrentSecurityMode](set-ovappliancecurrentsecuritymode.md)
* [Set-OVApplianceDateTime](set-ovappliancedatetime.md)
* [Set-OVApplianceDefaultConnection](../library/set-ovappliancedefaultconnection.md)
* [Set-OVApplianceGlobalSetting](set-ovapplianceglobalsetting.md)
* [Set-OVApplianceNetworkConfig](set-ovappliancenetworkconfig.md)
* [Set-OVApplianceProxy](set-ovapplianceproxy.md)
* [Set-OVApplianceSecurityProtocol](set-ovappliancesecurityprotocol.md)
* [Set-OVApplianceSnmpV3EngineId](set-ovappliancesnmpv3engineid.md)
* [Set-OVApplianceTwoFactorAuthentication](set-ovappliancetwofactorauthentication.md)
* [Show-OVApplianceSecurityModeCompatibilityReport](show-ovappliancesecuritymodecompatibilityreport.md)
* [Test-OVApplianceAuditLogForwarding](test-ovapplianceauditlogforwarding.md)
* [Update-OVApplianceTrustedAuthorityCrl](update-ovappliancetrustedauthoritycrl.md)
* [Wait-OVApplianceStart](../library/wait-ovappliancestart.md)
* [Start-OVEnclosureAppliance](../servers/start-ovenclosureappliance.md)
