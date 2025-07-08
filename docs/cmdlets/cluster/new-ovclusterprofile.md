---
description: Create a new cluster profile resource.
---

# New-OVClusterProfile

## Syntax

```powershell
New-OVClusterProfile
    [-Name] <String>
    [-ClusterManager] <HPEOneView.Cluster.ClusterManager>
    [-ClusterManagerLocation] <String>
    [-ServerProfileTemplate] <Object>
    [-ClusterPassword] <SecureString>
    [-Description <String>]
    [-ClusterPrefix <String>]
    [-Servers <HPEOneView.Cluster.AddHostRequest[]>]
    [-UseIPAddressAsHostName <Bool>]
    [-LeaveHostsInMaintenanceMode] <Bool>
    [-StorageVolume <Object>]
    [-StorageVolumeFileSystem <String>]
    [-Scope <Object>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVClusterProfile
    [-Name] <String>
    [-ClusterManager] <HPEOneView.Cluster.ClusterManager>
    [-ClusterManagerLocation] <String>
    [-ServerProfileTemplate] <Object>
    [-ClusterPassword] <SecureString>
    [-UnmanageVSwitch]
    [-Description <String>]
    [-ClusterPrefix <String>]
    [-Servers <HPEOneView.Cluster.AddHostRequest[]>]
    [-HAEnabled <Bool>]
    [-DRSEnabled <Bool>]
    [-MultiNicVMotionEnabled <Bool>]
    [-Scope <Object>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

```powershell
New-OVClusterProfile
    [-Name] <String>
    [-ClusterManager] <HPEOneView.Cluster.ClusterManager>
    [-ClusterManagerLocation] <String>
    [-ServerProfileTemplate] <Object>
    [-ClusterPassword] <SecureString>
    [-Description <String>]
    [-ClusterPrefix <String>]
    [-Servers <HPEOneView.Cluster.AddHostRequest[]>]
    [-OverrideManagementAddressAssignmet]
    [-SubnetMask] <IPAddress>
    [-Gateway] <IPAddress>
    [-PrimaryDNS <IPAddress>]
    [-SecondaryDNS <IPAddress>]
    [-TertiaryDNS <IPAddress>]
    [-Domain] <String>
    [-UseIPAddressAsHostName <Bool>]
    [-LeaveHostsInMaintenanceMode] <Bool>
    [-StorageVolume <Object>]
    [-StorageVolumeFileSystem <String>]
    [-OverrideNetworkingConfig]
    [-ConfigurePortGroups] <Bool>
    [-VSwitchNameOverride <hashtable>]
    [-PortGroupNameOverride] <Hashtable>
    [-OverrideClusterManagerConfig]
    [-VirtualSwitchType] <String>
    [-DistributedSwitchUsage <String>]
    [-DistributedSwitchVersion <String>]
    [-HAEnabled <Bool>]
    [-DRSEnabled <Bool>]
    [-MultiNicVMotionEnabled <Bool>]
    [-Scope <Object>]
    [-Async]
    [-ApplianceConnection <Object>]
    [<CommonParameters>]
```

## Description

A cluster profile enables you to deploy and manage a cluster of servers (nodes) managed by HPE OneView and orchestrates consistent configuration on cluster of server nodes to share the same workload.  A cluster profile and the associated server profile template are used to define a consistent configuration from server nodes to members in the cluster. The associated server profiles define physical server configurations for server nodes in the cluster, which are derived from parent cluster profile and its associated server profile template. 

???+ info
    The server profile template must have a configured connection to the hypervisor management network for the template to be valid for use by a hypervisor cluster profile.


The cluster profile helps you manage life cycle operations, such as growing or shrinking the cluster, modifying configurations based on needs, consistency checks, and nondisruptive firmware updates on the member nodes. For example, you can grow or shrink a cluster by adding or removing members from the cluster profile. Any change in the configuration of the cluster profile will be reported as an inconsistency. When inconsistencies are remediated, the changed configurations can be applied on cluster and member nodes.

A cluster profile can manage VMware ESXi-based hypervisor clusters by leveraging VMware vCenter server. A hypervisor cluster must be managed by one instance of HPE OneView to avoid inconsistencies.

Use this Cmdlet to create a new cluster profile within OneView.  Any new created clusters within OneView cannot be removed from OneView withour destroying the cluster within the cluster manager.

???+ info
    Minimum required privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.

## Examples

###  Example 1 

```powershell
# Get the specific Cluster Manager
$ClusterManager = Get-OVHypervisorManager -Name ClusterManager1

