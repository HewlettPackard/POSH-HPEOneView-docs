---
description: 
---

# Update-HPOVStorageSystem

## Syntax

```text
Update-HPOVStorageSystem
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This cmdlet will update or refresh the specific storage system(s) configured on the HPE OneView appliance.  Refreshing the storage system will cause HPE OneView to validate connectivity, the addition of any new CPG"s, and any Storage System Host Port configuration changes.
## Examples

###  Example 1 

```text
Get-HPOVStorageSystem | Update-HPOVStorageSystem

```

Get all managed Storage Systems and refresh them.

###  Example 2 

```text
Get-HPOVStorageSystem -Name MyStorageSystem | Update-HPOVStorageSystem

```

Get the "MyStorageSystem" managed Storage Systems and refresh it.

## Parameters

### -InputObject &lt;Object&gt;

Aliases [-StorageSystem]

The Storage System resource object to update/refresh.

| Aliases | Name, StorageSystem |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one `[HPOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

Single Storage System


_**System.Collections.ArrayList <HPOneView.Storage.System>**_

Multiple Storage Systems


## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Update Storage System async task object

_**System.Collections.ArrayList <HPOneView.Appliance.TaskResource>**_

Multiple Update Storage System async task objects

## Related Links

* [Add-HPOVStorageSystem](add-hpovstoragesystem.md)
* [Get-HPOVStorageSystem](get-hpovstoragesystem.md)
* [Remove-HPOVStorageSystem](remove-hpovstoragesystem.md)
* [Show-HPOVStorageSystemPerformancePolicy](show-hpovstoragesystemperformancepolicy.md)
