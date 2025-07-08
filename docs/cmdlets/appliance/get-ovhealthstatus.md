---
description: Display appliance health.
---

# Get-OVHealthStatus

## Syntax

```powershell
Get-OVHealthStatus
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Display the HPE OneView appliance health status.  This includes CPU, Memory and Disk Space.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVHealthStatus
```

Get the HPE OneView appliance health.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.HealthStatus [System.Management.Automation.PSCustomObject]"
    Appliance health report in table format.
    

## Related Links

