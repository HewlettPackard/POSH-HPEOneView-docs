﻿---
description: 
---

# Get-HPOVRemoteSupport

## Syntax

```text
Get-HPOVRemoteSupport
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

## Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

{% hint style="info" %}
Servers must be at iLO 2.
{% endhint %}
1 firmware level or above to be enabled for remote support




 Use this Cmdlet to get the appliance"s current Remote Support configuration.  This Cmdlet does not return device collection data or schedules.
## Examples

###  Example 1 

```text
Get-HPOVRemoteSupport
Appliance              Enabled Company   AutoEnableDevices MarketingOptIn InsightOnlineEnabled
---------              ------- -------   ----------------- -------------- --------------------
myappliance.domain.com True    MyCompany False             False          False
```

Returns the existing Remote Support configuration of the appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_



## Return Values

_**The setting object with updated parameters.**_



## Related Links

* [Disable-HPOVRemoteSupport](disable-hpovremotesupport.md)
* [Enable-HPOVRemoteSupport](enable-hpovremotesupport.md)
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
* [Set-HPOVRemoteSupport](set-hpovremotesupport.md)
* [Set-HPOVRemoteSupportDataCollectionSchedule](set-hpovremotesupportdatacollectionschedule.md)
* [Set-HPOVRemoteSupportDefaultSite](set-hpovremotesupportdefaultsite.md)
* [Set-HPOVRemoteSupportPrimaryContact](set-hpovremotesupportprimarycontact.md)
* [Set-HPOVRemoteSupportSetting](set-hpovremotesupportsetting.md)
* [Start-HPOVRemoteSupportCollection](start-hpovremotesupportcollection.md)
* [Update-HPOVRemoteSupportEntitlement](update-hpovremotesupportentitlement.md)