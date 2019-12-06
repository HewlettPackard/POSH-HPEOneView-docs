---
description: Retrieve configured Remote Support contacts.
---

# Get-HPOVRemoteSupportContact

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVRemoteSupportContact [[-Name] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support. HPE OneView automatically checks if your hardware has a valid entitlement to Hewlett Packard Enterprise support. A valid entitlement is a Hewlett Packard Enterprise warranty or an active contract. If a valid entitlement to support is found, HPE OneView Remote Support opens a support case for a hardware failure.

Eligible devices are Gen8 and newer blades and enclosures.

{% hint style="warning" %}
Servers must be at iLO 2.1 firmware level or above to be enabled for remote support
{% endhint %}

Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract. Hewlett Packard Enterprise uses contact information when a support case is created.

You can add, remove, and specify primary and secondary contacts. Primary and secondary contacts are applied to the devices by default.

Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.

Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.

Once the appliance is configured, it cannot be unauthorized or disabled.

Use this Cmdlet to get the configured Remote Support contacts defined on the appliance.

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
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

Full \("Bob Smith"\) or partial \("Bob_"\)_ name of the contact. When using partial names, please include the  \(asterisk\) wildcard character.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**System.Management.Automation.PSCustomObject**_

The configured Remote Support Contact.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVRemoteSupportContact
```

List all configured Remote Support Contacts.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVRemoteSupportContact -Name "Bob*"
```

List all contacts with the name Bob, using the \* wildcard character. 

### Related Links 

* [Disable-HPOVRemoteSupport](disable-hpovremotesupport.md#hpe-oneview-5-00-library)
* [Enable-HPOVRemoteSupport](enable-hpovremotesupport.md#hpe-oneview-5-00-library)
* [New-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportContact) 
* [Remove-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportContact) 
* Set-HPOVRemoteSupportPrimaryContact

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVRemoteSupportContact [[-Name] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support. HPE OneView automatically checks if your hardware has a valid entitlement to Hewlett Packard Enterprise support. A valid entitlement is a Hewlett Packard Enterprise warranty or an active contract. If a valid entitlement to support is found, HPE OneView Remote Support opens a support case for a hardware failure.

Eligible devices are Gen8 and newer blades and enclosures.

{% hint style="warning" %}
Servers must be at iLO 2.1 firmware level or above to be enabled for remote support
{% endhint %}

Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract. Hewlett Packard Enterprise uses contact information when a support case is created.

You can add, remove, and specify primary and secondary contacts. Primary and secondary contacts are applied to the devices by default.

Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.

Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.

Once the appliance is configured, it cannot be unauthorized or disabled.

Use this Cmdlet to get the configured Remote Support contacts defined on the appliance.

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
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

Full \("Bob Smith"\) or partial \("Bob_"\)_ name of the contact. When using partial names, please include the  \(asterisk\) wildcard character.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**System.Management.Automation.PSCustomObject**_

The configured Remote Support Contact.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVRemoteSupportContact
```

List all configured Remote Support Contacts.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVRemoteSupportContact -Name "Bob*"
```

List all contacts with the name Bob, using the \* wildcard character. 

### Related Links 

* [Disable-HPOVRemoteSupport](disable-hpovremotesupport.md#hpe-oneview-4-20-library)
* [Enable-HPOVRemoteSupport](enable-hpovremotesupport.md#hpe-oneview-4-20-library)
* [New-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportContact) 
* [Remove-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportContact) 
* Set-HPOVRemoteSupportPrimaryContact

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVRemoteSupportContact [[-Name] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support. HPE OneView automatically checks if your hardware has a valid entitlement to Hewlett Packard Enterprise support. A valid entitlement is a Hewlett Packard Enterprise warranty or an active contract. If a valid entitlement to support is found, HPE OneView Remote Support opens a support case for a hardware failure.

Eligible devices are Gen8 and newer blades and enclosures.

{% hint style="warning" %}
Servers must be at iLO 2.1 firmware level or above to be enabled for remote support
{% endhint %}

Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract. Hewlett Packard Enterprise uses contact information when a support case is created.

You can add, remove, and specify primary and secondary contacts. Primary and secondary contacts are applied to the devices by default.

Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.

Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.

Once the appliance is configured, it cannot be unauthorized or disabled.

Use this Cmdlet to get the configured Remote Support contacts defined on the appliance.

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
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

Full \("Bob Smith"\) or partial \("Bob_"\)_ name of the contact. When using partial names, please include the  \(asterisk\) wildcard character.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**System.Management.Automation.PSCustomObject**_

The configured Remote Support Contact.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVRemoteSupportContact
```

List all configured Remote Support Contacts.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVRemoteSupportContact -Name "Bob*"
```

List all contacts with the name Bob, using the \* wildcard character. 

### Related Links 

* [Disable-HPOVRemoteSupport](disable-hpovremotesupport.md#hpe-oneview-4-10-library)
* [Enable-HPOVRemoteSupport](enable-hpovremotesupport.md#hpe-oneview-4-10-library)
* [New-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportContact) 
* [Remove-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportContact) 
* Set-HPOVRemoteSupportPrimaryContact

