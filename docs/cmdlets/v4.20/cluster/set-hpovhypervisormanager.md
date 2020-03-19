---
description: 
---

# Set-HPOVHypervisorManager

## Syntax

## Description

You can register a new hypervisor manager with HPE OneView by providing the hostname and credentials. The registered hypervisor manager contains preferences, which are used as default hypervisor or cluster settings during hypervisor cluster profile creation. You can modify the hypervisor manager preferences using the edit operation. You can override these values in a hypervisor cluster profile.

A valid hypervisor manager certificate must be added to HPE OneView trust store to be able to successfully communicate with a hypervisor manager.

The user must have an infrastructure administrator privilege to register or update the hypervisor manager resource in HPE OneView.
## Examples

###  Example 1 

```text
$Manager = Get-HPOVHypervisorManager -Name vCenter1 -ErrorAction Stop
Set-HPOVHypervisorManager -InputObject $Manager -Credential (Get-Credential NewUser@domain.com -Message Password) -DRSEnabled $true
```

Update the vCenter credentials to use for the conencted hypervisor manager, and enable DRS preference to true.

###  Example 2 

```text
Get-HPOVHypervisorManager -Name vCenter1 -ErrorAction Stop | Set-HPOVHypervisorManager -VirtualSwitchType Distributed -DistributedSwitchUsage AllNetworks -DistributedSwitchVersion 6.0 
```

Change the vCenter preferences to enable Distributed virtual switch for all networking, and set the distributed switch version to 6.0.

###  Example 3 

```text
$Manager = Get-HPOVHypervisorManager -Name vCenter1 -ErrorAction Stop

$Manager.AvailableDvsVersions
4.0
4.1.0
5.0.0
5.1.0
5.5.0
Set-HPOVHypervisorManager -DistributedSwitchVersion 5.5.0 
```

Get the hypervisor manager, display the supported and available distribute switch versions, and set the manager to the maximum supported version 5.5.0.

## Parameters

### -ApplianceConnection &lt;Array&gt;

Aliases [-Appliance]

Specify one or more `[HPOneView.Appliance.Connection]` object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | (${Global:ConnectedSessions} | ? Default) |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -DRSEnabled &lt;bool&gt;

Choose to enable or disable VMware DRS. Additional DRS policy settings must be made within the vSphere client.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -DisplayName &lt;String&gt;

Change the hypervisor managers display name. Used for resource lookup.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -DistributedSwitchUsage &lt;String&gt;

Applicable only when vSwitch type is Distributed. This specifies which networks should be configured for distributed switches. Allowed values:

	* AllNetworks - Configures all the networks in the hypervisor cluster profile with distributed virtual switches. All networks include Management, special purpose and general purpose networks. The special purpose networks comprise VM Migration, iSCSI and Fault Tolerance.
	* GeneralNetworks - Configures the general purpose networks in the hypervisor cluster profile with distributed virtual switches.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -DistributedSwitchVersion &lt;String&gt;

Applicable only when vSwitch type is of type distributed. Configures distributed virtual switch with the specified version, and must be supported by the Hypervisor Manager.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -HAEnabled &lt;bool&gt;

Enable VMware High Availability on a hypervisor cluster to ensure decreased downtime in a virtual environment. Additional VMware HA settings much be made within the vSphere client.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -Hostname &lt;String&gt;

Update the vCenter hostname or IP Address.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -InputObject &lt;HPOneView.Cluster.HypervisorManager&gt;

The `[HPOneView.Cluster.HypervisorManager]` resource from `Get-HPOVHypervisorManager`.

| Aliases |  |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -MultiNicVMotionEnabled &lt;bool&gt;

Configures VMware `Multi-NIC` vMotion on hypervisors when there are multiple NICs to VM Migration network. Enable `Multi-NIC` vMotion to load balance a single or multiple vMotion transmissions over multiple physical NICs.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -Port &lt;int&gt;

Modify the vCenter API SSL port.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### -VirtualSwitchType &lt;String&gt;

Configures virtual switch on a hypervisor with a specified type. Allowed values:

	* Standard - A virtual switch configured and managed at the hypervisor level; provides networking to virtual machines and VM kernels.
	* Distributed - A virtual switch configured and managed at data center level and configured for each hypervisor to provide networking to virtual machines and VM Kernels.

| Aliases |  |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? |  |
| Accept wildcard characters? |  |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Cluster.HypervisorManager**_

The hypervisor manager from [`Get-HPOVHypervisorManager`](get-hpovhypervisormanager.md).

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Async task Resource object for configuring port monitoring on the requested logical intercinnect.


## Related Links

* [Add-HPOVHypervisorManager](update-hpovexternalrepository.md)
* [Get-HPOVHypervisorManager](get-hpovhypervisormanager.md)
* [Remove-HPOVHypervisorManager](remove-hpovhypervisormanager.md)
