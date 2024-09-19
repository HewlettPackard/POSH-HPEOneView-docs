---
description: Delete storage volume template(s) from appliance configuration.
---

# Remove-OVStorageVolumeTemplate

## Syntax

```powershell
Remove-OVStorageVolumeTemplate
    [-InputObject] <Object>
    [-ApplianceConnection <Object>]
    [-Force]
    [<CommonParameters>]
```

## Description

Delete one or more storage volume templates from the appliance configuration.

## Examples

###  Example 1 

```powershell
$task = Remove-OVStorageVolumeTemplate -storagePool "yellow" | Wait-OVTaskComplete
```

Remove the storage volume template specifed by name.  Wait for remove to complete.

###  Example 2 

```powershell
$svt = Get-OVStorageVolumeTemplate -name "yellow"
Remove-OVStorageVolumeTemplate -name $svt -confirm:$false
```

Remove the network specifed by $svt, and do not prompt for confirmation.

###  Example 3 

```powershell
Get-OVStoragVolumeTemplate | Remove-OVStorageVolumeTemplate
```

Search for all storage volume templates and remove them from appliance.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-name, `-uri`, `-TemplateName`., `-Template`]
The Storage Volume Template object(s), name(s) or URI(s) to be deleted.

| Aliases | uri, name, templateName, Template |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions}

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Specify to remove the resource despite any problems with network connectivity or errors on the resource itself.

When the request is accepted by the appliance, it does not return an Async Task Resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**System.Management.Automation.PSCustomObject**_

Storage Volume Template resource object

_**System.Collections.ArrayList**_

Multiple Storage Volume Template resources

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Removal async task

_**System.Management.Automation.PSCustomObject**_

When using the `-Force` parameter, a PSCustomObject is returned indicating successful removal of the resource

## Related Links

* [Get-OVStorageVolumeTemplate](get-ovstoragevolumetemplate.md)
* [Get-OVStorageVolumeTemplatePolicy](get-ovstoragevolumetemplatepolicy.md)
* [New-OVStorageVolumeTemplate](new-ovstoragevolumetemplate.md)
* [Set-OVStorageVolumeTemplate](set-ovstoragevolumetemplate.md)
* [Set-OVStorageVolumeTemplatePolicy](set-ovstoragevolumetemplatepolicy.md)
