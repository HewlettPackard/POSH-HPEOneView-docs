---
description: Create or Import a Server Profile
---

# New-HPOVServerProfile

## Syntax

```text
New-HPOVServerProfile
    [-Name] <String>
    [-AssignmentType] <String>
    [-Enclosure <Object>]
    [-EnclosureBay <Int32>]
    [-Server <Object>]
    [-Description <String>]
    [-Connections <Array>]
    [-EnclosureGroup <Object>]
    [-ServerHardwareType] <Object>
    [-Firmware]
    [-Baseline <Object>]
    [-FirmwareInstallMode <String>]
    [-FirmwareActivationMode <String>]
    [-FirmwareActivateDateTime <DateTime>]
    [-ForceInstallFirmware]
    [-Bios]
    [-BiosSettings] <Array>
    [-BootMode] <String>
    [-PxeBootPolicy] <String>
    [-ManageBoot]
    [-BootOrder] <Array>
    [-SecureBoot <String>]
    [-LocalStorage]
    [-StorageController <Object>]
    [-Affinity] <String>
    [-MacAssignment] <String>
    [-WwnAssignment] <String>
    [-SnAssignment] <String>
    [-SerialNumber] <String>
    [-Uuid] <String>
    [-HideUnusedFlexNics] <Boolean>
    [-OSDeploymentPlan <Object>]
    [-OSDeploymentAttributes <Array>]
    [-Scope <HPOneView.Appliance.ScopeCollection>]
    [-Async]
    [-ApplianceConnection <Object>]
    [-Passthru]
    [<CommonParameters>]
```

```text
New-HPOVServerProfile
    [-Name] <String>
    [-ServerProfileTemplate <Object>]
    [-AssignmentType] <String>
    [-Enclosure <Object>]
    [-EnclosureBay <Int32>]
    [-Server <Object>]
    [-Description <String>]
    [-Connections <Array>]
    [-Firmware]
    [-Baseline <Object>]
    [-FirmwareInstallMode <String>]
    [-FirmwareActivationMode <String>]
    [-FirmwareActivateDateTime <DateTime>]
    [-ForceInstallFirmware]
    [-ManageBoot]
    [-LocalStorage]
    [-StorageController <Object>]
    [-IscsiIPv4Address] <Array>
    [-ISCSIInitatorName] <String>
    [-ChapSecret] <SecureString>
    [-MutualChapSecret] <SecureString>
    [-OSDeploymentPlan <Object>]
    [-OSDeploymentAttributes <Array>]
    [-Scope <HPOneView.Appliance.ScopeCollection>]
    [-Async]
    [-ApplianceConnection <Object>]
    [-Passthru]
    [<CommonParameters>]
```

```text
New-HPOVServerProfile
    [-Name] <String>
    [-SANStorage]
    [-HostOStype] <String>
    [-StorageVolume] <Object>
    [-AssignmentType] <String>
    [-Enclosure <Object>]
    [-EnclosureBay <Int32>]
    [-Server <Object>]
    [-Description <String>]
    [-Connections <Array>]
    [-EnclosureGroup <Object>]
    [-ServerHardwareType] <Object>
    [-Firmware]
    [-Baseline <Object>]
    [-FirmwareInstallMode <String>]
    [-FirmwareActivationMode <String>]
    [-FirmwareActivateDateTime <DateTime>]
    [-ForceInstallFirmware]
    [-Bios]
    [-BiosSettings] <Array>
    [-BootMode] <String>
    [-PxeBootPolicy] <String>
    [-ManageBoot]
    [-BootOrder] <Array>
    [-SecureBoot <String>]
    [-LocalStorage]
    [-StorageController <Object>]
    [-EvenPathDisabled]
    [-OddPathDisabled]
    [-Affinity] <String>
    [-MacAssignment] <String>
    [-WwnAssignment] <String>
    [-SnAssignment] <String>
    [-SerialNumber] <String>
    [-Uuid] <String>
    [-HideUnusedFlexNics] <Boolean>
    [-OSDeploymentPlan <Object>]
    [-OSDeploymentAttributes <Array>]
    [-Scope <HPOneView.Appliance.ScopeCollection>]
    [-Async]
    [-ApplianceConnection <Object>]
    [-Passthru]
    [<CommonParameters>]
```

```text
New-HPOVServerProfile
    [-Import]
    [-ProfileObj] <Object>
    [-AssignmentType] <String>
    [-Server <Object>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
New-HPOVServerProfile
    [-IscsiIPv4Address] <Array>
    [<CommonParameters>]
```

## Description

This cmdlet is used to create or import an HPE OneView Server Profile.

