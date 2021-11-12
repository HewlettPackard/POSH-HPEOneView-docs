---
description: Remove a configured Fabric Manager and associated tenants.
---

# Remove-OVFabricManager

## Syntax

```powershell
Remove-OVFabricManager
    [-InputObject] <HPEOneView.Networking.FabricManager[]>
    [-Force]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

Fabric Managers is a resource manager in HPE OneView that enables integration of a Cisco ACI fabric (an external entity) with HPE Synergy. A fabric manager aligns HPE OneView resources as defined by Cisco Application Policy Infrastructure Controller (APIC) policies. It represents a remote Cisco APIC or an APIC cluster that manages a Cisco ACI fabric. This Cmdlet will remove the fabric manager and will disassociate it's tenant from all logical interconnects, networks and networks sets. Inconsistencies with the APIC tenant configuration will no longer be monitored or remediated by OneView. Minimum required privileges: Infrastructure administrator or Server administrator 

## Examples

###  Example 1 

```powershell
Get-OVFabricManager -Name fabricmgr.domain.com -ErrorAction Stop | Remove-OVFabricManager
```

Remove the specified fabric manager.

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

### -Force &lt;SwitchParameter&gt;

Force delete the resource.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;HPEOneView.Networking.FabricManager[]&gt;

The `[HPEOneView.Networking.FabricManager]` resource to remove.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Networking.FabricManager**_

The fabric manager resource from Get-OVFabricManager.

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object for configuring port monitoring on the requested logical intercinnect.

## Related Links

* [Add-OVFabricManager](add-ovfabricmanager.md)
* [Get-OVFabricManager](get-ovfabricmanager.md)
