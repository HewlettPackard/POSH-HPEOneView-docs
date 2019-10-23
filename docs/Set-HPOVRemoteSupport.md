<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVRemoteSupport
<p>
Configure Remote Support and authorize appliance.

### SYNTAX
<p>
<pre><code>Set-HPOVRemoteSupport [-CompanyName] &lt;String&gt;[ [-OptimizeOptIn] &lt;SwitchParameter&gt;][ [-AutoEnableDevices] &lt;bool&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVRemoteSupport [-CompanyName] &lt;String&gt;[ [-InsightOnlineUsername] &lt;String&gt;][ [-InsightOnlinePassword] &lt;SecureString&gt;][ [-OptimizeOptIn] &lt;SwitchParameter&gt;][ [-AutoEnableDevices] &lt;bool&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVRemoteSupport [-Enable] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVRemoteSupport [-Disable] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Eligible devices are Gen8 and newer blades and enclosures.
NOTE: Servers must be at iLO 2.1 firmware level or above to be enabled for remote support

Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract.

Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.

Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.

 Once the appliance is configured, it cannot be unauthorized or disabled.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AutoEnableDevices &lt;bool&gt;<p>
Choose to allow the appliance to auto enable remote support for all and devices added in the future.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CompanyName &lt;String&gt;<p>
The company name Remote Support will be authorized for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disable &lt;SwitchParameter&gt;<p>
Use this parameter to disable remote support globally on the appliance.  Use the -Enable parameter to re-enable Remote Support.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enable &lt;SwitchParameter&gt;<p>
Use this parameter to enable remote support on an appliance, only if the appliance was previously configured for Remote Support and it was disabled.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InsightOnlinePassword &lt;SecureString&gt;<p>
The Insight Online account password.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InsightOnlineUsername &lt;String&gt;<p>
The user name of your Insight Online account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OptimizeOptIn &lt;SwitchParameter&gt;<p>
Opt-in to allow HPE marketing to discuss datacenter optimization.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.RemoteSupportConfig [System.Management.Automation.PSCustomObject]**_

 

The appliance Remote Support configuration applied.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVRemoteSupport -CompanyName MyCompany
</pre>
Configure and register the applinace for Remote Support.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVRemoteSupport -CompanyName MyCompany -InsightOnlineUsername mypassport@domain.local -InsightOnlinePassword (ConvertTo-SecureString -String MyPassword -AsPlainText -Force)
</pre>
Configure and register the applinace for Remote Support, and enable Insight Online portal registration.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Set-HPOVRemoteSupport -Disable
</pre>
Disable Remote Support on the appliance.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Set-HPOVRemoteSupport -Enable -ApplianceConnection $Appliance2
</pre>
Enable Remote Support after it was previously disabled for the specific appliance.



### Related Links

* [Disable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSupport)
* [Enable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSupport)
* [Get-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupport)
* [Get-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportContact)
* [Get-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDataCollectionSchedule)
* [Get-HPOVRemoteSupportDefaultSite](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDefaultSite)
* [Get-HPOVRemoteSupportEntitlementStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportEntitlementStatus)
* [Get-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportPartner)
* [Get-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportSetting)
* [New-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportContact)
* [New-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportPartner)
* [Remove-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportContact)
* [Remove-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportPartner)
* [Set-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDataCollectionSchedule)
* [Set-HPOVRemoteSupportDefaultSite](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDefaultSite)
* [Set-HPOVRemoteSupportPrimaryContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportPrimaryContact)
* [Set-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportSetting)
* [Start-HPOVRemoteSupportCollection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Start-HPOVRemoteSupportCollection)
* [Update-HPOVRemoteSupportEntitlement](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRemoteSupportEntitlement)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVRemoteSupport
<p>
Configure Remote Support and authorize appliance.

### SYNTAX
<p>
<pre><code>Set-HPOVRemoteSupport [-CompanyName] &lt;String&gt;[ [-OptimizeOptIn] &lt;SwitchParameter&gt;][ [-AutoEnableDevices] &lt;bool&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVRemoteSupport [-CompanyName] &lt;String&gt;[ [-InsightOnlineUsername] &lt;String&gt;][ [-InsightOnlinePassword] &lt;SecureString&gt;][ [-OptimizeOptIn] &lt;SwitchParameter&gt;][ [-AutoEnableDevices] &lt;bool&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVRemoteSupport [-Enable] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVRemoteSupport [-Disable] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Eligible devices are Gen8 and newer blades and enclosures.
NOTE: Servers must be at iLO 2.1 firmware level or above to be enabled for remote support

Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract.

Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.

Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.

 Once the appliance is configured, it cannot be unauthorized or disabled.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AutoEnableDevices &lt;bool&gt;<p>
Choose to allow the appliance to auto enable remote support for all and devices added in the future.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CompanyName &lt;String&gt;<p>
The company name Remote Support will be authorized for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disable &lt;SwitchParameter&gt;<p>
Use this parameter to disable remote support globally on the appliance.  Use the -Enable parameter to re-enable Remote Support.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enable &lt;SwitchParameter&gt;<p>
Use this parameter to enable remote support on an appliance, only if the appliance was previously configured for Remote Support and it was disabled.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InsightOnlinePassword &lt;SecureString&gt;<p>
The Insight Online account password.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InsightOnlineUsername &lt;String&gt;<p>
The user name of your Insight Online account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OptimizeOptIn &lt;SwitchParameter&gt;<p>
Opt-in to allow HPE marketing to discuss datacenter optimization.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.RemoteSupportConfig [System.Management.Automation.PSCustomObject]**_

 

The appliance Remote Support configuration applied.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVRemoteSupport -CompanyName MyCompany
</pre>
Configure and register the applinace for Remote Support.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVRemoteSupport -CompanyName MyCompany -InsightOnlineUsername mypassport@domain.local -InsightOnlinePassword (ConvertTo-SecureString -String MyPassword -AsPlainText -Force)
</pre>
Configure and register the applinace for Remote Support, and enable Insight Online portal registration.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Set-HPOVRemoteSupport -Disable
</pre>
Disable Remote Support on the appliance.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Set-HPOVRemoteSupport -Enable -ApplianceConnection $Appliance2
</pre>
Enable Remote Support after it was previously disabled for the specific appliance.



### Related Links

* [Disable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSupport)
* [Enable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSupport)
* [Get-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupport)
* [Get-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportContact)
* [Get-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDataCollectionSchedule)
* [Get-HPOVRemoteSupportDefaultSite](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDefaultSite)
* [Get-HPOVRemoteSupportEntitlementStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportEntitlementStatus)
* [Get-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportPartner)
* [Get-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportSetting)
* [New-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportContact)
* [New-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportPartner)
* [Remove-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportContact)
* [Remove-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportPartner)
* [Set-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDataCollectionSchedule)
* [Set-HPOVRemoteSupportDefaultSite](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDefaultSite)
* [Set-HPOVRemoteSupportPrimaryContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportPrimaryContact)
* [Set-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportSetting)
* [Start-HPOVRemoteSupportCollection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Start-HPOVRemoteSupportCollection)
* [Update-HPOVRemoteSupportEntitlement](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRemoteSupportEntitlement)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVRemoteSupport
<p>
Configure Remote Support and authorize appliance.

### SYNTAX
<p>
<pre><code>Set-HPOVRemoteSupport [-CompanyName] &lt;String&gt;[ [-OptimizeOptIn] &lt;SwitchParameter&gt;][ [-AutoEnableDevices] &lt;bool&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVRemoteSupport [-CompanyName] &lt;String&gt; [-InsightOnlineUsername] &lt;String&gt; [-InsightOnlinePassword] &lt;SecureString&gt;[ [-OptimizeOptIn] &lt;SwitchParameter&gt;][ [-AutoEnableDevices] &lt;bool&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVRemoteSupport [-Enable] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVRemoteSupport [-Disable] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Eligible devices are Gen8 and newer blades and enclosures.
NOTE: Servers must be at iLO 2.1 firmware level or above to be enabled for remote support

Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract.

Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.

Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.

 Once the appliance is configured, it cannot be unauthorized or disabled.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AutoEnableDevices &lt;bool&gt;<p>
Choose to allow the appliance to auto enable remote support for all and devices added in the future.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CompanyName &lt;String&gt;<p>
The company name Remote Support will be authorized for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disable &lt;SwitchParameter&gt;<p>
Use this parameter to disable remote support globally on the appliance.  Use the -Enable parameter to re-enable Remote Support.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enable &lt;SwitchParameter&gt;<p>
Use this parameter to enable remote support on an appliance, only if the appliance was previously configured for Remote Support and it was disabled.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InsightOnlinePassword &lt;SecureString&gt;<p>
The Insight Online account password.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InsightOnlineUsername &lt;String&gt;<p>
The user name of your Insight Online account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OptimizeOptIn &lt;SwitchParameter&gt;<p>
Opt-in to allow HPE marketing to discuss datacenter optimization.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.RemoteSupportConfig [System.Management.Automation.PSCustomObject]**_

 

The appliance Remote Support configuration applied.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVRemoteSupport -CompanyName MyCompany
</pre>
Configure and register the applinace for Remote Support.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVRemoteSupport -CompanyName MyCompany -InsightOnlineUsername mypassport@domain.local -InsightOnlinePassword (ConvertTo-SecureString -String MyPassword -AsPlainText -Force)
</pre>
Configure and register the applinace for Remote Support, and enable Insight Online portal registration.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Set-HPOVRemoteSupport -Disable
</pre>
Disable Remote Support on the appliance.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Set-HPOVRemoteSupport -Enable -ApplianceConnection $Appliance2
</pre>
Enable Remote Support after it was previously disabled for the specific appliance.



### Related Links

* [Disable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSupport)
* [Enable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSupport)
* [Get-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupport)
* [Get-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportContact)
* [Get-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDataCollectionSchedule)
* [Get-HPOVRemoteSupportDefaultSite](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDefaultSite)
* [Get-HPOVRemoteSupportEntitlementStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportEntitlementStatus)
* [Get-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportPartner)
* [Get-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportSetting)
* [New-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportContact)
* [New-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportPartner)
* [Remove-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportContact)
* [Remove-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportPartner)
* [Set-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDataCollectionSchedule)
* [Set-HPOVRemoteSupportDefaultSite](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDefaultSite)
* [Set-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportSetting)
* [Start-HPOVRemoteSupportCollection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Start-HPOVRemoteSupportCollection)
* [Update-HPOVRemoteSupportEntitlement](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRemoteSupportEntitlement)


***
<div align=right><a href="#Top">Top</a></div>
