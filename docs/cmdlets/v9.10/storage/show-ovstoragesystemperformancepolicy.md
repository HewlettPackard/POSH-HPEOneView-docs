---
description: Show available Nimble Performance Policies.
---

# Show-OVStorageSystemPerformancePolicy

## Syntax

```powershell
Show-OVStorageSystemPerformancePolicy
    [-InputObject] <Object>
    [-Name <String>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to show available Nimble Performance Policies in order to set a desired perforamnce policy value when provisioning a new volume or creating a new volume template.

## Examples

###  Example 1 

```powershell
Show-OVStorageSystemPerformancePolicy
```

Default example

## Parameters

### -InputObject &lt;Object&gt;

One or more storage systems from Get-OVStorageSystem.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Provide a name of the performance policy to return.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Storage.System [System.Management.Automation.PSCustomObject]**_



## Return Values

_**HPEOneView.Storage.PerformancePolicy**_

One or more available storage system performance policy objects.

## Related Links

