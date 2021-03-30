---
description: Modify an existing hypervisor manager.
---

# Set-HPOVClusterManager

## Syntax

```text
Set-HPOVClusterManager
    [-InputObject] <HPOneView.Cluster.HypervisorManager>
    [-Hostname <String>]
    [-DisplayName <String>]
    [-Port <int>]
    [-Credential <PSCredential>]
    [-VirtualSwitchType <String>]
    [-DistributedSwitchUsage <String>]
    [-DistributedSwitchVersion <String>]
    [-HAEnabled <bool>]
    [-DRSEnabled <bool>]
    [-MultiNicVMotionEnabled <bool>]
    [-Async]
    [-ApplianceConnection <Array>]
    [<CommonParameters>]
```

## Description

You can register a new hypervisor manager with HPE OneView by providing the hostname and credentials. The registered hypervisor manager contains preferences, which are used as default hypervisor or cluster settings during hypervisor cluster profile creation. You can modify the hypervisor manager preferences using the edit operation. You can override these values in a hypervisor cluster profile.

A valid hypervisor manager certificate must be added to HPE OneView trust store to be able to successfully communicate with a hypervisor manager.

The user must have an infrastructure administrator privilege to register or update the hypervisor manager resource in HPE OneView.

## Examples

###  Example 1 

```text
$Manager = Get-HPOVClusterManager -Name vCenter1 -ErrorAction Stop
Set-HPOVClusterManager -InputObject $Manager -Credential (Get-Credential NewUser@domain.com -Message Password) -DRSEnabled $true
```

Update the vCenter credentials to use for the conencted hypervisor manager, and enable DRS preference to true.

###  Example 2 

```text
Get-HPOVClusterManager -Name vCenter1 -ErrorAction Stop | Set-HPOVClusterManager -VirtualSwitchType Distributed -DistributedSwitchUsage AllNetworks -DistributedSwitchVersion 6.0 
```

Change the vCenter preferences to enable Distributed virtual switch for all networking, and set the distributed switch version to 6.0.

###  Example 3 

```text
$Manager = Get-HPOVClusterManager -Name vCenter1 -ErrorAction Stop

$Manager.AvailableDvsVersions
4.0
4.1.0
5.0.0
5.1.0
5.5.0
Set-HPOVClusterManager -DistributedSwitchVersion 5.5.0 
```

Get the hypervisor manager, display the supported and available distribute switch versions, and set the manager to the maximum supported version 5.5.0.

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
| Accept pipeline input? | true (ByPropertyName) |
| Accept wildcard characters? | False |

### -Async &lt;SwitchParameter&gt;

Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | False |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object instead.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -DRSEnabled &lt;bool&gt;

Choose to enable or disable VMware DRS. Additional DRS policy settings must be made within the vSphere client.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -DisplayName &lt;String&gt;

Change the hypervisor managers display name. Used for resource lookup.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -DistributedSwitchUsage &lt;String&gt;

Applicable only when vSwitch type is Distributed. This specifies which networks should be configured for distributed switches. Allowed values:

	* AllNetworks - Configures all the networks in the hypervisor cluster profile with distributed virtual switches. All networks include Management, special purpose and general purpose networks. The special purpose networks comprise VM Migration, iSCSI and Fault Tolerance.
	* GeneralNetworks - Configures the general purpose networks in the hypervisor cluster profile with distributed virtual switches.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -DistributedSwitchVersion &lt;String&gt;

Applicable only when vSwitch type is of type distributed. Configures distributed virtual switch with the specified version, and must be supported by the Hypervisor Manager.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -HAEnabled &lt;bool&gt;

Enable VMware High Availability on a hypervisor cluster to ensure decreased downtime in a virtual environment. Additional VMware HA settings much be made within the vSphere client.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Hostname &lt;String&gt;

Update the vCenter hostname or IP Address.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -InputObject &lt;HPOneView.Cluster.HypervisorManager&gt;

The `[HPOneView.Cluster.HypervisorManager]` resource from Get-HPOVClusterManager.

| Aliases | Name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -MultiNicVMotionEnabled &lt;bool&gt;

Configures VMware Multi-NIC vMotion on hypervisors when there are multiple NICs to VM Migration network. Enable Multi-NIC vMotion to load balance a single or multiple vMotion transmissions over multiple physical NICs.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -Port &lt;int&gt;

Modify the vCenter API SSL port.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### -VirtualSwitchType &lt;String&gt;

Configures virtual switch on a hypervisor with a specified type. Allowed values:

	* Standard - A virtual switch configured and managed at the hypervisor level; provides networking to virtual machines and VM kernels.
	* Distributed - A virtual switch configured and managed at data center level and configured for each hypervisor to provide networking to virtual machines and VM Kernels.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | False |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPOneView.Cluster.HypervisorManager**_

The hypervisor manager from Get-HPOVClusterManager.

## Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Asyncronous task resource to monitor.


## Related Links

* [Add-HPOVClusterManager](add-hpovclustermanager.md)
* [Get-HPOVClusterManager](get-hpovclustermanager.md)
* [Remove-HPOVClusterManager](remove-hpovclustermanager.md)
