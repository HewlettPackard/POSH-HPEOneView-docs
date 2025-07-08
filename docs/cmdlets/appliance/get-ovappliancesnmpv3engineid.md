---
description: Get appliance SNMPv3 Engine ID.
---

# Get-OVApplianceSnmpV3EngineId

## Syntax

```powershell
Get-OVApplianceSnmpV3EngineId
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView can be used as a proxy to forward device traps from servers, enclosures, and Synergy compute modules to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations. Additionally, HPE OneView will also send alerts received from a Synergy Frame Link Module (FLM) as SNMPv1 or SNMPv3 traps to the configured destinations.

Use this Cmdlet to get the appliance SNMPv3 Engine ID that is automatically generated upon first time boot of the appliance, or configured by an Infrastructure Administrator.

???+ info
    Minimum required privileges: Read only

## Examples

###  Example 1 

```powershell
Get-OVApplianceSnmpV3EngineId
```

Get the SNMPv3 Engine ID of the connected appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.SnmpV3EngineId"
    Appliance SNMPv3 Engine ID.
    

## Related Links

* [Set-OVApplianceSnmpV3EngineId](set-ovappliancesnmpv3engineid.md)
