﻿---
description: Get claimed rack manage resource.
---

# Get-HPOVRackManager

## Syntax

```text
Get-HPOVRackManager
    [-Name <String>]
    [-Label <String>]
    [-Scope <Object>]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

A rack manager platform is a multinode system. The nodes are housed within a rack or across racks, and are centrally managed by a management controller. The Rack Managers screen enables you to manage and visualize the physical location of rack manager platforms within a rack.
 A rack manager platform consists of the following:
 	* One or more chassis - The chassis are individual nodes that are used to build logical components such as systems or partitions. Each chassis is a physical container for system components like the compute, storage, or network nodes.
 	 In an HPE Superdome Flex Server, the chassis are 5U nodes that represent the compute nodes with CPU, memory, I/O, power supplies, and fans.
 	* One or more systems or partitions - The system is a logical entity that functions as a server, and runs a single instance of an operating system to host services. In HPE OneView, the partition is modeled as a server hardware resource.
 	 In an HPE Superdome Flex Server, the systems are also called partitions. A partition consists of one or more compute chassis that are interconnected through an ultra-fast fabric. Each partition starts with a base chassis and can be extended using expansion chassis to form a large system.
 	* One or more managers - The manager component manages the rack manager platform, and hosts the management controller function. HPE OneView communicates with the rack manager through this management controller enabling system administration, control, and platform management of the rack manager platform. Some platforms have multiple manager components to support redundancy.
 	 In an HPE Superdome Flex Server, the manager component is called the Rack Management Controller (RMC). The RMC hosts the DMTF Redfish APIs.
 	* One or more racks - The racks physically contain all the rack manager platform components.
 Minimum required privileges: Infrastructure administrator or Server administrator. 

## Examples

###  Example 1 

```text
Get-HPOVRackManager
```

Get all added rack manager resources.

###  Example 2 

```text
Get-HPOVRackManager -Name manager1.domain.com -ErrorAction Stop
```

Get the specified rack manager resource.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Label &lt;String&gt;

Specify the label associated with resources.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Specify a resource name to filter for.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Scope &lt;Object&gt;

Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	*AllResourcesInScope
	* `[HPOneView.Appliance.ScopeCollection]`
	* `[HPOneView.Appliance.ConnectionPermission]`

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

_**None.  You cannot pipe objects to this cmdlet.**_

## Return Values

_**HPOneView.Servers.RackManager**_

Rack manager resource object, with associated sub components like managers, chassis and rack.


## Related Links

* [Add-HPOVRackManager](add-hpovrackmanager.md)
* [Remove-HPOVRackManager](remove-hpovrackmanager.md)
* [Update-HPOVRackManager](update-hpovrackmanager.md)
