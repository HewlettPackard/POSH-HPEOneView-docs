---
description: Disable Microsoft DSC Support
---

# Disable-HPOVMSDSC

## HPE OneView 5.00 Library

### Syntax

```text
Disable-HPOVMSDSC [<CommonParameters>]
```

### Description

Using this cmdlet will create and/or modify UseMSDSC \(REG\_DWORD\) located at `HKCU:\Software\Hewlett-Packard\HPOneView`, to `0 (False)`. By disabling support, the module will no longer overload Write-Host.

Use Enable-HPOVMsDSC to enable support.

### Parameters

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**None.**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Disable-HPOVMSDSC
```

Configures Registry value to no longer overload Write-Host. 

### Related Links 

* [Enable-HPOVMSDSC](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVMSDSC) 

## HPE OneView 4.20 Library

### Syntax

```text
Disable-HPOVMSDSC [<CommonParameters>]
```

### Description

Using this cmdlet will create and/or modify UseMSDSC \(REG\_DWORD\) located at `HKCU:\Software\Hewlett-Packard\HPOneView`, to `0 (False)`. By disabling support, the module will no longer overload Write-Host.

Use Enable-HPOVMsDSC to enable support.

### Parameters

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**None.**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Disable-HPOVMSDSC
```

Configures Registry value to no longer overload Write-Host. 

### Related Links 

* [Enable-HPOVMSDSC](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVMSDSC) 

## HPE OneView 4.10 Library

### Syntax

```text
Disable-HPOVMSDSC [<CommonParameters>]
```

### Description

Using this cmdlet will create and/or modify UseMSDSC \(REG\_DWORD\) located at `HKCU:\Software\Hewlett-Packard\HPOneView`, to `0 (False)`. By disabling support, the module will no longer overload Write-Host.

Use Enable-HPOVMsDSC to enable support.

### Parameters

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**None.**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Disable-HPOVMSDSC
```

Configures Registry value to no longer overload Write-Host. 

### Related Links 

* [Enable-HPOVMSDSC](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVMSDSC) 



