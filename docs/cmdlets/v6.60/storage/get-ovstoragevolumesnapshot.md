---
description: Retrieve Storage Volume Snapshot resource(s).
---

# Get-OVStorageVolumeSnapShot

## Syntax

```powershell
Get-OVStorageVolumeSnapShot
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will display all of the avialable snapshots for a given Storage Volume or multiple Storage Volumes.

## Examples

###  Example 1 

```powershell
Get-OVStorageVolume | Get-OVStorageVolumeSnapShot
Appliance       Name                                       Parent Volume               State             Capacity
---------       ----                                       -------------               -----             --------
hpov.domain.com Vol1_20160211220746                        Vol1                        Configured (None) 10.00 GB
hpov.domain.com Vol1_20160224235647                        Vol1                        Configured (None) 10.00 GB
hpov.domain.com Vol1_20160224235716                        Vol1                        Configured (None) 10.00 GB
hpov.domain.com Shared 1_20160224232717                    Shared 1                    Configured (None) 1,000.00 GB
hpov.domain.com Shared 1_20160224235621                    Shared 1                    Configured (None) 1,000.00 GB
hpov.domain.com Shared 1 Snapshot Converted_20160225214317 Shared 1 Snapshot Converted Configured (None) 1,000.00 GB
```

Return all storage volume snapshot resource objects from all available storage volume resources.

###  Example 2 

```powershell
Get-OVStorageVolume "Volume 1" | Get-OVStorageVolumeSnapShot
```

Get available storage volume snapshots from a specific Storage Volume.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-Volume]

Provide the Storage Volume resource object.

| Aliases | Name, Volume |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

Storage Volume resource

## Return Values

_**System.Collections.ArrayList <HPEOneView.Storage.VolumeSnapshot>**_

Multiple storage volume snapshot resources

_**HPEOneView.Storage.VolumeSnapshot [System.Management.Automation.PSCustomObject]**_

Formatted table view of storage volume snapshot resources

## Related Links

* [New-OVStorageVolumeSnapshot](new-ovstoragevolumesnapshot.md)
* [Remove-OVStorageVolumeSnapshot](remove-ovstoragevolumesnapshot.md)
