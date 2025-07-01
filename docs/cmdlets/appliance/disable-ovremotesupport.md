---
description: Disable Remote Support for a supported resource.
---

# Disable-OVRemoteSupport

## Syntax

```powershell
Disable-OVRemoteSupport
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

???+ info
    Minimum required privileges: Infrastructure administrator, Server administrator, or Server firmware operator

## Examples

###  Example 1 

```powershell
Get-OVServer -Name Prod* | Disable-OVRemoteSupport
```

Get the servers with their name matching "Prod" and disable Remote Support for those resources.

###  Example 2 

```powershell
$Enclosure = Get-OVEnclosure -Name Enclosure-1A
Disable-OVRemoteSupport -InputObject $Enclosure
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
    A Gen8 or newer generation server hardware resource object from Get-OVServer.
    

=== "HPEOneView.Enclosure [System.Management.Automation.PSCustomObject]"
    An enclosure from Get-OVEnclosure.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for monitoring.
    

## Related Links

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
* [Set-OVRemoteSupport](set-ovremotesupport.md)
* [Set-OVRemoteSupportDataCollectionSchedule](set-ovremotesupportdatacollectionschedule.md)
* [Set-OVRemoteSupportDefaultSite](set-ovremotesupportdefaultsite.md)
* [Set-OVRemoteSupportPrimaryContact](set-ovremotesupportprimarycontact.md)
* [Set-OVRemoteSupportSetting](set-ovremotesupportsetting.md)
* [Start-OVRemoteSupportCollection](start-ovremotesupportcollection.md)
* [Update-OVRemoteSupportEntitlement](update-ovremotesupportentitlement.md)
