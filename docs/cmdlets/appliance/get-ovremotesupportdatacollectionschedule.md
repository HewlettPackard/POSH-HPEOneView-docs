---
description: Retrieve Remote Support Schedule settings on an appliance.
---

# Get-OVRemoteSupportDataCollectionSchedule

## Syntax

```powershell
Get-OVRemoteSupportDataCollectionSchedule
    [-Type <String>]
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

Use this Cmdlet to retrieve configured schedules to collect Remote Support logs.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVRemoteSupportDataCollectionSchedule
```

Get the Remote Support data collection schedules.

## Parameters

### -Type &lt;String&gt;

Specify the schedule type to modify.  Allowed value is:
* AHS
    *Basic
If no value is provided, both schedules will be returned.

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.RemtoeSupport.Schedule [System.Management.Automation.PSCustomObject]"
    The configured Remote Support data collection schedule.
    

## Related Links

* [Get-OVRemoteSupport](get-ovremotesupport.md)
* [Set-OVRemoteSupportDataCollectionSchedule](set-ovremotesupportdatacollectionschedule.md)
