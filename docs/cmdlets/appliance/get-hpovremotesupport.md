---
description: Retrieve appliance Remote Support configuration.
---

# Get-HPOVRemoteSupport

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVRemoteSupport [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Eligible devices are Gen8 and newer blades and enclosures. 

{% hint style="warning" %}
Servers must be at iLO 2.1 firmware level or above to be enabled for remote support
{% endhint %}

Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract.

Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.

Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.

Once the appliance is configured, it cannot be unauthorized or disabled.

Use this Cmdlet to get the appliance"s current Remote Support configuration. This Cmdlet does not return device collection data or schedules.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.RemoteSupport.Configuration**_

The setting object with updated parameters.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVRemoteSupport

Appliance              Enabled Company   AutoEnableDevices MarketingOptIn InsightOnlineEnabled
---------              ------- -------   ----------------- -------------- --------------------
myappliance.domain.com True    MyCompany False             False          False
```

Returns the existing Remote Support configuration of the appliance. 

### Related Links 

* [Disable-HPOVRemoteSupport ](disable-hpovremotesupport.md#hpe-oneview-5-00-library)
* [Enable-HPOVRemoteSupport ](enable-hpovremotesupport.md#hpe-oneview-5-00-library)
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

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVRemoteSupport [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Eligible devices are Gen8 and newer blades and enclosures. 

{% hint style="warning" %}
Servers must be at iLO 2.1 firmware level or above to be enabled for remote support
{% endhint %}

Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract.

Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.

Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.

Once the appliance is configured, it cannot be unauthorized or disabled.

Use this Cmdlet to get the appliance"s current Remote Support configuration. This Cmdlet does not return device collection data or schedules.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.RemoteSupport.Configuration**_

The setting object with updated parameters.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVRemoteSupport

Appliance              Enabled Company   AutoEnableDevices MarketingOptIn InsightOnlineEnabled
---------              ------- -------   ----------------- -------------- --------------------
myappliance.domain.com True    MyCompany False             False          False
```

Returns the existing Remote Support configuration of the appliance. 

### Related Links 

* [Disable-HPOVRemoteSupport ](disable-hpovremotesupport.md#hpe-oneview-4-20-library)
* [Enable-HPOVRemoteSupport ](enable-hpovremotesupport.md#hpe-oneview-4-20-library)
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

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVRemoteSupport [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Eligible devices are Gen8 and newer blades and enclosures. 

{% hint style="warning" %}
Servers must be at iLO 2.1 firmware level or above to be enabled for remote support
{% endhint %}

Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract.

Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.

Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.

Once the appliance is configured, it cannot be unauthorized or disabled.

Use this Cmdlet to get the appliance"s current Remote Support configuration. This Cmdlet does not return device collection data or schedules.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Appliance.RemoteSupport.Configuration**_

The setting object with updated parameters.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVRemoteSupport

Appliance              Enabled Company   AutoEnableDevices MarketingOptIn InsightOnlineEnabled
---------              ------- -------   ----------------- -------------- --------------------
myappliance.domain.com True    MyCompany False             False          False
```

Returns the existing Remote Support configuration of the appliance. 

### Related Links 

* [Disable-HPOVRemoteSupport ](disable-hpovremotesupport.md#hpe-oneview-4-20-library)
* [Enable-HPOVRemoteSupport ](enable-hpovremotesupport.md#hpe-oneview-4-10-library)
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



