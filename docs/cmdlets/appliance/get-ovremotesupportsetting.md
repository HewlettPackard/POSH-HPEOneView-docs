---
description: Get supported resource Remote Support settings.
---

# Get-OVRemoteSupportSetting

## Syntax

```powershell
Get-OVRemoteSupportSetting
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Eligible devices are Gen8 and newer blades and enclosures. 

???+ warning
    Servers must be at iLO 2.1 firmware level or above to be enabled for remote support


Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract.

Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.

Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.

Once the appliance is configured, it cannot be unauthorized or disabled.

Use this Cmdlet to retrieve a supported resources Remote Support settings of an enabled resource (compute or enclosure), defined Parimary and Secondary contact, and authorized reseller or support partners.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVEnclosure -Name Encl1 | Get-OVRemoteSupportSetting

Appliance              ResourceName SalesChannelPartner        SupportChannelPartner      PrimaryContact SecondaryContact
---------              ------------ -------------------        ---------------------      -------------- ----------------
MyAppliance.domain.com Encl1        Hewlett Packard Enterprise Hewlett Packard Enterprise Mark Jones
```

Get the configured Remote Support collection settings for "Encl1" Enclosure resource.

###  Example 2 

```powershell
Get-OVServer -Name PROD* | Get-OVRemoteSupportSetting | ? supportEnabled -eq $false
```

Return all PROD servers, and return only those where remote support is not enabled.

## Parameters

### -InputObject &lt;Object&gt;

Either a Server Hardware or Enclosure resource to get the configured Remote Support collection settings.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.ServerHardware [System.Management.Automation.PSCustomObject]"
    Server hardware resource object.
    

=== "HPEOneView.Enclosure [System.Management.Automation.PSCustomObject]"
    Enclosure resource object.
    

## Return Values

=== "HPEOneView.Appliance.RemoteSupport.ResourceSetting [System.Management.Automation.PSCustomObject]"
    Remote Support Settings object.
    

## Related Links

* [Get-OVEnclosure](../servers/get-ovenclosure.md)
* [Get-OVRemoteSupport](get-ovremotesupport.md)
* [Get-OVRemoteSupportEntitlementStatus](get-ovremotesupportentitlementstatus.md)
* [Get-OVServer](../servers/get-ovserver.md)
* [Set-OVRemoteSupportSetting](set-ovremotesupportsetting.md)
