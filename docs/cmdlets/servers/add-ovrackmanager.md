---
description: Add supported Rack Manager (HPE Superdome Flex) resource.
---

# Add-OVRackManager

## Syntax

```powershell
Add-OVRackManager
    [-ComputerName] <String>
    [-Credential] <PSCredential>
    [-Scope <Object>]
    [-Async]
    [-Force]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

A rack manager platform is a multi-node system. The nodes are housed within a rack or across racks, and are centrally managed by a management controller. The Rack Managers screen enables you to manage and visualize the physical location of rack manager platforms within a rack.

A rack manager platform consists of the following:

* One or more chassis - The chassis are individual nodes that are used to build logical components such as systems or partitions. Each chassis is a physical container for system components like the compute, storage, or network nodes.  In an HPE Superdome Flex Server, the chassis are 5U nodes that represent the compute nodes with CPU, memory, I/O, power supplies, and fans.
* One or more systems or partitions - The system is a logical entity that functions as a server, and runs a single instance of an operating system to host services. In HPE OneView, the partition is modeled as a server hardware resource.  In an HPE Superdome Flex Server, the systems are also called partitions. A partition consists of one or more compute chassis that are interconnected through an ultra-fast fabric. Each partition starts with a base chassis and can be extended using expansion chassis to form a large system.
* One or more managers - The manager component manages the rack manager platform, and hosts the management controller function. HPE OneView communicates with the rack manager through this management controller enabling system administration, control, and platform management of the rack manager platform. Some platforms have multiple manager components to support redundancy.  In an HPE Superdome Flex Server, the manager component is called the Rack Management Controller (RMC). The RMC hosts the DMTF Redfish APIs.
* One or more racks - The racks physically contain all the rack manager platform components.

When you add a rack manager, HPE OneView automatically applies the HPE OneView Standard license to the rack manager. HPE OneView discovers and monitors the hardware subcomponents of the rack manager.

???+ info
    Minimum required privileges: Infrastructure administrator or Server administrator.

## Examples

###  Example 1 

```powershell
$Credential = Get-Credential -Username Administrator -Message "RackManager Password" Add-OVRackManager -ComputerName rackmanger1.domain.com -Credential $Credential
```

Add the specified rack manager.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
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

### -ComputerName &lt;String&gt;

The IP/Address of the supported rack manager

| Aliases | Name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Force add the resource.  Use if you need to override the claim of a resource, and force the connected appliance to add.  Do know if the resource was claimed or added to a different appliance, it will no longer be able to monitor and/or manage the resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Provide an `[HPEOneView.Appliance.ScopeCollection]` resource object to initially associate with.  Resource can also be added to scope using the Add-OVResourceToScope Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | AllResourcesInScope |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Async task Resource object for configuring port monitoring on the requested logical intercinnect.
    

## Related Links

* [Get-OVRackManager](get-ovrackmanager.md)
* [Remove-OVRackManager](remove-ovrackmanager.md)
* [Update-OVRackManager](update-ovrackmanager.md)
