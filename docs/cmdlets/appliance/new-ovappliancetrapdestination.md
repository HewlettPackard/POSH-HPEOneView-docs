---
description: Create a new appliance SNMP trap destiation.
---

# New-OVApplianceTrapDestination

## Syntax

```powershell
New-OVApplianceTrapDestination
    [-Destination] <String>
    [-CommunityString] <String>
    [-Port <Int>]
    [-Type <String>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

```powershell
New-OVApplianceTrapDestination
    [-Destination] <String>
    [-SnmpV3User] <HPEOneView.Appliance.SnmpV3User>
    [-Port <Int>]
    [-Type <String>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView can be used as a proxy to forward device traps from servers and enclosures (OA) to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations.

Appliance SNMP settings allow you to add destinations to which the traps need to be forwarded. You can configure each destination as an SNMPv1 or SNMPv3 destination, depending on whether the traps are sent in SNMPv1 or SNMPv3 formats. 

Additionally, if you have Gen6 or Gen7 servers being monitored by HPE OneView in your environment, you can configure the read community string that HPE OneView uses for monitoring these servers with SNMPv1. 

???+ info
    Minimum required privileges: Infrastructure administrator

## Examples

###  Example 1 

```powershell
New-OVApplianceTrapDestination -Destination $SnmpV1TrapDestinationAddress -Type SNMPv1 -Port $SnmpV1TrapDestinationPort -CommunityString $SnmpV1Community
```

Create a new SNMPv1 trap destination on the appliance.

###  Example 2 

```powershell
$SnmpV3Password = ConvertTo-SecureString -String $CommonPassword -AsPlainText -Force
$Snmpv3User = New-OVSnmpV3User -ApplianceSnmpUser -Username Tr@pUser -SecurityLevel AuthAndPriv -AuthProtocol SHA512 -AuthPassword $SnmpV3Password -PrivProtocol AES192 -PrivPassword $SnmpV3Password
New-OVApplianceTrapDestination -Type SnmpV3 -SnmpV3User $CreatedSnmpSnmpv3UserV3User -Destination monitor1.contoso.com
```

Define a new SNMPv3 user, and associate it with the new SNMPv3 trap destination on the appliance.

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

### -CommunityString &lt;String&gt;

SNMPv1 trap community string.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Destination &lt;String&gt;

IP Address or Hostname of the target SNMP trap reciever.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Port &lt;Int&gt;

Specify the alternate SNMP destination port.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | 161 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SnmpV3User &lt;HPEOneView.Appliance.SnmpV3User&gt;

The defined SNMPv3 user created on the appliance with Get-OVSnmpV3User.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Type &lt;String&gt;

SNMP version type.  Allowed values:

* SNMPv1
* SNMPv3

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | SNMPv1 |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.SnmpV1TrapDestination"
    The configured SNMPv1 Trap Destination on the appliance.
    

=== "HPEOneView.Appliance.SnmpV3TrapDestination"
    The configured SNMPv3 Trap Destination on the appliance.
    

## Related Links

* [Get-OVApplianceTrapDestination](get-ovappliancetrapdestination.md)
* [Remove-OVApplianceTrapDestination](remove-ovappliancetrapdestination.md)
