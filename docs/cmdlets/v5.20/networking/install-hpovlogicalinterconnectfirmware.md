---
description: Install Logical Interconnect Firmware.
---

# Install-HPOVLogicalInterconnectFirmware

## Syntax

```text
Install-HPOVLogicalInterconnectFirmware
    [-InputObject] <Object>
    [-Baseline] <Object>
    [-Method <String>]
    [-EthernetActivateOrder <String>]
    [-EthernetActivateDelay <Int32>]
    [-FCActivateOrder <String>]
    [-FCActivateDelay <Int32>]
    [-NoPreview]
    [-Async]
    [-Force]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Install-HPOVLogicalInterconnectFirmware
    [-InputObject] <Object>
    [-Baseline] <Object>
    [-Method <String>]
    [-SasActivationMethod <string>]
    [-Async]
    [-Force]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Firmware activation options allow you to maintain network availability by always keeping one path up for production traffic and reduce the outages due to human errors. You also have the option of staging the firmware for later activation. You can activate the staged firmware on an individual interconnect or on all interconnects.

You have the following options when updating firmware based on a logical interconnect:

    * Update (stage + activate) - Stages (uploads) the selected firmware to the secondary flash memory on the interconnect, and then activates the firmware as the baseline. At the end of this operation, all member interconnects are running the same firmware baseline and are compliant with one another.  This option and parallel activation affects the connectivity to and from the servers until the activation is complete, but does update the firmware in the shortest time.
    * Stage - Stages (uploads) the selected firmware to the secondary flash memory on the interconnect, but does not activate the firmware. You can activate the firmware at a later time.  This option allows manual sequencing of the firmware activation and is the preferred approach to minimize service interruption.
    * Activate - Activates the selected staged firmware by rebooting the interconnect modules.

There are a few different activation methods available, depending on the platform:

    * OddEven - Will perform updates to all odd module bays first, then even.  An activation delay can be specified with the EthernetActivateDelay parameter.
    * Serial - Will perform updates to all device bays, starting with the first bay.  An activation delay can be specified with the EthernetActivateDelay parameter.
    * Parallel - Will perform updates to all device bays, at the same time.  Activation will happen immediately once staging and installation have completed.  You cannot specify an activation delay.
    * Orchestrated - Supported with HPE Synergy Virtual Connect and SAS modules only, a nondisruptive firmware update is attempted for the logical interconnects. The following scenarios might occur:

        * Firmware update is executed automatically without any disruption to application network traffic.
        * Firmware update is executed with minimal impact to application network traffic. A context-specific warning message displays along with an option to proceed or cancel the firmware update.
        * For example, a warning message displays to ensure that OS level NIC teaming or bonding is enabled for Ethernet networks and MPIO is enabled when Fibre Channel connections are involved.
        * Firmware update will result in a system outage. A warning message displays when network and storage connections might be disrupted.
    
{% hint style="info" %}
Minimum required privileges: Network administrator, Server administrator 
{% endhint %}
(for the HPE Synergy 12Gb SAS Connection Module), or Infrastructure administrator.
## Examples

###  Example 1 

```text
$li = Get-HPOVLogicalInterconnect -Name Encl1-LI
$spp = Get-HPOVBaseline -Name "HP Service Pack for ProLiant" 
$task = Install-HPOVLogicalInterconnectFirmware -Method Stage -InputObject $li -Baseline $spp 
Wait-HPOVTaskComplete $task
$task = Install-HPOVLogicalInterconnectFirmware Activate $li 
Wait-HPOVTaskComplete $task
```

Perform a firmware update of the Encl1-LI Logical Interconnect by first staging the firmware. Then Acitate the firmware using the default OddEven Interconnect Bay order.

###  Example 2 

```text
Get-HPOVLogicalInterconnect -Name Encl1-LI  | Install-HPOVLogicalInterconnectFirmware -method Update -Baseline "HP Service Pack for ProLiant" -confirm:$false | Wait-HPOVTaskComplete
```

Perform a firmware update of the Encl1-LI Logical Interconnect, do not prompt for confirmation, then wait for the task to complete.

## Parameters

### -InputObject &lt;Object&gt;

The Logical Interconnect object(s), name(s) or uris(s) to be updated.

| Aliases | name, uri, li |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Method &lt;String&gt;

Upgrade method to perform.  Accepted values are:

    * UPDATE (Default)
    * STAGE
    * ACTIVATE

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | Update |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -EthernetActivateOrder &lt;String&gt;

Specify the Ethernet module firmware activation order.  Accepted values are:

    * OddEven (Default)
    * Parallel
    * Serial
    * Orchestrated (supported with HPE Synergy only)

| Aliases | Order, ActivateOrder |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | OddEven |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -EthernetActivateDelay &lt;Int32&gt;

The amount of time in seconds to delay activating additional modules.

Default is 5 seconds.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 5 |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -FCActivateOrder &lt;String&gt;

Specify the Fibre Channel module firmware activation order.  Accepted values are:

    * OddEven
    * Parallel
    * Serial (Default)

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | Serial |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -FCActivateDelay &lt;Int32&gt;

The amount of time in seconds to delay activating additional modules.

Default is 5 seconds.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 5 |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Baseline &lt;Object&gt;

Firmware Baseline Name, URI or Object.

| Aliases | spp |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Force the firmware update if the update version matches what is already installed.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -NoPreview &lt;SwitchParameter&gt;

Before applying the update, the firmware update can be validated if the update is disruptive. If the update is disruptive, follow the resolutions in the returned async task.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -SasActivationMethod &lt;string&gt;

Specify the Ethernet module firmware activation order.  Accepted values are:

    * Orchestrated
    * Parallel

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Orchestrated |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

Logical Interconnect Resource Object

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Returns an async task resource to monitor.

## Related Links

* [Get-HPOVLogicalInterconnect](get-hpovlogicalinterconnect.md)
* [Get-HPOVSasLogicalInterconnect](get-hpovsaslogicalinterconnect.md)
