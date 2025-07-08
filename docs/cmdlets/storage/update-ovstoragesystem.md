---
description: Update/Refresh available Storage Systems
---

# Update-OVStorageSystem

## Syntax

```powershell
Update-OVStorageSystem
    [-InputObject] <Object>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will update or refresh the specific storage system(s) configured on the HPE OneView appliance.  Refreshing the storage system will cause HPE OneView to validate connectivity, the addition of any new CPG"s, and any Storage System Host Port configuration changes.

## Examples

###  Example 1 

```powershell
Get-OVStorageSystem | Update-OVStorageSystem
```

Get all managed Storage Systems and refresh them.

###  Example 2 

```powershell
Get-OVStorageSystem -Name MyStorageSystem | Update-OVStorageSystem
```

Get the "MyStorageSystem" managed Storage Systems and refresh it.

## Parameters

### -InputObject &lt;Object&gt;

The Storage System resource object to update/refresh.

| Aliases | Name, StorageSystem |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one `[HPEOneView.Appliance.Connection]` object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

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

=== "HPEOneView.Storage.System [System.Management.Automation.PSCustomObject]"
    Single Storage System
    

=== "System.Collections.ArrayList <HPEOneView.Storage.System>"
    Multiple Storage Systems
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Update Storage System async task object
    

=== "System.Collections.ArrayList <HPEOneView.Appliance.TaskResource>"
    Multiple Update Storage System async task objects
    

## Related Links

* [Add-OVStorageSystem](add-ovstoragesystem.md)
* [Get-OVStorageSystem](get-ovstoragesystem.md)
* [Remove-OVStorageSystem](remove-ovstoragesystem.md)
* [Show-OVStorageSystemPerformancePolicy](show-ovstoragesystemperformancepolicy.md)
