---
description: Retrieve configured Remote Support contacts.
---

# Get-HPOVRemoteSupportContact

## Syntax

```text
Get-HPOVRemoteSupportContact
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.  HPE OneView automatically checks if your hardware has a valid entitlement to Hewlett Packard Enterprise support. A valid entitlement is a Hewlett Packard Enterprise warranty or an active contract. If a valid entitlement to support is found, HPE OneView Remote Support opens a support case for a hardware failure.

Eligible devices are Gen8 and newer blades and enclosures. 

{% hint style="warning" %}
Servers must be at iLO 2.1 firmware level or above to be enabled for remote support
{% endhint %}


Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract.  Hewlett Packard Enterprise uses contact information when a support case is created.

You can add, remove, and specify primary and secondary contacts. Primary and secondary contacts are applied to the devices by default.

Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.

Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.

Once the appliance is configured, it cannot be unauthorized or disabled.

Use this Cmdlet to get the configured Remote Support contacts defined on the appliance.

{% hint style="info" %}
Minimum required privileges: Read
{% endhint %}
-only
## Examples

###  Example 1 

```text
Get-HPOVRemoteSupportContact
```

List all configured Remote Support Contacts.

###  Example 2 

```text
Get-HPOVRemoteSupportContact -Name "Bob*"
```

List all contacts with the name Bob, using the * wildcard character.

## Parameters

### -Name &lt;String&gt;

Full ("Bob Smith") or partial ("Bob*") name of the contact.  When using partial names, please include the * (asterisk) wildcard character.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

The configured Remote Support Contact.

## Related Links

* [Disable-HPOVRemoteSupport](disable-hpovremotesupport.md)
* [Enable-HPOVRemoteSupport](enable-hpovremotesupport.md)
* [New-HPOVRemoteSupportContact](new-hpovremotesupportcontact.md)
* [Remove-HPOVRemoteSupportContact](remove-hpovremotesupportcontact.md)
* [Set-HPOVRemoteSupportPrimaryContact](set-hpovremotesupportprimarycontact.md)
