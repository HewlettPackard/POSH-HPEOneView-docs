---
description: Return a collection of available D3940 disks.
---

# Get-OVAvailableDriveType

## Syntax

```powershell
Get-OVAvailableDriveType
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This helper Cmdlet will return a collection of available disk drives from a specified SAS Logical Interconnect or Drive Enclosure. The returned value will contain available quantity of drives based on interface, media type and capacity, organized by SAS Logical Interconnect.  The object can then be used to define the drive selection criteria for New-OVServerProfileLogicalDisk using the `-AvailableDriveType` parameter.

???+ info
    Minimum required privileges: Read only

## Examples

###  Example 1 

```powershell
Get-OVSasLogicalInterconnect | Get-OVAvailableDriveType
```

Return all available disk drives from all SAS Logical Interconnects.

###  Example 2 

```powershell
Get-OVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-OVAvailableDriveType
```

Return all available disk drives from the specific SAS Logical Interconnect.

###  Example 3 

```powershell
Get-OVDriveEnclosure -Name "EnclosureName, Bay 1" -ErrorAction Stop | Get-OVAvailableDriveType
```

Return all available disk drives from the specific D3940 Drive Enclosure.

## Parameters

### -InputObject &lt;Object&gt;

A SAS Logical Interconnect or D3940 Drive Enclosure resource.  If providing a SAS Logical Interconnect, the Cmdlet will automatically locate the available drive enclosures.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

The name of the appliance or list of appliances to execute the command against.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Storage.SASLogicalInterconnect"
    A SAS Logical Interconnect resource from Get-OVSasLogicalInterconnect Cmdlet.
    

=== "HPEOneView.Storage.DiskEnclosure"
    A D3940 Drive Enclosure from Get-OVSasLogicalInterconnect Cmdlet.
    

## Return Values

=== "HPEOneView.Storage.AvailableDriveType"
    A disk type object that defines available quantity of drives based on interface, media type and capacity, organized by SAS Logical Interconnect.
    

## Related Links

