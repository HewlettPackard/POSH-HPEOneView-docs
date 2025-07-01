---
description: Get the HPE Synergy D3940 drive enclosure inventory.
---

# Get-OVDriveEnclosureInventory

## Syntax

```powershell
Get-OVDriveEnclosureInventory
    [-Name <String>]
    [-DriveEnclosure <Object>]
    [-SasLogicalInterconnect <Object>]
    [-Count <Int>]
    [-Available]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
Get-OVDriveEnclosureInventory
    [-Name <String>]
    [-DriveEnclosure <Object>]
    [-SasLogicalInterconnect <Object>]
    [-Assigned]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Drive enclosures are hardware devices that contain a set of drive bays. A drive enclosure is installed in a device bay of an enclosure, and provides composable storage to servers. Composable storage is a group of physical drives that you can dynamically define as virtual drives. These virtual drives are called logical JBODs. A JBOD (just a bunch of disks) is a group of physical disk drives that are assigned to server hardware. Unlike a RAID configuration, a JBOD is a not redundant configuration. You can specify a RAID configuration when you create a logical JBOD.

Using this Cmdlet will get the drive inventory from the connected appliance.  Inventory can be filtered on SAS logical interconnects and SAS drive enclosures.

???+ info
    Minimum required privileges: Infrastructure administrator, server administrator, server profile architect, server profile administrator

## Examples

###  Example 1 

```powershell
Get-OVDriveEnclosureInventory
```

Get all drive enclosure inventory.

###  Example 2 

```powershell
Get-OVDriveEnclosureInventory -Assigned
```

Get inventory of drives that are assigned.

###  Example 3 

```powershell
$DriveEnclosure = Get-OVDriveEnclosure -Name "Enclosure1, bay 1"
Get-OVDriveEnclosureInventory -DriveEnclosure $DriveEnclosure
```

Get the drive enventory from the specified drive enclosure.

###  Example 4 

```powershell
$SasLogicalInterconnect = Get-SasLogicalInterconnect -Name "LE1-SAS Synergy LIG-1"
Get-OVDriveEnclosureInventory -SasLogicalInterconnect $SasLogicalInterconnect -Available
```

Get the drive enventory from the specified SAS logical interconnect.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Assigned &lt;SwitchParameter&gt;

Return only drives that are assigned to a Logical JBOD.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Available &lt;SwitchParameter&gt;

Return drives that are available for assignment.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Count &lt;Int&gt;

Return a specific number of drives.  Will return in order from system inventory.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DriveEnclosure &lt;Object&gt;

Provide a drive enclosure from Get-OVDriveEnclosure to filter for associated drives.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Specify a drive name, or wild card value.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SasLogicalInterconnect &lt;Object&gt;

Provide a SAS Logical Interconnect from Get-OVSasLogicalInterconnect to filter for associated drives.

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

=== "HPEOneView.Storage.DriveEnclosure [System.Management.Automation.PSCustomObject]"
    Drive enclosure resource from Get-OVDriveEnclosure Cmdlet.
    

## Return Values

=== "HPEOneView.Storage.Drive"
    The drive class object from the API.
    

## Related Links

* [Get-OVDriveEnclosure](get-ovdriveenclosure.md)
* [Get-OVLogicalJBOD](get-ovlogicaljbod.md)
* [New-OVLogicalJBOD](new-ovlogicaljbod.md)
* [Remove-OVLogicalJBOD](remove-ovlogicaljbod.md)
* [Set-OVLogicalJBOD](set-ovlogicaljbod.md)
