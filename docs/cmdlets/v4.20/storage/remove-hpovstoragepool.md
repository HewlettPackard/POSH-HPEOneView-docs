---
description: Delete storage pool resource(s).
---

# Remove-HPOVStoragePool

## Syntax

```text
Remove-HPOVStoragePool
    [-InputObject] <Object>
    [-Force]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```text
Remove-HPOVStoragePool
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

```text
$task = Remove-HPOVStoragePool -storagePool "yellow" | Wait-HPOVTaskComplete $task

```

Remove the storage pool specifed by name.  Wait for remove to complete.

###  Example 2 

```text
$pool = Get-HPOVStoragePool -name "yellow"
Remove-HPOVStoragePool -storagePool $pool -confirm:$false
```

Remove the network specifed by $pool, and do not prompt for confirmation.

###  Example 3 

```text
Get-HPOVStoragePool | Remove-HPOVStoragePool

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

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

_**HPOneView.Storage.System.Pool [System.Management.Automation.PSCustomObject]**_

Single Storage Pool resource, typically retrieved with [`Get-HPOVStoragePool`](get-hpovstoragepool.md)

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Removal task

## Related Links

* [Add-HPOVStoragePool](add-hpovstoragepool.md)
* [Get-HPOVStoragePool](get-hpovstoragepool.md)
* [Set-HPOVStoragePool](set-hpovstoragepool.md)
* [Update-HPOVStoragePool](update-hpovstoragepool.md)