A server profile is the configuration for a server instance. Server profiles capture the entire server configuration in one place, enabling you to consistently replicate new server profiles and to rapidly modify them to reflect changes in your data center.

A server profile includes:

* Server identification information
* Connectivity settings for Ethernet networks, network sets, and Fibre Channel networks
* Firmware policy
* Local storage settings
* SAN storage settings \(for environments that have Virtual Connect\)
* BIOS settings
* Boot order
* Physical or virtual UUIDs, MAC addresses, and WWN addresses

You can create an unassigned server profile that serves as a template. Typically, you capture best-practice configurations in a server profile template, and then copy and deploy instances as individual server profiles. Similar to virtual machine \(VM\) templates, profiles enable you to create a provisioning baseline for server hardware types in an enclosure.

When you create a server profile, it is designated for a server hardware type and enclosure group \(for server blades\), whether the profile is assigned or unassigned.

To figure out BIOS Settings to override or set within the Server Profile, you will need to get the Server Hardware Type resource that your are modeling the Server Profile for. When retrieving the resource:

$bl460cgen9sht = Get-HPOVServerHardwareType "BL460c Gen9 1"

The "biosSettings" Array property will be available \(only with supported Server Hardware Types; i.e. BL460c Gen8 or newer\). To locate potential BIOS Settings, you can use the following code as an example:

$biosSettings = $bl460cgen9sht.biosSettings \| ? name -match "power"

The code example above will return all matching BIOS Settings where the name contains "power". The found BIOS settings object\(s\) are then saved into $biosSettings. Update the "value" property accordingly, and you can then pass $biosSettings variable to the -biosSettings parameter.

## Examples

### Example 1

```text
$svr = Get-HPOVServer -Name "Encl1, Bay 1"
New-HPOVServerProfile -name "My Basic Server Profile" -server $svr   | Wait-HPOVTaskComplete
```

Create a simple profile for "ServerA", and wait for it to be applied.

### Example 2

```text
$spt = Get-HPOVServerProfileTemplate -Name "Hypervisor Cluster Node Template v1"
Get-HPOVServer -Name "Encl1, Bay 1" | New-HPOVServerProfile -name "Hyp-Clus-01" -ServerProfileTemplate $spt | Wait-HPOVTaskComplete
```

Create a Server Profile from the "Hypervisor Cluster Node Template v1" Server Profile Template, assigning to "Encl1, Bay 1" server device.

### Example 3

```text
$profileName = "Web Server 10"
$svr         = Get-HPOVServer -Name "Encl1, Bay 1"
$con1        = Get-HPOVNetwork -Name "Net-41-A" | New-HPOVServerProfileConnection -ConnectionId 1
$con2        = Get-HPOVNetwork -Name "Net-41-B" | New-HPOVServerProfileConnection -ConnectionId 2
$params = @{
>>    name                = $profileName;
>>    assignmentType      = "server";
>>    server = $svr;
>>    connections         = ($con1, $con2);
>>    ApplianceConnection = "MyAppliance.domain.com"
>>    }
>>    
New-HPOVServerProfile @params | Wait-HPOVTaskComplete
```

Create a BL Gen8 Server Profile template, and pipe to `Wait-HPOVTaskComplete`.

### Example 4

```text
$profileName = "Hypervisor Cluster Node 1"
$svr = Get-HPOVServer -Name "Encl1, Bay 1"
$con1 = Get-HPOVNetwork -Name "Net-41" | New-HPOVServerProfileConnection -id 1 -type Ethernet
$con2 = Get-HPOVNetwork -Name "Net-42" | New-HPOVServerProfileConnection -id 2 -type Ethernet
$con3 = Get-HPOVNetwork -Name "fabric a" | New-HPOVServerProfileConnection -id 3 -type FibreChannel -bootable -priority Primary -arrayWWPn "21:11:00:02:AC:00:72:03" -LUN 0
$con4 = Get-HPOVNetwork "fabric b" | New-HPOVServerProfileConnection -id 4 -type FibreChannel -bootable -priority Secondary -arrayWWPn "22:12:00:02:AC:00:72:03" -LUN 0
$conList = $con1, $con2, $con3, $con4
$task = New-HPOVServerProfile -name $profileName -assignmentType "unassigned" -connections $conList | Wait-HPOVTaskComplete
```

Create an unassigned server profile which includes networks "Net-41" and "Net-42", adds FC Connections for BfS.

### Example 5

