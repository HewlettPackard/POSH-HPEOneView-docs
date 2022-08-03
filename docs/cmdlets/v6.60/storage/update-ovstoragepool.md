---
description: Refresh a storage pool.
---

# Update-OVStoragePool

## Syntax

```powershell
Update-OVStoragePool
    [-InputObject] <HPEOneView.Storage.StoragePool[]>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to refresh a storage pool when it's associated policies have been updated within the storage system external management console.  Can be used to collect new Nimble Volume Sets.

## Examples

###  Example 1 

```powershell
Get-OVStoragePool -Name default | Update-OVStoragePool
```

Update the Nimble storage pool 'default' to refresh available policies.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -InputObject &lt;HPEOneView.Storage.StoragePool[]&gt;

The storage pool object to update or refresh.

| Aliases | Name, StoragePool |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Storage.StoragePool**_

One or more storage pool resources from Get-OVStoragePool.

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Asynchronous task resource to monitor.

## Related Links

* [Add-OVStoragePool](add-ovstoragepool.md)
* [Get-OVStoragePool](get-ovstoragepool.md)
* [Remove-OVStoragePool](remove-ovstoragepool.md)
* [Set-OVStoragePool](set-ovstoragepool.md)
