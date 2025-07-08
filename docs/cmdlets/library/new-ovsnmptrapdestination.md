---
description: Create SNMP Trap Destination Object
---

# New-OVSnmpTrapDestination

## Syntax

```powershell
New-OVSnmpTrapDestination
    [-Destination] <String>
    [-Community] <String>
    [-Port <Int>]
    [-SnmpFormat] <String>
    [-TrapSeverities] <Array>
    [-VCMTrapCategories] <Array>
    [-EnetTrapCategories] <Array>
    [-FCTrapCategories] <Array>
    [<CommonParameters>]
```

```powershell
New-OVSnmpTrapDestination
    [-Destination] <String>
    [-SnmpV3User] <HPEOneView.Appliance.SnmpV3User>
    [-Port <Int>]
    [-SnmpFormat] <String>
    [-NotificationType <String>]
    [-EngineID] <String>
    [-TrapSeverities] <Array>
    [-VCMTrapCategories] <Array>
    [-EnetTrapCategories] <Array>
    [-FCTrapCategories] <Array>
    [<CommonParameters>]
```

## Description

This helper Cmdlet provides the capability to create a new SNMP Trap Destination object.  The object can then be used with New-OVSnmpConfiguration to create a new SNMP Configuration for a Logical Interconnect Group or Logical Interconnect resource.

## Examples

###  Example 1 

```powershell
$Dest1 = New-OVSnmpTrapDestination -Destination mysnmpserver.domain.local -Community MyR3adcommun1ty -SnmpFormat SNMPv1 -TrapSeverities critical,warning $Dest2 = New-OVSnmpTrapDestination 10.44.120.9 MyR3adcommun1ty SNMPv1 critical,warning legacy "Other","PortStatus","PortThresholds" "Other","PortStatus" $SnmpConfig = New-OVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22 -TrapDestinations $Dest1,$Dest2 New-OVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -SNMP $SnmpConfig
```

Create a new SNMP Configuration object, with the specified Trap Destinations, and use the created object to add to a new Logical Interconnect Group.

###  Example 2 

```powershell
# Create SNMPv3 user account for appliance. $SNMPv3User = New-OVSnmpv3User -Username snmpv3user -SecurityLevel None -ApplianceSnmpUser $Dest1 = New-OVSnmpTrapDestination -Destination mysnmpserver.domain.local -Community MyR3adcommun1ty -SnmpFormat SNMPv1 -TrapSeverities critical,warning $Dest2 = New-OVSnmpTrapDestination 10.44.120.9 MyR3adcommun1ty SNMPv1 critical,warning legacy "Other","PortStatus","PortThresholds" "Other","PortStatus" $SnmpConfig = New-OVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22 -TrapDestinations $Dest1,$Dest2 New-OVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -SNMP $SnmpConfig
```

Create a new SNMP Configuration object, with the specified Trap Destinations, and use the created object to add to a new Logical Interconnect Group.

## Parameters

### -Destination &lt;String&gt;

The SNMP destination IP Address or FQDN.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Community &lt;String&gt;

The SNMP Trap Community String to set.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | public |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpFormat &lt;String&gt;

SNMP Format type.  Allowed values:

* SNMPv1
* SNMPv2
* SNMPv3

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | SNMPv1 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TrapSeverities &lt;Array&gt;

A collection `[System.Collections.ArrayList` ] of SNMP Trap Severities to generate Traps for.  Allowed values:

* Critical
* Info
* Major
* Minor
* Normal
* Unknown
* Warning

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VCMTrapCategories &lt;Array&gt;

A collection `[System.Collections.ArrayList` ] of VCM Trap Categories.  Allowed values:

* Legacy

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EnetTrapCategories &lt;Array&gt;

A collection `[System.Collections.ArrayList` ] of SNMP Trap Severities to generate Traps for.  Allowed values:

* Other
* PortStatus
* PortThresholds

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -FCTrapCategories &lt;Array&gt;

A collection `[System.Collections.ArrayList` ] of SNMP Trap Severities to generate Traps for.  Allowed values:

* Other
* PortStatus

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? |  |
| Accept wildcard characters? | False |

### -Port &lt;Int&gt;

Provide the alternate SNMP trap reciever port.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpV3User &lt;HPEOneView.Appliance.SnmpV3User&gt;

A valid SNMPv3 user from New-OVSnmpV3User.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -EngineID &lt;String&gt;

The EngineId of remote SNMPv3 user.  Only applicable when configuring an SNMPv3 object for the appliance, not logical interconnect groups or logical interconnects.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -NotificationType &lt;String&gt;

Indicates whether the trap should be inform message or not.  Allowed values:

* Inform
* Trap

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Trap |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Networking.SnmpTrapDestination [System.Management.Automation.PSCustomObject]"
    SNMP Trap desitnation object for an SNMP Configuration Object
    

## Related Links

