<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVRemoteSupport
<p>
Retrieve appliance Remote Support configuration.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupport [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Eligible devices are Gen8 and newer blades and enclosures.
NOTE: Servers must be at iLO 2.1 firmware level or above to be enabled for remote support

Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract.

Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.

Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.

 Once the appliance is configured, it cannot be unauthorized or disabled.
 Use this Cmdlet to get the appliance"s current Remote Support configuration.  This Cmdlet does not return device collection data or schedules.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**The setting object with updated parameters.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRemoteSupport
Appliance              Enabled Company   AutoEnableDevices MarketingOptIn InsightOnlineEnabled
---------              ------- -------   ----------------- -------------- --------------------
myappliance.domain.com True    MyCompany False             False          False</pre>
Returns the existing Remote Support configuration of the appliance.



### Related Links

* [Disable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSupport)
* [Enable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSupport)
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
* [Set-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupport)
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

## Get-HPOVRemoteSupport
<p>
Retrieve appliance Remote Support configuration.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupport [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Eligible devices are Gen8 and newer blades and enclosures.
NOTE: Servers must be at iLO 2.1 firmware level or above to be enabled for remote support

Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract.

Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.

Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.

 Once the appliance is configured, it cannot be unauthorized or disabled.
 Use this Cmdlet to get the appliance"s current Remote Support configuration.  This Cmdlet does not return device collection data or schedules.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**The setting object with updated parameters.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRemoteSupport
Appliance              Enabled Company   AutoEnableDevices MarketingOptIn InsightOnlineEnabled
---------              ------- -------   ----------------- -------------- --------------------
myappliance.domain.com True    MyCompany False             False          False</pre>
Returns the existing Remote Support configuration of the appliance.



### Related Links

* [Disable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSupport)
* [Enable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSupport)
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
* [Set-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupport)
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

## Get-HPOVRemoteSupport
<p>
Retrieve appliance Remote Support configuration.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupport [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Eligible devices are Gen8 and newer blades and enclosures.
NOTE: Servers must be at iLO 2.1 firmware level or above to be enabled for remote support

Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract.

Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.

Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.

 Once the appliance is configured, it cannot be unauthorized or disabled.
 Use this Cmdlet to get the appliance"s current Remote Support configuration.  This Cmdlet does not return device collection data or schedules.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**The setting object with updated parameters.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRemoteSupport
Appliance              Enabled Company   AutoEnableDevices MarketingOptIn InsightOnlineEnabled
---------              ------- -------   ----------------- -------------- --------------------
myappliance.domain.com True    MyCompany False             False          False</pre>
Returns the existing Remote Support configuration of the appliance.



### Related Links

* [Disable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSupport)
* [Enable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSupport)
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
* [Set-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupport)
* [Set-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDataCollectionSchedule)
* [Set-HPOVRemoteSupportDefaultSite](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDefaultSite)
* [Set-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportSetting)
* [Start-HPOVRemoteSupportCollection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Start-HPOVRemoteSupportCollection)
* [Update-HPOVRemoteSupportEntitlement](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRemoteSupportEntitlement)


***
<div align=right><a href="#Top">Top</a></div>
