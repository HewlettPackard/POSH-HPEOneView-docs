---
description: 
---

# New-HPOVSnmpConfiguration

## Syntax

```text
New-HPOVSnmpConfiguration
    [-ReadCommunity] <String>
    [-SnmpV1] <bool>
    [-SnmpV3] <bool>
    [-Contact] <String>
    [-AccessList] <Array>
    [-TrapDestinations] <Array>
    [<CommonParameters>]
```

```text
New-HPOVSnmpConfiguration
    [-ReadCommunity] <String>
    [-SnmpV3] <bool>
    [-SnmpV3Users] <SnmpV3User[]>
    [-SnmpV1] <bool>
    [-Contact] <String>
    [-AccessList] <Array>
    [-TrapDestinations] <Array>
    [<CommonParameters>]
```

## Description

This helper Cmdlet provides the capability to create a new SNMP Configuration object for a Logical Interconnect Group or Logical Interconnect resources.
## Examples

###  Example 1 

```text
$SnmpConfig = New-HPOVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22 New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -enableIgmpSnooping $True -igmpIdleTimeoutInterval 300 -LoopProtect $True -QosConfig $QosConfig

```

Create a new QOS Configuration object,and use the created object to add to a new Logical Interconnect Group.

## Parameters

### -ReadCommunity &lt;String&gt;

The SNMP Read Community String to set.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Contact &lt;String&gt;

SNMP Contact Name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AccessList &lt;Array&gt;

A collection `[System.Collections.ArrayList` ] of IP Addresses or Subnets.  You must include the Subnet Mask Bit value.  `[E.g]`. 10.44.120.9/32 or 172.20.148.0/22

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TrapDestinations &lt;Array&gt;

A collection `[System.Collections.ArrayList` ] of SNMMP Trap Destinations.  Use `New-HPOVTrapDestination` Cmdlet to create the object.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpV1 &lt;bool&gt;

Specify if SNMPv1 should be enabled.  Can be disabled when SNMPv3 is enabled.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpV3 &lt;bool&gt;

Specify if SNMPv3 should be enabled.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpV3Users &lt;SnmpV3User[]&gt;

Collection of SNMPv3 users to configure within the SNMP configuration object.

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

_**None.  You cannot pipe objects to this Cmdlet.**_



## Return Values

_**HPOneView.Networking.SnmpConfiguration [System.Management.Automation.PSCustomObject]**_

SNMP Configuration object for a Logical Interconnect Group or Logical Interconnect resource

## Related Links

