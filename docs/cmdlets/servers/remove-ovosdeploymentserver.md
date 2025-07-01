---
description: Remove an HPE Synergy Image Streamer OS Deployment server.
---

# Remove-OVOSDeploymentServer

## Syntax

```powershell
Remove-OVOSDeploymentServer
    [-InputObject] <HPEOneView.Appliance.OSDeploymentServer>
    [-Force]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

Deleting an Image Streamer OS deployment server removes the management and storage networking configurations of all the Image Streamer appliances configured in HPE OneView. In addition, the Image Streamer appliances are reset to factory defaults, removing all OS deployment artifacts and all OS volumes.

In order to successfully remove an OS Deployment Server, all associated Logical Enclosures must first be removed.  If a Logical Enclosure does not contain an HPE Synergy Image Streamer appliance, then it does not need to be removed.

## Examples

###  Example 1 

```powershell
Get-OVOSDeploymentServer | Remove-OVOSDeploymentServer
```

Remove OS Deployment Servers from the appliance.

## Parameters

### -InputObject &lt;HPEOneView.Appliance.OSDeploymentServer&gt;

OS Deployment Server object, from Get-OVOSDeploymentServer.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Forceably remove an OS Deployment Server.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

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
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.Appliance.OSDeploymentServer"
    HPE Synergy Image Streamer OS Deployment Server from Get-OVOSDeploymentServer
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Resource removal async task.
    

## Related Links

* [Get-OVOSDeploymentServer](get-ovosdeploymentserver.md)
* [New-OVOSDeploymentServer](new-ovosdeploymentserver.md)
