---
description: Create QoS Configuration Object
---

# New-OVQosConfig

## Syntax

```powershell
New-OVQosConfig
    [-ConfigType] <String>
    [<CommonParameters>]
```

```powershell
New-OVQosConfig
    [-ConfigType] <String>
    [-UplinkClassificationType] <String>
    [-DownlinkClassificationType] <String>
    [-TrafficClassifiers] <ArrayList>
    [<CommonParameters>]
```

## Description

This helper Cmdlet provides the capability to create a new Logical Interconnect Group or Logical Interconnect QoS Configuration object.  TrafficClassifiers are created using the New-OVQosTrafficClass helper Cmdlet.

## Examples

###  Example 1 

```powershell
$QosConfig = New-OVQosConfig CustomWithFCoE DSCP DOT1P_AND_DSCP $TrafficClassifiers
New-OVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -enableIgmpSnooping $True -igmpIdleTimeoutInterval 300 -LoopProtect $True -QosConfig $QosConfig
```

Create a new QOS Configuration object,and use the created object to add to a new Logical Interconnect Group.

## Parameters

### -ConfigType &lt;String&gt;

The QOS Configuration Type.  Allowed values are:

* Passthrough (Default) - All ingress packets are not classified at egress. FCoE packets having a separate PG (Priority Group) are processed at ingress. There are no traffic classes, maps, or rules applied. Passthrough mode is equivalent to no QoS (QoS disabled).
* CustomNoFCoE          - Enables QoS and allows a customized configuration without FCoE. The configuration defines one system class (Best Effort). You can configure up to seven additional classes for non-FCoE Ethernet traffic.
* CustomWithFCoE        - Enables QoS and allows a customized configuration that includes FCoE class. The configuration defines two default system classes, Best Effort and FCoE Lossless. FCoE Lossless class cannot be edited by the user and is pre-configured for 50% bandwidth of the port. You can also configure up to six additional classes for non-FCoE Ethernet traffic.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | Passthrough |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UplinkClassificationType &lt;String&gt;

Configure the Uplink QOS Marking classification type.

* DOT1P (Default)
* DSCP
* DOT1P_AND_DSCP

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | DOT1P |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DownlinkClassificationType &lt;String&gt;

Configure the Downlink QOS Marking classification type.

* DOT1P
* DSCP
* DOT1P_AND_DSCP (Default)

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | DOT1P_AND_DSCP |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TrafficClassifiers &lt;ArrayList&gt;

A collection of traffic classes created using the New-OVQosTrafficClass.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | @() |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**HPEOneView.Networking.QosConfiguration [System.Management.Automation.PSCustomObject]**_

QoS Configuration object

## Related Links

