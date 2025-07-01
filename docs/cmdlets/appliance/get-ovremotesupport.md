---
description: Retrieve appliance Remote Support configuration.
---

# Get-OVRemoteSupport

## Syntax

```powershell
Get-OVRemoteSupport
    [-ApplianceConnection <Array>]
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

Use this Cmdlet to get the appliance"s current Remote Support configuration. This Cmdlet does not return device collection data or schedules.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVRemoteSupport

Appliance              Enabled Company   AutoEnableDevices MarketingOptIn InsightOnlineEnabled
---------              ------- -------   ----------------- -------------- --------------------
myappliance.domain.com True    MyCompany False             False          False
```

Returns the existing Remote Support configuration of the appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.RemoteSupport.Configuration"
    The setting object with updated parameters.
    

## Related Links

* [Disable-OVRemoteSupport](disable-ovremotesupport.md)
* [Enable-OVRemoteSupport](enable-ovremotesupport.md)
* [Get-OVRemoteSupportContact](get-ovremotesupportcontact.md)
* [Get-OVRemoteSupportDataCollectionSchedule](get-ovremotesupportdatacollectionschedule.md)
* [Get-OVRemoteSupportDefaultSite](get-ovremotesupportdefaultsite.md)
* [Get-OVRemoteSupportEntitlementStatus](get-ovremotesupportentitlementstatus.md)
* [Get-OVRemoteSupportPartner](get-ovremotesupportpartner.md)
* [Get-OVRemoteSupportSetting](get-ovremotesupportsetting.md)
* [New-OVRemoteSupportContact](new-ovremotesupportcontact.md)
* [New-OVRemoteSupportPartner](new-ovremotesupportpartner.md)
* [Remove-OVRemoteSupportContact](remove-ovremotesupportcontact.md)
* [Remove-OVRemoteSupportPartner](remove-ovremotesupportpartner.md)
* [Set-OVRemoteSupport](set-ovremotesupport.md)
* [Set-OVRemoteSupportDataCollectionSchedule](set-ovremotesupportdatacollectionschedule.md)
* [Set-OVRemoteSupportDefaultSite](set-ovremotesupportdefaultsite.md)
* [Set-OVRemoteSupportPrimaryContact](set-ovremotesupportprimarycontact.md)
* [Set-OVRemoteSupportSetting](set-ovremotesupportsetting.md)
* [Start-OVRemoteSupportCollection](start-ovremotesupportcollection.md)
* [Update-OVRemoteSupportEntitlement](update-ovremotesupportentitlement.md)