# Display the allowed locations to place the cluster
$ClusterManager.Locations

DC1
DC2
DC3
DC3\Folder1

$ClusterPassword = Read-Host -Prompt "Cluster password" -AsSecureString

# Get the server profile template the cluster will be created and derived from
$ServerProfileTemplate = Get-OVServerProfileTemplate -Name "Hypervisor Cluster Prod"

# Get a list of servers based on the SPT, that are available to deploy to
$Servers = Get-OVServer -NoProfile -InputObject $ServerProfileTemplate -Count 4

# Create the new cluster profile
New-OVClusterProfile -Name ProdCluster1 -ClusterPrefix ProdClusterNode- -ClusterManager $ClusterManager -ClusterManagerLocation "DC2" -ServerProfileTemplate $ServerProfileTemplate -ClusterPassword $ClusterPassword -Servers $Servers
```

Create a new cluster profile.

###  Example 2 

```powershell
# Get the specific Cluster Manager
$ClusterManager = Get-OVHypervisorManager -Name ClusterManager1

# Display the allowed distributed switch versions supported by the cluster manager
$ClusterManager.AvailableDvsVersions

4.0
4.10
5.0.0
5.1.0
5.5.0
6.0
6.7

$ClusterPassword = Read-Host -Prompt "Cluster password" -AsSecureString

# Get the server profile template the cluster will be created and derived from
$ServerProfileTemplate = Get-OVServerProfileTemplate -Name "Hypervisor Cluster Prod"

# Get a list of servers based on the SPT, that are available to deploy to
$Servers = Get-OVServer -NoProfile -InputObject $ServerProfileTemplate -Count 4

