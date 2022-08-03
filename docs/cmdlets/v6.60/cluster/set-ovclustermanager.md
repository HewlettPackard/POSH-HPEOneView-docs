---
description: Modify an existing hypervisor manager.
---

# Set-OVClusterManager

## Syntax

```powershell
Set-OVClusterManager
    [-InputObject] <HypervisorManager>
    [-Hostname <String>]
    [-DisplayName <String>]
    [-Port <Int>]
    [-Credential <PSCredential>]
    [-VirtualSwitchType <String>]
    [-DistributedSwitchUsage <String>]
    [-DistributedSwitchVersion] <String>
    [-HAEnabled <Bool>]
    [-DRSEnabled <Bool>]
    [-MultiNicVMotionEnabled <Bool>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

You can register a new hypervisor manager with HPE OneView by providing the hostname and credentials. The registered hypervisor manager contains preferences, which are used as default hypervisor or cluster settings during hypervisor cluster profile creation. You can modify the hypervisor manager preferences using the edit operation. You can override these values in a hypervisor cluster profile. 

A valid hypervisor manager certificate must be added to HPE OneView trust store to be able to successfully communicate with a hypervisor manager.

The user must have an infrastructure administrator privilege to register or update the hypervisor manager resource in HPE OneView. You can assign scopes to the hypervisor manager resource in HPE OneView.

## Examples

###  Example 1 

```powershell
Set-OVClusterManager
```

Default example

## Parameters

### -ApplianceConnection &lt;Object&gt;

Specify one or more `[HPEOneView.Appliance.Connection]` object(s) or Name property value(s).

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
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Credential &lt;PSCredential&gt;

Use this parameter if you want to provide a PSCredential object.  Using this parameter will update the authentication credentials needed to communicate with the cluster manager.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DRSEnabled &lt;Bool&gt;

Use to enable or disable VMware DRS default settings for clusters.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DisplayName &lt;String&gt;

Change the display name of the cluster manager.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
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
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DistributedSwitchVersion &lt;String&gt;

Applicable only when vSwitch type is of type distributed. Configures distributed virtual switch with the specified version, and must be supported by the Hypervisor Manager.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -HAEnabled &lt;Bool&gt;

Use to enable or disable VMware HA.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Hostname &lt;String&gt;

Use to update the IP or FQDN address of the target cluster manager.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -InputObject &lt;HypervisorManager&gt;

The cluster manager resource object from Get-OVClusterManager.

| Aliases | Name |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | true (ByValue) |
| Accept wildcard characters? | False |

### -MultiNicVMotionEnabled &lt;Bool&gt;

Use to enable or disable VMware VMotion multi-NIC vmotion.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Port &lt;Int&gt;

Use to update the TCP port of the cluster manager.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VirtualSwitchType &lt;String&gt;

Use to adjust the virtual switch for hypervisor clsuters with the specified type. Allowed values:

* Standard - A virtual switch configured and managed at the hypervisor level; provides networking to virtual machines and VM kernels.
* Distributed - A virtual switch configured and managed at data center level and configured for each hypervisor to provide networking to virtual machines and VM Kernels.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about\_CommonParameters \([http://go.microsoft.com/fwlink/?LinkID=113216](http://go.microsoft.com/fwlink/?LinkID=113216)\)

## Input Types

_**HPEOneView.Cluster.ClusterManager**_

The cluster manager from Get-OVClusterManager.

## Return Values

_**HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

Asynchronous task resource to monitor.

## Related Links

* [Add-OVClusterManager](add-ovclustermanager.md)
* [Get-OVClusterManager](get-ovclustermanager.md)
* [Remove-OVClusterManager](remove-ovclustermanager.md)
