---
description: Retrieve Switch Type resource(s).
---

# Get-HPOVSwitchType

## Syntax

```text
Get-HPOVSwitchType
    [-Name] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

```text
Get-HPOVSwitchType
    [-PartNumber] <String>
    [-ApplianceConnection] <Object>
    [<CommonParameters>]
```

## Description

Retrieves a list of all supported Switch Types or just specific ones via a query if the name or partnumber parameters are provided.  Curently, supported switch types are:
 * Cisco Nexus 50xx N5K-C50XX
 * Cisco Nexus 55xx N5K-C55XX
 * Cisco Nexus 56xx N5K-C56XX
 * Cisco Nexus 600x N6K-C600X
 

## Examples

###  Example 1 

```text
Get-HPOVSwitchType

```

Returns all Switch Types available from all connected appliances to standard output.

###  Example 2 

```text
Get-HPOVInterconnect -Name "Cisco Nexus 55xx"

```

Returns just the "Cisco Nexus 55xx" Switch Type object to standard output.

###  Example 3 

```text
Get-HPOVInterconnect -Name "N5K-C55XX"

```

Returns just the partnumber "N5K-C55XX" Switch Type object to standard output.

## Parameters

### -Name &lt;String&gt;

The name of the switch type model name to retrieve.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PartNumber &lt;String&gt;

The Part Number of an switch type to search for.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Networking.SwitchType [System.Management.Automation.PSCustomObject]**_

Single Switch Type resource.


_**System.Collections.ArrayList <HPOneView.Networking.SwitchType>**_

Multiple Switch Type resources.


_**A Switch Type or collection of Switch Types.**_



## Related Links

