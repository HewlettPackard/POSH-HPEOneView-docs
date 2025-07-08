---
description: Get Remote Support for a supported resource.
---

# Get-OVRemoteSupportEntitlementStatus

## Syntax

```powershell
Get-OVRemoteSupportEntitlementStatus
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Remote support collects hardware diagnostic and system configuration information. It also stores administrator contact information. This information can be sent to Hewlett Packard Enterprise and used to troubleshoot and resolve system issues.

Basic collection sends configuration information to Hewlett Packard Enterprise for analysis and proactive services in accordance with your warranty and service agreements. This data is transmitted every 30 days.

Active health sends information about the server?s health, configuration, and run-time telemetry to Hewlett Packard Enterprise. This information is used to troubleshoot issues and closed-loop quality analysis. This data is transmitted every 7 days.

To perform basic device monitoring, configuration and diagnostic collections, and to maintain the health of the remote support solution, on a periodic and event driven basis remote support sends certain information to Hewlett Packard Enterprise. This information is used in accordance with the Software License Documents (https://www.hpe.com/us/en/software/licensing) and the HPE Online Privacy Statement (https://www.hpe.com/us/en/privacy/ww-privacy-statement.html).

To ensure that Hewlett Packard Enterprise can respond effectively to a required repair and to provide services and recommendations to reduce downtime, remote support collects service delivery information which includes device administrator contact details such as name, phone number, and email address, and site location information such as postal address.

To properly identify monitored devices and to synchronize the local remote support software with the Hewlett Packard Enterprise support automation services, remote support sends periodic data to Hewlett Packard Enterprise which includes service delivery information as well as basic device identification information such as IP addresses, MAC addresses, hostname and FQDN.

To automate service delivery when a failure is detected on a monitored device, remote support sends information about the failure event which includes diagnostic sense data, firmware information, model number, serial number, failure details, as well as service delivery information and basic device identifiers as mentioned above.

Remote support sends detailed configuration, telemetry and diagnostic information to Hewlett Packard Enterprise. This information can be used by Hewlett Packard Enterprise for troubleshooting, repair and internal closed loop quality purposes. Configuration collections may be required to deliver additional services. Information sent to Hewlett Packard Enterprise varies by device type, but in addition to data noted above it can include component configuration, firmware versions, OS type and version, DNS configuration, Windows domain, and diagnostic information. Configuration, telemetry and diagnostic information can also be utilized by Hewlett Packard Enterprise or its affiliates to provide recommendations to optimize your environment and minimize downtime. You must provide permission to use this information in this manner by choosing to do so in the remote support. If you choose to 'Opt-In' to be contacted by Hewlett Packard Enterprise or your Hewlett Packard Enterprise authorized reseller to optimize your IT environment, Hewlett Packard Enterprise or Hewlett Packard Enterprise authorized resellers may use the collected configuration data to provide you with recommendations, and sell or deliver solutions, to optimize your IT environment. These providers may be located in countries other than your Hewlett Packard Enterprise IT hardware locations. Hewlett Packard Enterprise's providers are required to keep confidential information received from Hewlett Packard Enterprise and may use it only for the purpose of providing advisories and recommendations on behalf of Hewlett Packard Enterprise. You will have the option to specify your Hewlett Packard Enterprise authorized reseller(s) or support provider(s) during setup of remote support software. Only the Hewlett Packard Enterprise authorized resellers and support providers you associate with your devices can receive your configuration data to individually contact you for making IT environment recommendations, sell, or deliver solutions.

Some of the information collected is also used for optional display in Insight Online. This information can be associated with your HPE Passport credentials and viewable by you in Insight Online.

For more details on the data items transmitted, see the security white paper in the Insight Remote Support (http://www.hpe.com/info/insightremotesupport/docs) section.

This Cmdlet will return the Remote Support entitlement status for a compute or enclosure resource. If remote support has not been globally enabled and configured on the appliance, this Cmdlet will fail.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVServer -Name Prod* | Get-OVRemoteSupportEntitlementStatus
```

Get the servers with their name matching "Prod" and get their Remote Support entitlement status.

###  Example 2 

```powershell
$Enclosure = Get-OVEnclosure -Name Enclosure-1A
Get-OVRemoteSupportEntitlementStatus -InputObject $Enclusre
```

Get the specific enclosure resource and get Remote Support entitlement status.

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
    A Gen8 or newer generation server hardware resource object from Get-OVServer.
    

## Return Values

=== "HPEOneView.RemoteSupport.ContractAndWarrantyStatus"
    The object with the current contract and warranty status.
    

## Related Links

* [Get-OVEnclosure](../servers/get-ovenclosure.md)
* [Get-OVRemoteSupport](get-ovremotesupport.md)
* [Get-OVServer](../servers/get-ovserver.md)
