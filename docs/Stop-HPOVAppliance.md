<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Stop-HPOVAppliance
<p>
Stop an HPE OneView appliance.

### SYNTAX
<p>
<pre><code>Stop-HPOVAppliance [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will allow the administrator to stop/shutdown the appliance.  Shutdown of the appliance will cause all users to be disconnected and all ongoing tasks to be interrupted.

Only the Infrastructure (Full) Administrator may restart the appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Connection**_

 Connected Appliance Session

 _**System.Collections.ArrayList**_

 Collection of HPOneView.Appliance.Connection objects



### Return Values

_**System.String**_

 

Warning message the appliance is stopping

 _**Management.Automation.ErrorRecord**_

 

Generated error message



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Connect-HPOVMgmt appliance.contoso.com Administrator P@ssw0rd
Stop-HPOVAppliance

</pre>
Shutdown the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Stop-HPOVAppliance -confirm:$false
</pre>
Shutdown all connected appliances, disable confirmation.



### Related Links

* [Add-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVApplianceTrustedCertificate)
* [Disable-HPOVApplianceComplexPasswords](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceComplexPasswords)
* [Disable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceServiceConsoleAccess)
* [Disable-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceSshAccess)
* [Disable-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceTwoFactorAuthentication)
* [Enable-HPOVApplianceComplexPasswords](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceComplexPasswords)
* [Enable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceServiceConsoleAccess)
* [Enable-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceSshAccess)
* [Get-HPOVApplianceAuditLogForwarding](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceAuditLogForwarding)
* [Get-HPOVApplianceAvailableSecurityMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceAvailableSecurityMode)
* [Get-HPOVApplianceCertificateStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceCertificateStatus)
* [Get-HPOVApplianceCurrentSecurityMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceCurrentSecurityMode)
* [Get-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceDateTime)
* [Get-HPOVApplianceGlobalSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceGlobalSetting)
* [Get-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceNetworkConfig)
* [Get-HPOVApplianceProxy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceProxy)
* [Get-HPOVApplianceSecurityProtocol](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSecurityProtocol)
* [Get-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceServiceConsoleAccess)
* [Get-HPOVApplianceSnmpV3EngineId](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSnmpV3EngineId)
* [Get-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSshAccess)
* [Get-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrapDestination)
* [Get-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrustedCertificate)
* [Get-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTwoFactorAuthentication)
* [Install-HPOVApplianceCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Install-HPOVApplianceCertificate)
* [New-HPOVApplianceCsr](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceCsr)
* [New-HPOVApplianceSelfSignedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceSelfSignedCertificate)
* [New-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceTrapDestination)
* [Pop-HPOVAppliancePermission](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Pop-HPOVAppliancePermission)
* [Push-HPOVAppliancePermission](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Push-HPOVAppliancePermission)
* [Remove-HPOVApplianceProxy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceProxy)
* [Remove-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrapDestination)
* [Remove-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrustedCertificate)
* [Restart-HPOVAppliance](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restart-HPOVAppliance)
* [Set-HPOVApplianceAuditLogForwarding](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceAuditLogForwarding)
* [Set-HPOVApplianceCurrentSecurityMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceCurrentSecurityMode)
* [Set-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceDateTime)
* [Set-HPOVApplianceDefaultConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceDefaultConnection)
* [Set-HPOVApplianceGlobalSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceGlobalSetting)
* [Set-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceNetworkConfig)
* [Set-HPOVApplianceProxy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceProxy)
* [Set-HPOVApplianceSecurityProtocol](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceSecurityProtocol)
* [Set-HPOVApplianceSnmpV3EngineId](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceSnmpV3EngineId)
* [Set-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceTwoFactorAuthentication)
* [Show-HPOVApplianceSecurityModeCompatibilityReport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVApplianceSecurityModeCompatibilityReport)
* [Test-HPOVApplianceAuditLogForwarding](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Test-HPOVApplianceAuditLogForwarding)
* [Update-HPOVApplianceTrustedAuthorityCrl](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVApplianceTrustedAuthorityCrl)
* [Wait-HPOVApplianceStart](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Wait-HPOVApplianceStart)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Stop-HPOVAppliance
<p>
Stop an HPE OneView appliance.

### SYNTAX
<p>
<pre><code>Stop-HPOVAppliance [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will allow the administrator to stop/shutdown the appliance.  Shutdown of the appliance will cause all users to be disconnected and all ongoing tasks to be interrupted.

Only the Infrastructure (Full) Administrator may restart the appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Connection**_

 Connected Appliance Session

 _**System.Collections.ArrayList**_

 Collection of HPOneView.Appliance.Connection objects



### Return Values

_**System.String**_

 

Warning message the appliance is stopping

 _**Management.Automation.ErrorRecord**_

 

Generated error message



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Connect-HPOVMgmt appliance.contoso.com Administrator P@ssw0rd
Stop-HPOVAppliance

</pre>
Shutdown the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Stop-HPOVAppliance -confirm:$false
</pre>
Shutdown all connected appliances, disable confirmation.



### Related Links

* [Add-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVApplianceTrustedCertificate)
* [Disable-HPOVApplianceComplexPasswords](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceComplexPasswords)
* [Disable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceServiceConsoleAccess)
* [Disable-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceSshAccess)
* [Disable-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceTwoFactorAuthentication)
* [Enable-HPOVApplianceComplexPasswords](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceComplexPasswords)
* [Enable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceServiceConsoleAccess)
* [Enable-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceSshAccess)
* [Get-HPOVApplianceAuditLogForwarding](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceAuditLogForwarding)
* [Get-HPOVApplianceAvailableSecurityMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceAvailableSecurityMode)
* [Get-HPOVApplianceCertificateStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceCertificateStatus)
* [Get-HPOVApplianceCurrentSecurityMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceCurrentSecurityMode)
* [Get-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceDateTime)
* [Get-HPOVApplianceGlobalSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceGlobalSetting)
* [Get-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceNetworkConfig)
* [Get-HPOVApplianceProxy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceProxy)
* [Get-HPOVApplianceSecurityProtocol](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSecurityProtocol)
* [Get-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceServiceConsoleAccess)
* [Get-HPOVApplianceSnmpV3EngineId](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSnmpV3EngineId)
* [Get-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSshAccess)
* [Get-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrapDestination)
* [Get-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrustedCertificate)
* [Get-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTwoFactorAuthentication)
* [Install-HPOVApplianceCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Install-HPOVApplianceCertificate)
* [New-HPOVApplianceCsr](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceCsr)
* [New-HPOVApplianceSelfSignedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceSelfSignedCertificate)
* [New-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceTrapDestination)
* [Pop-HPOVAppliancePermission](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Pop-HPOVAppliancePermission)
* [Push-HPOVAppliancePermission](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Push-HPOVAppliancePermission)
* [Remove-HPOVApplianceProxy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceProxy)
* [Remove-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrapDestination)
* [Remove-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrustedCertificate)
* [Restart-HPOVAppliance](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restart-HPOVAppliance)
* [Set-HPOVApplianceAuditLogForwarding](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceAuditLogForwarding)
* [Set-HPOVApplianceCurrentSecurityMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceCurrentSecurityMode)
* [Set-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceDateTime)
* [Set-HPOVApplianceDefaultConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceDefaultConnection)
* [Set-HPOVApplianceGlobalSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceGlobalSetting)
* [Set-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceNetworkConfig)
* [Set-HPOVApplianceProxy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceProxy)
* [Set-HPOVApplianceSecurityProtocol](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceSecurityProtocol)
* [Set-HPOVApplianceSnmpV3EngineId](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceSnmpV3EngineId)
* [Set-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceTwoFactorAuthentication)
* [Show-HPOVApplianceSecurityModeCompatibilityReport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVApplianceSecurityModeCompatibilityReport)
* [Test-HPOVApplianceAuditLogForwarding](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Test-HPOVApplianceAuditLogForwarding)
* [Update-HPOVApplianceTrustedAuthorityCrl](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVApplianceTrustedAuthorityCrl)
* [Wait-HPOVApplianceStart](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Wait-HPOVApplianceStart)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Stop-HPOVAppliance
<p>
Stop an HPE OneView appliance.

### SYNTAX
<p>
<pre><code>Stop-HPOVAppliance [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will allow the administrator to stop/shutdown the appliance.  Shutdown of the appliance will cause all users to be disconnected and all ongoing tasks to be interrupted.

Only the Infrastructure (Full) Administrator may restart the appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Connection**_

 Connected Appliance Session

 _**System.Collections.ArrayList**_

 Collection of HPOneView.Appliance.Connection objects



### Return Values

_**System.String**_

 

Warning message the appliance is stopping

 _**Management.Automation.ErrorRecord**_

 

Generated error message



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Connect-HPOVMgmt appliance.contoso.com Administrator P@ssw0rd
Stop-HPOVAppliance

</pre>
Shutdown the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Stop-HPOVAppliance -confirm:$false
</pre>
Shutdown all connected appliances, disable confirmation.



### Related Links

* [Add-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVApplianceTrustedCertificate)
* [Disable-HPOVApplianceComplexPasswords](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceComplexPasswords)
* [Disable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceServiceConsoleAccess)
* [Disable-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceSshAccess)
* [Disable-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceTwoFactorAuthentication)
* [Enable-HPOVApplianceComplexPasswords](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceComplexPasswords)
* [Enable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceServiceConsoleAccess)
* [Enable-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceSshAccess)
* [Get-HPOVApplianceAvailableSecurityMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceAvailableSecurityMode)
* [Get-HPOVApplianceCertificateStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceCertificateStatus)
* [Get-HPOVApplianceCurrentSecurityMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceCurrentSecurityMode)
* [Get-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceDateTime)
* [Get-HPOVApplianceGlobalSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceGlobalSetting)
* [Get-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceNetworkConfig)
* [Get-HPOVApplianceProxy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceProxy)
* [Get-HPOVApplianceSecurityProtocol](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSecurityProtocol)
* [Get-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceServiceConsoleAccess)
* [Get-HPOVApplianceSnmpV3EngineId](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSnmpV3EngineId)
* [Get-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSshAccess)
* [Get-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrapDestination)
* [Get-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrustedCertificate)
* [Get-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTwoFactorAuthentication)
* [Install-HPOVApplianceCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Install-HPOVApplianceCertificate)
* [New-HPOVApplianceCsr](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceCsr)
* [New-HPOVApplianceSelfSignedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceSelfSignedCertificate)
* [New-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceTrapDestination)
* [Pop-HPOVAppliancePermission](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Pop-HPOVAppliancePermission)
* [Push-HPOVAppliancePermission](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Push-HPOVAppliancePermission)
* [Remove-HPOVApplianceProxy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceProxy)
* [Remove-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrapDestination)
* [Remove-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrustedCertificate)
* [Restart-HPOVAppliance](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restart-HPOVAppliance)
* [Set-HPOVApplianceCurrentSecurityMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceCurrentSecurityMode)
* [Set-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceDateTime)
* [Set-HPOVApplianceDefaultConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceDefaultConnection)
* [Set-HPOVApplianceGlobalSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceGlobalSetting)
* [Set-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceNetworkConfig)
* [Set-HPOVApplianceProxy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceProxy)
* [Set-HPOVApplianceSecurityProtocol](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceSecurityProtocol)
* [Set-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceTwoFactorAuthentication)
* [Show-HPOVApplianceSecurityModeCompatibilityReport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVApplianceSecurityModeCompatibilityReport)
* [Update-HPOVApplianceTrustedAuthorityCrl](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVApplianceTrustedAuthorityCrl)
* [Wait-HPOVApplianceStart](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Wait-HPOVApplianceStart)


***
<div align=right><a href="#Top">Top</a></div>
