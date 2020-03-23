---
description: Get the reserved VLAN range for HPE Synergy.
---

# Get-HPOVReservedVlanRange

## Syntax

```text
Get-HPOVReservedVlanRange
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

By default, HPE Synergy reserves a sepcific VLAN range for Tunnel, untagged and FC networks for HPE Synergy Virtual Connect. This default range is 3967-4095. The range can be modified using Set-HPOVReservedVlanRange if none of the specified network resources have been created.

## Examples

### Example 1

```text
Get-HPOVReservedVlanRange
```

Get the defined reserved VLAN range on the connected HPE Synergy appliance.

## Parameters

### -ApplianceConnection &lt;Object&gt;

Aliases \[-Appliance\]

Specify one or more `[HPOneView.Appliance.Connection]` object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |  |
| :--- | :--- | :--- |
| Required? | False |  |
| Position? | Named |  |
| Default value | \`\(${Global:ConnectedSessions} | ? Default\)\` |
| Accept pipeline input? | false |  |
| Accept wildcard characters? | False |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None. You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Networking.ReservedVlanRange**_

The reserved VLAN range object

## Related Links

* [Set-HPOVReservedVlanRange](../appliance/set-hpovreservedvlanrange.md)

