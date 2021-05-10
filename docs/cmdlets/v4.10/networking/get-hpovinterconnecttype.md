---
description: Retrieve Interconnect Type resource(s).
---

# Get-HPOVInterconnectType

## Syntax

```text
Get-HPOVInterconnectType
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Get-HPOVInterconnectType
    [-PartNumber <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Retrieves a list of all Interconnect Types or just specific ones via a query if the name or partnumber parameters are provided.

## Examples

###  Example 1 

```text
Get-HPOVInterconnectType

```

Returns all Interconnect Types available from all connected appliances to standard output.

###  Example 2 

```text
Get-HPOVInterconnect -name "HP VC FlexFabric 10Gb/24-Port Module"

```

Returns just the "HP VC FlexFabric 10Gb/24-Port Module" Interconnect Type object to standard output.

###  Example 3 

```text
Get-HPOVInterconnect -name "571956-B21"

```

Returns just the partnumber "571956-B21" Interconnect Type object to standard output.

## Parameters

### -Name &lt;String&gt;

The name of the interconnect type model name to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PartNumber &lt;String&gt;

The Part Number of an Interconnect Type to search for.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

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

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Networking.InterconnectType [System.Management.Automation.PSCustomObject]**_

Single Interconnect Type resource.


_**System.Collections.ArrayList <HPOneView.Networking.InterconnectType>**_

Multiple Interconnect Type resources or formatted table dispalying basic Interconnect Type information.


## Related Links

