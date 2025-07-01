---
description: Retrieve HPE Synergy OS Deployment Server.
---

# Get-OVOSDeploymentServer

## Syntax

```powershell
Get-OVOSDeploymentServer
    [-Name <String>]
    [-Label <String>]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

An OS deployment server is a resource that enables you to deploy (install and configure) operating systems for use by servers. HPE OneView connects to an OS deployment server and configures it for deploying operating systems.

The default selection is HPE Synergy Image Streamer, when an Image Streamer is discovered in an HPE Synergy configuration.

The HPE OneView Infrastructure administrator can add an OS deployment server. HPE OneView manages the OS deployment server after it is configured and displays the list of attributes, management settings, the OS deployment plans, and the server profiles that reference the available OS deployment plans.

This Cmdlet will return the discovered OS deployment servers.

???+ info
    Minimum required privileges: Read-only

## Examples

###  Example 1 

```powershell
Get-OVOSDeploymentServer
```

List all HPE Synergy OS Deployment servers.

## Parameters

### -Name &lt;String&gt;

OS deployment server resource name.  Supported the * (asterisk) wildcard character.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.OSDeploymentServer"
    An HPE Synergy Image Streamer appliance object.
    

=== "System.Collections.ArrayList<HPEOneView.Appliance.OSDeploymentServer>"
    A collection of HPE Synergy Image Streamer appliance objects.
    

## Related Links

* [New-OVOSDeploymentServer](new-ovosdeploymentserver.md)
* [Remove-OVOSDeploymentServer](remove-ovosdeploymentserver.md)
