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

An Image Streamer appliance is an HPE Synergy add-on solution that forms an OS Deployment Server.  An OS deployment server is a resource that enables you to deploy (install and configure) operating systems for use by servers. HPE OneView connects to an OS deployment server and configures it for deploying operating systems.
The default selection is HPE Synergy Image Streamer, when an Image Streamer is discovered in an HPE Synergy configuration.  You can add only a single Image Streamer deployment server. The Image Streamer OS deployment server supports the deployment of plans that define the operating system artifacts necessary for server hardware operation.
Adding a deployment server causes Image Streamer appliances to be clustered and configured to manage OS deployment artifacts.
This Cmdlet will retrieve populated and discovered HPE Synergy Image Streamer appliances within the Synergy Management fabric. Image Streamer appliances can be in either a Claimed or Unclaimed state. Appliances will only belong in a single redundant High Availability (H/A) Pair, and all H/A pairs will participate within the same HPE Synergy OS Deployment Server. Redundant H/A pairs will automatically be created during the Create Logical Enclosure task.
{% hint style="info" %}
Minimum required privileges: Read-only.
{% endhint %}

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

_**System.Management.Automation.PSCustomObject [HPEOneView.Appliance.ImageStreamerAppliance]**_

An HPE Synergy Image Streamer appliance object.

_**System.Collections.ArrayList<HPEOneView.Appliance.ImageStreamerAppliance>**_

A collection of HPE Synergy Image Streamer appliance objects.

## Related Links

