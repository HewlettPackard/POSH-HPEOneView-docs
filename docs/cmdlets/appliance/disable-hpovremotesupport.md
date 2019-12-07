---
description: Disable Remote Support for a supported resource.
---

# Disable-HPOVRemoteSupport

## HPE OneView 5.00 Library

### Syntax

```text
Disable-HPOVRemoteSupport [-InputObject] <Object> [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Hewlett Packard Enterprise recommends enabling all features and benefits provided by HPE OneView Remote Support so you can receive fast, accurate 'phone home' support and service per your contractual terms with Hewlett Packard Enterprise. Hewlett Packard Enterprise securely collects your HPE IT hardware diagnostics, configuration and telemetry information to provide you with remote support and services. The data is handled and managed to respect your privacy. For more information, Hewlett Packard Enterprise's Privacy Statement can be found at [http://privacy.hpe.com](http://privacy.hpe.com).

Enabling Remote Support configures your devices being remotely supported to securely send support or service events, IT configuration information, diagnostic, and telemetry information to Hewlett Packard Enterprise, together with your support contact information. No other business information is collected and the data is managed according to the Hewlett Packard Enterprise's Privacy Statement.

This Cmdlet will disable Remote Support for a compute or enclosure resource. If Remote Support has been disabled globally on the appliance, this Cmdlet is unnecessary.

{% hint style="info" %}
Privileges: Infrastructure administrator, Server administrator
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

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The compute or enclosure resource to enable Remote Support for.

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

A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

_**HPOneView.Enclosure \[System.Management.Automation.PSCustomObject\]**_

An enclosure from Get-HPOVEnclosure.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async task Resource object for monitoring.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVServer -Name Prod* | Disable-HPOVRemoteSupport
```

Get the servers with their name matching "Prod" and disable Remote Support for those resources.

```text
 -------------------------- EXAMPLE 2 --------------------------
$Enclosure = Get-HPOVEnclosure -Name Enclosure-1A
Disable-HPOVRemoteSupport -InputObject $Enclosure 
```

Get the specific enclosure reousrce and disable Remote Support. 

### Related Links 

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
Disable-HPOVRemoteSupport [-InputObject] <Object> [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Hewlett Packard Enterprise recommends enabling all features and benefits provided by HPE OneView Remote Support so you can receive fast, accurate 'phone home' support and service per your contractual terms with Hewlett Packard Enterprise. Hewlett Packard Enterprise securely collects your HPE IT hardware diagnostics, configuration and telemetry information to provide you with remote support and services. The data is handled and managed to respect your privacy. For more information, Hewlett Packard Enterprise's Privacy Statement can be found at [http://privacy.hpe.com](http://privacy.hpe.com).

Enabling Remote Support configures your devices being remotely supported to securely send support or service events, IT configuration information, diagnostic, and telemetry information to Hewlett Packard Enterprise, together with your support contact information. No other business information is collected and the data is managed according to the Hewlett Packard Enterprise's Privacy Statement.

This Cmdlet will disable Remote Support for a compute or enclosure resource. If Remote Support has been disabled globally on the appliance, this Cmdlet is unnecessary.

{% hint style="info" %}
Privileges: Infrastructure administrator, Server administrator
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

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The compute or enclosure resource to enable Remote Support for.

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

A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

_**HPOneView.Enclosure \[System.Management.Automation.PSCustomObject\]**_

An enclosure from Get-HPOVEnclosure.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async task Resource object for monitoring.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVServer -Name Prod* | Disable-HPOVRemoteSupport
```

Get the servers with their name matching "Prod" and disable Remote Support for those resources.

```text
 -------------------------- EXAMPLE 2 --------------------------
$Enclosure = Get-HPOVEnclosure -Name Enclosure-1A
Disable-HPOVRemoteSupport -InputObject $Enclosure 
```

Get the specific enclosure reousrce and disable Remote Support. 

### Related Links 

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
Disable-HPOVRemoteSupport [-InputObject] <Object> [[-Async] <SwitchParameter>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Hewlett Packard Enterprise recommends enabling all features and benefits provided by HPE OneView Remote Support so you can receive fast, accurate 'phone home' support and service per your contractual terms with Hewlett Packard Enterprise. Hewlett Packard Enterprise securely collects your HPE IT hardware diagnostics, configuration and telemetry information to provide you with remote support and services. The data is handled and managed to respect your privacy. For more information, Hewlett Packard Enterprise's Privacy Statement can be found at [http://privacy.hpe.com](http://privacy.hpe.com).

Enabling Remote Support configures your devices being remotely supported to securely send support or service events, IT configuration information, diagnostic, and telemetry information to Hewlett Packard Enterprise, together with your support contact information. No other business information is collected and the data is managed according to the Hewlett Packard Enterprise's Privacy Statement.

This Cmdlet will disable Remote Support for a compute or enclosure resource. If Remote Support has been disabled globally on the appliance, this Cmdlet is unnecessary.

{% hint style="info" %}
Privileges: Infrastructure administrator, Server administrator
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

#### -Async &lt;SwitchParameter&gt; 

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -InputObject &lt;Object&gt; 

The compute or enclosure resource to enable Remote Support for.

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

A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

_**HPOneView.Enclosure \[System.Management.Automation.PSCustomObject\]**_

An enclosure from Get-HPOVEnclosure.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async task Resource object for monitoring.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVServer -Name Prod* | Disable-HPOVRemoteSupport
```

Get the servers with their name matching "Prod" and disable Remote Support for those resources.

```text
 -------------------------- EXAMPLE 2 --------------------------
$Enclosure = Get-HPOVEnclosure -Name Enclosure-1A
Disable-HPOVRemoteSupport -InputObject $Enclosure 
```

Get the specific enclosure reousrce and disable Remote Support. 

### Related Links 

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
* [Set-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupport) 
* [Set-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDataCollectionSchedule) 
* [Set-HPOVRemoteSupportDefaultSite](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDefaultSite) 
* [Set-HPOVRemoteSupportPrimaryContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportPrimaryContact) 
* [Set-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportSetting) 
* [Start-HPOVRemoteSupportCollection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Start-HPOVRemoteSupportCollection) 
* [Update-HPOVRemoteSupportEntitlement](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRemoteSupportEntitlement)



