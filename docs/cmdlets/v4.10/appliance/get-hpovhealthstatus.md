---
description: Display appliance health.
---

# Get-HPOVHealthStatus

## Syntax

```text
Get-HPOVHealthStatus
    [<CommonParameters>]
```

## Description

Display the HPE OneView appliance health status.  This includes CPU, Memory and Disk Space.

## Examples

###  Example 1 

```text
Get-HPOVHealthStatus

```

Get the HPE OneView appliance health.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.HealthStatus [System.Management.Automation.PSCustomObject]**_

Appliance health report in table format.


## Related Links

