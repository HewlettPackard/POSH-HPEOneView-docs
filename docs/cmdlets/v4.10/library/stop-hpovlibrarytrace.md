---
description: Stop HPOV Library Verbose Trace.
---

# Stop-HPOVLibraryTrace

## Syntax

```text
Stop-HPOVLibraryTrace
    [<CommonParameters>]
```

## Description

This Cmdlet is deprecated. Please use Get-HPOVCommandTrace.

## Examples

### Example 1

```text
Stop-HPOVLibraryTrace
```

Transcript stopped, output file is C:\Users\Administrator\1604251128\_HPOV\_transcript.trace

## Parameters

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.IO.File**_

{filename}.trace file is generated in the location specified in the [`Start-HPOVLibraryTrace`](start-hpovlibrarytrace.md) Cmdlet

## Related Links

* [Start-HPOVLibraryTrace](start-hpovlibrarytrace.md)

