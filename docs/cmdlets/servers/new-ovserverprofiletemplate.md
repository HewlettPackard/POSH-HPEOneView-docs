---
description: Create a Server Profile Template
---

# New-OVServerProfileTemplate

## Syntax

```powershell
New-OVServerProfileTemplate
    [-Name] <String>
    [-ServerHardwareType] <Object>
    [-Description <String>]
    [-ServerProfileDescription <String>]
    [-ManageConnections <Boolean>]
    [-Connections <Array>]
    [-ConnectionsConsistencyChecking <String>]
    [-EnclosureGroup <Object>]
    [-Firmware]
    [-Baseline <Object>]
    [-BaselinePatchLevel <version>]
    [-FirmwareConsistencyChecking <String>]
    [-FirmwareInstallationPolicy <string>]
    [-FirmwareInstallMode <String>]
    [-FirmwareActivationMode <String>]
    [-ForceInstallFirmware]
    [-OSDeploymentPlan <Object>]
    [-OSDeploymentConsistencyChecking <String>]
    [-OSDeploymentPlanAttributes <Array>]
    [-Bios]
    [-BiosSettings <Array>]
    [-BiosConsistencyChecking <String>]
    [-BootMode <String>]
    [-BootModeConsistencyChecking <String>]
    [-PxeBootPolicy <String>]
    [-ManageBoot]
    [-BootOrder <Array>]
    [-BootOrderConsistencyChecking <String>]
    [-SecureBoot <String>]
    [-LocalStorage]
    [-LocalStorageConsistencyChecking <String>]
    [-StorageController <Object>]
    [-ManageIloSettings <Bool>]
    [-IloSettings <PSObject>]
    [-IloSettingsConsistencyChecking <String>]
    [-Affinity <String>]
    [-MacAssignment <String>]
    [-WwnAssignment <String>]
    [-SnAssignment <String>]
    [-IscsiInitiatorNameAssignmet <String>]
    [-HideUnusedFlexNics <Boolean>]
    [-Async]
    [-PassThru]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVServerProfileTemplate
    [-Name] <String>
    [-ServerHardwareType] <Object>
    [-SANStorage]
    [-HostOStype] <String>
    [-StorageVolume] <Object>
    [-Description <String>]
    [-ServerProfileDescription <String>]
    [-ManageConnections <Boolean>]
    [-Connections <Array>]
    [-ConnectionsConsistencyChecking <String>]
    [-EnclosureGroup <Object>]
    [-Firmware]
    [-Baseline <Object>]
    [-BaselinePatchLevel <version>]
    [-FirmwareConsistencyChecking <String>]
    [-FirmwareInstallationPolicy <string>]
    [-FirmwareInstallMode <String>]
    [-FirmwareActivationMode <String>]
    [-ForceInstallFirmware]
    [-OSDeploymentPlan <Object>]
    [-OSDeploymentConsistencyChecking <String>]
    [-OSDeploymentPlanAttributes <Array>]
    [-Bios]
    [-BiosSettings <Array>]
    [-BiosConsistencyChecking <String>]
    [-BootMode <String>]
    [-BootModeConsistencyChecking <String>]
    [-PxeBootPolicy <String>]
    [-ManageBoot]
    [-BootOrder <Array>]
    [-BootOrderConsistencyChecking <String>]
    [-SecureBoot <String>]
    [-LocalStorage]
    [-LocalStorageConsistencyChecking <String>]
    [-StorageController <Object>]
    [-ManageIloSettings <Bool>]
    [-IloSettings <PSObject>]
    [-IloSettingsConsistencyChecking <String>]
    [-SANStorageConsistencyChecking <String>]
    [-EvenPathDisabled]
    [-OddPathDisabled]
    [-Affinity <String>]
    [-MacAssignment <String>]
    [-WwnAssignment <String>]
    [-SnAssignment <String>]
    [-IscsiInitiatorNameAssignmet <String>]
    [-HideUnusedFlexNics <Boolean>]
    [-Async]
    [-PassThru]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This Cmdlet is used to create or import an HPE OneView Server Profile Template.

A Server Profile Template is the parent configuration for a Server Profile instance. Server profiles capture the entire server configuration in one place, enabling you to consistently replicate new server profiles and to rapidly modify them to reflect changes in your data center.

A Server Profile Template includes:

* Basic server identification information
* Connectivity settings for Ethernet networks, network sets, and Fibre Channel networks
* Firmware versions
* Local storage settings
* SAN storage settings
* BIOS settings
* Boot order
* Physical or virtual UUIDs, MAC addresses, and WWN addresses

When you create a server profile template, it is designated for a server hardware type and enclosure group (for server blades).
    
To figure out BIOS Settings to override or set within the Server Profile, you will need to get the Server Hardware Type resource that your are modeling the Server Profile for.  When retrieving the resource:
    
$bl460cgen9sht = Get-OVServerHardwareType "BL460c Gen9 1"
    
The "biosSettings" Array property will be available (only with supported Server Hardware Types; i.e. BL460c Gen8 or newer).  To locate potential BIOS Settings, you can use the following code as an example:
    
$biosSettings = $bl460cgen9sht.biosSettings | ? { $_.name -match "power" }
    
The code example above will return all matching BIOS Settings where the name contains "power".  The found BIOS settings object(s) are then saved into $biosSettings.  Update the "value" property accordingly, and you can then pass $biosSettings variable to the -biosSettings parameter.

## Examples

###  Example 1 

```powershell
$Name = "HPE ProLiant BL460 Gen9 Profile Template"
$con1 = Get-OVNetwork -Name "Net 41-A"  | New-OVServerProfileConnection -connectionId 1
$con2 = Get-OVNetwork -Name "Net 41-B"  | New-OVServerProfileConnection -connectionId 2
$bl460SHT = Get-OVServerHardwareTypes -name "BL460c Gen9 1"
$eg = Get-OVEnclosureGroup "Default EG1"
$params = @{
>>    name                = $Name;
>>    serverHardwareType  = $bl460SHT;
>>    enclosureGroup      = $eg;
>>    connections         = $con1, $con2;
>>    ManageBoot          = $True;
>>    BootMode            = "UEFI";
>>    ApplianceConnection = "MyAppliance1.domain.com"
>>}
>>
New-OVServerProfileTemplate @params | Wait-OVTaskComplete
```

Create a BL Gen8 Server Profile template, and pipe to Wait-OVTaskComplete.

###  Example 2 

```powershell
$net41 = Get-OVNetwork -Name "Net-41"
$con41 = New-OVServerProfileConnection -network $net41 -connectionType Ethernet -connectionId 1
$net42 = Get-OVNetwork -Name "Net-42"
$con42 = New-OVServerProfileConnection -network $net42 -connectionType Ethernet -connectionId 2
$conList = @($con41, $con42)
$task = New-OVServerProfileTemplate -name $Name -serverHardwareType "bl460c Gen8 1" -enclosureGroup "Production Encl Grp1" -connections $conList  | Wait-OVTaskComplete
```

Create a server profile template which includes networks "Net-41" and "Net-42".

###  Example 3 

```powershell
$profileName = "Hypervisor Cluster Node Template v1.0"
$bl460SHT = Get-OVServerHardwareTypes -name "BL460c Gen9 1"
$enclosuregroup = Get-OVEnclosureGroup "Production EG1"
$con1 = Get-OVNetwork -Name "Net 41-a"  | New-OVServerProfileConnection -id 1
$con2 = Get-OVNetwork -Name "Net 41-b"  | New-OVServerProfileConnection -id 2
$con3 = Get-OVNetworkSet "Prod Networks A"  | New-OVServerProfileConnection -id 3
$con4 = Get-OVNetworkSet "Prod Networks A"  | New-OVServerProfileConnection -id 4
$con5 = Get-OVNetwork -Name "fabric a"  | New-OVServerProfileConnection -id 5 -type FibreChannel -bootable -priority Primary -arrayWWPn "21:11:00:02:AC:00:72:03" -LUN 0
$con6 = Get-OVNetwork -Name "fabric b"  | New-OVServerProfileConnection -id 6 -type FibreChannel -bootable -priority Secondary -arrayWWPn "22:12:00:02:AC:00:72:03" -LUN 0
$conList = $con1, $con2, $con3, $con4, $con5, $con6
$task = New-OVServerProfileTemplate -name $profileName -connections $conList -sht $bl460SHT -eg $enclosuregroup -ManageBoot | Wait-OVTaskComplete
```

Create a new Server Profile template with 6 Connections, 4 Ethernet (including Network Sets) and 2 Fibre Channel (with BfS configured).

###  Example 4 

```powershell
$profileName = "SQL DB Cluster Node Template v1.0"
$bl660SHT = Get-OVServerHardwareTypes -name "BL660c Gen9 1"
#display the BL660 Gen9 BIOS Settings
$bl660SHT.biosSettings
#Set HPE Power Profile (ID 210) to Maximum Performance and HPE Power Regulator (ID 140) to HPE Static High Performance Mode.
$bl660bios = @(@{id=210;value=3},@{id=140;value=3})
$enclosuregroup = Get-OVEnclosureGroup "Production EG1"
$con1 = Get-OVNetwork -Name "Net 41-A" | New-OVServerProfileConnection -connectionId 1
$con2 = Get-OVNetwork -Name "Net 41-B" | New-OVServerProfileConnection -connectionId 2
$con3 = Get-OVNetwork -Name "fabric a"  | New-OVServerProfileConnection -id 3 -type FibreChannel -bootable -priority Primary -arrayWWPn "21:11:00:02:AC:00:72:03" -LUN 0
$con4 = Get-OVNetwork -Name "fabric b"  | New-OVServerProfileConnection -id 4 -type FibreChannel -bootable -priority Secondary -arrayWWPn "22:12:00:02:AC:00:72:03" -LUN 0
$LogicalDisk = New-OVServerProfileLogicalDisk -Name "My Local Disk" -RAID RAID1 -NumberofDrives 2 -DiskType SasSsd 
$volume1 = Get-OVStorageVolume SharedVolume1  | New-OVServerProfileAttachVolume
$params = @{
>>    name                = $profileName;
>>    connections         = $con1, $con2, $con3, $con4;
>>    bios                = $true;
>>    biossettings        = $bl660bios
>>    manageboot          = $True;
>>    bootMode            = "UEFI";
>>    pxeBootPolicy       = "IPv4ThenIPv6";
>>    bootOrder           = "HardDisk";
>>    HideUnusedFlexnics  = $True;
>>    LocalStorage        = $True;
>>    LogicalDisk         = $LogicalDisk;
>>    SANStorage          = $True;
>>    Ostype              = "Win2k12";
>>    StorageVolume       = $volume1;
}
>>    
New-OVServerProfileTemplate @params | Wait-OVTaskComplete
```

Create a BL Gen9 UEFI Server Profile template with Ethernet and FC connections, local storage, SAN Storage and BIOS Settings, then pipe to Wait-OVTaskComplete.

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

### -Description &lt;String&gt;

Optional description for this server profile template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServerProfileDescription &lt;String&gt;

Optional description for created server profiles from this template.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ManageConnections &lt;Boolean&gt;

Use this parameter to specify if Connections should be tracked from the Server Profile Template for compliance.  If set to False, the `-Connections` parameter will be ignored, and Connections must be set and managed at the Server Profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | True |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Connections &lt;Array&gt;

The network connections that are to be part of this new server profile.  This an array of profile connection objects which may be created with "New-OVServerProfileConnection".

Expected Connection Format:
                    
`[System.Collections.ArrayList` ] @(
    [PsCustomObject]@{
        `[System.Int]`id                     - Connection ID. Valid 1-64. A 0 value is allowed,
                                                but means Auto Connection ID assignment.
        `[System.String]`function            - Ethernet or FibreChannel.
        `[System.String]`networkUri          - URI to the Network resource.
        `[System.String]`portId              - Auto or the specific Port ID. For FlexLOMs, the valid
                                                portId prefix will be "Flb", and Mezzanine would be "Mezz".
                                                Ex. FlexNIC 1a interface would be "Flb 1:1a"
                                                Ex. Mezzanine 2, FlexNIC 2c interface would be "Mezz 2:2c"
        `[System.Int`32]requestedMpbs        - Requested bandwidth in Mbps.
        `[System.Collections.Hashtable]`boot - Nested Hashtable
            @{
                `[System.String]`priority    - Boot priority for this connection. Can be used with Ethernet
                                                or FC connections.  Allowed values:
                                                NotBootable
                                                Primary
                                                Secondary
                `[System.Collections.ArrayList` ]targets      - Array of FC boot targets (only 1 entry is allowed)
                    @(
                        `[System.String]`arrayWwpn - Target WWPN of storage array.
                        `[System.String]`lun       - Boot LUN ID
                                        
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
)

Default: No connections

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | @() |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnclosureGroup &lt;Object&gt;

The Enclosure Group resource the Server Profile Template will be bound to.  When assigning to an Enclosure Group, OneView will then determine what farbic connectivity and storage devices are available.

| Aliases | eg |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ServerHardwareType &lt;Object&gt;

The Server Hardware Type reource the Server Profile Template will be bound to.

| Aliases | sht |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Firmware &lt;SwitchParameter&gt;

Enable Firmware Management.  Cannot be enabled with Server Hardware Type does not support Firmware Management (i.e. BL G7 servers.)

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Baseline &lt;Object&gt;

Firmware baseline to assign.  Can be either Baseline Name or URI.

| Aliases | None |
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

### -ForceInstallFirmware &lt;SwitchParameter&gt;

Using this parameter will force the bundled firmware components to install when the Server Profile is applied to a server.  This will downgrade firmware if the component firmware is newer than what the SPP Baseline contains.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FirmwareActivationMode &lt;String&gt;

Specify the firmware activation policy.  Avialable options are:

* Immediate - Immediately activate (aka reboot the host) firmware if needed.  Requires HPSUT to be installed in the Host OS or Proxy VM (for VMware only)
* Scheduled - Specify a future time to activate (aka reboot the host) firmware if needed.  You will need to specify the FirmwareActivateDateTime parameter.  Requires HPSUT to be installed in the Host OS or Proxy VM (for VMware only)
* NotScheduled - Scheduled firmware update is cancelled when you choose this option.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Immediate |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Bios &lt;SwitchParameter&gt;

Enable BIOS Settings Management.  Cannot be enabled with Server Hardware Type does not support BIOS Management (i.e. BL G7 
servers.)

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BiosSettings &lt;Array&gt;

BIOS Settings that are to be managed.  You can get the BIOS settings available from Get-OVServerHardwareType and the returned biosSettings property.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | @() |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BootMode &lt;String&gt;

Specify the Gen9 Boot Envrionment.

Sets the boot mode as one of the following:

* UEFI
* UEFIOptimized
* BIOS
* Unmanaged

If you select UEFI or UEFI optimized for an HPE ProLiant DL Gen9 rack mount server, the remaining boot setting available is the PXE boot policy.

For the UEFI or UEFI optimized boot mode options, the boot mode choice should be based on the expected OS and required boot features for the server hardware. UEFI optimized boot mode reduces the time the system spends in POST (Video driver initialization). In order to select the appropriate boot mode, consider the following:
    
* If a secure boot is required, the boot mode must be set to UEFI or UEFI optimized .
* For operating systems that do not support UEFI (such as DOS, or older versions of Windows and Linux), the boot mode must be set to BIOS.
* When booting in UEFI mode, Windows 7, Server 2008, or 2008 R2 should not be set to UEFIOptimized.

Default: BIOS

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | BIOS |
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

### -PxeBootPolicy &lt;String&gt;

Controls the ordering of the network modes available to the Flexible LOM (FLB); for example, IPv4 and IPv6.

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
| Required? | False |
| Position? | Named |
| Default value | Auto |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ManageBoot &lt;SwitchParameter&gt;

Enable Boot Order Management.  Also required for Connection boot enablement.  If this is disabled ($False), then PXE or FC BfS settings are disabled within the entire Server Profile.

Default: $True

| Aliases | boot |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BootOrder &lt;Array&gt;

Boot Order settings to be managed.
          
Defines the order in which boot will be attempted on the available devices. For Gen7 and Gen8 server hardware the possible values are "CD", "Floppy", "USB", "HardDisk", and "PXE". For Gen9 BL server hardware in Legacy BIOS boot mode, the possible values are "CD", "USB", "HardDisk", and "PXE". For Gen9 BL server hardware in UEFI or UEFI Optimized boot mode, only one value is allowed and must be either "HardDisk" or "PXE". For Gen9 DL server hardware in Legacy BIOS boot mode, the possible values are "CD", "USB", "HardDisk", and "PXE". For Gen9 DL server hardware in UEFI or UEFI Optimized boot mode, boot order configuration is not supported.

Gen7/8 BIOS Default Boot Order: "CD","Floppy","USB","HardDisk","PXE"
Gen9 Legacy BIOS Boot Order: "CD","USB","HardDisk","PXE"
Gen9 UEFI Default Boot Order: "HardDisk"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | @() |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LocalStorage &lt;SwitchParameter&gt;

Enable local storage settings to be managed on the server.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OSDeploymentPlan &lt;Object&gt;

The HPE Synergy Image Streamer OS deployment plan from Get-OVOSDeploymentPlan.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OSDeploymentPlanAttributes &lt;Array&gt;

Configured OS Deployment Plan parameters from Get-OVOSDeploymentPlanAttribute.  You will need to group required NIC parameters together based on needed values.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Initialize &lt;SwitchParameter&gt;

Deprecated.  Please refer to the New-OVServerProfileLogicalDisk and New-OVServerProfileLogicalDiskController Cmdlets.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -ControllerMode &lt;String&gt;

Deprecated.  Please refer to the New-OVServerProfileLogicalDisk and New-OVServerProfileLogicalDiskController Cmdlets.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | RAID |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -StorageController &lt;Object&gt;

A resource object containing the StorageController, LogicalDisk or SasJbod configuration.  Please refer to the New-OVServerProfileLogicalDisk and New-OVServerProfileLogicalDiskController Cmdlets.

| Aliases | LogicalDisk |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SANStorage &lt;SwitchParameter&gt;

Optional.  Enable SAN Storage Management within the Server Profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -HostOStype &lt;String&gt;

Optional. Specify the Host OS type, which will set the Host OS value when HPE OneView created the Host object on the Storage System.  Accepted values:

* CitrixXen = "Citrix Xen Server 5.x/6.x"
* AIX       = "AIX"
* IBMVIO    = "IBM VIO Server"
* RHEL4     = "RHE Linux (Pre RHEL 5)"
* RHEL3     = "RHE Linux (Pre RHEL 5)"
* RHEL      = "RHE Linux (5.x, 6.x)"
* RHEV      = "RHE Virtualization (5.x, 6.x)"
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
* OEL       = "OE Linux UEK (5.x, 6.x)"
* HPUX11iv1 = "HP-UX (11i v1, 11i v2)"
* HPUX11iv2 = "HP-UX (11i v1, 11i v2)"
* HPUX11iv3 = "HP-UX (11i v3)"
* SUSE      = "SuSE (10.x, 11.x)"
* SUSE9     = "SuSE Linux (Pre SLES 10)"
* Inform    = "InForm"

| Aliases | OS |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StorageVolume &lt;Object&gt;

Optional. Array of Storage Volume resources to attach.  Can be created by using the New-OVServerProfileAttachVolume Cmdlet.  This parameter does not accept a Storage Volume resource from the Get-OVStorageVolume Cmdlet.

The format of the Storage Volume resource should be a PsCustomObject PowerShell resource with the following keys and values:

[PsCustomObject]@{
    `[System.Int]`id                        - Valid Host LUN ID 0-254
    `[System.String]`lunType                - Auto or Manual
    `[System.String]`volumeUri              - URI to Storage Volume that has been created and not
                                            assigned to another Server Profile if it is a Private Volume.
    `[System.String]`volumeStoragePoolUri   - URI to HPE OneView managed Storage Pool
    `[System.String]`volumeStorageSystemUri - URI to HPE OneView managed Storage System
    `[System.Collections.ArrayList` ]storagePaths            - Array specifying the Profile FC Connection ID associated
                                            with the path to the attached volume, and if the path is
                                            enabled or disabled.
        @(
            `[System.Int]`connectionId      - FC Connection ID.  If using New-OVServerProfileAttachVolume helper
                                            Cmdlet, New-OVServerProfile will automatically determine the FC
                                            connection ID.
            `[System.Boolean]`isEnabled     - Enable or disable the path
        )
}

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EvenPathDisabled &lt;SwitchParameter&gt;

Enable to disable even paths in the attached storage volume(s).

| Aliases | Even |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OddPathDisabled &lt;SwitchParameter&gt;

Enable to disable odd paths in the attached storage volume(s).

| Aliases | Odd |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Affinity &lt;String&gt;

In a server profile, the Affinity control sets the remove-and-replace behavior for blade servers. If you apply a server profile to a blade server and the server is subsequently removed from the device bay, the Affinity setting controls whether the server profile is reapplied when you insert a server blade into the empty bay. Server profiles for rack servers do not have affinity.

Accepted values are either "Bay" or "BayAndServer".  Default is "Bay".

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Bay |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MacAssignment &lt;String&gt;

Optional setting for MAC address assignment.  May be Virtual or Physical.  Use Virtual if you need to specify a UserDefined value when using the New-OVServerProfileConnection helper Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Virtual |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WwnAssignment &lt;String&gt;

Optional setting for WWN assignment.  May be Virtual or Physical.  Use Virtual if you need to specify a UserDefined value when using the New-OVServerProfileConnection helper Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Virtual |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnAssignment &lt;String&gt;

Optional setting for serial number and UUID assignment.  May be Virtual, Physical or UserDefined.

Default: Virtual serial number and UUID assignment

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Virtual |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -HideUnusedFlexNics &lt;Boolean&gt;

This setting provides the ability to hide unused FlexNICs from the operating system.

If Hide Unused FlexNICs is set to $True (default/enabled), FlexNICs that do not map to any server profile connections are not presented to the operating system. For example, if you have a full complement of eight FlexNICs defined in your server profile but map only four, your operating system will see only the four mapped FlexNICs instead of eight.

If Hide Unused FlexNICs is set to $False (disabled), eight FlexNICs are enumerated in the operating system as network interfaces for each Flex-10 or FlexFabric adapter.

Configuring Fibre Channel connections on a FlexFabric adapter can enumerate two storage interfaces, reducing the number of network interfaces to six.

FlexNICs are hidden in pairs, starting with the fourth pair. For example, if the fourth FlexNIC on either physical port corresponds to a profile connection, all eight physical functions are enumerated. If a profile connection corresponds to the second FlexNIC on either physical port, but no connection corresponds to the third or fourth FlexNIC on either physical port, only the first and second physical functions are enumerated in the operating system.

By default, Hide Unused FlexNICs is enabled. This setting can be changed only when the server is powered off.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | True |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | false |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

The name of the appliance or list of appliances to execute the command against.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PassThru &lt;SwitchParameter&gt;

Use this parameter to return the modified Server Profile Template object.  In order to save the changes, please use the Save-OVServerProfileTemplate Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IscsiInitiatorNameAssignmet &lt;String&gt;

Specify if the iSCSI initiator name should be automatically managed and assigned, or a custom value  should be used.  Allowed values: * Virtual * UserDefined 
Default Value: Virtual

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Virtual |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BiosConsistencyChecking &lt;String&gt;

Use to override the consistency checking for the policy.  Allowed values:

* Exact
* None

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BootModeConsistencyChecking &lt;String&gt;

Use to override the consistency checking for the policy.  Allowed values:

* Exact
* None

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ConnectionsConsistencyChecking &lt;String&gt;

Use to override the consistency checking for the policy.  Allowed values:

* Exact
* Minimum
* None

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FirmwareConsistencyChecking &lt;String&gt;

Use to override the consistency checking for the policy.  Allowed values:

* Exact
* None

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LocalStorageConsistencyChecking &lt;String&gt;

Use to override the consistency checking for the policy.  Allowed values:

* Exact
* None

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OSDeploymentConsistencyChecking &lt;String&gt;

Use to override the consistency checking for the policy.  Allowed values:

* Exact
* None

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SANStorageConsistencyChecking &lt;String&gt;

Use to override the consistency checking for the policy.  Allowed values:

* Exact
* Minimum
* None

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BootOrderConsistencyChecking &lt;String&gt;

Use to override the consistency checking for the policy.  Allowed values:

* Exact
* None

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IloSettings &lt;PSObject&gt;

Provide an iLO settings object from New-OVServerProfileIloPolicy Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -IloSettingsConsistencyChecking &lt;String&gt;

Use to override the consistency checking for the policy.  Allowed values:

* Exact
* None

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ManageIloSettings &lt;Bool&gt;

Use to indicate iLO settings will be managed from the server profile.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FirmwareInstallationPolicy &lt;string&gt;

The Installation policy option is only available for Gen10 and later servers. The option is available for Gen10 or later server hardware types only. Installation policy enables you to choose if a component needs to be updated or downgraded when its version does not match the baseline. An alert is generated when the installed version on one or more components is inconsistent with the selected installation policy.

You can choose one of the following two policy options:

* LowerThanBaseline (Default) - Updates only the components that have a version lower than the firmware baseline version.
* NotEqualToBaseline - Updates or downgrades components whose installed version does not match the firmware baseline version. The components with a version lower than the firmware baseline version are upgraded, and the components with a version higher than the firmware baseline version are downgraded to match the baseline.

???+ info
    For Gen9 and earlier servers, if the selected firmware baseline is older than the firmware currently installed, select the Force installation option to downgrade the firmware version.


| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -BaselinePatchLevel &lt;version&gt;

The patch or supplement to the Update Bundle.  Within the Update Bundle contains a property called Supplements ([Array] of `[System.Version]`).

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

=== "System.String"
    The full path to the Server Profile JSON export file
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    If successful returns a task resource which may be polled to follow the progress of the profile creation.  Otherwise, a request validation error will be returned
    

=== "HPEOneView.ServerProfileTemplate [System.Management.Automation.PSCustomObject]"
    When using the `-PassThru` parameter, the created server profile template object is returned.
    

## Related Links

* [Convert-OVServerProfileTemplate](convert-ovserverprofiletemplate.md)
* [ConvertTo-OVServerProfileTemplate](convertto-ovserverprofiletemplate.md)
* [Get-OVServerProfileTemplate](get-ovserverprofiletemplate.md)
* [Remove-OVServerProfileTemplate](remove-ovserverprofiletemplate.md)
* [Save-OVServerProfileTemplate](save-ovserverprofiletemplate.md)
* [Set-OVServerProfileTemplate](set-ovserverprofiletemplate.md)
