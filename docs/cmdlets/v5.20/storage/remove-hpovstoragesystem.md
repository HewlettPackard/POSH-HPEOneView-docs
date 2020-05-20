---
description: Remove a Storage System
---

# Remove-HPOVStorageSystem

## Syntax

```text
Remove-HPOVStorageSystem
    [-InputObject] <>
    [-force <>]
    [-ApplianceConnection] <>
    [<CommonParameters>]
```

## Description

This Cmdlet will assist with removing a discovered and managed storage system from the appliance.

## Examples

###  Example 1 

```text
Remove-HPOVStorageSystem HP3PAR_2
```

Remove "HP3PAR_2" storage system from the appliance.

## Parameters

### -InputObject &lt;&gt;

Name or URI of the managed storage system.

| Aliases | uri, name, StorageSystem |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Force &lt;&gt;

Switch to force removal of a storage system the appliance can no longer communicate with.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -WhatIf &lt;&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Confirm &lt;&gt;



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

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

Storage System resource object

_**System.Collections.ArrayList <HPOneView.Storage.System>**_

Collections of Storage System resource objects

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Returns an async task resource to monitor.

## Related Links

* [Add-HPOVStorageSystem](add-hpovstoragesystem.md)
* [Get-HPOVStorageSystem](get-hpovstoragesystem.md)
* [Show-HPOVStorageSystemPerformancePolicy](show-hpovstoragesystemperformancepolicy.md)
* [Update-HPOVStorageSystem](update-hpovstoragesystem.md)
