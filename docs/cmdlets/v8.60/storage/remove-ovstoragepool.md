---
description: Delete storage pool resource(s).
---

# Remove-OVStoragePool

## Syntax

```powershell
Remove-OVStoragePool
    [-InputObject] <Object>
    [-Force]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```powershell
Remove-OVStoragePool
    [-InputObject] <Object>
    [-StorageSystem] <Object>
    [-Force]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Delete one or more storage pools from the appliance configuration.

## Examples

###  Example 1 

```powershell
$task = Remove-OVStoragePool -storagePool "yellow" | Wait-OVTaskComplete $task
```

Remove the storage pool specifed by name.  Wait for remove to complete.

###  Example 2 

```powershell
$pool = Get-OVStoragePool -name "yellow"
Remove-OVStoragePool -storagePool $pool -confirm:$false
```

Remove the network specifed by $pool, and do not prompt for confirmation.

###  Example 3 

```powershell
Get-OVStoragePool | Remove-OVStoragePool
```

Search for all storage pools and remove them from appliance.

## Parameters

### -InputObject &lt;Object&gt;

The network object(s) or name(s) to be removed on the appliance.

| Aliases | uri, name, StoragePool |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -StorageSystem &lt;Object&gt;

Provide the Storage System Name, URI or Object when the StoragePool name is not unique.

| Aliases | storage |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

If specified, the Storage Pool resource will forceablly removed despite any problems with network connectivity or errors with the resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
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

_**HPEOneView.Storage.System.Pool [System.Management.Automation.PSCustomObject]**_

Single Storage Pool resource, typically retrieved with Get-OVStoragePool

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Removal task

## Related Links

* [Add-OVStoragePool](add-ovstoragepool.md)
* [Get-OVStoragePool](get-ovstoragepool.md)
* [Set-OVStoragePool](set-ovstoragepool.md)
* [Update-OVStoragePool](update-ovstoragepool.md)
