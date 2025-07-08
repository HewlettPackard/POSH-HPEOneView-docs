---
description: Install SPP baseline to server hardware.
---

# Update-OVServerFirmware

## Syntax

```powershell
Update-OVServerFirmware
    [-InputObject] <Object>
    [-Baseline] <Object>
    [-PatchLevel <System.Version>]
    [-FirmwareInstallationPolicy <String>]
    [-FirmwareInstallMode <String>]
    [-ReinstallFirmware]
    [-PreviewOnly]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A firmware bundle is a comprehensive collection of firmware and system software components that enable you to update the firmware of the devices managed by the appliance. The firmware bundle includes drivers, agents, utilities, and firmware packages.  Deploying a firmware bundle (SPP) to a server hardware resource is only supported with Gen10 or newer server platforms, excluding HPE Synergy and Superdome Flex partitions.

Supported servers must not have an assigned server profile, and only supports Gen10 and newer volume servers (not HPE Synergy).  Installing a supported firmware bundle requires either an HPE iLO Advanced, HPE OneView Advanced or HPE OneView Advanced without iLO Advanced license.

The following installation modes are supported:

*  FirmwareAndOSDrivers or FirmwareAndSoftware - Updates the firmware and OS drivers without powering down the server hardware using Smart Update Tool.
*  FirmwareOnly - Updates the firmware without powering down the server hardware using Smart Update Tool.
*  FirmwareOnlyOfflineMode or FirmwareOffline - Manages the firmware through HPE OneView. Selecting this option requires the server hardware to be powered down.

???+ info
    Minimum required privileges: Infrastructure administrator or Server administrator or Server firmware operator

## Examples

###  Example 1 

```powershell
Update-OVServerFirmware -InputObject $Server -Baseline $Baseline -PreviewOnly

```

Generate a report of installed components to the server and available firmware within the specified baseline.

###  Example 2 

```powershell
$Servers = Get-OVServer | ? generation -eq "Gen10"
$Baseline = Get-OVBaseline -Name "Custom Baseline 2022 11 4"
Update-OVServerFirmware -InputObject $Servers -Baseline $Baseline

```

Get a collection of Gen10 servers and install the specific baseline.

###  Example 3 

```powershell
# Get the latest firmware bundles from HPE
$FirmwareBundleUpdates = Get-OVFirmwareBundleUpdate -GetLatestUpdates

# Get all of the HPE ProLiant DL380 Gen11 servers from inventory
$Servers = Get-OVServer -Query "shortModel:'DL380 Gen11'"

# Use the most current
$Baseline = $FirmwareBundleUpdates | ? bundleGeneration -contains "Gen11" | Sort -Property version -Descending | Select -First 1

# If there is a patch available, use the most recent version
if ($Baseline.Supplements.Count -gt 0) {
    $Servers | Update-OVServerFirmware -Baseline $Baseline -PatchLevel ($Baseline.Supplements | Sort -Descending | Select -First 1)
} else {
    $Servers | Update-OVServerFirmware -Baseline $Baseline
}
```

Get the most current firmware bundle available for Gen11, and use the most current patch level if available.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Baseline &lt;Object&gt;

Baseline object from Get-OVBaseline.

Examples:

$FileName = "bp-hp-service-pack-for-proliant-oneview-2014-11-30-05.iso"
$Name = "HPE Service Pack For ProLiant  OneView 2014 11 13"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FirmwareInstallationPolicy &lt;String&gt;

Select the installation policy for the firmware bundle.  Allowed values:

* LowerThanBaseline (Default) - Updates only the components with an installed version lower than the firmware baseline version.
* NotEqualToBaseline - Updates or downgrades components whose installed version does not match the firmware baseline version.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Server hardware resource from Get-OVServer.

| Aliases | Server, ServerHardware |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ReinstallFirmware &lt;SwitchParameter&gt;

Option to reinstall the components that already match the firmware baseline.

| Aliases | ForceInstallFirmware |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FirmwareInstallMode &lt;String&gt;

Specify the Firmware Baseline Policy mode.  Avialable options are:

* FirmwareOnly - Updates the system firmware without powering down the server hardware using using HPE Smart Update Tools. 
* FirmwareAndSoftware - Updates the firmware and OS drivers without powering down the server hardware using HPE Smart Update Tools.
* FirmwareOffline - Manages the firmware through HPE OneView. Selecting this option requires the server hardware to be powered down.

| Aliases | FirmwareMode |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | FirmwareAndSoftware |
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

### -PatchLevel &lt;System.Version&gt;

The patch or supplement to the Update Bundle.  Within the Update Bundle contains a property called Supplements ([Array] of `[System.Version]`).

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PreviewOnly &lt;SwitchParameter&gt;

Will generate a compliance review object that contains which components are not compliant with the parent template policy.

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

=== "HPEOneView.ServerHardware [System.Management.Automation.PSCustomObject]"
    Server hardware resource from Get-OVServer.
    

## Return Values

=== "HPEOneView.Servers.ServerHardware+FirmwareCompliancePreview"
    A collection of server firmware installation report.  Will contain identified installed components and which have available updates from the supplied baseline.
    

=== "HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task resource to monitor.
    

## Related Links

* [Wait-OVTaskStart](../appliance/wait-ovtaskstart.md)
* [Wait-OVTaskComplete](../appliance/wait-ovtaskcomplete.md)
