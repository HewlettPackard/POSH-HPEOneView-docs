---
description: Refresh a storage pool.
---

# Update-HPOVStoragePool

## Syntax

```text
Update-HPOVStoragePool
    [-InputObject] <HPOneView.Storage.StoragePool[]>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to refresh a storage pool when it's associated policies have been updated within the storage system external management console. Can be used to collect new Nimble Volume Sets.

## Examples

### Example 1

```text
Get-HPOVStoragePool -Name default | Update-HPOVStoragePool
```

Update the Nimble storage pool 'default' to refresh available policies.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \(${Global:ConnectedSessions} | ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### -InputObject &lt;HPOneView.Storage.StoragePool\[\]&gt;

The storage pool object to update or refresh.

| Aliases | Name, StoragePool |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Storage.StoragePool**_

One or more storage pool resources from [`Get-HPOVStoragePool`](get-hpovstoragepool.md).

## Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Asynchronous task resource to monitor.

## Related Links

* [Add-HPOVStoragePool](add-hpovstoragepool.md)
* [Get-HPOVStoragePool](get-hpovstoragepool.md)
* [Remove-HPOVStoragePool](remove-hpovstoragepool.md)
* [Set-HPOVStoragePool](set-hpovstoragepool.md)

