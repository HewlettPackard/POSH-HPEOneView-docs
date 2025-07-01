---
description: Initiate Logical Enclosure Firmware update.
---

# Update-OVLogicalEnclosureFirmware

## Syntax

```powershell
Update-OVLogicalEnclosureFirmware
    [-InputObject] <Object>
    [-Baseline] <HPEOneView.Appliance.Baseline>
    [-FirmwareUpdateProcess] <String>
    [-InterconnectActivationMode <String>]
    [-ForceInstallation]
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

You can update firmware from a logical enclosure for shared infrastructure, shared infrastructure and profiles, and OA (Onboard Administrators) only, if any.  When you update the firmware for an enclosure associated with a logical enclosure, the firmware baseline configured for the logical enclosure sets the baseline on the enclosure and each of the logical interconnects in the enclosure, as well as the OA. Firmware is updated in the following order: 

* Onboard Administrators
* Logical interconnects
* Server hardware and their associated server profiles The Orchestrated activation option allows nondisruptive updates of interconnects in a production ready, properly configured, and redundant environment. Orchestrated firmware updates do not affect the network traffic and no outages are caused while the update process is in progress as one virtual connect module is always forwarding network traffic, with no or minimal impact to application network connection. A default delay of 8 minutes is set between activating or rebooting interconnect modules. Hypervisor clusters are updated nondisruptively when the orchestrated activation option is chosen. If the logical enclosure contains one or more hypervisor profiles, each hypervisor is serially placed into a maintenance mode before updating. It can take up to 90 minutes to place a hypervisor into the maintenance mode, perform the firmware update, and take it back out of the maintenance mode. Parallel activation activates all the interconnect modules at the same time, resulting in disruption of the network and storage connectivity. It is recommended to perform parallel activation during a maintenance window when you can better coordinate the downtime. When selecting "SharedInfrastructureAndServerProfiles" firmware update process, any servers without profiles will perform an automated offline firmware update. Assigned Server Profiles will require HPE Smart Update Tools (HPSUT, iSUT) to be installed and available. Minimum required privileges: Infrastructure administrator or Server administrator 

## Examples

###  Example 1 

```powershell
$Basline = Get-OVBaseline -Name "HPE Service Pack for ProLiant" -ErrorAction Stop Get-OVLogicalEnclosure -Name Encl1 -ErrorAction Stop | Update-OVLogicalEnclosureFirmware -Baseline $Basline -FirmwareUpdateProcess SharedInfrastructureOnly
```

Get the specified baseline, and update the specified logical enclosure's shared infrastructure only.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
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

### -Baseline &lt;HPEOneView.Appliance.Baseline&gt;

The firmware bundle or baseline to install.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FirmwareUpdateProcess &lt;String&gt;

Specify the type of firmware update to invoke.  Allowed values:

* EnclosureOnly - Will only upgrade enclosure or frame components (`c-Class` Onboard Administrator, Synergy Frame Link Module)
* SharedInfrastructureOnly
* SharedInfrastructureAndServerProfiles

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ForceInstallation &lt;SwitchParameter&gt;

Force the re-installation or downgrade of components within the baseline.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The `[HPEOneView.LogicalEnclosure]` from Get-OVLogicalEnclosure.

| Aliases | le, LogicalEnclosure |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -InterconnectActivationMode &lt;String&gt;

Specify the logical interconnect activation mode. Choosing "Parallel" is the fastest update operation but will require downtime and servers to be powered off. Allowed values:

* Orchestrated
* Parallel Default: Orchestrated

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

=== "HPEOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]"
    Logical enclosure resource from Get-OVLogicalEnclosure.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for configuring port monitoring on the requested logical intercinnect.
    

## Related Links

