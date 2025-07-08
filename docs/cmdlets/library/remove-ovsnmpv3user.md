---
description: Remove SNMPv3 user from appliance.
---

# Remove-OVSnmpV3User

## Syntax

```powershell
Remove-OVSnmpV3User
    [-InputObject] <HPEOneView.Appliance.SnmpV3User>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView can be used as a proxy to forward device traps from servers and enclosures (OA) to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations.

Appliance SNMP settings allow you to add destinations to which the traps need to be forwarded. You can configure each destination as an SNMPv1 or SNMPv3 destination, depending on whether the traps are sent in SNMPv1 or SNMPv3 formats. 

Additionally, if you have Gen6 or Gen7 servers being monitored by HPE OneView in your environment, you can configure the read community string that HPE OneView uses for monitoring these servers with SNMPv1. 

???+ info
    To configure SNMP trap forwarding for network devices (interconnects and switches), use the New-OVSnmpV3User and include it within the New-OVSnmpTrapDestination Cmdlet.


???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
$Snmpv3User = Get-OVSnmpV3User -Name Tr@pUser -ErrorAction Stop | Remove-OVSnmpV3User
```

Remove the specific SNMPv3 user account on the appliance.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;

Override confirmation prompt.

| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;HPEOneView.Appliance.SnmpV3User&gt;

SNMPv3 user account from Get-OVSnmpV3User.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Appliance.SnmpV3User"
    Appliance SNMPv3 user account from Get-OVSnmpV3User.
    

## Return Values

=== "System.Management.Automation.PSCustomObject"
    Success message of deleted resource.
    

## Related Links

* [Get-OVSnmpV3User](../appliance/get-ovsnmpv3user.md)
* [New-OVSnmpV3User](new-ovsnmpv3user.md)
