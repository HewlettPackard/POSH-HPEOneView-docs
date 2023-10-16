---
description: Retrieve Storage Volume Template Global Policy.
---

# Get-OVStorageVolumeTemplatePolicy

## Syntax

```powershell
Get-OVStorageVolumeTemplatePolicy
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

By default, Storage Volumes can be created without reference to a Storage Volume Template.  This Cmdlet will display the global policy setting.  Use Set-OVStorageVolumeTemplatePolicy to modify the global policy setting.

## Examples

###  Example 1 

```powershell
Get-OVStorageVolumeTemplatePolicy
Appliance               Name                          Value
---------               ----                          -----
MyAppliance.domain.com  StorageVolumeTemplateRequired true
MyAppliance2.domain.com StorageVolumeTemplateRequired false
```

Get the Storage Volume Template Global Policy setting from all connected appliances.

## Parameters

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPEOneView.Appliance.GlobalSetting**_

Object resource with the global setting value

## Related Links

* [Set-OVStorageVolumeTemplatePolicy](set-ovstoragevolumetemplatepolicy.md)
