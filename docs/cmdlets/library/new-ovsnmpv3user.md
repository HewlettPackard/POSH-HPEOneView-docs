---
description: Create a new SNMPv3 user from appliance or Logical Interconnect/Switch resoure.
---

# New-OVSnmpV3User

## Syntax

```powershell
New-OVSnmpV3User
    [-Username] <String>
    [-SecurityLevel <String>]
    [-AuthProtocol <String>]
    [-AuthPassword <System.Security.SecureString>]
    [-PrivProtocol <String>]
    [-PrivPassword <System.Security.SecureString>]
    [<CommonParameters>]
```

```powershell
New-OVSnmpV3User
    [-Username] <String>
    [-ApplianceSnmpUser]
    [-SecurityLevel <String>]
    [-AuthProtocol <String>]
    [-AuthPassword <System.Security.SecureString>]
    [-PrivProtocol <String>]
    [-PrivPassword <System.Security.SecureString>]
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
$Snmpv3Password = ConvertTo-SecureString "Myp@ssword" -AsPlainText -Force
New-OVSnmpV3User -ApplianceSnmpUser -Username MySNMPv3us3r -SecurityLevel AuthAndPriv -AuthProtocol SHA512 -AuthPassword AES192 -PrivProtocol $SnmpV3UserPrivProtocol -PrivPassword $Snmpv3Password
```

Create a new SNMPv3 user for the appliance.

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

### -ApplianceSnmpUser &lt;SwitchParameter&gt;

Use this to create an appliance SNMPv3 User.  Default is to create an `[HPEOneView.Networking.SnmpV]`3User.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AuthPassword &lt;System.Security.SecureString&gt;

SNMpv3 Authentication password in `[System.Security.SecureString]` format.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AuthProtocol &lt;String&gt;

SNMPv3 Authentication protocol.  Supported values:

* None
* MD5
* SHA
* SHA1
* SHA256
* SHA384
* SHA512

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PrivPassword &lt;System.Security.SecureString&gt;

SNMpv3 Privacy password in `[System.Security.SecureString]` format.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PrivProtocol &lt;String&gt;

SNMPv3 Privacy protocol.  Supported values:

* none
* des56
* 3des
* aes128
* aes192
* aes256"

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SecurityLevel &lt;String&gt;

Specify the type of SNMPv3 security policy.  Supported values: 
* None
* AuthOnly
* AuthAndPriv

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Username &lt;String&gt;

SNMPv3 Username

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

=== "HPEOneView.Appliance.SnmpV3User"
    Appliance SNMPv3 user account created on the appliance.
    

=== "HPEOneView.Networking.SnmpV3User"
    SNMPv3 user account for a networking resource.
    

## Related Links

* [Get-OVSnmpV3User](../appliance/get-ovsnmpv3user.md)
* [Remove-OVSnmpV3User](remove-ovsnmpv3user.md)
