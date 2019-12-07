---
description: Get supported resource Remote Support settings.
---

# Get-HPOVRemoteSupportSetting

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVRemoteSupportSetting [-InputObject] <Object> [[-ApplianceConnection] <Object>] [<CommonParameters>]
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

Use this Cmdlet to retrieve a supported resources Remote Support settings of an enabled resource \(compute or enclosure\), defined Parimary and Secondary contact, and authorized reseller or support partners.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Either a Server Hardware or Enclosure resource to get the configured Remote Support collection settings.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerHardware \[System.Management.Automation.PSCustomObject\]**_

Server hardware resource object.

_**HPOneView.Enclosure \[System.Management.Automation.PSCustomObject\]**_

Enclosure resource object.

### Return Values

_**HPOneView.Appliance.RemoteSupport.ResourceSetting \[System.Management.Automation.PSCustomObject\]**_

Remote Support Settings object.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVEnclosure -Name Encl1 | Get-HPOVRemoteSupportSetting 

Appliance              ResourceName SalesChannelPartner        SupportChannelPartner      PrimaryContact SecondaryContact 
---------              ------------ -------------------        ---------------------      -------------- ---------------- 
MyAppliance.domain.com Encl1        Hewlett Packard Enterprise Hewlett Packard Enterprise Mark Jones
```

Get the configured Remote Support collection settings for "Encl1" Enclosure resource.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVServer -Name PROD* | Get-HPOVRemoteSupportSetting | ? supportEnabled -eq $false
```

Return all PROD servers, and return only those where remote support is not enabled. 

### Related Links 

* [Get-HPOVEnclosure](../servers/get-hpovenclosure.md#hpe-oneview-5-00-library)
* [Get-HPOVRemoteSupport](get-hpovremotesupport.md#hpe-oneview-5-00-library)
* [Get-HPOVRemoteSupportEntitlementStatus](get-hpovremotesupportentitlementstatus.md#hpe-oneview-5-00-library)
* Get-HPOVServer
* [Set-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportSetting) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVRemoteSupportSetting [-InputObject] <Object> [[-ApplianceConnection] <Object>] [<CommonParameters>]
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

Use this Cmdlet to retrieve a supported resources Remote Support settings of an enabled resource \(compute or enclosure\), defined Parimary and Secondary contact, and authorized reseller or support partners.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Either a Server Hardware or Enclosure resource to get the configured Remote Support collection settings.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerHardware \[System.Management.Automation.PSCustomObject\]**_

Server hardware resource object.

_**HPOneView.Enclosure \[System.Management.Automation.PSCustomObject\]**_

Enclosure resource object.

### Return Values

_**HPOneView.Appliance.RemoteSupport.ResourceSetting \[System.Management.Automation.PSCustomObject\]**_

Remote Support Settings object.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVEnclosure -Name Encl1 | Get-HPOVRemoteSupportSetting 

Appliance              ResourceName SalesChannelPartner        SupportChannelPartner      PrimaryContact SecondaryContact 
---------              ------------ -------------------        ---------------------      -------------- ---------------- 
MyAppliance.domain.com Encl1        Hewlett Packard Enterprise Hewlett Packard Enterprise Mark Jones
```

Get the configured Remote Support collection settings for "Encl1" Enclosure resource.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVServer -Name PROD* | Get-HPOVRemoteSupportSetting | ? supportEnabled -eq $false
```

Return all PROD servers, and return only those where remote support is not enabled. 

### Related Links 

* [Get-HPOVEnclosure](../servers/get-hpovenclosure.md#hpe-oneview-4-20-library)
* [Get-HPOVRemoteSupport](get-hpovremotesupport.md#hpe-oneview-4-20-library)
* [Get-HPOVRemoteSupportEntitlementStatus](get-hpovremotesupportentitlementstatus.md#hpe-oneview-4-20-library)
* Get-HPOVServer
* [Set-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportSetting) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVRemoteSupportSetting [-InputObject] <Object> [[-ApplianceConnection] <Object>] [<CommonParameters>]
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

Use this Cmdlet to retrieve a supported resources Remote Support settings of an enabled resource \(compute or enclosure\), defined Parimary and Secondary contact, and authorized reseller or support partners.

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

Either a Server Hardware or Enclosure resource to get the configured Remote Support collection settings.

| Aliases | None |
| :--- | :--- |
| Required? | true |
| Position? | named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.ServerHardware \[System.Management.Automation.PSCustomObject\]**_

Server hardware resource object.

_**HPOneView.Enclosure \[System.Management.Automation.PSCustomObject\]**_

Enclosure resource object.

### Return Values

_**HPOneView.Appliance.RemoteSupport.ResourceSetting \[System.Management.Automation.PSCustomObject\]**_

Remote Support Settings object.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVEnclosure -Name Encl1 | Get-HPOVRemoteSupportSetting 

Appliance              ResourceName SalesChannelPartner        SupportChannelPartner      PrimaryContact SecondaryContact 
---------              ------------ -------------------        ---------------------      -------------- ---------------- 
MyAppliance.domain.com Encl1        Hewlett Packard Enterprise Hewlett Packard Enterprise Mark Jones
```

Get the configured Remote Support collection settings for "Encl1" Enclosure resource.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVServer -Name PROD* | Get-HPOVRemoteSupportSetting | ? supportEnabled -eq $false
```

Return all PROD servers, and return only those where remote support is not enabled. 

### Related Links 

* [Get-HPOVEnclosure](../servers/get-hpovenclosure.md#hpe-oneview-4-10-library)
* [Get-HPOVRemoteSupport](get-hpovremotesupport.md#hpe-oneview-4-10-library)
* [Get-HPOVRemoteSupportEntitlementStatus](get-hpovremotesupportentitlementstatus.md#hpe-oneview-4-10-library)
* Get-HPOVServer
* [Set-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportSetting) 

