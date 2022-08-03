---
description: Set Storage Volume Template Global Policy
---

# Set-OVStorageVolumeTemplatePolicy

## Syntax

```powershell
Set-OVStorageVolumeTemplatePolicy
    [-Enable]
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

```powershell
Set-OVStorageVolumeTemplatePolicy
    [-Disable]
    [-ApplianceConnection] <Array>
    [<CommonParameters>]
```

## Description

By default, Storage Volumes can be created without reference to a Storage Volume Template.  This Cmdlet will allow the administrator to change the global policy setting.  Use with caution, as this will prevent copying Server Profiles that contain attached Storage Volumes.

## Examples

###  Example 1 

```powershell
Get-OVStorageVolumeTemplatePolicy
Appliance               Name                          Value
---------               ----                          -----
MyAppliance.domain.com  StorageVolumeTemplateRequired true

Set-OVStorageVolumeTemplatePolicy -disable -ApplianceConnection $ConnectedSessions

Appliance               Name                          Value
---------               ----                          -----
MyAppliance.domain.com  StorageVolumeTemplateRequired false
MyAppliance2.domain.com StorageVolumeTemplateRequired false
```

Get the Storage Volume Template Global Policy setting, then disable it for all connected appliances.

## Parameters

### -Enable &lt;SwitchParameter&gt;

Switch to enable the policy

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Disable &lt;SwitchParameter&gt;

Switch to disable the policy

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.Boolean**_

Returned boolean value after changing policy

## Related Links

* [Get-OVStorageVolumeTemplatePolicy](get-ovstoragevolumetemplatepolicy.md)
