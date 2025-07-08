---
description: Install Logical Interconnect Firmware.
---

# Install-OVLogicalInterconnectFirmware

## Syntax

```powershell
Install-OVLogicalInterconnectFirmware
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

```powershell
Install-OVLogicalInterconnectFirmware
    [-InputObject] <Object>
    [-ManualOrder] <String>
    [-Baseline] <Object>
    [-Method <String>]
    [-EthernetActivateOrder <String>]
    [-NoPreview]
    [-Async]
    [-Force]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Install-OVLogicalInterconnectFirmware
    [-InputObject] <Object>
    [-Baseline] <Object>
    [-Method <String>]
    [-SasActivationMethod <String>]
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

???+ info
     When updating firmware based on the logical interconnect, if one or more interconnects are already running the targeted firmware version, HPE OneView excludes those interconnects from the firmware update.


FORCE INSTALLATION

By using the Force parameter, the update requires (forces) firmware update on every member interconnect regardless of its current installed version.

This option is not available if you select Activate for the Update parameter.

To install an older firmware version than the version contained in the SPP, you must specify the Force parameter option to downgrade the firmware. You might want to install older firmware if the newer firmware is known to cause a problem in your environment.

There are a few different activation methods available, depending on the platform:

INSTALLATION METHODS

???+ warning
     Firmware updates using parallel activation must be performed during a maintenance window.

* OddEven - Will perform updates to all odd module bays first, then even.  An activation delay can be specified with the EthernetActivateDelay parameter.
* Serial - Will perform updates to all device bays, starting with the first bay.  An activation delay can be specified with the EthernetActivateDelay parameter.
* Parallel - Will perform updates to all device bays, at the same time.  Activation will happen immediately once staging and installation have completed.  You cannot specify an activation delay.  If one or more interconnects are already running the targeted firmware version, HPE OneView excludes the interconnects from the firmware downgrade.


      Performing a parallel downgrade without selecting the Force installation option enables HPE OneView to perform the operation only on the non-compliant interconnects. A maintenance window might not be required to downgrade only the non-compliant interconnects.

      Compliant modules are the modules that are compliant with the firmware baseline for the logical interconnect. You can make the newly inserted interconnect compliant with the baseline by performing upgrade or downgrade without selecting the Force installation. HPE OneView performs firmware upgrade or downgrade only on the non-compliant interconnects which requires upgrade or downgrade without disturbing the compliant modules. In cases where such downgrade is not possible, you are notified to select the Force installation option. In case of partial possibility, the Interconnect Link modules which can cause data disruption are ignored for downgrade. You are notified that these interconnect link modules are not updated during the task update.

      Downgrading without the Force installation can be done on the following modules:

    * HPE Virtual Connect SE 40Gb F8 Module for HPE Synergy
    * HPE Virtual Connect SE 100Gb F32 Module for HPE Synergy
    * HPE Synergy 50Gb Interconnect Link Module
    * HPE Synergy 20Gb Interconnect Link Module
    * HPE Synergy 10Gb Interconnect Link Module

* Orchestrated - Supported with HPE Synergy Virtual Connect and SAS modules only, a nondisruptive firmware update is attempted for the logical interconnects. The following scenarios might occur:

    * Firmware update is executed automatically without any disruption to application network traffic.
    * Firmware update is executed with minimal impact to application network traffic. A context-specific warning message displays along with an option to proceed or cancel the firmware update.
    * For example, a warning message displays to ensure that OS level NIC teaming or bonding is enabled for Ethernet networks and MPIO is enabled when Fibre Channel connections are involved.
    * Firmware update will result in a system outage. A warning message displays when network and storage connections might be disrupted.

* Manual - You can orchestrate the update in a stepwise approach using the following operations. These operations are not possible with the Parallel and Orchestrated firmware activation options.

    * Select and update one side of the interconnect topology at a time by using the `-ManualOrder` parameter. You must specify the appropriate Bay side to update first.
    * Once the update for the chosen side is complete, proceed to update the other side. If the firmware update on the interconnect module side that is updated first is not satisfactory, roll back to the original firmware version.
        
        Manual orchestration is available on the following modules:

    * HPE Virtual Connect SE 40Gb F8 Module for HPE Synergy
    * HPE Virtual Connect SE 100Gb F32 Module for HPE Synergy
    * HPE Synergy 10Gb/20Gb/50Gb Interconnect Link Module

        The firmware update is performed on the chosen side while the other side is available to carry production traffic. This side-by-side firmware update is allowed only at the logical interconnect level. Manual orchestration is applicable to most updates and downgrades. There are a few exceptions where you cannot use the manual orchestration option. When you try the option for any such exceptions, an error is displayed and the operation does not proceed. For example, you cannot downgrade to a firmware version that is less than the minimum version that is supported on the interconnect module.

        NOTE:  To minimize potential disruption, ensure that the logical interconnect is redundantly configured.

        NOTE:  After the interconnects in the first side of the logical interconnect are updated successfully, update the interconnects in the second side soon after. If the firmware versions of the interconnects in a logical interconnect are different, the interconnects remain in maintenance mode and you are not allowed to make any configuration changes until they are at the same version.
    
