---
description: Create new Storage Volume Snapshot resource.
---

# New-OVStorageVolumeSnapshot

## Syntax

```powershell
New-OVStorageVolumeSnapshot
    [-InputObject] <Object>
    [-Name] <String>
    [-Description] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will help create a Storage Volume Snapshot from an existing Storage Volume resource.  If a Snapshot Storage Pool has not been configured for the Storage Volume, the Snapshot cannot be created.

## Examples

###  Example 1 

```powershell
Get-OVStorageVolume "Volume 1" -ApplianceConnection hpov.domain.com | New-OVStorageVolumeSnapshot
```

Create a new storage volume snapshot using the default values.

## Parameters

### -InputObject &lt;Object&gt;

Specify the Storage Volume object to create a snapshot for.

| Aliases | Volume |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Name of Snapshot.  The parameter defaults to "{volumeName}_{timestamp}" variables provided by the appliance.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | {volumeName}_{timestamp} |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Description &lt;String&gt;

The description for the Storage Volume Snapshot.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
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

=== "HPEOneView.Storage.Volume [System.Management.Automation.PSCustomObject]"
    Storage volume resource object
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task to create storage volume snapshot
    

=== "System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>"
    Multiple async tasks
    

## Related Links

* [Get-OVStorageVolumeSnapShot](get-ovstoragevolumesnapshot.md)
* [Remove-OVStorageVolumeSnapshot](remove-ovstoragevolumesnapshot.md)