```text
$profileName = "Hypervisor Cluster Node 1"
$svr = Get-HPOVServer -Name "Encl1, Bay 1"
$con1 = Get-HPOVNetwork -Name "Net-41" | New-HPOVServerProfileConnection -id 1 -type Ethernet
$con2 = Get-HPOVNetwork -Name "Net-42" | New-HPOVServerProfileConnection -id 2 -type Ethernet
$con3 = Get-HPOVNetwork -Name "fabric a" | New-HPOVServerProfileConnection -id 3 -type FibreChannel -bootable -priority Primary -arrayWWPn "21:11:00:02:AC:00:72:03" -LUN 0
$con4 = Get-HPOVNetwork -Name "fabric b" | New-HPOVServerProfileConnection -id 4 -type FibreChannel -bootable -priority Secondary -arrayWWPn "22:12:00:02:AC:00:72:03" -LUN 0
$conList = $con1, $con2, $con3, $con4
$volume1 = Get-HPOVStorageVolume -Name Volume1  | New-HPOVServerProfileAttachVolume -volumeid 1
$volume2 = Get-HPOVStorageVolume SharedVolume1  | New-HPOVServerProfileAttachVolume -volumeid 2
$attachVolumes = @($volume1,$volume2)
$task = New-HPOVServerProfile -name $profileName -assignmentType "unassigned" -connections $conList -SANStorage -ostype VMware -StorageVolume $attachVolumes | Wait-HPOVTaskComplete
```

Create an unassigned server profile which includes networks "Net-41" and "Net-42", and attaches two storage volumes.

### Example 6

```text
$profileName = "Hypervisor Cluster Node 1"
$bl460SHT = Get-HPOVServerHardwareTypes -name "BL460c Gen8 1"
$enclosure = Get-HPOVEnclosure -Name "Encl1"
$bay = 12
$con1 = Get-HPOVNetwork -Name "Net-41" | New-HPOVServerProfileConnection -id 1 -type Ethernet
$con2 = Get-HPOVNetwork -Name "Net-42" | New-HPOVServerProfileConnection -id 2 -type Ethernet
$con3 = Get-HPOVNetwork -Name "fabric a" | New-HPOVServerProfileConnection -id 3 -type FibreChannel -bootable -priority Primary -arrayWWPn "21:11:00:02:AC:00:72:03" -LUN 0
$con4 = Get-HPOVNetwork -Name "fabric b" | New-HPOVServerProfileConnection -id 4 -type FibreChannel -bootable -priority Secondary -arrayWWPn "22:12:00:02:AC:00:72:03" -LUN 0
$conList = $con1, $con2, $con3, $con4
$task = New-HPOVServerProfile -name $profileName -assignmentType bay -connections $conList -sht $bl460SHT -enclosure $enclosure -bay $bay | Wait-HPOVTaskComplete
```

Create a profile which includes networks "Net-41" and "Net-42", adds FC Connections for BfS, and assign to Bay 12 of "Encl1" which is currently empty.

### Example 7

```text
$profileName = "Hypervisor Cluster Node 1"
$server = Get-HPOVServer -Name "Encl1, Bay 1"
#display the BL460 Gen8 BIOS Settings
$bl460SHT.biosSettings
#Set HP Power Profile (ID 210) to Maximum Performance and HP Power Regulator (ID 140) to HP Static High Performance Mode.
$bl460bios = @(@{id=210;value=3},@{id=140;value=3})
$con41 = Get-HPOVNetwork -Name "Net-41" | New-HPOVServerProfileConnection -ID 1 -bootable -priority Primary
$con42 = Get-HPOVNetwork -Name "Net-42" | New-HPOVServerProfileConnection -ID 2 -bootable -priority Secondary
$conList = @($con41, $con42)
$task = New-HPOVServerProfile -name $profileName -assignmentType "server" -server $server -connections $conList -manageboot -bootorder @("PXE","HardDisk","CD","Floppy","USB") -bios -biossettings $bl460bios | Wait-HPOVTaskComplete
```

Create a profile which includes networks "Net-41" and "Net-42", sets the boot order, and sets the BIOS. Then pipes to `Wait-HPOVTaskComplete`.

### Example 8

