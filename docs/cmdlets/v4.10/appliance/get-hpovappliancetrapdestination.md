---
description: Get configured appliance SNMP trap destinations.
---

# Get-HPOVApplianceTrapDestination

## Syntax

```text
Get-HPOVApplianceTrapDestination
    [<CommonParameters>]
```

## Description

Use this Cmdlet to retrieve configured SNMPv1 and/or SNMPv3 trap destinations.

Required permissions: Infrastructure administrator

## Examples

###  Example 1 

```text
Get-HPOVApplianceTrapDestination

```

Default example

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
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Destination &lt;String&gt;

Filter trap destinations by the destination value.  Supports wildcard.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Type &lt;Array&gt;

Filter based on SNMP version.  Supported values:

	* SNMPv1
	*SNMPv3


| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.SnmpV1TrapDestination**_

Appliance SNMPv1 trap destination, including trap community and target.


_**HPOneView.Appliance.SnmpV3TrapDestination**_

Appliance SNMPv3 trap destination, including type, SNMPv3 user and target.


## Related Links

* [New-HPOVApplianceTrapDestination](new-hpovappliancetrapdestination.md)
* [Remove-HPOVApplianceTrapDestination](remove-hpovappliancetrapdestination.md)
