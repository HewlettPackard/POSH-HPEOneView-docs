---
description: Disable Microsoft DSC Support
---

# Disable-HPOVMSDSC

## Syntax

```text
Disable-HPOVMSDSC
    [<CommonParameters>]
```

## Description

Using this cmdlet will create and/or modify UseMSDSC (REG_DWORD) located at HKCU:\Software\Hewlett-Packard\HPOneView, to 0 (False).  By disabling support, the module will no longer overload Write-Host.

Use Enable-HPOVMsDSC to enable support.

## Examples

###  Example 1 

```text
Disable-HPOVMSDSC

```

Configures Registry value to no longer overload `Write-Host`.

## Parameters

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**None.**_

This Cmdlet does not return any object.

## Related Links

* [Enable-HPOVMSDSC](enable-hpovmsdsc.md)