```text
$profileName = "Hypervisor Cluster Node 1"
$server = Get-HPOVServer -Name "Encl1, Bay 1" #Gen9 Server
$con1 = Get-HPOVNetwork -Name "Net-41-A" | New-HPOVServerProfileConnection -connectionId 1
$con2 = Get-HPOVNetwork -Name "Net-41-B" | New-HPOVServerProfileConnection -connectionId 2
$LogicalDisk = New-HPOVServerProfileLogicalDisk -Name "My Local Disk" -RAID RAID1 -NumberofDrives 2 -DiskType SasSsd
$params = @{
>>    name                = $profileName;
>>    assignmentType      = "server"
>>    server              = $server;
>>    connections         = $con1, $con2
>>    manageboot          = $True;
>>    bootMode            = "UEFI";
>>    pxeBootPolicy       = "IPv4ThenIPv6";
>>    bootOrder           = "HardDisk";
>>    HideUnusedFlexnics  = $True;
>>    LocalStorage        = $True;
>>    Initialize          = $True;
>>    LogicalDisk         = $LogicalDisk
>> }
>>    
New-HPOVServerProfile @params | Wait-HPOVTaskComplete
```

Create a BL Gen9 UEFI Server Profile, and pipe to `Wait-HPOVTaskComplete`.

### Example 9

```text
$profileName = "Synergy Hypervisor Cluster Node 1"
$sht = Get-HPOVServerHardwareType -Name "SY480 Gen9 1"
$server = Get-HPOVServer -NoProfile -ServerHardwareType $sht | ? { $_.cpuCount -ge 4 -and $_.memoryMb -ge 524288 } | Select -First 1
$con1 = Get-HPOVNetwork -Name "Net-41-A" | New-HPOVServerProfileConnection -connectionId 1
$con2 = Get-HPOVNetwork -Name "Net-41-B" | New-HPOVServerProfileConnection -connectionId 2
$LogicalDisk = New-HPOVServerProfileLogicalDisk -Name "Data Drive" -RAID RAID1 -NumberofDrives 5 -DiskType SasSsd
$Controller = New-HPOVServerProfileLogicalDiskController -ControllerID "Mezz 1" -Initialize -LogicalDisk $LogicalDisk
$params = @{
>>    name                = $profileName;
>>    assignmentType      = "server"
>>    server              = $server;
>>    connections         = $con1, $con2
>>    manageboot          = $True;
>>    bootMode            = "UEFI";
>>    pxeBootPolicy       = "IPv4ThenIPv6";
>>    bootOrder           = "HardDisk";
>>    HideUnusedFlexnics  = $True;
>>    LocalStorage        = $True;
>>    Initialize          = $True;
>>    LogicalDisk         = $LogicalDisk
>> }
>>    
New-HPOVServerProfile @params | Wait-HPOVTaskComplete
```

Create a Synergy Gen9 Server Profile by looking for the first available SY480 Gen9 with 4 CPU"s and 512GB of RAM, configuring with D3940 Disk Storage.

### Example 10

```text
New-HPOVServerProfile -import -file C:\profiles\ServerProfile1.json
```

Basic Server Profile import.

### Example 11

