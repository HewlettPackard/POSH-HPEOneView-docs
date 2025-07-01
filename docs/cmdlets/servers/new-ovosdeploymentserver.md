---
description: Create a new HPE Synergy OS Deployment Server.
---

# New-OVOSDeploymentServer

## Syntax

```powershell
New-OVOSDeploymentServer
    [-Name] <String>
    [-InputObject] <Object>
    [-ManagementNetwork] <Object>
    [-Description <String>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

An OS deployment server is a resource that enables you to deploy (install and configure) operating systems for use by servers. HPE OneView connects to an OS deployment server and configures it for deploying operating systems.
HPE OneView manages the OS deployment server after it is configured and displays the list of attributes, management settings, the OS deployment plans, and the server profiles that reference the available OS deployment plans.

To create an OS Deployment Server, HPE Synergy Image Streamer appliances must be installed into managed or monitored Synergy Frames, a Management Network created with an association to an IPv4 address pool Subnet, and available IP Addresses within the pool. 

## Examples

###  Example 1 

```powershell
$ManagementNetwork = Get-OVNetwork -Type Ethernet -Name "Deployment Network"
Get-OVImageStreamerAppliance | Select -First 1 | New-OVOSDeploymentServer -Name "MY OS Deployment Server" -ManagementNetwork $ManagementNetwork
```

Get the Ethernet network resource object, then pass via the pipeline the first HPE Synergy Image Streamer object, and create a new OS Deployment Server.

## Parameters

### -Name &lt;String&gt;

OS Deployment resource name.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Description &lt;String&gt;

Description of the OS Deployment Server resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;Object&gt;

HPE Synergy Image Streamer appliance.  Can be any Image Streamer resource object from Get-OVImageStreamerAppliance.

| Aliases | ImageStreamer, I3S |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -ManagementNetwork &lt;Object&gt;

Either a Tagged or Untagged Ethernet Network associated with an IPv4 address pool Subnet.  Subnet must be in the same IPv4 Address Network ID as the HPE Synergy Composer IPv4 Address(es).

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
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

=== "System.Management.Automation.PSCustomObject [HPEOneView.Appliance.ImageStreamerAppliance]"
    HPE Synergy Image Streamer Appliance object from Get-OVImageStreamerAppliance.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for modifying the Remote Support Collection schedules.
    

## Related Links

* [Get-OVOSDeploymentServer](get-ovosdeploymentserver.md)
* [Remove-OVOSDeploymentServer](remove-ovosdeploymentserver.md)
