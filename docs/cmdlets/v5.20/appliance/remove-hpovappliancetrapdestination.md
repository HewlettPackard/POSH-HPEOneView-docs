---
description: Remove configured appliance SNMP trap destinations.
---

# Remove-HPOVApplianceTrapDestination

## Syntax

```text
Remove-HPOVApplianceTrapDestination
    [-InputObject] <Object>
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to remove configured SNMPv1 and/or SNMPv3 trap destinations.

{% hint style="info" %}
Minimum required privileges: Infrastructure administrator
{% endhint %}

## Examples

###  Example 1 

```text
Get-HPOVApplianceTrapDestination -Destination 10.45.110.76 -ErrorAction Stop | Remove-HPOVApplianceTrapDestination
```

Remove the specified trap destination.

###  Example 2 

```text
Get-HPOVApplianceTrapDestination -Type SNMPv3 | Remove-HPOVApplianceTrapDestination
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

The `[HPEOneView.Appliance.SnmpV]`1TrapDestination or `[HPEOneView.Appliance.SnmpV]`3TrapDestination object from `Get-HPOVApplianceTrapDestination` to remove.

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

_**HPEOneView.Appliance.SnmpV1TrapDestination**_

Appliance SNMPv1 trap destination from [`Get-HPOVApplianceTrapDestination`](get-hpovappliancetrapdestination.md).

_**HPEOneView.Appliance.SnmpV3TrapDestination**_

Appliance SNMPv3 trap destination from [`Get-HPOVApplianceTrapDestination`](get-hpovappliancetrapdestination.md).

## Return Values

_**System.Management.Automation.PSCustomObject**_

Success message of deleted resource.

## Related Links

* [Get-HPOVApplianceTrapDestination](get-hpovappliancetrapdestination.md)
* [New-HPOVApplianceTrapDestination](new-hpovappliancetrapdestination.md)
