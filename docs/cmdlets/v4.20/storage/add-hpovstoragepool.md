---
description: Add managed Storage Pools.
---

# Add-HPOVStoragePool

## Syntax

```text
Add-HPOVStoragePool
    [-StorageSystem] <Object>
    [-Pool] <Array>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Add new Storage Pools \(i.e. HP 3PAR Common Provisioning Group \[CPG\]\) for volumes to be provisioned from. The Storage System must be imported prior to adding Storage Pools.

## Examples

### Example 1

```text
Add-HPOVStoragePool -StorageSystem "HP3PAR_1" -PoolName "HP_CPG1"
```

Add the "HP\_CPG1" Stroage Pool that is mananaged in the HP3PAR\_1 Storage System. PoolName parameter data type will be converted from `[System.String]` to `[System.Collections.ArrayList]` .

### Example 2

```text
$myPools = "cpg1","cpg2"
Add-HPOVStoragePool "HP3PAR_1" $myPools
```

Add the "HP\_CPG1" Stroage Pool that is mananaged in the HP3PAR\_1 Storage System.

## Parameters

### -StorageSystem &lt;Object&gt;

Aliases: \[Hostname, Name\] The Storage System object, or Name.

| Aliases | Hostname, name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters? | False |

### -Pool &lt;Array&gt;

Aliases: \[PoolName, spName, CPG\] An array containing the name\(s\) of the specific storage pool resource\(s\) to be added during storage system import.

Example: $pools = "cpg1","cpg2"

| Aliases | PoolName, spName, cpg |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | True |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | true \(ByPropertyName\) |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Storage.System \[System.Management.Automation.PSCustomObject\]**_

Storage System resource object from [`Get-HPOVStorageSystem`](get-hpovstoragesystem.md).

## Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async task resource.

_**System.Collections.ArrayList**_ 

Multiple async task resources.

_**Async Task\(s\) to monitor storage pool import.**_

## Related Links

* [Get-HPOVStoragePool](get-hpovstoragepool.md)
* [Remove-HPOVStoragePool](remove-hpovstoragepool.md)
* [Set-HPOVStoragePool](set-hpovstoragepool.md)
* [Update-HPOVStoragePool](update-hpovstoragepool.md)

