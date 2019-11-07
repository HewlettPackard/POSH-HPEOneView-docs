---
description: Add managed Storage Pools.
---

# Add-HPOVStoragePool

## HPE OneView 5.00 Library

### Syntax

```text
Add-HPOVStoragePool [-StorageSystem] <Object> [-Pool] <String[]> [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

{% hint style="warning" %}
This Cmdlet has been replaced by Set-HPOVStoragePool. This Cmdlet only exists for backwards compatibility.
{% endhint %}

A storage pool is an aggregation of physical storage resources \(disks\) in a storage system. Storage systems contain information about the storage ports through which they can be accessed. You can provision logical storage spaces, known as volumes, from storage pools.

You can select one or more storage pools for management when adding a storage system to the appliance. Storage pools are created on a storage system using the management software for that system.

{% hint style="info" %}
For HPE Nimble storage, you can define folders within pools in the Nimble administrative user interface. You cannot create or delete storage pools from the appliance. Storage pools are automatically discovered during the storage system add or refresh. After you elect to manage storage pools, you can provision volumes on them.
{% endhint %}

All storage pools that are usable in HPE OneView are visible on the Storage Pools screen. Pools refreshed into HPE OneView are initially designated as discovered, and must be explicitly set to managed by editing the pool in HPE OneView using the Edit action on the storage pool screen.

A storage system must first be added to the appliance before a storage pool can be managed.

Storage pools are scoped resources. You can associate a scope to a pool to restrict who can use the pool.

{% hint style="info" %}
Privileges: Infrastructure administrator or Storage administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 2 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Pool &lt;String\[\]&gt; 

One or more storage pool name resource\(s\) to be added during storage system import.

Example: $pools = "cpg1","cpg2"

| Aliases | PoolName, spName, cpg |
| :--- | :--- |
| Required? | true |
| Position? | 1 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -StorageSystem &lt;Object&gt; 

The Storage System object from Get-HPOVStorageSystem.

| Aliases | Hostname, name |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Storage.System \[System.Management.Automation.PSCustomObject\]**_

Storage System resource object from Get-HPOVStorageSystem.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async task resource.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVStoragePool -StorageSystem "HP3PAR_1" -PoolName "HP_CPG1"
```

Add the "HP\_CPG1" Stroage Pool that is mananaged in the HP3PAR\_1 Storage System. PoolName parameter data type will be converted from System.String to System.Collections.ArrayList .

```text
 -------------------------- EXAMPLE 2 --------------------------
$myPools = "cpg1","cpg2"
Add-HPOVStoragePool "HP3PAR_1" $myPools

```

Add the "HP\_CPG1" Stroage Pool that is mananaged in the HP3PAR\_1 Storage System. 

### Related Links 

* [Get-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStoragePool) 
* [Remove-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStoragePool) 
* [Set-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStoragePool) 
* [Update-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStoragePool) 

 [Library Version 5.00]() [Library Version 4.20]() [Library Version 4.10]() 

## HPE OneView 4.20 Library

### Synatx

```text
Add-HPOVStoragePool [-StorageSystem] <Object> [-Pool] <String[]> [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

{% hint style="warning" %}
This Cmdlet has been replaced by Set-HPOVStoragePool. This Cmdlet only exists for backwards compatibility.
{% endhint %}

A storage pool is an aggregation of physical storage resources \(disks\) in a storage system. Storage systems contain information about the storage ports through which they can be accessed. You can provision logical storage spaces, known as volumes, from storage pools.

You can select one or more storage pools for management when adding a storage system to the appliance. Storage pools are created on a storage system using the management software for that system.

{% hint style="info" %}
For HPE Nimble storage, you can define folders within pools in the Nimble administrative user interface. You cannot create or delete storage pools from the appliance. Storage pools are automatically discovered during the storage system add or refresh. After you elect to manage storage pools, you can provision volumes on them.
{% endhint %}

All storage pools that are usable in HPE OneView are visible on the Storage Pools screen. Pools refreshed into HPE OneView are initially designated as discovered, and must be explicitly set to managed by editing the pool in HPE OneView using the Edit action on the storage pool screen.

A storage system must first be added to the appliance before a storage pool can be managed.

Storage pools are scoped resources. You can associate a scope to a pool to restrict who can use the pool.

{% hint style="info" %}
Privileges: Infrastructure administrator or Storage administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 2 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Pool &lt;String\[\]&gt; 

One or more storage pool name resource\(s\) to be added during storage system import.

Example: $pools = "cpg1","cpg2"

| Aliases | PoolName, spName, cpg |
| :--- | :--- |
| Required? | true |
| Position? | 1 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -StorageSystem &lt;Object&gt; 

The Storage System object from Get-HPOVStorageSystem.

| Aliases | Hostname, name |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Storage.System \[System.Management.Automation.PSCustomObject\]**_

Storage System resource object from Get-HPOVStorageSystem.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async task resource.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVStoragePool -StorageSystem "HP3PAR_1" -PoolName "HP_CPG1"
```

