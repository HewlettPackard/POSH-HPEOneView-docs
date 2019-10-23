<a name="top"></a>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
  <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVHypervisorManager
<p>
Modify an existing hypervisor manager.

### SYNTAX
<p>
<pre><code>Set-HPOVHypervisorManager [-InputObject] &lt;HPOneView.Cluster.HypervisorManager&gt;[ [-Hostname] &lt;String&gt;][ [-DisplayName] &lt;String&gt;][ [-Port] &lt;int&gt;][ [-Credential] &lt;PSCredential&gt;][ [-VirtualSwitchType] &lt;String&gt;][ [-DistributedSwitchUsage] &lt;String&gt;][ [-DistributedSwitchVersion] &lt;String&gt;][ [-HAEnabled] &lt;bool&gt;][ [-DRSEnabled] &lt;bool&gt;][ [-MultiNicVMotionEnabled] &lt;bool&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
You can register a new hypervisor manager with HPE OneView by providing the hostname and credentials. The registered hypervisor manager contains preferences, which are used as default hypervisor or cluster settings during hypervisor cluster profile creation. You can modify the hypervisor manager preferences using the edit operation. You can override these values in a hypervisor cluster profile.

A valid hypervisor manager certificate must be added to HPE OneView trust store to be able to successfully communicate with a hypervisor manager.

The user must have an infrastructure administrator privilege to register or update the hypervisor manager resource in HPE OneView.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DRSEnabled &lt;bool&gt;<p>
Choose to enable or disable VMware DRS. Additional DRS policy settings must be made within the vSphere client.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisplayName &lt;String&gt;<p>
Change the hypervisor managers display name. Used for resource lookup.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DistributedSwitchUsage &lt;String&gt;<p>
Applicable only when vSwitch type is Distributed. This specifies which networks should be configured for distributed switches. Allowed values:

	* AllNetworks - Configures all the networks in the hypervisor cluster profile with distributed virtual switches. All networks include Management, special purpose and general purpose networks. The special purpose networks comprise VM Migration, iSCSI and Fault Tolerance.
	* GeneralNetworks - Configures the general purpose networks in the hypervisor cluster profile with distributed virtual switches.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DistributedSwitchVersion &lt;String&gt;<p>
Applicable only when vSwitch type is of type distributed. Configures distributed virtual switch with the specified version, and must be supported by the Hypervisor Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HAEnabled &lt;bool&gt;<p>
Enable VMware High Availability on a hypervisor cluster to ensure decreased downtime in a virtual environment. Additional VMware HA settings much be made within the vSphere client.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Update the vCenter hostname or IP Address.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Cluster.HypervisorManager&gt;<p>
The HPOneView.Cluster.HypervisorManager resource from Get-HPOVHypervisorManager.

<table><tbody><tr><td>Aliases</td><td>Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MultiNicVMotionEnabled &lt;bool&gt;<p>
Configures VMware Multi-NIC vMotion on hypervisors when there are multiple NICs to VM Migration network. Enable Multi-NIC vMotion to load balance a single or multiple vMotion transmissions over multiple physical NICs.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;int&gt;<p>
Modify the vCenter API SSL port.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VirtualSwitchType &lt;String&gt;<p>
Configures virtual switch on a hypervisor with a specified type. Allowed values:

	* Standard - A virtual switch configured and managed at the hypervisor level; provides networking to virtual machines and VM kernels.
	* Distributed - A virtual switch configured and managed at data center level and configured for each hypervisor to provide networking to virtual machines and VM Kernels.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Cluster.HypervisorManager**_

 The hypervisor manager from Get-HPOVHypervisorManager.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Manager = Get-HPOVHypervisorManager -Name vCenter1 -ErrorAction Stop
Set-HPOVHypervisorManager -InputObject $Manager -Credential (Get-Credential NewUser@domain.com -Message Password) -DRSEnabled $true</pre>
Update the vCenter credentials to use for the conencted hypervisor manager, and enable DRS preference to true.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVHypervisorManager -Name vCenter1 -ErrorAction Stop | Set-HPOVHypervisorManager -VirtualSwitchType Distributed -DistributedSwitchUsage AllNetworks -DistributedSwitchVersion 6.0 </pre>
Change the vCenter preferences to enable Distributed virtual switch for all networking, and set the distributed switch version to 6.0.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$Manager = Get-HPOVHypervisorManager -Name vCenter1 -ErrorAction Stop

$Manager.AvailableDvsVersions
4.0
4.1.0
5.0.0
5.1.0
5.5.0
Set-HPOVHypervisorManager -DistributedSwitchVersion 5.5.0 </pre>
Get the hypervisor manager, display the supported and available distribute switch versions, and set the manager to the maximum supported version 5.5.0.



### Related Links

* [Add-HPOVHypervisorManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVHypervisorManager)
* [Get-HPOVHypervisorManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVHypervisorManager)
* [Remove-HPOVHypervisorManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVHypervisorManager)


***
<div align=right><a href="#Top">Top</a></div>
