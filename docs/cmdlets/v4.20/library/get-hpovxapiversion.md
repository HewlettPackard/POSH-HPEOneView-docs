---
description: Get appliance API version.
---

# Get-HPOVXApiVersion

## Syntax

```text
Get-HPOVXApiVersion
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Returns the API versions supported by the appliance.  You do not need to authenticate, or call `Connect-HPOVMgmt`, to an appliance in order to retrieve the supported REST API Versions by the appliance.

## Examples

###  Example 1 

```text
(Get-HPOVXApiVersion myAppliance.domain.com).minimumversion
```

This example retrieves the minimum XApi version supported by the appliance.  An existing connection is not needed since the appliance name is provided.

###  Example 2 

```text
(Get-HPOVXApiVersion).minimumversion
```

This example retrieves the minimum XApi version supported by the appliance and requires that a connection has been established by using `Connect-HPOVMgmt`.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | appliance |
| :--- | :--- |
| Required? | True |
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

The current and minimum supported API versions on the appliance

## Related Links

