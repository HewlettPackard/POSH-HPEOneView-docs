---
description: Retrieve Storage Volume resource(s).
---

# Get-OVStorageVolume

## Syntax

```powershell
Get-OVStorageVolume
    [-Name <String>]
    [-StorageVolumeTemplate <Object>]
    [-Available]
    [-Label <String>]
    [-Scope <Object>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```powershell
Get-OVStorageVolume
    [-InputObject <Object>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

This Cmdlet will display all or a specific storage volume(s) created on the HPE OneView appliance.  A specific storage volume can be searched for by using the Name.  Use the List switch to display a report of the requested volume(s), including any assignments to Server Profiles.

## Examples

###  Example 1 

```powershell
Get-OVStorageVolume
```

Return all storage volume resource objects.

## Parameters

### -InputObject &lt;Object&gt;

Provide a Server Profile object and all associated Storage Volumes will be returned.

| Aliases | ServerProfile, ServerProfileTemplate |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

 Specify the name of the Storage Volume to display.

| Aliases | VolumeName |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Available &lt;SwitchParameter&gt;

Use to display Storage Volumes that are available for attachment.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

* AllResources
* AllResourcesInScope
* `[HPEOneView.Appliance.ScopeCollection]`
* `[HPEOneView.Appliance.ConnectionPermission]`

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StorageVolumeTemplate &lt;Object&gt;

Return a list of provisioned Storage Volumes by their associated Storage Volume Template.

| Aliases | SVT |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.Collections.ArrayList <HPEOneView.Storage.Volume>"
    Multiple storage volume resources
    

=== "HPEOneView.Storage.Volume [System.Management.Automation.PSCustomObject]"
    Formatted table view of storage volume resources
    

## Related Links

* [Add-OVStorageVolume](add-ovstoragevolume.md)
* [ConvertTo-OVStorageVolume](convertto-ovstoragevolume.md)
* [Get-OVStorageVolumeSet](get-ovstoragevolumeset.md)
* [Get-OVStorageVolumeSnapShot](get-ovstoragevolumesnapshot.md)
* [Get-OVStorageVolumeTemplate](get-ovstoragevolumetemplate.md)
* [Get-OVStorageVolumeTemplatePolicy](get-ovstoragevolumetemplatepolicy.md)
* [New-OVStorageVolume](new-ovstoragevolume.md)
* [New-OVStorageVolumeSnapshot](new-ovstoragevolumesnapshot.md)
* [New-OVStorageVolumeTemplate](new-ovstoragevolumetemplate.md)
* [Remove-OVStorageVolume](remove-ovstoragevolume.md)
* [Remove-OVStorageVolumeSnapshot](remove-ovstoragevolumesnapshot.md)
* [Remove-OVStorageVolumeTemplate](remove-ovstoragevolumetemplate.md)
* [Set-OVStorageVolume](set-ovstoragevolume.md)
* [Set-OVStorageVolumeTemplate](set-ovstoragevolumetemplate.md)
* [Set-OVStorageVolumeTemplatePolicy](set-ovstoragevolumetemplatepolicy.md)