Add the "HP\_CPG1" Stroage Pool that is mananaged in the HP3PAR\_1 Storage System. PoolName parameter data type will be converted from System.String to System.Collections.ArrayList .

```text
 -------------------------- EXAMPLE 2 --------------------------
$myPools = "cpg1","cpg2"
Add-HPOVStoragePool "HP3PAR_1" $myPools

```

Add the "HP\_CPG1" Stroage Pool that is mananaged in the HP3PAR\_1 Storage System. 

### Related Links 

* [Get-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStoragePool) 
* [Remove-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStoragePool) 
* [Set-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStoragePool) 
* [Update-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStoragePool) 



## HPE OneView 4.10 Library

### Synatx

```text
Add-HPOVStoragePool [-StorageSystem] <Object> [-Pool] <String[]> [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

{% hint style="warning" %}
This Cmdlet has been replaced by Set-HPOVStoragePool. This Cmdlet only exists for backwards compatibility.
{% endhint %}

A storage pool is an aggregation of physical storage resources \(disks\) in a storage system. Storage systems contain information about the storage ports through which they can be accessed. You can provision logical storage spaces, known as volumes, from storage pools.

You can select one or more storage pools for management when adding a storage system to the appliance. Storage pools are created on a storage system using the management software for that system.

{% hint style="info" %}
For HPE Nimble storage, you can define folders within pools in the Nimble administrative user interface. You cannot create or delete storage pools from the appliance. Storage pools are automatically discovered during the storage system add or refresh. After you elect to manage storage pools, you can provision volumes on them.
{% endhint %}

All storage pools that are usable in HPE OneView are visible on the Storage Pools screen. Pools refreshed into HPE OneView are initially designated as discovered, and must be explicitly set to managed by editing the pool in HPE OneView using the Edit action on the storage pool screen.

A storage system must first be added to the appliance before a storage pool can be managed.

Storage pools are scoped resources. You can associate a scope to a pool to restrict who can use the pool.

{% hint style="info" %}
Privileges: Infrastructure administrator or Storage administrator.
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | 2 |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | true \(ByPropertyName\) |
| Accept wildcard characters?    | False |

#### -Pool &lt;String\[\]&gt; 

One or more storage pool name resource\(s\) to be added during storage system import.

Example: $pools = "cpg1","cpg2"

| Aliases | PoolName, spName, cpg |
| :--- | :--- |
| Required? | true |
| Position? | 1 |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -StorageSystem &lt;Object&gt; 

The Storage System object from Get-HPOVStorageSystem.

| Aliases | Hostname, name |
| :--- | :--- |
| Required? | true |
| Position? | 0 |
| Default value |  |
| Accept pipeline input? | true \(ByValue\) |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**HPOneView.Storage.System \[System.Management.Automation.PSCustomObject\]**_

Storage System resource object from Get-HPOVStorageSystem.

### Return Values

_**HPOneView.Appliance.TaskResource \[System.Management.Automation.PSCustomObject\]**_

Async task resource.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Add-HPOVStoragePool -StorageSystem "HP3PAR_1" -PoolName "HP_CPG1"
```

Add the "HP\_CPG1" Stroage Pool that is mananaged in the HP3PAR\_1 Storage System. PoolName parameter data type will be converted from System.String to System.Collections.ArrayList .

```text
 -------------------------- EXAMPLE 2 --------------------------
$myPools = "cpg1","cpg2"
Add-HPOVStoragePool "HP3PAR_1" $myPools

```

Add the "HP\_CPG1" Stroage Pool that is mananaged in the HP3PAR\_1 Storage System. 

### Related Links 

* [Get-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStoragePool) 
* [Remove-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStoragePool) 
* [Set-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStoragePool) 
* [Update-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStoragePool) 