```text
(Get-Content C:\profiles\ServerProfile1.json) -join "`n" | New-HPOVServerProfile -import
```

Read the contents from ServerProfile1.json, join each line into a single object, and pipe to `New-HPOVServerProfile` to import.

### Example 12

```text
$jsonProfiles = Get-ChildItem C:\profiles\*.json
$jsonProfiles | foreach-object { New-HPOVServerProfile -import -file $_.fullname }
```

Retrieve list of all JSON files in C:\profiles, then pass each file and its full path to `New-HPOVServerProfile`.

## Parameters

### -Name &lt;String&gt;

The name of the server profile resource to be created.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AssignmentType &lt;String&gt;

The instruction of how the profile will be assigned. The profile can be assigned to an empty server bay, a specific server, or unassigned.

Valid values for this parameter are "unassigned", "server", or "bay"

| Aliases | assign |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Enclosure &lt;Object&gt;

The blade enclosure resource containing the bay where the server profile will be assigned. Only required if assignmentType is "bay"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnclosureBay &lt;Int32&gt;

The empty enclosure bay to assign the server profile.

| Aliases | bay |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `0` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Server &lt;Object&gt;

The server hardware resource where the new profile is to be applied. This is normally retrieved with a "Get-HPOVServer" call, and the Server state property should be "NoProfileApplied". Can also be the Server Hardware name or URI.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -Description &lt;String&gt;

Optional description for this server profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServerProfileTemplate &lt;Object&gt;

Provide a Server Profile Template Object or Resource Name.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Connections &lt;Array&gt;

The network connections that are to be part of this new server profile. This an array of profile conneciton objects which may be created with "New-HPOVServerProfileConnection".

Expected Connection Format:

`[System.Collections.ArrayList` \] @\( \[PsCustomObject\]@{ `[System.Int]`id - Connection ID. Valid `1-64`. A 0 value is allowed, but means Auto Connection ID assignment. `[System.String]`function - Ethernet or FibreChannel. `[System.String]`networkUri - URI to the Network resource. `[System.String]`portId - Auto or the specific Port ID. For FlexLOMs, the valid portId prefix will be "Flb", and Mezzanine would be "Mezz". Ex. FlexNIC 1a interface would be "Flb 1:1a" Ex. Mezzanine 2, FlexNIC 2c interface would be "Mezz 2:2c" `[System.Int`32\]requestedMpbs - Requested bandwidth in Mbps. `[System.Collections.Hashtable]`boot - Nested Hashtable @{ `[System.String]`priority - Boot priority for this connection. Can be used with Ethernet or FC connections. Allowed values: NotBootable Primary Secondary `[System.Collections.ArrayList` \]targets - Array of FC boot targets \(only 1 entry is allowed\) @\( `[System.String]`arrayWwpn - Target WWPN of storage array. `[System.String]`lun - Boot LUN ID

```text
                )
        }
    `[System.String]`macType - Allowed values:
                                Physical
                                UserDefined
                                Virtual
    `[System.String]`mac      - UserDefined MAC Address. Required for custom MAC and FCoE WWPN addresses.
    `[System.String]`wwpnType - Allowed values:
                                Physical
                                UserDefined
                                Virtual
    `[System.String]`wwpn     - UserDefined WWPN Address
    `[System.String]`wwnn     - UserDefined WWNN Address
}
```

\)

Default: No connections

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnclosureGroup &lt;Object&gt;

The Enclosure Group resource the Server Profile will be bound to. Only required when Server value is "Unassigned".

| Aliases | eg |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServerHardwareType &lt;Object&gt;

The Server Hardware Type reource the Server Profile will be bound to. Required when Server value is "Unassigned" or assigning to an empty device bay in an enclosure which must include the `-enclosure` and `-enclosureBay` parameters.

| Aliases | sht |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Firmware &lt;SwitchParameter&gt;

Enable Firmware Management. Cannot be enabled with Server Hardware Type does not support Firmware Management \(i.e. BL G7 servers.\)

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Baseline &lt;Object&gt;

Firmware baseline to assign. Can be either Baseline Name or URI.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FirmwareInstallMode &lt;String&gt;

Specify the Firmware Baseline Policy mode. Avialable options are:

* FirmwareOnly - Updates the system firmware without powering down the server hardware using using HP Smart Update Tools. 
* FirmwareAndSoftware - Updates the firmware and OS drivers without powering down the server hardware using HP Smart Update Tools.
* FirmwareOffline - Manages the firmware through HPE OneView. Selecting this option requires the server hardware to be powered down.

| Aliases | FirmwareMode |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `FirmwareAndSoftware` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ForceInstallFirmware &lt;SwitchParameter&gt;

Using this parameter will force the bundled firmware components to install when the Server Profile is applied to a server. This will downgrade firmware if the component firmware is newer than what the SPP Baseline contains.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FirmwareActivationMode &lt;String&gt;

Specify the firmware activation policy. Avialable options are:

* Immediate - Immediately activate \(aka reboot the host\) firmware if needed.  Requires HPSUT to be installed in the Host OS or Proxy VM \(for VMware only\)
* Scheduled - Specify a future time to activate \(aka reboot the host\) firmware if needed.  You will need to specify the FirmwareActivateDateTime parameter.  Requires HPSUT to be installed in the Host OS or Proxy VM \(for VMware only\)
* NotScheduled - Scheduled firmware update is cancelled when you choose this option.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `Immediate` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FirmwareActivateDateTime &lt;DateTime&gt;

Using this parameter will force the bundled firmware components to install when the Server Profile is applied to a server. This will downgrade firmware if the component firmware is newer than what the SPP Baseline contains.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Bios &lt;SwitchParameter&gt;

Enable BIOS Settings Management. Cannot be enabled with Server Hardware Type does not support BIOS Management \(i.e. BL G7 servers.\)

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BiosSettings &lt;Array&gt;

BIOS Settings that are to be managed. You can get the BIOS settings available from `Get-HPOVServerHarwareType` and the returned biosSettings property.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `@()` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BootMode &lt;String&gt;

Specify the Gen9 Boot Envrionment.

Sets the boot mode as one of the following:

* UEFI
* UEFIOptimized
* BIOS
* Unmanaged

If you select UEFI or UEFI optimized for an HP ProLiant DL Gen9 rack mount server, the remaining boot setting available is the PXE boot policy.

For the UEFI or UEFI optimized boot mode options, the boot mode choice should be based on the expected OS and required boot features for the server hardware. UEFI optimized boot mode reduces the time the system spends in POST \(Video driver initialization\). In order to select the appropriate boot mode, consider the following:

* If a secure boot is required, the boot mode must be set to UEFI or UEFI optimized .
* For operating systems that do not support UEFI \(such as DOS, or older versions of Windows and Linux\), the boot mode must be set to BIOS.
* When booting in UEFI mode, Windows 7, Server 2008, or 2008 R2 should not be set to UEFIOptimized.

Default: BIOS

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `BIOS` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PxeBootPolicy &lt;String&gt;

Controls the ordering of the network modes available to the Flexible LOM \(FLB\); for example, IPv4 and IPv6.

Select from the following policies:

* Auto
* IPv4 only
* IPv6 only
* IPv4 then IPv6
* IPv6 then IPv4

Setting the policy to Auto means the order of the existing network boot targets in the UEFI Boot Order list will not be modified, and any new network boot targets will be added to the end of the list using the System ROM"s default policy.

Default: Auto

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `Auto` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ManageBoot &lt;SwitchParameter&gt;

Enable Boot Order Management. Also required for Connection boot enablement. If this is disabled \($False\), then PXE or FC BfS settings are disabled within the entire Server Profile.

Default: $True

| Aliases | boot |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BootOrder &lt;Array&gt;

Boot Order settings to be managed.

Defines the order in which boot will be attempted on the available devices. For Gen7 and Gen8 server hardware the possible values are "CD", "Floppy", "USB", "HardDisk", and "PXE". For Gen9 BL server hardware in Legacy BIOS boot mode, the possible values are "CD", "USB", "HardDisk", and "PXE". For Gen9 BL server hardware in UEFI or UEFI Optimized boot mode, only one value is allowed and must be either "HardDisk" or "PXE". For Gen9 DL server hardware in Legacy BIOS boot mode, the possible values are "CD", "USB", "HardDisk", and "PXE". For Gen9 DL server hardware in UEFI or UEFI Optimized boot mode, boot order configuration is not supported.

Gen7/8 BIOS Default Boot Order: "CD","Floppy","USB","HardDisk","PXE" Gen9 Legacy BIOS Boot Order: "CD","USB","HardDisk","PXE" Gen9 UEFI Default Boot Order: "HardDisk"

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `@()` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LocalStorage &lt;SwitchParameter&gt;

Enable local storage settings to be managed on the server. Will only enable embedded Smart Array controller management.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ImportLogicalDisk &lt;SwitchParameter&gt;

DEPRECATED. Please use the `New-HPOVServerProfileLogicalDiskController` Cmdlet.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -Initialize &lt;SwitchParameter&gt;

DEPRECATED. Please use the `New-HPOVServerProfileLogicalDiskController` Cmdlet.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -ControllerMode &lt;String&gt;

DEPRECATED. Please use the `New-HPOVServerProfileLogicalDiskController` Cmdlet.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -StorageController &lt;Object&gt;

A collection \(System.Collections.ArrayList or `[System.Collections.ArrayList]`\) of LogicalDisk Controller configuration objects from `New-HPOVServerProfileLogicalDisk` and `New-HPOVServerProfileLogicalDiskController`.

| Aliases | LogicalDisk |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SANStorage &lt;SwitchParameter&gt;

Optional. Enable SAN Storage Management within the Server Profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SecureBoot &lt;String&gt;

Specify if secure boot should be Unmanaged, Enabled or Disabled for Gen10 and newer servers. Boot Mode must be set to 'UEFI Optimized'.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -HostOStype &lt;String&gt;

Optional. Specify the Host OS type, which will set the Host OS value when HPE OneView created the Host object on the Storage System. Accepted values:

* CitrixXen = "Citrix Xen Server 5.x/6.x"
* AIX       = "AIX"
* IBMVIO    = "IBM VIO Server"
* RHEL4     = "RHE Linux \(Pre RHEL 5\)"
* RHEL3     = "RHE Linux \(Pre RHEL 5\)"
* RHEL      = "RHE Linux \(5.x, 6.x\)"
* RHEV      = "RHE Virtualization \(5.x, 6.x\)"
* VMware    = "ESX 4.x/5.x"
* Win2k3    = "Windows 2003"
* Win2k8    = "Windows 2008/2008 R2"
* Win2k12   = "Windows 2012 / WS2012 R2"
* OpenVMS   = "OpenVMS"
* Egenera   = "Egenera"
* Exanet    = "Exanet"
* Solaris9  = "Solaris 9/10"
* Solaris10 = "Solaris 9/10"
* Solaris11 = "Solaris 11"
* ONTAP     = "NetApp/ONTAP"
* OEL       = "OE Linux UEK \(5.x, 6.x\)"
* HPUX11iv1 = "HP-UX \(11i v1, 11i v2\)"
* HPUX11iv2 = "HP-UX \(11i v1, 11i v2\)"
* HPUX11iv3 = "HP-UX \(11i v3\)"
* SUSE      = "SuSE \(10.x, 11.x\)"
* SUSE9     = "SuSE Linux \(Pre SLES 10\)"
* Inform    = "InForm"

| Aliases | OS |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StorageVolume &lt;Object&gt;

Optional. Array of Storage Volume resources to attach. Can be created by using the `New-HPOVServerProfileAttachVolume` cmdlet. This parameter does not accept a Storage Volume resource from the `Get-HPOVStorageVolume` cmdlet.

The format of the Storage Volume resource should be a PsCustomObject PowerShell resource with the following keys and values:

\[PsCustomObject\]@{ `[System.Int]`id - Valid Host LUN ID `0-254` `[System.String]`lunType - Auto or Manual `[System.String]`volumeUri - URI to Storage Volume that has been created and not assigned to another Server Profile if it is a Private Volume. `[System.String]`volumeStoragePoolUri - URI to HPE OneView managed Storage Pool `[System.String]`volumeStorageSystemUri - URI to HPE OneView managed Storage System `[System.Collections.ArrayList` \]storagePaths - Array specifying the Profile FC Connection ID associated with the path to the attached volume, and if the path is enabled or disabled. @\( `[System.Int]`connectionId - FC Connection ID. If using `New-HPOVServerProfileAttachVolume` helper cmdlet, `New-HPOVServerProfile` will automatically determine the FC connection ID. `[System.Boolean]`isEnabled - Enable or disable the path \) }

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EvenPathDisabled &lt;SwitchParameter&gt;

Enable to disable even paths in the attached storage volume\(s\).

| Aliases | Even |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OddPathDisabled &lt;SwitchParameter&gt;

Enable to disable odd paths in the attached storage volume\(s\).

| Aliases | Odd |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Affinity &lt;String&gt;

In a server profile, the Affinity control sets the `remove-and`-replace behavior for blade servers. If you apply a server profile to a blade server and the server is subsequently removed from the device bay, the Affinity setting controls whether the server profile is reapplied when you insert a server blade into the empty bay. Server profiles for rack servers do not have affinity.

Accepted values are either "Bay" or "BayAndServer". Default is "Bay".

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `Bay` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MacAssignment &lt;String&gt;

Optional setting for MAC address assignment. May be Virtual or Physical. Use Virtual if you need to specify a UserDefined value when using the `New-HPOVServerProfileConnection` helper CMDLET.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `Virtual` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WwnAssignment &lt;String&gt;

Optional setting for WWN assignment. May be Virtual or Physical. Use Virtual if you need to specify a UserDefined value when using the `New-HPOVServerProfileConnection` helper CMDLET.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `Virtual` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnAssignment &lt;String&gt;

Optional setting for serial number and UUID assignment. May be Virtual, Physical or UserDefined.

Default: Virtual serial number and UUID assignment

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `Virtual` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SerialNumber &lt;String&gt;

When specifying snAssignment parameter to UserDefined, you can provide a user defined Serial Number value. You must also specify the UUID by using the uuid parameter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Uuid &lt;String&gt;

When specifying snAssignment parameter to UserDefined, you can provide a user defined UUID value. You must also specify the Serial Number by using the serialnumber parameter.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -HideUnusedFlexNics &lt;Boolean&gt;

This setting provides the ability to hide unused FlexNICs from the operating system.

If Hide Unused FlexNICs is set to $True \(default/enabled\), FlexNICs that do not map to any server profile connections are not presented to the operating system. For example, if you have a full complement of eight FlexNICs defined in your server profile but map only four, your operating system will see only the four mapped FlexNICs instead of eight.

If Hide Unused FlexNICs is set to $False \(disabled\), eight FlexNICs are enumerated in the operating system as network interfaces for each `Flex-10` or FlexFabric adapter.

Configuring Fibre Channel connections on a FlexFabric adapter can enumerate two storage interfaces, reducing the number of network interfaces to six.

FlexNICs are hidden in pairs, starting with the fourth pair. For example, if the fourth FlexNIC on either physical port corresponds to a profile connection, all eight physical functions are enumerated. If a profile connection corresponds to the second FlexNIC on either physical port, but no connection corresponds to the third or fourth FlexNIC on either physical port, only the first and second physical functions are enumerated in the operating system.

By default, Hide Unused FlexNICs is enabled. This setting can be changed only when the server is powered off.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `True` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiIPv4Address &lt;Array&gt;

Parameter is required when creating a Server Profile and specifying a ServerProfileTemplate parameter value.

A collection of IPv4 Addresses to allocate for found iSCSI initiators that are Bootable.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ISCSIInitatorName &lt;String&gt;

Parameter is required when creating a Server Profile and specifying a ServerProfileTemplate parameter value which contain iSCSI Connections that are bootable.

Value to provide for the iSCSI Initiator. All iSCSI Connections will share this value. If no value is provided, the connection will default to using the Server Profile Name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ChapSecret &lt;SecureString&gt;

Parameter is required when creating a Server Profile, specifying a ServerProfileTemplate parameter value, and a Connection iSCSI Authentication Protocol is set to Chap or MutualChap.

The CHAP challange secret. Accepts ASCII or HEX values. If providing an ASCII secret value, the length must be bewteen 12 and 16 characters. If HEX, it must start with 0x and with `24-32` characters.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MutualChapSecret &lt;SecureString&gt;

Parameter is required when creating a Server Profile, specifying a ServerProfileTemplate parameter value, and a Connection iSCSI Authentication Protocol is set to MutualChap.

The Mutual CHAP challange secret. Accepts ASCII or HEX values. If providing an ASCII secret value, the length must be bewteen 12 and 16 characters. If HEX, it must start with 0x and with `24-32` characters.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OSDeploymentPlan &lt;Object&gt;

The HPE Synergy Image Streamer OS deployment plan from `Get-HPOVOSDeploymentPlan`.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OSDeploymentAttributes &lt;Array&gt;

Configured OS Deployment Plan parameters from `Get-HPOVOSDeploymentPlanAttribute`.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task. By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `false` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### -Import &lt;SwitchParameter&gt;

Switch to import Server Profile JSON object or file.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ProfileObj &lt;Object&gt;

Source Server Profile JSON object or file.

| Aliases | location, file |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -Passthru &lt;SwitchParameter&gt;

Use this parameter to return the modified Server Profile object. In order to save the changes, please use the `Save-HPOVServerProfile` Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;

Provide an `[HPOneView.Appliance.ScopeCollection]` resource object to initially associate with. Resource can also be added to scope using the `Add-HPOVResourceToScope` Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.String**_

The full path to the Server Profile JSON export file

_**HPOneView.ServerHardware \[System.Management.Automation.PSCustomObject\]**_

Server Hardware resource object

## Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

If successful returns a task resource which may be polled to follow the progress of the profile creation. Otherwise, a request validation error will be returned

## Related Links

* [Convert-HPOVServerProfile](convert-hpovserverprofile.md)
* [Convert-HPOVServerProfileTemplate](convert-hpovserverprofiletemplate.md)
* [ConvertTo-HPOVServerProfileTemplate](convertto-hpovserverprofiletemplate.md)
* [Copy-HPOVServerProfile](copy-hpovserverprofile.md)
* [Get-HPOVServerProfile](get-hpovserverprofile.md)
* [Get-HPOVServerProfileConnectionList](get-hpovserverprofileconnectionlist.md)
* [Get-HPOVServerProfileMessage](get-hpovserverprofilemessage.md)
* [Get-HPOVServerProfileTemplate](get-hpovserverprofiletemplate.md)
* [Join-HPOVServerProfileToTemplate](../../v5.00/servers/join-hpovserverprofiletotemplate.md)
* [New-HPOVServerProfileAssign](new-hpovserverprofileassign.md)
* [New-HPOVServerProfileAttachVolume](new-hpovserverprofileattachvolume.md)
* [New-HPOVServerProfileConnection](new-hpovserverprofileconnection.md)
* [New-HPOVServerProfileLogicalDisk](new-hpovserverprofilelogicaldisk.md)
* [New-HPOVServerProfileLogicalDiskController](new-hpovserverprofilelogicaldiskcontroller.md)
* [New-HPOVServerProfileTemplate](new-hpovserverprofiletemplate.md)
* [Remove-HPOVServerProfile](remove-hpovserverprofile.md)
* [Remove-HPOVServerProfileTemplate](remove-hpovserverprofiletemplate.md)
* [Save-HPOVServerProfile](save-hpovserverprofile.md)
* [Save-HPOVServerProfileTemplate](save-hpovserverprofiletemplate.md)
* [Set-HPOVServerProfile](set-hpovserverprofile.md)
* [Set-HPOVServerProfileTemplate](set-hpovserverprofiletemplate.md)
* [Update-HPOVServerProfile](update-hpovserverprofile.md)

