---
description: Remove configured hypervisor managers. 
---

# Remove-OVClusterManager

## Syntax

```powershell
Remove-OVClusterManager
    [-InputObject] <HPEOneView.ClusterProfile.HypervisorManager>
    [-Force]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

You can register a hypervisor manager with HPE OneView by providing hostname and credentials in the Hypervisor Managers user interface. The registered hypervisor manager contains preferences, which are used as default hypervisor or cluster settings during hypervisor cluster profile creation. You can modify the hypervisor manager preferences using the edit operation. You can override these values in a hypervisor cluster profile.

A valid hypervisor manager certificate must be added to HPE OneView trust store to be able to successfully communicate with a hypervisor manager.

The user must have an infrastructure administrator privilege to register or update the hypervisor manager resource in HPE OneView.

## Examples

###  Example 1 

```powershell
Get-OVClusterManager -Name vcenter1.domain.com -ErrorAction Stop | Remove-OVClusterManager
```

Remove the specified hypervisor manager.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

| Aliases | Appliance |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} &vert; ? Default) |
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Confirm &lt;SwitchParameter&gt;



| Aliases | cf |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Force &lt;SwitchParameter&gt;

Force delete the resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;HPEOneView.ClusterProfile.HypervisorManager&gt;

The `[HPEOneView.ClusterProfile.HypervisorManager]` resource to remove from Get-OVClusterManager.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -WhatIf &lt;SwitchParameter&gt;



| Aliases | wi |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

=== "HPEOneView.ClusterProfile.HypervisorManager"
    The hypervisor manager object from Get-OVClusterManager.
    

## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Asynchronous task resource to monitor.
    

## Related Links

* [Add-OVClusterManager](add-ovclustermanager.md)
* [Get-OVClusterManager](get-ovclustermanager.md)
* [Set-OVClusterManager](set-ovclustermanager.md)
