---
description: Create SNMP LIG Configuration Object
---

# New-OVSnmpConfiguration

## Syntax

```powershell
New-OVSnmpConfiguration
    [-ReadCommunity] <String>
    [-SnmpV1] <Bool>
    [-SnmpV3] <Bool>
    [-Contact] <String>
    [-AccessList] <Array>
    [-TrapDestinations] <Array>
    [<CommonParameters>]
```

```powershell
New-OVSnmpConfiguration
    [-ReadCommunity] <String>
    [-SnmpV3] <Bool>
    [-SnmpV3Users] <SnmpV3User[]>
    [-SnmpV1] <Bool>
    [-Contact] <String>
    [-AccessList] <Array>
    [-TrapDestinations] <Array>
    [<CommonParameters>]
```

## Description

This helper Cmdlet provides the capability to create a new SNMP Configuration object for a Logical Interconnect Group or Logical Interconnect resources.

## Examples

###  Example 1 

```powershell
$SnmpConfig = New-OVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22 New-OVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -enableIgmpSnooping $True -igmpIdleTimeoutInterval 300 -LoopProtect $True -QosConfig $QosConfig
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

A collection `[System.Collections.ArrayList` ] of SNMMP Trap Destinations.  Use New-OVTrapDestination Cmdlet to create the object.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpV1 &lt;Bool&gt;

Specify if SNMPv1 should be enabled.  Can be disabled when SNMPv3 is enabled.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpV3 &lt;Bool&gt;

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Networking.SnmpConfiguration [System.Management.Automation.PSCustomObject]"
    SNMP Configuration object for a Logical Interconnect Group or Logical Interconnect resource
    

## Related Links

