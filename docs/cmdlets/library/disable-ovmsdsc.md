---
description: Disable Microsoft DSC Support
---

# Disable-OVMSDSC

## Syntax

## Description

Using this Cmdlet will create and/or modify UseMSDSC (REG_DWORD) located at HKCU:\Software\Hewlett-Packard\HPOneView, to 0 (False).  By disabling support, the module will no longer overload Write-Host.

Use Enable-OVMsDSC to enable support.

## Examples

###  Example 1 

```powershell
Disable-OVMSDSC
```

Configures Registry value to no longer overload Write-Host.

## Parameters

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None. You cannot pipe objects to this Cmdlet.


## Return Values

=== "None."
    
    

## Related Links

* [Enable-OVMSDSC](enable-ovmsdsc.md)
