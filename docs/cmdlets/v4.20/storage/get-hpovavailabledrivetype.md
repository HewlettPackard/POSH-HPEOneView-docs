---
description: 
---

# Get-HPOVAvailableDriveType

## Syntax

```text
Get-HPOVAvailableDriveType
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

This helper CMDLET will return a collection of available disk drives from a specified SAS Logical Interconnect or Drive Enclosure.  The object can then be used to define the drive selection criteria for `New-HPOVServerProfileLogicalDisk` using the -AvailableDriveType parameter.
## Examples

###  Example 1 

```text
Get-HPOVSasLogicalInterconnect | Get-HPOVAvailableDriveType

```

Return all available disk drives from all SAS Logical Interconnects.

###  Example 2 

```text
Get-HPOVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-HPOVAvailableDriveType

```

Return all available disk drives from the specific SAS Logical Interconnect.

###  Example 3 

```text
Get-HPOVDriveEnclosure -Name "EnclosureName, Bay 1" -ErrorAction Stop | Get-HPOVAvailableDriveType

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

Aliases [-appliance]
The name of the appliance or list of appliances to execute the command against.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Storage.SASLogicalInterconnect**_

A SAS Logical Interconnect resource from [`Get-HPOVSasLogicalInterconnect`](../networking/get-hpovsaslogicalinterconnect.md) Cmdlet.

_**HPOneView.Storage.DiskEnclosure**_

A D3940 Drive Enclosure from [`Get-HPOVSasLogicalInterconnect`](../networking/get-hpovsaslogicalinterconnect.md) Cmdlet.

## Return Values

_**HPOneView.Storage.AvailableDriveType**_

A disk type object that defines available quantity of drives based on interface, media type and capacity, organized by SAS Logical Interconnect.

## Related Links

