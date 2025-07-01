---
description: List Synergy DAS Enclosures.
---

# Get-OVDriveEnclosure

## Syntax

```powershell
Get-OVDriveEnclosure
    [-Name <String>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Drive enclosures are hardware devices that contain a set of drive bays. A drive enclosure is installed in a device bay of an enclosure, and provides composable storage to servers. Composable storage is a group of physical drives that you can dynamically define as virtual drives. These virtual drives are called logical JBODs. A JBOD (just a bunch of disks) is a group of physical disk drives that are assigned to server hardware. Unlike a RAID configuration, a JBOD is a not redundant configuration. You can specify a RAID configuration when you create a logical JBOD.

Logical JBODs are created and assigned to server hardware from server profiles or server profile templates.

This Cmdlet will help display the available  Synergy DAS Enclosures, and their associated inventory data.

???+ info
    Minimum required privileges: Read only

## Examples

###  Example 1 

```powershell
Get-OVDriveEnclosure
Appliance Name              State Status    Serial Number Drive Bays I/O Adapters
--------- ----              ----- ------    ------------- ---------- ------------
appliance 0000A66101, bay 1 On    Monitored SN123100      40/40      2
appliance 0000A66102, bay 1 On    Monitored SN123101      40/40      2
appliance 0000A66103, bay 1 On    Monitored SN123102      40/40      2
```

Get all available Synergy Drive Enclosures.

## Parameters

### -Name &lt;String&gt;

The name of the Synergy DAS enclosure.  Omit to return all devices.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

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

=== "HPEOneView.Storage.DriveEnclosure [System.Management.Automation.PSCustomObject]"
    DAS enclosure resource object.
    

## Related Links

* [Get-OVAvailableDriveType](get-ovavailabledrivetype.md)
* [Get-OVDriveEnclosureInventory](get-ovdriveenclosureinventory.md)
* [Get-OVEnclosure](../servers/get-ovenclosure.md)
* [Get-OVLogicalJBOD](get-ovlogicaljbod.md)
