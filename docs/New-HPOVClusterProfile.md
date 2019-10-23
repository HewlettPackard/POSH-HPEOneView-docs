<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVClusterProfile
<p>
Create a new cluster profile resource.

### SYNTAX
<p>
<pre><code>New-HPOVClusterProfile [-Name] &lt;string&gt; [-ClusterManager] &lt;HPOneView.Cluster.ClusterManager&gt; [-ClusterManagerLocation] &lt;String&gt; [-ServerProfileTemplate] &lt;Object&gt; [-ClusterPassword] &lt;SecureString&gt;[ [-Description] &lt;String&gt;][ [-ClusterPrefix] &lt;String&gt;][ [-Servers] &lt;HPOneView.Cluster.AddHostRequest[]&gt;][ [-UseIPAddressAsHostName] &lt;bool&gt;] [-LeaveHostsInMaintenanceMode] &lt;bool&gt;[ [-StorageVolume] &lt;Object&gt;][ [-StorageVolumeFileSystem] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVClusterProfile [-Name] &lt;string&gt; [-ClusterManager] &lt;HPOneView.Cluster.ClusterManager&gt; [-ClusterManagerLocation] &lt;String&gt; [-ServerProfileTemplate] &lt;Object&gt; [-ClusterPassword] &lt;SecureString&gt; [-UnmanageVSwitch] &lt;SwitchParameter&gt;[ [-Description] &lt;String&gt;][ [-ClusterPrefix] &lt;String&gt;][ [-Servers] &lt;HPOneView.Cluster.AddHostRequest[]&gt;][ [-HAEnabled] &lt;Bool&gt;][ [-DRSEnabled] &lt;Bool&gt;][ [-MultiNicVMotionEnabled] &lt;bool&gt;][ [-Scope] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVClusterProfile [-Name] &lt;string&gt; [-ClusterManager] &lt;HPOneView.Cluster.ClusterManager&gt; [-ClusterManagerLocation] &lt;String&gt; [-ServerProfileTemplate] &lt;Object&gt; [-ClusterPassword] &lt;SecureString&gt;[ [-Description] &lt;String&gt;][ [-ClusterPrefix] &lt;String&gt;][ [-Servers] &lt;HPOneView.Cluster.AddHostRequest[]&gt;] [-OverrideManagementAddressAssignmet] &lt;SwitchParameter&gt; [-SubnetMask] &lt;IPAddress&gt; [-Gateway] &lt;IPAddress&gt;[ [-PrimaryDNS] &lt;IPAddress&gt;][ [-SecondaryDNS] &lt;IPAddress&gt;][ [-TertiaryDNS] &lt;IPAddress&gt;] [-Domain] &lt;String&gt;[ [-UseIPAddressAsHostName] &lt;bool&gt;] [-LeaveHostsInMaintenanceMode] &lt;bool&gt;[ [-StorageVolume] &lt;Object&gt;][ [-StorageVolumeFileSystem] &lt;String&gt;] [-OverrideNetworkingConfig] &lt;SwitchParameter&gt; [-ConfigurePortGroups] &lt;bool&gt;[ [-VSwitchNameOverride] &lt;hashtable&gt;] [-PortGroupNameOverride] &lt;Hashtable&gt; [-OverrideClusterManagerConfig] &lt;SwitchParameter&gt; [-VirtualSwitchType] &lt;string&gt;[ [-DistributedSwitchUsage] &lt;String&gt;][ [-DistributedSwitchVersion] &lt;String&gt;][ [-HAEnabled] &lt;Bool&gt;][ [-DRSEnabled] &lt;Bool&gt;][ [-MultiNicVMotionEnabled] &lt;bool&gt;][ [-Scope] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A cluster profile enables you to deploy and manage a cluster of servers (nodes) managed by HPE OneView and orchestrates consistent configuration on cluster of server nodes to share the same workload.  A cluster profile and the associated server profile template are used to define a consistent configuration from server nodes to members in the cluster. The associated server profiles define physical server configurations for server nodes in the cluster, which are derived from parent cluster profile and its associated server profile template. 

NOTE: The server profile template must have a configured connection to the hypervisor management network for the template to be valid for use by a hypervisor cluster profile.

The cluster profile helps you manage life cycle operations, such as growing or shrinking the cluster, modifying configurations based on needs, consistency checks, and nondisruptive firmware updates on the member nodes. For example, you can grow or shrink a cluster by adding or removing members from the cluster profile. Any change in the configuration of the cluster profile will be reported as an inconsistency. When inconsistencies are remediated, the changed configurations can be applied on cluster and member nodes.

A cluster profile can manage VMware ESXi-based hypervisor clusters by leveraging VMware vCenter server. A hypervisor cluster must be managed by one instance of HPE OneView to avoid inconsistencies.

Use this Cmdlet to create a new cluster profile within OneView.  Any new created clusters within OneView cannot be removed from OneView withour destroying the cluster within the cluster manager.

Privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ClusterManager &lt;HPOneView.Cluster.ClusterManager&gt;<p>
Specify the cluster manager that will manage the cluster and associated members, from Get-HPOVClusterManager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ClusterManagerLocation &lt;String&gt;<p>
Specify the location where the cluster will be created within the cluster manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ClusterPassword &lt;SecureString&gt;<p>
Specify the cluster administrator/root account password.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ClusterPrefix &lt;String&gt;<p>
Specify the cluster member hostname prefix that will be used.  A unique numerical value will be appended to the end.  If omitted, the clsuter name will be used as the prefix.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConfigurePortGroups &lt;bool&gt;<p>
Specify if port groups should also be configured when configuring host networking.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DRSEnabled &lt;Bool&gt;<p>
Specify if DRS (if supported) should be enabled ($True) or disabled ($false).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Provide a description of the cluster.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DistributedSwitchUsage &lt;String&gt;<p>
If overriding the distributed virtual switch configuring set by the cluster manager, specify the switch usage.  Allowed values:

	* Standard
	* Distributed

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DistributedSwitchVersion &lt;String&gt;<p>
If overriding the distributed virtual switch configuring set by the cluster manager, specify the version.  To identify the supported versions, look at the AvailableDvsVersions property of the returned cluster manager from Get-HPOVClusterManager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Domain &lt;String&gt;<p>
Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the domain name if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Gateway &lt;IPAddress&gt;<p>
When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the gateway if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HAEnabled &lt;Bool&gt;<p>
Specify if VMware HA (if supported) should be enabled ($True) or disabled ($false).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LeaveHostsInMaintenanceMode &lt;bool&gt;<p>
Specify if the host should be left in maintenance mode (if applicable) before servicing the cluster.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MultiNicVMotionEnabled &lt;bool&gt;<p>
Specify if multi-NIC VMotion (if supported) should be enabled ($True) or disabled ($false).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;string&gt;<p>
Provide the cluster profile name.  If -Prefix is omitted, this value will become the cluster node prefix value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideClusterManagerConfig &lt;SwitchParameter&gt;<p>
Use to indicate the desire to override the cluster manager default settings.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideManagementAddressAssignmet &lt;SwitchParameter&gt;<p>
Use to indicate address assignment.  If the server profile template boot connections are set to require static addresses, the IPAddress value must be used in the New-HPOVClusterProfileMember Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideNetworkingConfig &lt;SwitchParameter&gt;<p>
Use to indicate if network naming will be overridden.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PortGroupNameOverride &lt;Hashtable&gt;<p>
Use to specify what the PortGroup name override should be.  By default, PortGroup names will be automatically assigned based on the network name, removing unique character strings.  Specify an Array of Hashtable with the following format:

	@{ "NetworkName" = "OverrideName" }

 Where "NetworkName" is the name of the Ethernet Network assigned to the connection.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrimaryDNS &lt;IPAddress&gt;<p>
Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the primary DNS if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecondaryDNS &lt;IPAddress&gt;<p>
Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the secondary DNS if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfileTemplate &lt;Object&gt;<p>
The server profile template from Get-HPOVServerProfileTemplate that the cluster configuration will be derived from and follow cluster consistency with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Servers &lt;HPOneView.Cluster.AddHostRequest[]&gt;<p>
One or more server resource objects from New-HPOVClusterProfileMember.  Value can be empty to create an empty cluster, if the target cluster manager supports that type of configuration, like VMware vSphere.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageVolume &lt;Object&gt;<p>
One or more storage volumes to assign.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageVolumeFileSystem &lt;String&gt;<p>
Specify if the storage volume(s) in the StorageVolume parameter should be formatted with a specific filesystem.  Allowed values:

	* VMFS
	* Unmanaged

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Unmanaged</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SubnetMask &lt;IPAddress&gt;<p>
When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the subnet mask if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TertiaryDNS &lt;IPAddress&gt;<p>
Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the tertiary DNS if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UnmanageVSwitch &lt;SwitchParameter&gt;<p>
Use to configure the cluster profile to not manage host networking.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UseIPAddressAsHostName &lt;bool&gt;<p>
Use to indicate if the IP Address allocated or assigned should be used for the cluster manager registration instead of the hostname or FQDN.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VSwitchNameOverride &lt;hashtable&gt;<p>
Use to specify what the vSwitch name override should be.  By default, vSwitch names will be automatically assigned based on the network name, removing unique character strings.  Specify an Array of Hashtable with the following format:

	@{ "NetworkName" = "OverrideName" }

 Where "NetworkName" is the name of the Ethernet Network assigned to the connection.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VirtualSwitchType &lt;string&gt;<p>
Use to indicate which vSiwtch type to configure when overriding cluster manager networking settings.  Allowed values are:

	* Standard
	* Distributed

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
# Get the specific Cluster Manager
$ClusterManager = Get-HPOVHypervisorManager -Name ClusterManager1

# Display the allowed locations to place the cluster
$ClusterManager.Locations

DC1
DC2
DC3
DC3\Folder1

$ClusterPassword = Read-Host -Prompt "Cluster password" -AsSecureString

# Get the server profile template the cluster will be created and derived from
$ServerProfileTemplate = Get-HPOVServerProfileTemplate -Name "Hypervisor Cluster Prod"

# Get a list of servers based on the SPT, that are available to deploy to
$Servers = Get-HPOVServer -NoProfile -InputObject $ServerProfileTemplate -Count 4

# Create the new cluster profile
New-HPOVClusterProfile -Name ProdCluster1 -ClusterPrefix ProdClusterNode- -ClusterManager $ClusterManager -ClusterManagerLocation "DC2" -ServerProfileTemplate $ServerProfileTemplate -ClusterPassword $ClusterPassword -Servers $Servers</pre>
Create a new cluster profile.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
# Get the specific Cluster Manager
$ClusterManager = Get-HPOVHypervisorManager -Name ClusterManager1

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
$ServerProfileTemplate = Get-HPOVServerProfileTemplate -Name "Hypervisor Cluster Prod"

# Get a list of servers based on the SPT, that are available to deploy to
$Servers = Get-HPOVServer -NoProfile -InputObject $ServerProfileTemplate -Count 4

# Create new cluster profile overriding the cluster manager settings
New-HPOVClusterProfile -Name ProdCluster1 -ClusterPrefix ProdClusterNode- -ClusterManager $ClusterManager -ClusterManagerLocation "DC2" -ServerProfileTemplate $ServerProfileTemplate -ClusterPassword $ClusterPassword -Servers $Servers -OverrideClusterManagerConfig -VirtualSwitchType Distributed -DistributedSwitchUsage AllNetworks -DistributedSwitchVersion 6.0 -HAEnabled $true -DRSEnabled $false </pre>
Create a new cluster profile, overriding clsuter manager settings.



### Related Links

* [Get-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVClusterProfile)
* [New-HPOVClusterProfileMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfileMember)
* [Remove-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVClusterProfile)
* [Update-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVClusterProfile)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVClusterProfile
<p>
Create a new cluster profile resource.

### SYNTAX
<p>
<pre><code>New-HPOVClusterProfile [-Name] &lt;string&gt; [-ClusterManager] &lt;HPOneView.Cluster.ClusterManager&gt; [-ClusterManagerLocation] &lt;String&gt; [-ServerProfileTemplate] &lt;Object&gt; [-ClusterPassword] &lt;SecureString&gt;[ [-Description] &lt;String&gt;][ [-ClusterPrefix] &lt;String&gt;][ [-Servers] &lt;HPOneView.Cluster.AddHostRequest[]&gt;][ [-UseIPAddressAsHostName] &lt;bool&gt;] [-LeaveHostsInMaintenanceMode] &lt;bool&gt;[ [-StorageVolume] &lt;Object&gt;][ [-StorageVolumeFileSystem] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVClusterProfile [-Name] &lt;string&gt; [-ClusterManager] &lt;HPOneView.Cluster.ClusterManager&gt; [-ClusterManagerLocation] &lt;String&gt; [-ServerProfileTemplate] &lt;Object&gt; [-ClusterPassword] &lt;SecureString&gt; [-UnmanageVSwitch] &lt;SwitchParameter&gt;[ [-Description] &lt;String&gt;][ [-ClusterPrefix] &lt;String&gt;][ [-Servers] &lt;HPOneView.Cluster.AddHostRequest[]&gt;][ [-HAEnabled] &lt;Bool&gt;][ [-DRSEnabled] &lt;Bool&gt;][ [-MultiNicVMotionEnabled] &lt;bool&gt;][ [-Scope] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVClusterProfile [-Name] &lt;string&gt; [-ClusterManager] &lt;HPOneView.Cluster.ClusterManager&gt; [-ClusterManagerLocation] &lt;String&gt; [-ServerProfileTemplate] &lt;Object&gt; [-ClusterPassword] &lt;SecureString&gt;[ [-Description] &lt;String&gt;][ [-ClusterPrefix] &lt;String&gt;][ [-Servers] &lt;HPOneView.Cluster.AddHostRequest[]&gt;] [-OverrideManagementAddressAssignmet] &lt;SwitchParameter&gt; [-SubnetMask] &lt;IPAddress&gt; [-Gateway] &lt;IPAddress&gt;[ [-PrimaryDNS] &lt;IPAddress&gt;][ [-SecondaryDNS] &lt;IPAddress&gt;][ [-TertiaryDNS] &lt;IPAddress&gt;] [-Domain] &lt;String&gt;[ [-UseIPAddressAsHostName] &lt;bool&gt;] [-LeaveHostsInMaintenanceMode] &lt;bool&gt;[ [-StorageVolume] &lt;Object&gt;][ [-StorageVolumeFileSystem] &lt;String&gt;] [-OverrideNetworkingConfig] &lt;SwitchParameter&gt; [-ConfigurePortGroups] &lt;bool&gt;[ [-VSwitchNameOverride] &lt;hashtable&gt;] [-PortGroupNameOverride] &lt;Hashtable&gt; [-OverrideClusterManagerConfig] &lt;SwitchParameter&gt; [-VirtualSwitchType] &lt;string&gt;[ [-DistributedSwitchUsage] &lt;String&gt;][ [-DistributedSwitchVersion] &lt;String&gt;][ [-HAEnabled] &lt;Bool&gt;][ [-DRSEnabled] &lt;Bool&gt;][ [-MultiNicVMotionEnabled] &lt;bool&gt;][ [-Scope] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A cluster profile enables you to deploy and manage a cluster of servers (nodes) managed by HPE OneView and orchestrates consistent configuration on cluster of server nodes to share the same workload.  A cluster profile and the associated server profile template are used to define a consistent configuration from server nodes to members in the cluster. The associated server profiles define physical server configurations for server nodes in the cluster, which are derived from parent cluster profile and its associated server profile template. 

NOTE: The server profile template must have a configured connection to the hypervisor management network for the template to be valid for use by a hypervisor cluster profile.

The cluster profile helps you manage life cycle operations, such as growing or shrinking the cluster, modifying configurations based on needs, consistency checks, and nondisruptive firmware updates on the member nodes. For example, you can grow or shrink a cluster by adding or removing members from the cluster profile. Any change in the configuration of the cluster profile will be reported as an inconsistency. When inconsistencies are remediated, the changed configurations can be applied on cluster and member nodes.

A cluster profile can manage VMware ESXi-based hypervisor clusters by leveraging VMware vCenter server. A hypervisor cluster must be managed by one instance of HPE OneView to avoid inconsistencies.

Use this Cmdlet to create a new cluster profile within OneView.  Any new created clusters within OneView cannot be removed from OneView withour destroying the cluster within the cluster manager.

Privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ClusterManager &lt;HPOneView.Cluster.ClusterManager&gt;<p>
Specify the cluster manager that will manage the cluster and associated members, from Get-HPOVClusterManager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ClusterManagerLocation &lt;String&gt;<p>
Specify the location where the cluster will be created within the cluster manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ClusterPassword &lt;SecureString&gt;<p>
Specify the cluster administrator/root account password.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ClusterPrefix &lt;String&gt;<p>
Specify the cluster member hostname prefix that will be used.  A unique numerical value will be appended to the end.  If omitted, the clsuter name will be used as the prefix.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConfigurePortGroups &lt;bool&gt;<p>
Specify if port groups should also be configured when configuring host networking.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DRSEnabled &lt;Bool&gt;<p>
Specify if DRS (if supported) should be enabled ($True) or disabled ($false).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Provide a description of the cluster.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DistributedSwitchUsage &lt;String&gt;<p>
If overriding the distributed virtual switch configuring set by the cluster manager, specify the switch usage.  Allowed values:

	* Standard
	* Distributed

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DistributedSwitchVersion &lt;String&gt;<p>
If overriding the distributed virtual switch configuring set by the cluster manager, specify the version.  To identify the supported versions, look at the AvailableDvsVersions property of the returned cluster manager from Get-HPOVClusterManager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Domain &lt;String&gt;<p>
Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the domain name if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Gateway &lt;IPAddress&gt;<p>
When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the gateway if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HAEnabled &lt;Bool&gt;<p>
Specify if VMware HA (if supported) should be enabled ($True) or disabled ($false).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LeaveHostsInMaintenanceMode &lt;bool&gt;<p>
Specify if the host should be left in maintenance mode (if applicable) before servicing the cluster.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MultiNicVMotionEnabled &lt;bool&gt;<p>
Specify if multi-NIC VMotion (if supported) should be enabled ($True) or disabled ($false).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;string&gt;<p>
Provide the cluster profile name.  If -Prefix is omitted, this value will become the cluster node prefix value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideClusterManagerConfig &lt;SwitchParameter&gt;<p>
Use to indicate the desire to override the cluster manager default settings.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideManagementAddressAssignmet &lt;SwitchParameter&gt;<p>
Use to indicate address assignment.  If the server profile template boot connections are set to require static addresses, the IPAddress value must be used in the New-HPOVClusterProfileMember Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideNetworkingConfig &lt;SwitchParameter&gt;<p>
Use to indicate if network naming will be overridden.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PortGroupNameOverride &lt;Hashtable&gt;<p>
Use to specify what the PortGroup name override should be.  By default, PortGroup names will be automatically assigned based on the network name, removing unique character strings.  Specify an Array of Hashtable with the following format:

	@{ "NetworkName" = "OverrideName" }

 Where "NetworkName" is the name of the Ethernet Network assigned to the connection.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrimaryDNS &lt;IPAddress&gt;<p>
Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the primary DNS if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecondaryDNS &lt;IPAddress&gt;<p>
Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the secondary DNS if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfileTemplate &lt;Object&gt;<p>
The server profile template from Get-HPOVServerProfileTemplate that the cluster configuration will be derived from and follow cluster consistency with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Servers &lt;HPOneView.Cluster.AddHostRequest[]&gt;<p>
One or more server resource objects from New-HPOVClusterProfileMember.  Value can be empty to create an empty cluster, if the target cluster manager supports that type of configuration, like VMware vSphere.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageVolume &lt;Object&gt;<p>
One or more storage volumes to assign.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageVolumeFileSystem &lt;String&gt;<p>
Specify if the storage volume(s) in the StorageVolume parameter should be formatted with a specific filesystem.  Allowed values:

	* VMFS
	* Unmanaged

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Unmanaged</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SubnetMask &lt;IPAddress&gt;<p>
When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the subnet mask if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TertiaryDNS &lt;IPAddress&gt;<p>
Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the tertiary DNS if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UnmanageVSwitch &lt;SwitchParameter&gt;<p>
Use to configure the cluster profile to not manage host networking.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UseIPAddressAsHostName &lt;bool&gt;<p>
Use to indicate if the IP Address allocated or assigned should be used for the cluster manager registration instead of the hostname or FQDN.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VSwitchNameOverride &lt;hashtable&gt;<p>
Use to specify what the vSwitch name override should be.  By default, vSwitch names will be automatically assigned based on the network name, removing unique character strings.  Specify an Array of Hashtable with the following format:

	@{ "NetworkName" = "OverrideName" }

 Where "NetworkName" is the name of the Ethernet Network assigned to the connection.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VirtualSwitchType &lt;string&gt;<p>
Use to indicate which vSiwtch type to configure when overriding cluster manager networking settings.  Allowed values are:

	* Standard
	* Distributed

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
# Get the specific Cluster Manager
$ClusterManager = Get-HPOVHypervisorManager -Name ClusterManager1

# Display the allowed locations to place the cluster
$ClusterManager.Locations

DC1
DC2
DC3
DC3\Folder1

$ClusterPassword = Read-Host -Prompt "Cluster password" -AsSecureString

# Get the server profile template the cluster will be created and derived from
$ServerProfileTemplate = Get-HPOVServerProfileTemplate -Name "Hypervisor Cluster Prod"

# Get a list of servers based on the SPT, that are available to deploy to
$Servers = Get-HPOVServer -NoProfile -InputObject $ServerProfileTemplate -Count 4

# Create the new cluster profile
New-HPOVClusterProfile -Name ProdCluster1 -ClusterPrefix ProdClusterNode- -ClusterManager $ClusterManager -ClusterManagerLocation "DC2" -ServerProfileTemplate $ServerProfileTemplate -ClusterPassword $ClusterPassword -Servers $Servers</pre>
Create a new cluster profile.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
# Get the specific Cluster Manager
$ClusterManager = Get-HPOVHypervisorManager -Name ClusterManager1

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
$ServerProfileTemplate = Get-HPOVServerProfileTemplate -Name "Hypervisor Cluster Prod"

# Get a list of servers based on the SPT, that are available to deploy to
$Servers = Get-HPOVServer -NoProfile -InputObject $ServerProfileTemplate -Count 4

# Create new cluster profile overriding the cluster manager settings
New-HPOVClusterProfile -Name ProdCluster1 -ClusterPrefix ProdClusterNode- -ClusterManager $ClusterManager -ClusterManagerLocation "DC2" -ServerProfileTemplate $ServerProfileTemplate -ClusterPassword $ClusterPassword -Servers $Servers -OverrideClusterManagerConfig -VirtualSwitchType Distributed -DistributedSwitchUsage AllNetworks -DistributedSwitchVersion 6.0 -HAEnabled $true -DRSEnabled $false </pre>
Create a new cluster profile, overriding clsuter manager settings.



### Related Links

* [Get-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVClusterProfile)
* [New-HPOVClusterProfileMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfileMember)
* [Remove-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVClusterProfile)
* [Update-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVClusterProfile)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVClusterProfile
<p>
Create a new cluster profile resource.

### SYNTAX
<p>
<pre><code>New-HPOVClusterProfile [-Name] &lt;string&gt; [-ClusterManager] &lt;HPOneView.Cluster.ClusterManager&gt; [-ClusterManagerLocation] &lt;String&gt; [-ServerProfileTemplate] &lt;Object&gt; [-ClusterPassword] &lt;SecureString&gt;[ [-Description] &lt;String&gt;][ [-ClusterPrefix] &lt;String&gt;][ [-Servers] &lt;HPOneView.Cluster.AddHostRequest[]&gt;] [-LeaveHostsInMaintenanceMode] &lt;bool&gt;[ [-StorageVolume] &lt;Object&gt;][ [-StorageVolumeFileSystem] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVClusterProfile [-Name] &lt;string&gt; [-ClusterManager] &lt;HPOneView.Cluster.ClusterManager&gt; [-ClusterManagerLocation] &lt;String&gt; [-ServerProfileTemplate] &lt;Object&gt; [-ClusterPassword] &lt;SecureString&gt; [-UnmanageVSwitch] &lt;SwitchParameter&gt;[ [-Description] &lt;String&gt;][ [-ClusterPrefix] &lt;String&gt;][ [-Servers] &lt;HPOneView.Cluster.AddHostRequest[]&gt;][ [-HAEnabled] &lt;Bool&gt;][ [-DRSEnabled] &lt;Bool&gt;][ [-MultiNicVMotionEnabled] &lt;bool&gt;][ [-Scope] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVClusterProfile [-Name] &lt;string&gt; [-ClusterManager] &lt;HPOneView.Cluster.ClusterManager&gt; [-ClusterManagerLocation] &lt;String&gt; [-ServerProfileTemplate] &lt;Object&gt; [-ClusterPassword] &lt;SecureString&gt;[ [-Description] &lt;String&gt;][ [-ClusterPrefix] &lt;String&gt;][ [-Servers] &lt;HPOneView.Cluster.AddHostRequest[]&gt;] [-OverrideManagementAddressAssignmet] &lt;SwitchParameter&gt; [-SubnetMask] &lt;IPAddress&gt; [-Gateway] &lt;IPAddress&gt;[ [-PrimaryDNS] &lt;IPAddress&gt;][ [-SecondaryDNS] &lt;IPAddress&gt;][ [-TertiaryDNS] &lt;IPAddress&gt;] [-Domain] &lt;String&gt; [-LeaveHostsInMaintenanceMode] &lt;bool&gt;[ [-StorageVolume] &lt;Object&gt;][ [-StorageVolumeFileSystem] &lt;String&gt;] [-OverrideNetworkingConfig] &lt;SwitchParameter&gt; [-ConfigurePortGroups] &lt;bool&gt; [-VSwitchNameOverride] &lt;hashtable&gt; [-PortGroupNameOverride] &lt;Hashtable&gt; [-OverrideClusterManagerConfig] &lt;SwitchParameter&gt; [-VirtualSwitchType] &lt;string&gt;[ [-DistributedSwitchUsage] &lt;String&gt;][ [-DistributedSwitchVersion] &lt;String&gt;][ [-HAEnabled] &lt;Bool&gt;][ [-DRSEnabled] &lt;Bool&gt;][ [-MultiNicVMotionEnabled] &lt;bool&gt;][ [-Scope] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A cluster profile enables you to deploy and manage a cluster of servers (nodes) managed by HPE OneView and orchestrates consistent configuration on cluster of server nodes to share the same workload.  A cluster profile and the associated server profile template are used to define a consistent configuration from server nodes to members in the cluster. The associated server profiles define physical server configurations for server nodes in the cluster, which are derived from parent cluster profile and its associated server profile template. 

NOTE: The server profile template must have a configured connection to the hypervisor management network for the template to be valid for use by a hypervisor cluster profile.

The cluster profile helps you manage life cycle operations, such as growing or shrinking the cluster, modifying configurations based on needs, consistency checks, and nondisruptive firmware updates on the member nodes. For example, you can grow or shrink a cluster by adding or removing members from the cluster profile. Any change in the configuration of the cluster profile will be reported as an inconsistency. When inconsistencies are remediated, the changed configurations can be applied on cluster and member nodes.

A cluster profile can manage VMware ESXi-based hypervisor clusters by leveraging VMware vCenter server. A hypervisor cluster must be managed by one instance of HPE OneView to avoid inconsistencies.

Use this Cmdlet to create a new cluster profile within OneView.  Any new created clusters within OneView cannot be removed from OneView withour destroying the cluster within the cluster manager.

Privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ClusterManager &lt;HPOneView.Cluster.ClusterManager&gt;<p>
Specify the cluster manager that will manage the cluster and associated members, from Get-HPOVClusterManager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ClusterManagerLocation &lt;String&gt;<p>
Specify the location where the cluster will be created within the cluster manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ClusterPassword &lt;SecureString&gt;<p>
Specify the cluster administrator/root account password.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ClusterPrefix &lt;String&gt;<p>
Specify the cluster member hostname prefix that will be used.  A unique numerical value will be appended to the end.  If omitted, the clsuter name will be used as the prefix.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConfigurePortGroups &lt;bool&gt;<p>
Specify if port groups should also be configured when configuring host networking.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DRSEnabled &lt;Bool&gt;<p>
Specify if DRS (if supported) should be enabled ($True) or disabled ($false).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Provide a description of the cluster.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DistributedSwitchUsage &lt;String&gt;<p>
If overriding the distributed virtual switch configuring set by the cluster manager, specify the switch usage.  Allowed values:

	* Standard
	* Distributed

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DistributedSwitchVersion &lt;String&gt;<p>
If overriding the distributed virtual switch configuring set by the cluster manager, specify the version.  To identify the supported versions, look at the AvailableDvsVersions property of the returned cluster manager from Get-HPOVClusterManager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Domain &lt;String&gt;<p>
Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the domain name if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Gateway &lt;IPAddress&gt;<p>
When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the gateway if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HAEnabled &lt;Bool&gt;<p>
Specify if VMware HA (if supported) should be enabled ($True) or disabled ($false).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LeaveHostsInMaintenanceMode &lt;bool&gt;<p>
Specify if the host should be left in maintenance mode (if applicable) before servicing the cluster.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MultiNicVMotionEnabled &lt;bool&gt;<p>
Specify if multi-NIC VMotion (if supported) should be enabled ($True) or disabled ($false).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;string&gt;<p>
Provide the cluster profile name.  If -Prefix is omitted, this value will become the cluster node prefix value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideClusterManagerConfig &lt;SwitchParameter&gt;<p>
Use to indicate the desire to override the cluster manager default settings.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideManagementAddressAssignmet &lt;SwitchParameter&gt;<p>
Use to indicate address assignment.  If the server profile template boot connections are set to require static addresses, the IPAddress value must be used in the New-HPOVClusterProfileMember Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideNetworkingConfig &lt;SwitchParameter&gt;<p>
Use to indicate if network naming will be overridden.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PortGroupNameOverride &lt;Hashtable&gt;<p>
Use to specify what the PortGroup name override should be.  By default, PortGroup names will be automatically assigned based on the network name, removing unique character strings.  Specify an Array of Hashtable with the following format:

	@{ "NetworkName" = "OverrideName" }

 Where "NetworkName" is the name of the Ethernet Network assigned to the connection.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrimaryDNS &lt;IPAddress&gt;<p>
Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the primary DNS if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecondaryDNS &lt;IPAddress&gt;<p>
Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the secondary DNS if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfileTemplate &lt;Object&gt;<p>
The server profile template from Get-HPOVServerProfileTemplate that the cluster configuration will be derived from and follow cluster consistency with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Servers &lt;HPOneView.Cluster.AddHostRequest[]&gt;<p>
One or more server resource objects from New-HPOVClusterProfileMember.  Value can be empty to create an empty cluster, if the target cluster manager supports that type of configuration, like VMware vSphere.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageVolume &lt;Object&gt;<p>
One or more storage volumes to assign.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageVolumeFileSystem &lt;String&gt;<p>
Specify if the storage volume(s) in the StorageVolume parameter should be formatted with a specific filesystem.  Allowed values:

	* VMFS
	* Unmanaged

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Unmanaged</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SubnetMask &lt;IPAddress&gt;<p>
When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the subnet mask if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TertiaryDNS &lt;IPAddress&gt;<p>
Optional - When deploying a new cluster profile with HPE Synergy and Image Streamer, specify the tertiary DNS if the management network is not configured to use an IP Address Pool.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UnmanageVSwitch &lt;SwitchParameter&gt;<p>
Use to configure the cluster profile to not manage host networking.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VSwitchNameOverride &lt;hashtable&gt;<p>
Use to specify what the vSwitch name override should be.  By default, vSwitch names will be automatically assigned based on the network name, removing unique character strings.  Specify an Array of Hashtable with the following format:

	@{ "NetworkName" = "OverrideName" }

 Where "NetworkName" is the name of the Ethernet Network assigned to the connection.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VirtualSwitchType &lt;string&gt;<p>
Use to indicate which vSiwtch type to configure when overriding cluster manager networking settings.  Allowed values are:

	* Standard
	* Distributed

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
# Get the specific Cluster Manager
$ClusterManager = Get-HPOVHypervisorManager -Name ClusterManager1

# Display the allowed locations to place the cluster
$ClusterManager.Locations

DC1
DC2
DC3
DC3\Folder1

$ClusterPassword = Read-Host -Prompt "Cluster password" -AsSecureString

# Get the server profile template the cluster will be created and derived from
$ServerProfileTemplate = Get-HPOVServerProfileTemplate -Name "Hypervisor Cluster Prod"

# Get a list of servers based on the SPT, that are available to deploy to
$Servers = Get-HPOVServer -NoProfile -InputObject $ServerProfileTemplate -Count 4

# Create the new cluster profile
New-HPOVClusterProfile -Name ProdCluster1 -ClusterPrefix ProdClusterNode- -ClusterManager $ClusterManager -ClusterManagerLocation "DC2" -ServerProfileTemplate $ServerProfileTemplate -ClusterPassword $ClusterPassword -Servers $Servers</pre>
Create a new cluster profile.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
# Get the specific Cluster Manager
$ClusterManager = Get-HPOVHypervisorManager -Name ClusterManager1

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
$ServerProfileTemplate = Get-HPOVServerProfileTemplate -Name "Hypervisor Cluster Prod"

# Get a list of servers based on the SPT, that are available to deploy to
$Servers = Get-HPOVServer -NoProfile -InputObject $ServerProfileTemplate -Count 4

# Create new cluster profile overriding the cluster manager settings
New-HPOVClusterProfile -Name ProdCluster1 -ClusterPrefix ProdClusterNode- -ClusterManager $ClusterManager -ClusterManagerLocation "DC2" -ServerProfileTemplate $ServerProfileTemplate -ClusterPassword $ClusterPassword -Servers $Servers -OverrideClusterManagerConfig -VirtualSwitchType Distributed -DistributedSwitchUsage AllNetworks -DistributedSwitchVersion 6.0 -HAEnabled $true -DRSEnabled $false </pre>
Create a new cluster profile, overriding clsuter manager settings.



### Related Links

* [Get-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVClusterProfile)
* [New-HPOVClusterProfileMember](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVClusterProfileMember)
* [Remove-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVClusterProfile)
* [Update-HPOVClusterProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVClusterProfile)


***
<div align=right><a href="#Top">Top</a></div>
