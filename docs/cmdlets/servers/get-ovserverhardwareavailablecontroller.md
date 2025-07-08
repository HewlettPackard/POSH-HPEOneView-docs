---
description: Get a collection of inventoried storage controllers.
---

# Get-OVServerHardwareAvailableController

## Syntax

```powershell
Get-OVServerHardwareAvailableController
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Storage Controllers can be managed by HPE OneView for various platforms taht are defined within a server profile template or server profile resource.  Administrators can choose to import an existing configuration (to reduce data loss) if local storage controllers already have an existing policy, or to deploy a new policy.  Configuring logical drives, HPE OneView can automatically assign drives based on defined characteristics that must match available drives within the server.  Drives that are already allocated will result in a server profile apply error.  Administrators can also specify specific drives to assign for Server Profiles and Gen10 or newer only.

To identify installed drives, use this help Cmdlet, and provide a server resource with Get-OVServer Cmdlet.  Available controller objects are returned, with a collection of installed drives.  Additionally, supported "default" controller families will be returned, which will provide supported modes, drive technologies, and controller cache policies.

If you configure new logical drives in your server profile or import the existing logical drives from the server hardware, HPE OneView stores a unique identifier for each logical drive in the server profile configuration when the server profile is applied.

On subsequent server profile apply operations, HPE OneView checks for the existence of the identifier on the physical drives of the assigned server hardware. If the identifier is missing, the apply operation fails in order to ensure that if the server profile is re-assigned to new server hardware and that the physical drives are inserted correctly.

???+ info
     HPE OneView also uses the logical drive name (label) as a unique identifier.  Do not modify the label of logical drives that are managed by HPE OneView.  Do not create logical drives with non-unique labels.


RAID levels and number of physical drives

The HPE OneView Support Matrix provides information on the number of drives supported by specific server hardware.

* RAID 0 - Minimum of 1 drive, increments of 1.
* RAID 1 - Requires 2 drives.
* RAID 1 ADM - Requires 3 drives.
* RAID 10 - Requires 4 drives, increments of 2.
* RAID 10 ADM - Minimum of 6 drives, increments of 3.
* RAID 5 - Minimum of 3 drives, increments of 1.
* RAID 6 - Minimum of 4 drives, increments of 1.

After you create a logical drive and apply it to a server hardware, you can no longer modify those logical drives.

???+ info
     For controllers that support mixed mode (Gen10 servers), creating a logical drive uses the physical drives that are currently visible to the operating system. To preserve any data, back up the server drives before creating a logical drive.


Only for Gen11 servers that contain storage controllers, you can configure logical drives that are related to the following Logical Drive Configuration options, using server profiles:

* IOPerformanceMode
* ReadCachePolicy
* WriteCachePolicy


## Examples

###  Example 1 

```powershell
# Get the specific server.  Server must have been powered on at least 1 time to complete POST in order for server inventory to be updated
$Server = Get-OVServer -Name MyGen11Server

# Get the available controllers and drives from the specific server
$AvailableControllers = Get-OVServerHardwareAvailableController -InputObject $Server

# Review installed controllers
$AvailableControllers | ? { -not [String]::IsNullOrEmpty($_.DeviceSlot) }

DeviceSlot           : Slot 1
Family               : SmartRAID
Type                 : Standup
Model                : HPE SR308i-p Gen11
Firmware             : 5.29-256
ControllerMode       : HPEOneView.Servers.ControllerModes
RaidModes            : HPEOneView.Servers.RaidModes
DriveTechnologies    : HPEOneView.Servers.DriveTechnologies
ReadCachePolicy      : HPEOneView.Servers.ReadCachePolicy
WriteCachePolicy     : HPEOneView.Servers.WriteCachePolicy
Capabilities         : {RedfishConfig, RedfishDedicatedSpare}
Drives               : {1I:1:41 147 GB (NvmeSsd), 1I:1:42 147 GB (NvmeSsd), 1I:1:43 147 GB (NvmeSsd), 1I:1:44 147 GB (NvmeSsd)ΓÇª}
MaximumLogicalDrives : 256
MaximumDrives        : 256
ApplianceConnection  : MyAppliance
```

View Slot 1 controller from the specified volume server.

###  Example 2 

```powershell
# View the available storage controllers and supported controller type for the follow HPE Synergy Compute Node
Get-OVServer | Select -first 1 | Get-OVServerHardwareAvailableController

DeviceSlot           : Slot 0
Family               : SmartRAID
Type                 : Embedded
Model                : Embedded Controller
Firmware             :
ControllerMode       : HPEOneView.Servers.ControllerModes
RaidModes            : HPEOneView.Servers.RaidModes
DriveTechnologies    : HPEOneView.Servers.DriveTechnologies
ReadCachePolicy      : HPEOneView.Servers.ReadCachePolicy
WriteCachePolicy     : HPEOneView.Servers.WriteCachePolicy
Capabilities         : {RedfishConfig}
Drives               : {1I:1:1 147 GB (SasHdd), 1I:1:2 147 GB (SasHdd), 1I:1:3 147 GB (SasHdd), 1I:1:4 147 GB (SasHdd)ΓÇª}
MaximumLogicalDrives : 256
MaximumDrives        : 256
ApplianceConnection  : MyAppliance

DeviceSlot           : Mezz 1
Family               : SmartRAID
Type                 : SAS Adapter
Model                : HPE Smart Array P416ie-m SR Gen10 Controller
Firmware             : 2.65
ControllerMode       : HPEOneView.Servers.ControllerModes
RaidModes            : HPEOneView.Servers.RaidModes
DriveTechnologies    : HPEOneView.Servers.DriveTechnologies
ReadCachePolicy      : HPEOneView.Servers.ReadCachePolicy
WriteCachePolicy     : HPEOneView.Servers.WriteCachePolicy
Capabilities         : {RedfishConfig, RedfishConfig, RedfishConfig}
Drives               : {}
MaximumLogicalDrives : 256
MaximumDrives        : 256
ApplianceConnection  : MyAppliance

DeviceSlot           :
Family               : SmartRAID
Type                 : Default
Model                :
Firmware             :
ControllerMode       : HPEOneView.Servers.ControllerModes
RaidModes            : HPEOneView.Servers.RaidModes
DriveTechnologies    : HPEOneView.Servers.DriveTechnologies
ReadCachePolicy      : HPEOneView.Servers.ReadCachePolicy
WriteCachePolicy     : HPEOneView.Servers.WriteCachePolicy
Capabilities         : {RedfishConfig}
Drives               : {}
MaximumLogicalDrives : 256
MaximumDrives        : 256
ApplianceConnection  : MyAppliance
```

View available storage controllers, their location and any available drives for the specific HPE Synergy Compute Node.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

Server hardware resource from Get-OVServer.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.ServerHardware [System.Management.Automation.PSCustomObject]"
    Server hardware resource from Get-OVServer.
    

## Return Values

=== "HPEOneView.Servers.StorageController"
    Storage controller object that provide specific information about available controllers available from a server resources inventory.  Will include Controller Mode capabilities, and drives attached to each controller.  The "Default" Type can be used to identify what controller families and base capabilities supplied by either SmartRAID (SR) or MegaRAID (MR) controller models.
    
    If the server generation is Gen10 or newer and no controllers in specific DeviceSlot have been identified, ensure the server has powered on at least once and successfully completed POST.
    
    

## Related Links

* [New-OVServerProfileLogicalDisk](new-ovserverprofilelogicaldisk.md)
* [New-OVServerProfileLogicalDiskController](new-ovserverprofilelogicaldiskcontroller.md)
