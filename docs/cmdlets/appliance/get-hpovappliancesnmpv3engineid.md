---
description: Get appliance SNMPv3 Engine ID.
---

# Get-HPOVApplianceSnmpV3EngineId

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVApplianceSnmpV3EngineId [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

HPE OneView can be used as a proxy to forward device traps from servers, enclosures, and Synergy compute modules to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations. Additionally, HPE OneView will also send alerts received from a Synergy Frame Link Module \(FLM\) as SNMPv1 or SNMPv3 traps to the configured destinations.

Use this Cmdlet to get the appliance SNMPv3 Engine ID that is automatically generated upon first time boot of the appliance, or configured by an Infrastructure Administrator.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.SnmpV3EngineId**_

Appliance SNMPv3 Engine ID.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceSnmpV3EngineId
```

Get the SNMPv3 Engine ID of the connected appliance. 

### Related Links 

* [Set-HPOVApplianceSnmpV3EngineId](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceSnmpV3EngineId) 

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVApplianceSnmpV3EngineId [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

HPE OneView can be used as a proxy to forward device traps from servers, enclosures, and Synergy compute modules to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations. Additionally, HPE OneView will also send alerts received from a Synergy Frame Link Module \(FLM\) as SNMPv1 or SNMPv3 traps to the configured destinations.

Use this Cmdlet to get the appliance SNMPv3 Engine ID that is automatically generated upon first time boot of the appliance, or configured by an Infrastructure Administrator.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.SnmpV3EngineId**_

Appliance SNMPv3 Engine ID.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceSnmpV3EngineId
```

Get the SNMPv3 Engine ID of the connected appliance. 

### Related Links 

* [Set-HPOVApplianceSnmpV3EngineId](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceSnmpV3EngineId) 

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVApplianceSnmpV3EngineId [[-ApplianceConnection] <Array>] [<CommonParameters>]
```

### Description

HPE OneView can be used as a proxy to forward device traps from servers, enclosures, and Synergy compute modules to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations. Additionally, HPE OneView will also send alerts received from a Synergy Frame Link Module \(FLM\) as SNMPv1 or SNMPv3 traps to the configured destinations.

Use this Cmdlet to get the appliance SNMPv3 Engine ID that is automatically generated upon first time boot of the appliance, or configured by an Infrastructure Administrator.

{% hint style="info" %}
Minimum required privileges: Read only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Array&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

### Return Values

_**HPOneView.Appliance.SnmpV3EngineId**_

Appliance SNMPv3 Engine ID.

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVApplianceSnmpV3EngineId
```

Get the SNMPv3 Engine ID of the connected appliance. 

### Related Links 

* [Set-HPOVApplianceSnmpV3EngineId](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceSnmpV3EngineId) 

