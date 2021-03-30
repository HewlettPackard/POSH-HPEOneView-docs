---
description: Retreive Storage Volume Template Global Policy.
---

# Get-HPOVStorageVolumeTemplatePolicy

## Syntax

```text
Get-HPOVStorageVolumeTemplatePolicy
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

By default, Storage Volumes can be created without reference to a Storage Volume Template.  This cmdlet will display the global policy setting.  Use Set-HPOVStorageVolumeTemplatePolicy to modify the global policy setting.

## Examples

###  Example 1 

```text
Get-HPOVStorageVolumeTemplatePolicy
Appliance               Name                          Value
---------               ----                          -----
MyAppliance.domain.com  StorageVolumeTemplateRequired true
MyAppliance2.domain.com StorageVolumeTemplateRequired false
```

Get the Storage Volume Template Global Policy setting from all connected appliances.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.GlobalSetting [System.Management.Automation.PSCustomObject]**_

Object resource with the global setting value

## Related Links

* [Set-HPOVStorageVolumeTemplatePolicy](set-hpovstoragevolumetemplatepolicy.md)
