---
description: Configure Remote Support and authorize appliance.
---

# Set-OVRemoteSupport

## Syntax

```powershell
Set-OVRemoteSupport
    [-CompanyName] <String>
    [-OptimizeOptIn]
    [-AutoEnableDevices <Bool>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVRemoteSupport
    [-CompanyName] <String>
    [-InsightOnlineUsername <String>]
    [-InsightOnlinePassword <System.Security.SecureString>]
    [-OptimizeOptIn]
    [-AutoEnableDevices <Bool>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVRemoteSupport
    [-Enable]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Set-OVRemoteSupport
    [-Disable]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.
Eligible devices are Gen8 and newer blades and enclosures.
???+ info
    Servers must be at iLO 2.1 firmware level or above to be enabled for remote support

Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract.
Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.
Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.
 Once the appliance is configured, it cannot be unauthorized or disabled. 

## Examples

###  Example 1 

```powershell
Set-OVRemoteSupport -CompanyName MyCompany
```

Configure and register the appliance for Remote Support.

###  Example 2 

```powershell
Set-OVRemoteSupport -Disable
```

Disable Remote Support on the appliance.

###  Example 3 

```powershell
Set-OVRemoteSupport -Enable -ApplianceConnection $Appliance2
```

Enable Remote Support after it was previously disabled for the specific appliance.

## Parameters

### -AutoEnableDevices &lt;Bool&gt;

Choose to allow the appliance to auto enable remote support for all and devices added in the future.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -CompanyName &lt;String&gt;

The company name Remote Support will be authorized for.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OptimizeOptIn &lt;SwitchParameter&gt;

Opt-in to allow HPE marketing to discuss datacenter optimization.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InsightOnlineUsername &lt;String&gt;

OBSOLETE - HPE Insight Online is a deprecated and unavailable service.  It is no longer supports.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InsightOnlinePassword &lt;System.Security.SecureString&gt;

OBSOLETE - HPE Insight Online is a deprecated and unavailable service.  It is no longer supports.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Enable &lt;SwitchParameter&gt;

Use this parameter to enable remote support on an appliance, only if the appliance was previously configured for Remote Support and it was disabled.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Disable &lt;SwitchParameter&gt;

Use this parameter to disable remote support globally on the appliance.  Use the `-Enable` parameter to re-enable Remote Support.

| Aliases | None |
| :--- | :--- |
| Required? | True |
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

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.RemoteSupportConfig [System.Management.Automation.PSCustomObject]"
    The appliance Remote Support configuration applied.
    

## Related Links

* [Disable-OVRemoteSupport](disable-ovremotesupport.md)
* [Enable-OVRemoteSupport](enable-ovremotesupport.md)
* [Get-OVRemoteSupport](get-ovremotesupport.md)
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
* [Set-OVRemoteSupportDataCollectionSchedule](set-ovremotesupportdatacollectionschedule.md)
* [Set-OVRemoteSupportDefaultSite](set-ovremotesupportdefaultsite.md)
* [Set-OVRemoteSupportPrimaryContact](set-ovremotesupportprimarycontact.md)
* [Set-OVRemoteSupportSetting](set-ovremotesupportsetting.md)
* [Start-OVRemoteSupportCollection](start-ovremotesupportcollection.md)
* [Update-OVRemoteSupportEntitlement](update-ovremotesupportentitlement.md)
