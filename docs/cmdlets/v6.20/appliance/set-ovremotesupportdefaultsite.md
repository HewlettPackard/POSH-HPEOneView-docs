---
description: Define the Remote Support Default Site.
---

# Set-OVRemoteSupportDefaultSite

## Syntax

```powershell
Set-OVRemoteSupportDefaultSite
    [-AddressLine1] <String>
    [-City] <String>
    [-State] <String>
    [-Country] <String>
    [-TimeZone] <String>
    [-AddressLine2] <String>
    [-PostalCode <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Use this Cmdlet to set the default data center site used for Remote Support.  All resources defined will use this data center site. 

## Examples

###  Example 1 

```powershell
Set-OVRemoteSupportDefaultSite -AddressLine1 "3000 Hanover St." -City "Palo Alto" -State CA -PostalCode 94304 -Country US -TimeZone "US/Pacific"
```

Get the configured Remote Support default site.

## Parameters

### -AddressLine1 &lt;String&gt;

Aliases [-a1]
Primary Address line 1.

| Aliases | a1 |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -AddressLine2 &lt;String&gt;

Aliases [-a2]
Primary Address line 2.

| Aliases | a2 |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -City &lt;String&gt;

City.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -State &lt;String&gt;

Aliases [-Provence]
State or Provence.

| Aliases | Province |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Country &lt;String&gt;

2-letter country code.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PostalCode &lt;String&gt;

Postal or zip code.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TimeZone &lt;String&gt;

Timezone of the data center, in ISO-3166 location format (e.g. US/Central).

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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

* [Get-OVRemoteSupportDefaultSite](get-ovremotesupportdefaultsite.md)