# Create new cluster profile overriding the cluster manager settings
New-OVClusterProfile -Name ProdCluster1 -ClusterPrefix ProdClusterNode- -ClusterManager $ClusterManager -ClusterManagerLocation "DC2" -ServerProfileTemplate $ServerProfileTemplate -ClusterPassword $ClusterPassword -Servers $Servers -OverrideClusterManagerConfig -VirtualSwitchType Distributed -DistributedSwitchUsage AllNetworks -DistributedSwitchVersion 6.0 -HAEnabled $true -DRSEnabled $false 
```

Create a new cluster profile, overriding clsuter manager settings.

## Parameters

### -ApplianceConnection &lt;Object&gt;

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

### -ClusterManager &lt;HPEOneView.Cluster.ClusterManager&gt;

Specify the cluster manager that will manage the cluster and associated members, from Get-OVClusterManager.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ClusterManagerLocation &lt;String&gt;

Specify the location where the cluster will be created within the cluster manager.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ClusterPrefix &lt;String&gt;

Specify the cluster member hostname prefix that will be used.  A unique numerical value will be appended to the end.  If omitted, the clsuter name will be used as the prefix.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DRSEnabled &lt;Bool&gt;

Specify if DRS (if supported) should be enabled ($True) or disabled ($false).

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Description &lt;String&gt;

Provide a description of the cluster.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DistributedSwitchUsage &lt;String&gt;

If overriding the distributed virtual switch configuring set by the cluster manager, specify the switch usage.  Allowed values:

* Standard
* Distributed

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -DistributedSwitchVersion &lt;String&gt;

If overriding the distributed virtual switch configuring set by the cluster manager, specify the version.  To identify the supported versions, look at the AvailableDvsVersions property of the returned cluster manager from Get-OVClusterManager.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -HAEnabled &lt;Bool&gt;

Specify if VMware HA (if supported) should be enabled ($True) or disabled ($false).

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -MultiNicVMotionEnabled &lt;Bool&gt;

Specify if multi-NIC VMotion (if supported) should be enabled ($True) or disabled ($false).

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Name &lt;String&gt;

Provide the cluster profile name.  If `-Prefix` is omitted, this value will become the cluster node prefix value.

| Aliases | None |
| :--- | :--- |
| Required? | True |
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

### -ServerProfileTemplate &lt;Object&gt;

The server profile template from Get-OVServerProfileTemplate that the cluster configuration will be derived from and follow cluster consistency with.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StorageVolume &lt;Object&gt;

One or more storage volumes to assign.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UnmanageVSwitch &lt;SwitchParameter&gt;

Use to configure the cluster profile to not manage host networking.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VirtualSwitchType &lt;String&gt;

Use to indicate which vSiwtch type to configure when overriding cluster manager networking settings.  Allowed values are:

* Standard
* Distributed

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ClusterPassword &lt;SecureString&gt;

Specify the cluster administrator/root account password.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -ConfigurePortGroups &lt;Bool&gt;

Specify if port groups should also be configured when configuring host networking.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Domain &lt;String&gt;

Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the domain name if the management network is not configured to use an IP address pool.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Gateway &lt;IPAddress&gt;

When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the gateway if the management network is not configured to use an IP address pool.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -LeaveHostsInMaintenanceMode &lt;Bool&gt;

Specify if the host should be left in maintenance mode (if applicable) before servicing the cluster.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OverrideClusterManagerConfig &lt;SwitchParameter&gt;

Use to indicate the desire to override the cluster manager default settings.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OverrideManagementAddressAssignmet &lt;SwitchParameter&gt;

Use to indicate address assignment.  If the server profile template boot connections are set to require static addresses, the IPAddress value must be used in the New-OVClusterProfileMember Cmdlet.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -OverrideNetworkingConfig &lt;SwitchParameter&gt;

Use to indicate if network naming will be overridden.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PortGroupNameOverride &lt;Hashtable&gt;

Use to specify what the PortGroup name override should be.  By default, PortGroup names will be automatically assigned based on the network name, removing unique character strings.  Specify an Array of Hashtable with the following format:

    @{ "NetworkName" = "OverrideName" }

 Where "NetworkName" is the name of the Ethernet Network assigned to the connection.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -PrimaryDNS &lt;IPAddress&gt;

Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the primary DNS if the management network is not configured to use an IP address pool.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SecondaryDNS &lt;IPAddress&gt;

Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the secondary DNS if the management network is not configured to use an IP address pool.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -Servers &lt;HPEOneView.Cluster.AddHostRequest[]&gt;

One or more server resource objects from New-OVClusterProfileMember.  Value can be empty to create an empty cluster, if the target cluster manager supports that type of configuration, like VMware vSphere.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -StorageVolumeFileSystem &lt;String&gt;

Specify if the storage volume(s) in the StorageVolume parameter should be formatted with a specific filesystem.  Allowed values:

* VMFS
* Unmanaged

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value | Unmanaged |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -SubnetMask &lt;IPAddress&gt;

When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the subnet mask if the management network is not configured to use an IP address pool.

| Aliases | None |
| :--- | :--- |
| Required? | True |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -TertiaryDNS &lt;IPAddress&gt;

Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the tertiary DNS if the management network is not configured to use an IP address pool.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -VSwitchNameOverride &lt;hashtable&gt;

Use to specify what the vSwitch name override should be.  By default, vSwitch names will be automatically assigned based on the network name, removing unique character strings.  Specify an Array of Hashtable with the following format:

    @{ "NetworkName" = "OverrideName" }

 Where "NetworkName" is the name of the Ethernet Network assigned to the connection.

| Aliases | None |
| :--- | :--- |
| Required? | False |
| Position? | Named |
| Default value |  |
| Accept pipeline input? | false |
| Accept wildcard characters? | False |

### -UseIPAddressAsHostName &lt;Bool&gt;

Use to indicate if the IP Address allocated or assigned should be used for the cluster manager registration instead of the hostname or FQDN.

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

None.  You cannot pipe objects to this Cmdlet.


## Return Values

=== "HPEOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]"
    Asynchronous task resource to monitor.
    

## Related Links

* [Get-OVClusterProfile](get-ovclusterprofile.md)
* [New-OVClusterProfileMember](new-ovclusterprofilemember.md)
* [Remove-OVClusterProfile](remove-ovclusterprofile.md)
* [Update-OVClusterProfile](update-ovclusterprofile.md)
