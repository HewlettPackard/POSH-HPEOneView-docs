---
description: Retrieve Switch Type resource(s).
---

# Get-HPOVSwitchType

## Syntax

```text
Get-HPOVSwitchType
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```text
Get-HPOVSwitchType
    [-PartNumber <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Retrieves a list of all supported Switch Types or just specific ones via a query if the name or partnumber parameters are provided.  

## Examples

###  Example 1 

```text
Get-HPOVSwitchType
```

Returns all Switch Types available from all connected appliances to standard output.

###  Example 2 

```text
Get-HPOVSwitchType -Name "Cisco Nexus 55xx"
```

Returns just the "Cisco Nexus 55xx" Switch Type object to standard output.

###  Example 3 

```text
Get-HPOVSwitchType -Partnumber "DCS-7060X-SERIES"
```

Returns just the partnumber "DCS-7060X-SERIES" Switch Type object to standard output.

## Parameters

### -Name &lt;String&gt;

The name of the switch type model name to retrieve.  Does not support wildcard search.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PartNumber &lt;String&gt;

The Part Number of an switch type to search for.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | `(${Global:ConnectedSessions} | ? Default)` |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Networking.SwitchType**_

Single Switch Type resource.

## Related Links

