---
description: Get appliance SNMPv3 Engine ID.
---

# Get-HPOVApplianceSnmpV3EngineId

## Syntax

```text
Get-HPOVApplianceSnmpV3EngineId
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to get the appliance SNMPv3 Engine ID.

## Examples

###  Example 1 

```text
Get-HPOVApplianceSnmpV3EngineId
```

Get the SNMPv3 Engine ID of the connected appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.SnmpV3EngineId**_

Appliance SNMPv3 Engine ID.

## Related Links

* [Set-HPOVApplianceSnmpV3EngineId](set-hpovappliancesnmpv3engineid.md)
