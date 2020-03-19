---
description: Disable Remote Support for a supported resource.
---

# Disable-HPOVRemoteSupport

## Syntax

```text
Disable-HPOVRemoteSupport
    [-InputObject] <Object>
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Register with Hewlett Packard Enterprise to allow automatic case creation for hardware failures on servers and enclosures and to enable Proactive Care. Once enabled, all eligible devices added in the future will be automatically enabled for remote support.

Hewlett Packard Enterprise recommends enabling all features and benefits provided by HPE OneView Remote Support so you can receive fast, accurate 'phone home' support and service per your contractual terms with Hewlett Packard Enterprise. Hewlett Packard Enterprise securely collects your HPE IT hardware diagnostics, configuration and telemetry information to provide you with remote support and services. The data is handled and managed to respect your privacy. For more information, Hewlett Packard Enterprise's Privacy Statement can be found at http://privacy.hpe.com.

Enabling Remote Support configures your devices being remotely supported to securely send support or service events, IT configuration information, diagnostic, and telemetry information to Hewlett Packard Enterprise, together with your support contact information. No other business information is collected and the data is managed according to the Hewlett Packard Enterprise's Privacy Statement.

This Cmdlet will disable Remote Support for a compute or enclosure resource.  If Remote Support has been disabled globally on the appliance, this Cmdlet is unnecessary.

Privileges: Infrastructure administrator, Server administrator, or Server firmware operator

## Examples

###  Example 1 

```text
Get-HPOVServer -Name Prod* | Disable-HPOVRemoteSupport
```

Get the servers with their name matching "Prod" and disable Remote Support for those resources.

###  Example 2 

```text
$Enclosure = Get-HPOVEnclosure -Name Enclosure-1A
Disable-HPOVRemoteSupport -InputObject $Enclosure
```

Get the specific enclosure resource and disable Remote Support.

## Parameters

### -InputObject &lt;Object&gt;

The compute or enclosure resource to enable Remote Support for.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
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

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

A Gen8 or newer generation server hardware resource object from [`Get-HPOVServer`](../servers/get-hpovserver.md).

_**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

An enclosure from [`Get-HPOVEnclosure`](../servers/get-hpovenclosure.md).

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object for monitoring.

## Related Links

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
* [Set-HPOVRemoteSupport](set-hpovremotesupport.md)
* [Set-HPOVRemoteSupportDataCollectionSchedule](set-hpovremotesupportdatacollectionschedule.md)
* [Set-HPOVRemoteSupportDefaultSite](set-hpovremotesupportdefaultsite.md)
* [Set-HPOVRemoteSupportPrimaryContact](set-hpovremotesupportprimarycontact.md)
* [Set-HPOVRemoteSupportSetting](set-hpovremotesupportsetting.md)
* [Start-HPOVRemoteSupportCollection](start-hpovremotesupportcollection.md)
* [Update-HPOVRemoteSupportEntitlement](update-hpovremotesupportentitlement.md)
