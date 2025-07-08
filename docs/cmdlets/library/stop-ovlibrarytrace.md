---
description: Stop HPOV Library Verbose Trace.
---

# Stop-OVLibraryTrace

## Syntax

## Description

This Cmdlet is deprecated.  Please use Get-OVCommandTrace.

## Examples

###  Example 1 

```powershell
Stop-OVLibraryTrace
```

Transcript stopped, output file is C:\Users\Administrator\1604251128_HPOV_transcript.trace

## Parameters

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "System.IO.File"
    {filename}.trace file is generated in the location specified in the Start-OVLibraryTrace Cmdlet
    

## Related Links

* [Start-OVLibraryTrace](start-ovlibrarytrace.md)
