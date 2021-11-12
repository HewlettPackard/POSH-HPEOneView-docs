---
description: Enable Microsoft DSC Support
---

# Enable-OVMSDSC

## Syntax

## Description

Using this Cmdlet will create and/or modify UseMSDSC (REG_DWORD) located at HKCU:\Software\Hewlett-Packard\HPOneView, to 1 (True).  By enabling support, the module will overload Write-Host, and instead issue Write-Verbose commands.

Use Disable-OVMsDSC to disable support.

## Examples

###  Example 1 

```powershell
Enable-OVMSDSC
```

Configures Registry value to overload Write-Host, which then uses Write-Verbose.

## Parameters

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**None.**_



## Related Links

* [Disable-OVMSDSC](disable-ovmsdsc.md)
