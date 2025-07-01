---
description: Change the appliance SNMPv3 Engine ID
---

# Set-OVApplianceSnmpV3EngineId

## Syntax

```powershell
Set-OVApplianceSnmpV3EngineId
    [-EngineID] <String>
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Change or update the appliance SNMPv3 engine ID.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Set-OVApplianceSnmpV3EngineId -EngineID 0x73cb660f279b9e
```

Default example

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EngineID &lt;String&gt;

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.SnmpV3EngineId"
    The appliance SNMPv3 engine ID.
    

## Related Links

* [Get-OVApplianceSnmpV3EngineId](get-ovappliancesnmpv3engineid.md)
