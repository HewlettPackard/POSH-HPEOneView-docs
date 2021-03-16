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

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

The `[HPOneView.Appliance.SnmpV]`1TrapDestination or `[HPOneView.Appliance.SnmpV]`3TrapDestination object from Get-HPOVApplianceTrapDestination to remove.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Appliance.SnmpV1TrapDestination**_

Appliance SNMPv1 trap destination from Get-HPOVApplianceTrapDestination.


_**HPOneView.Appliance.SnmpV3TrapDestination**_

Appliance SNMPv3 trap destination from Get-HPOVApplianceTrapDestination.


## Return Values

_**System.Management.Automation.PSCustomObject**_

Success message of deleted resource.


## Related Links

* [Get-HPOVApplianceTrapDestination](get-hpovappliancetrapdestination.md)
* [New-HPOVApplianceTrapDestination](new-hpovappliancetrapdestination.md)
