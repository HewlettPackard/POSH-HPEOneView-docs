---
description: Retrieve SAS Interconnect Type resource(s).
---

# Get-HPOVSasInterconnectType

## HPE OneView 5.00 Library

### Syntax

```text
Get-HPOVSasInterconnectType [[-Name] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Get-HPOVSasInterconnectType [[-PartNumber] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Interconnects enable communication between the server hardware in the enclosure and the data center networks. Interconnects and their configuration are derived from either a Logical Switch Group or Logical Interconnect Group. When configuring either resource, you will need to specify an interconnect type that is supported by the appliance.

This Cmdlet will retrieve a list of supported SAS interconnect type or specific ones via a query if the name parameter is provided. 

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the interconnect type model name to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -PartNumber &lt;String&gt; 

The Part Number of an Interconnect Type to search for.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Networking.SasInterconnectType \[System.Management.Automation.PSCustomObject\]**_

Single SAS Interconnect Type resource

_**System.Collections.ArrayList &lt;HPOneView.Networking.SasInterconnectType&gt;**_

Multiple SAS Interconnect Type resources or formatted table dispalying basic Interconnect Type information

_**A SAS Interconnect Type or collection of SAS Interconnect Types.**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVSasInterconnectType
```

Returns all SAS Interconnect Types available from all connected appliances to standard output.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVSasInterconnectType -Name "Synergy 12Gb SAS Connection Module"
```

Returns just the "Synergy 12Gb SAS Connection Module" SAS Interconnect Type object to standard output.

### Related Links

* [Get-HPOVInterconnectType](get-hpovinterconnecttype.md#hpe-oneview-5-00-library)

## HPE OneView 4.20 Library

### Syntax

```text
Get-HPOVSasInterconnectType [[-Name] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Get-HPOVSasInterconnectType [[-PartNumber] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Interconnects enable communication between the server hardware in the enclosure and the data center networks. Interconnects and their configuration are derived from either a Logical Switch Group or Logical Interconnect Group. When configuring either resource, you will need to specify an interconnect type that is supported by the appliance.

This Cmdlet will retrieve a list of supported SAS interconnect type or specific ones via a query if the name parameter is provided. 

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the interconnect type model name to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -PartNumber &lt;String&gt; 

The Part Number of an Interconnect Type to search for.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Networking.SasInterconnectType \[System.Management.Automation.PSCustomObject\]**_

Single SAS Interconnect Type resource

_**System.Collections.ArrayList &lt;HPOneView.Networking.SasInterconnectType&gt;**_

Multiple SAS Interconnect Type resources or formatted table dispalying basic Interconnect Type information

_**A SAS Interconnect Type or collection of SAS Interconnect Types.**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVSasInterconnectType
```

Returns all SAS Interconnect Types available from all connected appliances to standard output.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVSasInterconnectType -Name "Synergy 12Gb SAS Connection Module"
```

Returns just the "Synergy 12Gb SAS Connection Module" SAS Interconnect Type object to standard output.

### Related Links

* [Get-HPOVInterconnectType](get-hpovinterconnecttype.md#hpe-oneview-4-20-library)

## HPE OneView 4.10 Library

### Syntax

```text
Get-HPOVSasInterconnectType [[-Name] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

```text
Get-HPOVSasInterconnectType [[-PartNumber] <String>] [[-ApplianceConnection] <Object>] [<CommonParameters>]
```

### Description

Interconnects enable communication between the server hardware in the enclosure and the data center networks. Interconnects and their configuration are derived from either a Logical Switch Group or Logical Interconnect Group. When configuring either resource, you will need to specify an interconnect type that is supported by the appliance.

This Cmdlet will retrieve a list of supported SAS interconnect type or specific ones via a query if the name parameter is provided. 

{% hint style="info" %}
Minimum required privileges: Read-only
{% endhint %}

### Parameters

#### -ApplianceConnection &lt;Object&gt; 

Specify one or more \[HPOneView.Appliance.Connection\] object\(s\) or Name property value\(s\).

Default Value: ${Global:ConnectedSessions} \| ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value | \(${Global:ConnectedSessions} \| ? Default\) |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -Name &lt;String&gt; 

The name of the interconnect type model name to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

#### -PartNumber &lt;String&gt; 

The Part Number of an Interconnect Type to search for.

| Aliases | None |
| :--- | :--- |
| Required? | false |
| Position? | named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters?    | False |

&lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

### Return Values

_**HPOneView.Networking.SasInterconnectType \[System.Management.Automation.PSCustomObject\]**_

Single SAS Interconnect Type resource

_**System.Collections.ArrayList &lt;HPOneView.Networking.SasInterconnectType&gt;**_

Multiple SAS Interconnect Type resources or formatted table dispalying basic Interconnect Type information

_**A SAS Interconnect Type or collection of SAS Interconnect Types.**_

### Examples

```text
 -------------------------- EXAMPLE 1 --------------------------
Get-HPOVSasInterconnectType
```

Returns all SAS Interconnect Types available from all connected appliances to standard output.

```text
 -------------------------- EXAMPLE 2 --------------------------
Get-HPOVSasInterconnectType -Name "Synergy 12Gb SAS Connection Module"
```

Returns just the "Synergy 12Gb SAS Connection Module" SAS Interconnect Type object to standard output.

### Related Links

* [Get-HPOVInterconnectType](get-hpovinterconnecttype.md#hpe-oneview-4-10-library)



