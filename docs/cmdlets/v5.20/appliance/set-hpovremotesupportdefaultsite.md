---
description: Define the Remote Support Default Site.
---

# Set-HPOVRemoteSupportDefaultSite

## Syntax

```text
Set-HPOVRemoteSupportDefaultSite
    [-AddressLine1] <>
    [-City] <>
    [-State] <>
    [-Country] <>
    [-TimeZone] <>
    [-AddressLine2] <>
    [-PostalCode <>]
    [-ApplianceConnection <>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to set the default data center site used for Remote Support.  All resources defined will use this data center site. 

## Examples

###  Example 1 

```text
Set-HPOVRemoteSupportDefaultSite -AddressLine1 "3000 Hanover St." -City "Palo Alto" -State CA -PostalCode 94304 -Country US -TimeZone "US/Pacific"
```

Get the configured Remote Support default site.

## Parameters

### -AddressLine1 &lt;&gt;

Aliases [-a1]
Primary Address line 1.

| Aliases | a1 |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AddressLine2 &lt;&gt;

Aliases [-a2]
Primary Address line 2.

| Aliases | a2 |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -City &lt;&gt;

City.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -State &lt;&gt;

Aliases [-Provence]
State or Provence.

| Aliases | Province |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Country &lt;&gt;

2-letter country code.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PostalCode &lt;&gt;

Postal or zip code.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TimeZone &lt;&gt;

Timezone of the data center, in `ISO-3166` location format (e.g. US/Central).

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

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

_**None.  You cannot pipe objects to this Cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject**_

Configured Remote Support default site.

## Related Links

* [Get-HPOVRemoteSupportDefaultSite](get-hpovremotesupportdefaultsite.md)
