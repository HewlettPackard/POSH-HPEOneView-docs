---
description: Set SNMP Read Community.
---

# Set-HPOVSnmpReadCommunity

## Syntax

```text
Set-HPOVSnmpReadCommunity
    [-Name] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Set a new SNMP Read Community value on the appliance.  Updating this value will cause the appliance to refresh the managed devices with the updated `Read-Only` SNMP Community string.  This does not update the SNMP trap destination(s) for Logical Interconnects or Logical Interconnect Groups.

## Examples

###  Example 1 

```text
Set-HPOVSnmpReadCommunity -name "MySNMPC0mmunity"

```

Set the appliance SNMP Read Community string to the new value.

## Parameters

### -name &lt;String&gt;

The name of the new SNMP `Read-Only` Community.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
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

_**None.**_


 None

## Related Links

* [Get-HPOVSnmpReadCommunity](get-hpovsnmpreadcommunity.md)
