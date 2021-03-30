---
description: List Synergy DAS Enclosures.
---

# Get-HPOVDriveEnclosure

## Syntax

```text
Get-HPOVDriveEnclosure
    [-Name <String>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

This Cmdlet will help display the avialable Synergy DAS Enclosures, and their associated inventory data.

## Examples

###  Example 1 

```text
Get-HPOVDriveEnclosure
Appliance Name              State Status    Serial Number Drive Bays I/O Adapters
--------- ----              ----- ------    ------------- ---------- ------------
appliance 0000A66101, bay 1 On    Monitored SN123100      40/40      2
appliance 0000A66102, bay 1 On    Monitored SN123101      40/40      2
appliance 0000A66103, bay 1 On    Monitored SN123102      40/40      2
```

Get all available Synergy Drive Enclosures.

## Parameters

### -Name &lt;String&gt;

The name of the Synergy DAS enclosure.  Omitt to return all devices.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Storage.DriveEnclosure [System.Management.Automation.PSCustomObject]**_

Single resource object.

_**System.Collections.ArrayList <HPOneView.Storage.DriveEnclosure>**_

Multiple resource objects.

## Related Links

