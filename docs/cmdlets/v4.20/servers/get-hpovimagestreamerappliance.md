---
description: Retrieve HPE Synergy Image Streamer appliances.
---

# Get-HPOVImageStreamerAppliance

## Syntax

```text
Get-HPOVImageStreamerAppliance
    [-Name <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Retrieve populated and discovered HPE Synergy Image Streamer appliances within the Synergy Management fabric.  Image Streamer appliances can be in either a Claimed or Unclaimed state.  Appliances will only belong in a single redundant H/A Pair, and all H/A pairs will participate within the same HPE Synergy OS Deployment Server.  Redundant H/A pairs will automatically be created during the Create Logical Enclosure task. 

## Examples

###  Example 1 

```text
Get-HPOVImageStreamerAppliance

```

List all HPE Synergy Image Streamer appliances.

###  Example 2 

```text
Get-HPOVImageStreamerAppliance -Name "0000A66102, appliance 2"

```

Retrieve the Image Streamer Appliance "0000A66102, appliance 2".

## Parameters

### -Name &lt;String&gt;

Image Streamer resource name.  Supported the * (asterisk) wildcard character.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ApplianceConnection &lt;Object&gt;

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

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**System.Management.Automation.PSCustomObject [HPOneView.Appliance.ImageStreamerAppliance]**_

An HPE Synergy Image Streamer appliance object.

_**System.Collections.ArrayList<HPOneView.Appliance.ImageStreamerAppliance>**_

A collection of HPE Synergy Image Streamer appliance objects.

## Related Links

