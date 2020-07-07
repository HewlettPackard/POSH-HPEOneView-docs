---
description: Configure Remote Support and authorize appliance.
---

# Set-HPOVRemoteSupport

## Syntax

```text
Set-HPOVRemoteSupport
    [-CompanyName] <String>
    [-OptimizeOptIn]
    [-AutoEnableDevices <bool>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Set-HPOVRemoteSupport
    [-CompanyName] <String>
    [-InsightOnlineUsername <String>]
    [-InsightOnlinePassword <System.Security.SecureString>]
    [-OptimizeOptIn]
    [-AutoEnableDevices <bool>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Set-HPOVRemoteSupport
    [-Enable]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Set-HPOVRemoteSupport
    [-Disable]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.
Eligible devices are Gen8 and newer blades and enclosures.
{% hint style="info" %}
Servers must be at iLO 2.1 firmware level or above to be enabled for remote support
{% endhint %}

Hewlett Packard Enterprise will contact you to ship a replacement part or send an engineer for devices that are under warranty or support contract.
Remote support enables Proactive Care services including Proactive Scan reports and Firmware/Software Analysis reports with recommendations that are based on collected configuration data.
Remote support is secure. No business data is collected, only device-specific configuration and fault data. All communications are outbound only and use industry standard TLS encryption ensuring confidentiality and integrity of the information.
 Once the appliance is configured, it cannot be unauthorized or disabled. 

## Examples

###  Example 1 

```text
Set-HPOVRemoteSupport -CompanyName MyCompany
```

Configure and register the appliance for Remote Support.

###  Example 2 

```text
Set-HPOVRemoteSupport -CompanyName MyCompany -InsightOnlineUsername mypassport@domain.local -InsightOnlinePassword (ConvertTo-SecureString -String MyPassword -AsPlainText -Force)
```

Configure and register the appliance for Remote Support, and enable Insight Online portal registration.

###  Example 3 

```text
Set-HPOVRemoteSupport -Disable
```

Disable Remote Support on the appliance.

###  Example 4 

```text
Set-HPOVRemoteSupport -Enable -ApplianceConnection $Appliance2
```

Enable Remote Support after it was previously disabled for the specific appliance.

## Parameters

### -AutoEnableDevices &lt;bool&gt;

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

The user name of your Insight Online account.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InsightOnlinePassword &lt;System.Security.SecureString&gt;

The Insight Online account password.

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

Use this parameter to disable remote support globally on the appliance.  Use the `-Enable` parameter to `re-enable` Remote Support.

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPEOneView.Appliance.RemoteSupportConfig [System.Management.Automation.PSCustomObject]**_

The appliance Remote Support configuration applied.

## Related Links

* [Disable-HPOVRemoteSupport](disable-hpovremotesupport.md)
* [Enable-HPOVRemoteSupport](enable-hpovremotesupport.md)
* [Get-HPOVRemoteSupport](get-hpovremotesupport.md)
* [Get-HPOVRemoteSupportContact](get-hpovremotesupportcontact.md)
* [Get-HPOVRemoteSupportDataCollectionSchedule](get-hpovremotesupportdatacollectionschedule.md)
* [Get-HPOVRemoteSupportDefaultSite](get-hpovremotesupportdefaultsite.md)
* [Get-HPOVRemoteSupportEntitlementStatus](get-hpovremotesupportentitlementstatus.md)
* [Get-HPOVRemoteSupportPartner](get-hpovremotesupportpartner.md)
* [Get-HPOVRemoteSupportSetting](get-hpovremotesupportsetting.md)
* [New-HPOVRemoteSupportContact](new-hpovremotesupportcontact.md)
* [New-HPOVRemoteSupportPartner](new-hpovremotesupportpartner.md)
* [Remove-HPOVRemoteSupportContact](remove-hpovremotesupportcontact.md)
* [Remove-HPOVRemoteSupportPartner](remove-hpovremotesupportpartner.md)
* [Set-HPOVRemoteSupportDataCollectionSchedule](set-hpovremotesupportdatacollectionschedule.md)
* [Set-HPOVRemoteSupportDefaultSite](set-hpovremotesupportdefaultsite.md)
* [Set-HPOVRemoteSupportPrimaryContact](set-hpovremotesupportprimarycontact.md)
* [Set-HPOVRemoteSupportSetting](set-hpovremotesupportsetting.md)
* [Start-HPOVRemoteSupportCollection](start-hpovremotesupportcollection.md)
* [Update-HPOVRemoteSupportEntitlement](update-hpovremotesupportentitlement.md)
