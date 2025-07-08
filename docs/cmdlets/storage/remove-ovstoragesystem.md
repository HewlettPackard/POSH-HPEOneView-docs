---
description: Remove a Storage System
---

# Remove-OVStorageSystem

## Syntax

```powershell
Remove-OVStorageSystem
    [-InputObject] <Object>
    [-Force]
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

This Cmdlet will assist with removing a discovered and managed storage system from the appliance.

## Examples

###  Example 1 

```powershell
Remove-OVStorageSystem HP3PAR_2
```

Remove "HP3PAR_2" storage system from the appliance.

## Parameters

### -InputObject &lt;Object&gt;

Name or URI of the managed storage system.

| Aliases | uri, name, StorageSystem |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Switch to force removal of a storage system the appliance can no longer communicate with.

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

=== "HPEOneView.Storage.System [System.Management.Automation.PSCustomObject]"
    Storage System resource object
    

=== "System.Collections.ArrayList <HPEOneView.Storage.System>"
    Collections of Storage System resource objects
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Returns an async task resource to monitor.
    

## Related Links

* [Add-OVStorageSystem](add-ovstoragesystem.md)
* [Get-OVStorageSystem](get-ovstoragesystem.md)
* [Show-OVStorageSystemPerformancePolicy](show-ovstoragesystemperformancepolicy.md)
* [Update-OVStorageSystem](update-ovstoragesystem.md)
