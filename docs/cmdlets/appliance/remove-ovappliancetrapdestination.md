---
description: Remove configured appliance SNMP trap destinations.
---

# Remove-OVApplianceTrapDestination

## Syntax

```powershell
Remove-OVApplianceTrapDestination
    [-InputObject] <Object>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to remove configured SNMPv1 and/or SNMPv3 trap destinations.

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
Get-OVApplianceTrapDestination -Destination 10.45.110.76 -ErrorAction Stop | Remove-OVApplianceTrapDestination
```

Remove the specified trap destination.

###  Example 2 

```powershell
Get-OVApplianceTrapDestination -Type SNMPv3 | Remove-OVApplianceTrapDestination
```

Remove all of the SNMPv3 trap destinations.

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

### -InputObject &lt;Object&gt;

The `[HPEOneView.Appliance.SnmpV]`1TrapDestination or `[HPEOneView.Appliance.SnmpV]`3TrapDestination object from Get-OVApplianceTrapDestination to remove.

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

=== "HPEOneView.Appliance.SnmpV1TrapDestination"
    Appliance SNMPv1 trap destination from Get-OVApplianceTrapDestination.
    

=== "HPEOneView.Appliance.SnmpV3TrapDestination"
    Appliance SNMPv3 trap destination from Get-OVApplianceTrapDestination.
    

## Return Values

=== "System.Management.Automation.PSCustomObject"
    Success message of deleted resource.
    

## Related Links

* [Get-OVApplianceTrapDestination](get-ovappliancetrapdestination.md)
* [New-OVApplianceTrapDestination](new-ovappliancetrapdestination.md)
