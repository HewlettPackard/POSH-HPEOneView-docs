---
description: Delete storage volume template(s) from appliance configuration.
---

# Remove-HPOVStorageVolumeTemplate

## Syntax

```text
Remove-HPOVStorageVolumeTemplate
    [-InputObject] <Object>
    [-ApplianceConnection] <Array>
    [-Force]
    [<CommonParameters>]
```

## Description

Delete one or more storage volume templates from the appliance configuration.

## Examples

### Example 1

```text
$task = Remove-HPOVStorageVolumeTemplate -storagePool "yellow" | Wait-HPOVTaskComplete
```

Remove the storage volume template specifed by name. Wait for remove to complete.

### Example 2

```text
$svt = Get-HPOVStorageVolumeTemplate -name "yellow"
Remove-HPOVStorageVolumeTemplate -name $svt -confirm:$false
```

Remove the network specifed by $svt, and do not prompt for confirmation.

### Example 3

```text
Get-HPOVStoragVolumeTemplate | Remove-HPOVStorageVolumeTemplate
```

Search for all storage volume templates and remove them from appliance.

## Parameters

### -InputObject &lt;Object&gt;

Aliases \[-name, `-uri`, `-TemplateName`., `-Template`\] The Storage Volume Template object\(s\), name\(s\) or URI\(s\) to be deleted.

| Aliases | uri, name, templateName, Template |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Aliases \[-Appliance\]

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions}

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### -Force &lt;SwitchParameter&gt;

Specify to remove the resource despite any problems with network connectivity or errors on the resource itself.

When the request is accepted by the appliance, it does not return an Async Task Resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `False` |
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

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Removal async task

_**System.Management.Automation.PSCustomObject**_

When using the `-Force` parameter, a PSCustomObject is returned indicating successful removal of the resource

## Related Links

* [Get-HPOVStorageVolumeTemplate](get-hpovstoragevolumetemplate.md)
* [Get-HPOVStorageVolumeTemplatePolicy](get-hpovstoragevolumetemplatepolicy.md)
* [New-HPOVStorageVolumeTemplate](new-hpovstoragevolumetemplate.md)
* [Set-HPOVStorageVolumeTemplate](set-hpovstoragevolumetemplate.md)
* [Set-HPOVStorageVolumeTemplatePolicy](set-hpovstoragevolumetemplatepolicy.md)

