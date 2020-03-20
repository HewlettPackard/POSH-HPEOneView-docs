---
description: Change the appliance SNMPv3 Engine ID
---

# Set-HPOVApplianceSnmpV3EngineId

## Syntax

```text
Set-HPOVApplianceSnmpV3EngineId
    [-EngineID] <string>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Change or update the appliance SNMPv3 engine ID.

Required permissions: Infrastructure administrator

## Examples

###  Example 1 

```text
Set-HPOVApplianceSnmpV3EngineId -EngineID 0x73cb660f279b9e

```

Default example

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EngineID &lt;string&gt;

A 16 hexacharacter value. `[E.g]`. "0x73cb660f279b9e"

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.SnmpV3EngineId**_

The appliance SNMPv3 engine ID.

## Related Links

* [Get-HPOVApplianceSnmpV3EngineId](get-hpovappliancesnmpv3engineid.md)
