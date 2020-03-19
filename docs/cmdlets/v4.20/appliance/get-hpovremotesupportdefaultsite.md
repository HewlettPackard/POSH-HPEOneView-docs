---
description: 
---

# Get-HPOVRemoteSupportDefaultSite

## Syntax

```text
Get-HPOVRemoteSupportDefaultSite
    [<CommonParameters>]
```

## Description

Use this Cmdlet to retrieve the configured default site.
## Examples

###  Example 1 

```text
Get-HPOVRemoteSupportDefaultSite

```

Get the configured Remote Support default site.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_



## Return Values

_**System.Management.Automation.PSCustomObject**_

Configured Remote Support default site.


## Related Links

* [Set-HPOVRemoteSupportDefaultSite](set-hpovremotesupportdefaultsite.md)