???+ info
    Minimum required privileges: Network administrator, Server administrator 
(for the HPE Synergy 12Gb SAS Connection Module), or Infrastructure administrator.
## Examples

###  Example 1 

```powershell
$li = Get-OVLogicalInterconnect Encl1-LI
$spp = Get-OVBaseline "HPE Service Pack for ProLiant" 
$task = Install-OVLogicalInterconnectFirmware -Method Stage -InputObject $li -Baseline $spp 
Wait-OVTaskComplete $task
$task = Install-OVLogicalInterconnectFirmware -Method Activate -InputObject $li 
Wait-OVTaskComplete $task
```

Perform a firmware update of the Encl1-LI Logical Interconnect by first staging the firmware. Then Acitate the firmware using the default OddEven Interconnect Bay order.

###  Example 2 

```powershell
Get-OVLogicalInterconnect -Name Encl1-LI | Install-OVLogicalInterconnectFirmware -Method Update -Baseline (Get-OVBaseline -Name "HPE Service Pack for ProLiant") -Confirm:$false | Wait-OVTaskComplete
```

Perform a firmware update of the Encl1-LI Logical Interconnect, do not prompt for confirmation, then wait for the task to complete.

###  Example 3 

```powershell
$Alerts = Get-OVLogicalInterconnect -Name Encl1-LI | ? status -ne "OK" | Get-OVAlert -State Active
$Alerts | ForEach { 
    if ($_.alertTypeID -eq "firmwareupdate.status" -and `
        $_.correctiveAction -match "Update the firmware on the the logical interconnect") { 

            Install-OVLogicalInterconnectFirmware -InputObject (Send-OVRequest -Uri $_.resourceUri) -Method Activate -EthernetActivateOrder Orchestrated -Confirm:$false | Wait-OVTaskComplete 
        
        }
}
```

Find active firmware update alert, and then activate the staged firmware on the logical interconnect.

## Parameters

### -InputObject &lt;Object&gt;

The Logical Interconnect object(s) from Get-OVLogicalInterconnect or Get-OVSasLogicalInterconnect Cmdlets to be updated.

| Aliases | LogicalInterconnect, name, uri, li |
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
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EthernetActivateOrder &lt;String&gt;

Specify the Ethernet module firmware activation order.  Accepted values are:

* OddEven (Default)
* Parallel
* Serial
* Orchetrated
* Manual

  Orchestrated and Manual are only supported with HPE Synergy logical interconnect resources.

| Aliases | Order, ActivateOrder |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | OddEven |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EthernetActivateDelay &lt;Int32&gt;

The amount of time in seconds to delay activating additional modules.

Default is 5 seconds.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 5 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FCActivateOrder &lt;String&gt;

Specify the Fibre Channel module firmware activation order.  Accepted values are:

* OddEven
* Parallel
* Serial (Default)
* Orchestrated

  Orchestrated is only supported with HPE Synergy logical interconnect resources.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | Serial |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FCActivateDelay &lt;Int32&gt;

The amount of time in seconds to delay activating additional modules.

Default is 5 seconds.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | 5 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Baseline &lt;Object&gt;

Firmware Baseline Name, URI or Object.

| Aliases | spp |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
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

### -Force &lt;SwitchParameter&gt;

Force the firmware update if the update version matches what is already installed.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ManualOrder &lt;String&gt;

Use this parameter when the EthActivationOrder is set to Manual.  The allowed values are:* Bay3
	 * Bay6
	 * Bay1
	 * Bay5
	 * Bay2
	 * Bay4

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NoPreview &lt;SwitchParameter&gt;

By default, the Cmdlet will display a report if the interconnects can be updated without an outage by identifying the configuration.  This option is only supported with HPE Synergy.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SasActivationMethod &lt;String&gt;

Specify the HPE Synergy SAS module firmware activation order.  Accepted values are:

	* Parallel
	* Orchestrated

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]"
    Logical Interconnect Resource Object
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Returns an async task resource to monitor.
    

## Related Links

* [Get-OVLogicalInterconnect](get-ovlogicalinterconnect.md)
* [Get-OVSasLogicalInterconnect](get-ovsaslogicalinterconnect.md)
