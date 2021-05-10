---
description: Create a new SNMPv3 user from appliance or Logical Interconnect/Switch resoure.
---

# New-HPOVSnmpV3User

## Syntax

```text
New-HPOVSnmpV3User
    [-Username] <String>
    [-SecurityLevel <String>]
    [-AuthProtocol <String>]
    [-AuthPassword <SecureString>]
    [-PrivProtocol <String>]
    [-PrivPassword <SecureString>]
    [<CommonParameters>]
```

```text
New-HPOVSnmpV3User
    [-Username] <String>
    [-ApplianceSnmpUser]
    [-SecurityLevel <String>]
    [-AuthProtocol <String>]
    [-AuthPassword <SecureString>]
    [-PrivProtocol <String>]
    [-PrivPassword <SecureString>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

HPE OneView can be used as a proxy to forward device traps from servers and enclosures (OA) to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations.

Appliance SNMP settings allow you to add destinations to which the traps need to be forwarded. You can configure each destination as an SNMPv1 or SNMPv3 destination, depending on whether the traps are sent in SNMPv1 or SNMPv3 formats. 

Additionally, if you have Gen6 or Gen7 servers being monitored by HPE OneView in your environment, you can configure the read community string that HPE OneView uses for monitoring these servers with SNMPv1. 

{% hint style="info" %}
To configure SNMP trap forwarding for network devices (interconnects and switches), use the New-HPOVSnmpV3User and include it within the New-HPOVSnmpConfiguration Cmdlet.
{% endhint %}


Privileges: Infrastructure administrator

## Examples

###  Example 1 

```text
$Snmpv3Password = ConvertTo-SecureString "Myp@ssword" -AsPlainText -Force
New-HPOVSnmpV3User -ApplianceSnmpUser -Username MySNMPv3us3r -SecurityLevel AuthAndPriv -AuthProtocol SHA512 -AuthPassword AES192 -PrivProtocol $SnmpV3UserPrivProtocol -PrivPassword $Snmpv3Password

```

Create a new SNMPv3 user for the appliance.

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

### -ApplianceSnmpUser &lt;SwitchParameter&gt;

Use this to create an appliance SNMPv3 User.  Default is to create an `[HPOneView.Networking.SnmpV]`3User.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AuthPassword &lt;SecureString&gt;

SNMpv3 Authentication password in SecureString format.

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

### -PrivPassword &lt;SecureString&gt;

SNMpv3 Privacy password in SecureString format.

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

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Appliance.SnmpV3User**_

Appliance SNMPv3 user account created on the appliance.


_**HPOneView.Networking.SnmpV3User**_

SNMPv3 user account for a networking resource.


## Related Links

* [Get-HPOVSnmpV3User](../appliance/get-hpovsnmpv3user.md)
* [Remove-HPOVSnmpV3User](remove-hpovsnmpv3user.md)
