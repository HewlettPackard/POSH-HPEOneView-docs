<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVLogicalSwitch
<p>
Create a new Logical Switch resource.

### SYNTAX
<p>
<pre><code>New-HPOVLogicalSwitch[ [-Name] &lt;String&gt;] [-LogicalSwitchGroup] &lt;Object&gt; [-Managed] &lt;SwitchParameter&gt; [-Switch1Address] &lt;String&gt; [-SshUserName] &lt;String&gt; [-SshPassword] &lt;Object&gt; [-SnmpCommunity] &lt;String&gt;[ [-Switch2Address] &lt;String&gt;][ [-SnmpPort] &lt;int&gt;] [-SnmpV1] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalSwitch[ [-Name] &lt;String&gt;] [-LogicalSwitchGroup] &lt;Object&gt; [-Monitored] &lt;SwitchParameter&gt; [-Switch1Address] &lt;String&gt; [-SshUserName] &lt;String&gt; [-SshPassword] &lt;Object&gt;[ [-Switch2Address] &lt;String&gt;][ [-SnmpPort] &lt;int&gt;] [-SnmpV3] &lt;SwitchParameter&gt; [-SnmpUserName] &lt;String&gt; [-SnmpAuthLevel] &lt;String&gt; [-SnmpAuthProtocol] &lt;String&gt; [-SnmpAuthPassword] &lt;Object&gt; [-SnmpPrivProtocol] &lt;String&gt; [-SnmpPrivPassword] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalSwitch[ [-Name] &lt;String&gt;] [-LogicalSwitchGroup] &lt;Object&gt; [-Managed] &lt;SwitchParameter&gt; [-Switch1Address] &lt;String&gt; [-SshUserName] &lt;String&gt; [-SshPassword] &lt;Object&gt;[ [-Switch2Address] &lt;String&gt;][ [-SnmpPort] &lt;int&gt;] [-SnmpV3] &lt;SwitchParameter&gt; [-SnmpUserName] &lt;String&gt; [-SnmpAuthLevel] &lt;String&gt; [-SnmpAuthProtocol] &lt;String&gt; [-SnmpAuthPassword] &lt;Object&gt; [-SnmpPrivProtocol] &lt;String&gt; [-SnmpPrivPassword] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalSwitch[ [-Name] &lt;String&gt;] [-LogicalSwitchGroup] &lt;Object&gt; [-Monitored] &lt;SwitchParameter&gt; [-Switch1Address] &lt;String&gt; [-SshUserName] &lt;String&gt; [-SshPassword] &lt;Object&gt; [-SnmpCommunity] &lt;String&gt;[ [-Switch2Address] &lt;String&gt;][ [-SnmpPort] &lt;int&gt;] [-SnmpV1] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A logical switch is added into HPE OneView as a managed or monitored logical switch. The logical switch can consist of a maximum of two physical top-of-rack switches (external to the c7000 enclosure) configured in a single stacking domain.  It is based on a logical switch group configuration. If the logical switch transitions to an Inconsistent with group state (because of changes in either the logical switch or the logical switch group), update the logical switch configuration based on the logical switch group to return to a consistent state.
 You can create a logical switch with a maximum of two Cisco Nexus switches. When there are two Cisco Nexus switches in a logical switch, they are expected to be in a virtual port channel (vPC) environment. vPC must be configured on both switches, and they should belong to the same vPC domain. For information about supported switches, see the Hewlett Packard Enterprise Information Library for supportability information.
 Before you add a logical switch as managed, consider the following for Fabric Extender and Virtual Connect interconnects physically connected to the logical switch: 
 * When only IPv4 Ethernet networks are assigned to an uplink set at creation time, the uplink set can be physically connected to any upstream switch in the logical switch.
 * When an FCoE network is assigned to an uplink set at creation time, the uplink set is limited to single-homed physical connectivity and all uplink ports must connect to the same upstream switch in the logical switch.  If a port is subsequently added to the uplink set with an FCoE network or an existing port in the uplink set is connected to a second upstream switch, that port is not available for configuration and an alert is generated. If a new port added to the uplink set is connected to the same switch as the other ports, that port is available to carry traffic and an alert is not generated.  To change an uplink set from single-homed connectivity to multi-homed connectivity or vice-versa, the uplink set configuration must be deleted and re-created with the appropriate network assignments and physical configuration.
 * Make sure that LLDP is enabled on the top-of-rack switch internal (downlink) ports where Virtual Connect interconnects under HPE OneView management are connected. 
 Adding a logical switch as monitored enables HPE OneView to monitor the logical switch for operation status, collect statistics, and alert users to specific conditions and incompatibilities between the switch and Fabric Extender or Virtual Connect interconnect. In the monitored mode, deployment of the server profile connections is supported for HPE Virtual Connect interconnects but not for Fabric Extender (FEX) interconnects.
 Logical switch configuration guidelines 
 * When Virtual Connect interconnects are connected to a logical switch, an uplink set cannot span multiple interconnects. This limitation is similar to FEX interconnects. However, multiple uplink sets are supported on a single Virtual Connect interconnect.
 * When you enable or disable a top-of-rack switch internal port, the associated port on a FEX interconnect also displays the updated port status.
 * When retrieving MAC addresses for FEX interconnects, only the entries that are associated with the managed FEX interconnects are displayed.
 * If an FCoE network is assigned to an uplink set that is configured as dual-homed, (an invalid configuration), that FCoE network is not provisioned on the switch. Deployment of any server profile connection with this FCoE network will fail.
 * When a logical switch is defined and configured with only a single physical switch, the uplink set associated with any FEX module connected to this logical switch is considered single-homed. Therefore, you can add an FCoE network to the uplink set even if the uplink set was initially created only with Ethernet networks. Deployment of any server profile connection with this FCoE network will succeed.
 * For server profiles created for server ports connected to FEX interconnects, Ethernet networks are only supported on physical function a, and FCoE networks are only supported on physical function b at the server port. When both physical functions have connections defined, traffic is split evenly across both ports.
 * If HPE OneView cannot log in to the switch, a critical alert is generated. Prevent any event on the switch that might trigger switch configuration; otherwise, the switch transitions to ConfigError state and you must reapply the configuration on the associated logical interconnects to recover.
 * If HPE OneView is unable to claim a member switch of the logical switch when the operational mode of the logical switch is Managed, the operating state of the switch will transition to Added with Error. In this case, the Message of the Day (MOTD) banner on the switch will indicate that the switch is currently claimed by another HPE OneView appliance and the message "This switch is being controlled by OneView Domain, Appliance ID: {}" displays. You should remove the logical switch from that HPE OneView appliance, and then perform a refresh on the logical switch from the current HPE OneView appliance to re-initiate the claim operation.
 * HPE OneView does not fully automate configuration of FCoE connectivity on the switch specified in the logical switch. For each FCoE network specified in the uplink set, HPE OneView only provisions the VLAN for that network on the switch. Network administrators must provision additional configuration for FCoE connectivity manually on the switch in addition to what HPE OneView provisions.
    * To deploy server profile connections to a FEX interconnect, HPE OneView provisions the virtual Fibre Channel interface (VFC), VFC binding to FEX downlink port, and VSAN interface assignment on the switch.
    * For the deployment of server profile connections for a Virtual Connect interconnect, the Network administrator must configure the virtual Fibre Channel interface (vFC), VFC binding to server port, and VSAN interface assignment binding manually.
 * When a Nexus switch expansion module is removed, a warning alert is generated unless the module is powered off.
 * HPE OneView can detect configuration changes that occur on the switches specified in the logical switch when it no longer matches the configuration that HPE OneView provisions. Warning alerts are generated. Administrators can correct the configuration manually or reapply the configuration on the associated logical interconnects to recover.
 Required privileges: Infrastructure administrator or Network administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalSwitchGroup &lt;Object&gt;<p>
Provide the Logical Switch Group policy object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Managed &lt;SwitchParameter&gt;<p>
Specify if the Logical Switch will be a Managed resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Monitored &lt;SwitchParameter&gt;<p>
Specify if the Logical Switch will be a Monintored resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of the Logical Switch resource.  Supports wildcard * character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthLevel &lt;String&gt;<p>
Defines the security levels supported by SNMPv3:
 
 * Auth         - Communication with authorization and without privacy. Messages are authenticated but not encrypted.
 * AuthAndPrive - Communication with authorization as well as privacy. Messages are authenticated as well as encrypted.


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthPassword &lt;Object&gt;<p>
SNMPv3 Authorization Password.  Either [System.String] or [SecureString] values are supported.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthProtocol &lt;String&gt;<p>
The protocol used for Authentication are either MD5 (Message Digest 5) or SHA (Secure Hash Algorithm).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpCommunity &lt;String&gt;<p>
Specify the SNMPv1 Community name.  This parameter is not used if needing to configure SNMPv3.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPort &lt;int&gt;<p>
The UDP port SNMP is configured to listen on the target Switch resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>161</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivPassword &lt;Object&gt;<p>
SNMPv3 Privacy Password.  Either [System.String] or [SecureString] values are supported.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivProtocol &lt;String&gt;<p>
The protocols used to encrypt the messages are Data Encryption Standard (DES56) or Advanced Encryption Standard (AES128).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpUserName &lt;String&gt;<p>
Specify the SNMPv3 Username.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV1 &lt;SwitchParameter&gt;<p>
Specify if SNMPv1 is available.  Otherwise, use the -SNMPv3 switch parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3 &lt;SwitchParameter&gt;<p>
Specify if SNMPv3 is available.  Otherwise, use the -SNMPv1 switch parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SshPassword &lt;Object&gt;<p>
Password of the SSH User.  Either [System.String] or [SecureString] values are supported.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SshUserName &lt;String&gt;<p>
The SSH account name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Switch1Address &lt;String&gt;<p>
IP Address or FQDN of first Switch resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Switch2Address &lt;String&gt;<p>
IP Address or FQDN of first Switch resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalSwitchGroup [System.Management.Automation.PSCustomObject]**_

 Logical Switch Group resource.



### Return Values

_**HPOneView.Networking.LogicalSwitch [System.Management.Automation.PSCustomObject]**_

 

Single Logical Switch resource.

 _**System.Collections.ArrayList &lt;HPOneView.Networking.LogicalSwitch&gt;**_

 

Collection of Logical Switch resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LogicalSwitchGroup = Get-HPOVLogicalSwitchGroup -Name "My Nexus 5500 Switch Group Policy"
$SshPassword = ConvertTo-SecureString -String "MyPassword" -AsPlainText -Force
New-HPOVLogicalSwitch -Name "My Logical Switch 1" -LogicalSwitchGroup $LogicalSwitchGroup -Monitored -Switch1Address 10.1.1.1 -Switch2Address 10.1.1.2 -SshUserName admin -SshPassword $SshPassword -Snmpv1 -SnmpCommunity MyCommunity</pre>
Create the "My Logical Switch 1" as a Monitored Logical Switch resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$LogicalSwitchGroup = Get-HPOVLogicalSwitchGroup -Name "My Nexus 6001 Switch Group Policy"
$Password = ConvertTo-SecureString -String "MyPassword" -AsPlainText -Force
$Results = New-HPOVLogicalSwitch -Name "My Logical Switch 2" -LogicalSwitchGroup $LogicalSwitchGroup -Managed -Switch1Address 10.1.2.1 -Switch2Address 10.1.2.2 -SshUserName admin-SshPassword $Password -Snmpv3 -SnmpUserName SnmpV3User -SnmpAuthLevel AuthAndPriv -SnmpAuthProtocol SHA -SnmpAuthPassword $Password -SnmpPrivProtocol aes128 -SnmpPrivPassword $Password -Async</pre>
Create the "My Logical Switch 2" as a Managed Logical Switch resource.



### Related Links

* [Get-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitch)
* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [New-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitchGroup)
* [Remove-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitch)
* [Remove-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitchGroup)
* [Update-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalSwitch)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVLogicalSwitch
<p>
Create a new Logical Switch resource.

### SYNTAX
<p>
<pre><code>New-HPOVLogicalSwitch[ [-Name] &lt;String&gt;] [-LogicalSwitchGroup] &lt;Object&gt; [-Managed] &lt;SwitchParameter&gt; [-Switch1Address] &lt;String&gt; [-SshUserName] &lt;String&gt; [-SshPassword] &lt;Object&gt; [-SnmpCommunity] &lt;String&gt;[ [-Switch2Address] &lt;String&gt;][ [-SnmpPort] &lt;int&gt;] [-SnmpV1] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalSwitch[ [-Name] &lt;String&gt;] [-LogicalSwitchGroup] &lt;Object&gt; [-Monitored] &lt;SwitchParameter&gt; [-Switch1Address] &lt;String&gt; [-SshUserName] &lt;String&gt; [-SshPassword] &lt;Object&gt;[ [-Switch2Address] &lt;String&gt;][ [-SnmpPort] &lt;int&gt;] [-SnmpV3] &lt;SwitchParameter&gt; [-SnmpUserName] &lt;String&gt; [-SnmpAuthLevel] &lt;String&gt; [-SnmpAuthProtocol] &lt;String&gt; [-SnmpAuthPassword] &lt;Object&gt; [-SnmpPrivProtocol] &lt;String&gt; [-SnmpPrivPassword] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalSwitch[ [-Name] &lt;String&gt;] [-LogicalSwitchGroup] &lt;Object&gt; [-Managed] &lt;SwitchParameter&gt; [-Switch1Address] &lt;String&gt; [-SshUserName] &lt;String&gt; [-SshPassword] &lt;Object&gt;[ [-Switch2Address] &lt;String&gt;][ [-SnmpPort] &lt;int&gt;] [-SnmpV3] &lt;SwitchParameter&gt; [-SnmpUserName] &lt;String&gt; [-SnmpAuthLevel] &lt;String&gt; [-SnmpAuthProtocol] &lt;String&gt; [-SnmpAuthPassword] &lt;Object&gt; [-SnmpPrivProtocol] &lt;String&gt; [-SnmpPrivPassword] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalSwitch[ [-Name] &lt;String&gt;] [-LogicalSwitchGroup] &lt;Object&gt; [-Monitored] &lt;SwitchParameter&gt; [-Switch1Address] &lt;String&gt; [-SshUserName] &lt;String&gt; [-SshPassword] &lt;Object&gt; [-SnmpCommunity] &lt;String&gt;[ [-Switch2Address] &lt;String&gt;][ [-SnmpPort] &lt;int&gt;] [-SnmpV1] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A logical switch is added into HPE OneView as a managed or monitored logical switch. The logical switch can consist of a maximum of two physical top-of-rack switches (external to the c7000 enclosure) configured in a single stacking domain.  It is based on a logical switch group configuration. If the logical switch transitions to an Inconsistent with group state (because of changes in either the logical switch or the logical switch group), update the logical switch configuration based on the logical switch group to return to a consistent state.
 You can create a logical switch with a maximum of two Cisco Nexus switches. When there are two Cisco Nexus switches in a logical switch, they are expected to be in a virtual port channel (vPC) environment. vPC must be configured on both switches, and they should belong to the same vPC domain. For information about supported switches, see the Hewlett Packard Enterprise Information Library for supportability information.
 Before you add a logical switch as managed, consider the following for Fabric Extender and Virtual Connect interconnects physically connected to the logical switch: 
 * When only IPv4 Ethernet networks are assigned to an uplink set at creation time, the uplink set can be physically connected to any upstream switch in the logical switch.
 * When an FCoE network is assigned to an uplink set at creation time, the uplink set is limited to single-homed physical connectivity and all uplink ports must connect to the same upstream switch in the logical switch.  If a port is subsequently added to the uplink set with an FCoE network or an existing port in the uplink set is connected to a second upstream switch, that port is not available for configuration and an alert is generated. If a new port added to the uplink set is connected to the same switch as the other ports, that port is available to carry traffic and an alert is not generated.  To change an uplink set from single-homed connectivity to multi-homed connectivity or vice-versa, the uplink set configuration must be deleted and re-created with the appropriate network assignments and physical configuration.
 * Make sure that LLDP is enabled on the top-of-rack switch internal (downlink) ports where Virtual Connect interconnects under HPE OneView management are connected. 
 Adding a logical switch as monitored enables HPE OneView to monitor the logical switch for operation status, collect statistics, and alert users to specific conditions and incompatibilities between the switch and Fabric Extender or Virtual Connect interconnect. In the monitored mode, deployment of the server profile connections is supported for HPE Virtual Connect interconnects but not for Fabric Extender (FEX) interconnects.
 Logical switch configuration guidelines 
 * When Virtual Connect interconnects are connected to a logical switch, an uplink set cannot span multiple interconnects. This limitation is similar to FEX interconnects. However, multiple uplink sets are supported on a single Virtual Connect interconnect.
 * When you enable or disable a top-of-rack switch internal port, the associated port on a FEX interconnect also displays the updated port status.
 * When retrieving MAC addresses for FEX interconnects, only the entries that are associated with the managed FEX interconnects are displayed.
 * If an FCoE network is assigned to an uplink set that is configured as dual-homed, (an invalid configuration), that FCoE network is not provisioned on the switch. Deployment of any server profile connection with this FCoE network will fail.
 * When a logical switch is defined and configured with only a single physical switch, the uplink set associated with any FEX module connected to this logical switch is considered single-homed. Therefore, you can add an FCoE network to the uplink set even if the uplink set was initially created only with Ethernet networks. Deployment of any server profile connection with this FCoE network will succeed.
 * For server profiles created for server ports connected to FEX interconnects, Ethernet networks are only supported on physical function a, and FCoE networks are only supported on physical function b at the server port. When both physical functions have connections defined, traffic is split evenly across both ports.
 * If HPE OneView cannot log in to the switch, a critical alert is generated. Prevent any event on the switch that might trigger switch configuration; otherwise, the switch transitions to ConfigError state and you must reapply the configuration on the associated logical interconnects to recover.
 * If HPE OneView is unable to claim a member switch of the logical switch when the operational mode of the logical switch is Managed, the operating state of the switch will transition to Added with Error. In this case, the Message of the Day (MOTD) banner on the switch will indicate that the switch is currently claimed by another HPE OneView appliance and the message "This switch is being controlled by OneView Domain, Appliance ID: {}" displays. You should remove the logical switch from that HPE OneView appliance, and then perform a refresh on the logical switch from the current HPE OneView appliance to re-initiate the claim operation.
 * HPE OneView does not fully automate configuration of FCoE connectivity on the switch specified in the logical switch. For each FCoE network specified in the uplink set, HPE OneView only provisions the VLAN for that network on the switch. Network administrators must provision additional configuration for FCoE connectivity manually on the switch in addition to what HPE OneView provisions.
    * To deploy server profile connections to a FEX interconnect, HPE OneView provisions the virtual Fibre Channel interface (VFC), VFC binding to FEX downlink port, and VSAN interface assignment on the switch.
    * For the deployment of server profile connections for a Virtual Connect interconnect, the Network administrator must configure the virtual Fibre Channel interface (vFC), VFC binding to server port, and VSAN interface assignment binding manually.
 * When a Nexus switch expansion module is removed, a warning alert is generated unless the module is powered off.
 * HPE OneView can detect configuration changes that occur on the switches specified in the logical switch when it no longer matches the configuration that HPE OneView provisions. Warning alerts are generated. Administrators can correct the configuration manually or reapply the configuration on the associated logical interconnects to recover.
 Required privileges: Infrastructure administrator or Network administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalSwitchGroup &lt;Object&gt;<p>
Provide the Logical Switch Group policy object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Managed &lt;SwitchParameter&gt;<p>
Specify if the Logical Switch will be a Managed resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Monitored &lt;SwitchParameter&gt;<p>
Specify if the Logical Switch will be a Monintored resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of the Logical Switch resource.  Supports wildcard * character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthLevel &lt;String&gt;<p>
Defines the security levels supported by SNMPv3:
 
 * Auth         - Communication with authorization and without privacy. Messages are authenticated but not encrypted.
 * AuthAndPrive - Communication with authorization as well as privacy. Messages are authenticated as well as encrypted.


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthPassword &lt;Object&gt;<p>
SNMPv3 Authorization Password.  Either [System.String] or [SecureString] values are supported.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthProtocol &lt;String&gt;<p>
The protocol used for Authentication are either MD5 (Message Digest 5) or SHA (Secure Hash Algorithm).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpCommunity &lt;String&gt;<p>
Specify the SNMPv1 Community name.  This parameter is not used if needing to configure SNMPv3.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPort &lt;int&gt;<p>
The UDP port SNMP is configured to listen on the target Switch resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>161</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivPassword &lt;Object&gt;<p>
SNMPv3 Privacy Password.  Either [System.String] or [SecureString] values are supported.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivProtocol &lt;String&gt;<p>
The protocols used to encrypt the messages are Data Encryption Standard (DES56) or Advanced Encryption Standard (AES128).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpUserName &lt;String&gt;<p>
Specify the SNMPv3 Username.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV1 &lt;SwitchParameter&gt;<p>
Specify if SNMPv1 is available.  Otherwise, use the -SNMPv3 switch parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3 &lt;SwitchParameter&gt;<p>
Specify if SNMPv3 is available.  Otherwise, use the -SNMPv1 switch parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SshPassword &lt;Object&gt;<p>
Password of the SSH User.  Either [System.String] or [SecureString] values are supported.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SshUserName &lt;String&gt;<p>
The SSH account name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Switch1Address &lt;String&gt;<p>
IP Address or FQDN of first Switch resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Switch2Address &lt;String&gt;<p>
IP Address or FQDN of first Switch resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalSwitchGroup [System.Management.Automation.PSCustomObject]**_

 Logical Switch Group resource.



### Return Values

_**HPOneView.Networking.LogicalSwitch [System.Management.Automation.PSCustomObject]**_

 

Single Logical Switch resource.

 _**System.Collections.ArrayList &lt;HPOneView.Networking.LogicalSwitch&gt;**_

 

Collection of Logical Switch resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LogicalSwitchGroup = Get-HPOVLogicalSwitchGroup -Name "My Nexus 5500 Switch Group Policy"
$SshPassword = ConvertTo-SecureString -String "MyPassword" -AsPlainText -Force
New-HPOVLogicalSwitch -Name "My Logical Switch 1" -LogicalSwitchGroup $LogicalSwitchGroup -Monitored -Switch1Address 10.1.1.1 -Switch2Address 10.1.1.2 -SshUserName admin -SshPassword $SshPassword -Snmpv1 -SnmpCommunity MyCommunity</pre>
Create the "My Logical Switch 1" as a Monitored Logical Switch resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$LogicalSwitchGroup = Get-HPOVLogicalSwitchGroup -Name "My Nexus 6001 Switch Group Policy"
$Password = ConvertTo-SecureString -String "MyPassword" -AsPlainText -Force
$Results = New-HPOVLogicalSwitch -Name "My Logical Switch 2" -LogicalSwitchGroup $LogicalSwitchGroup -Managed -Switch1Address 10.1.2.1 -Switch2Address 10.1.2.2 -SshUserName admin-SshPassword $Password -Snmpv3 -SnmpUserName SnmpV3User -SnmpAuthLevel AuthAndPriv -SnmpAuthProtocol SHA -SnmpAuthPassword $Password -SnmpPrivProtocol aes128 -SnmpPrivPassword $Password -Async</pre>
Create the "My Logical Switch 2" as a Managed Logical Switch resource.



### Related Links

* [Get-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitch)
* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [New-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitchGroup)
* [Remove-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitch)
* [Remove-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitchGroup)
* [Update-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalSwitch)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVLogicalSwitch
<p>
Create a new Logical Switch resource.

### SYNTAX
<p>
<pre><code>New-HPOVLogicalSwitch[ [-Name] &lt;String&gt;] [-LogicalSwitchGroup] &lt;Object&gt; [-Managed] &lt;SwitchParameter&gt; [-Switch1Address] &lt;String&gt; [-SshUserName] &lt;String&gt; [-SshPassword] &lt;Object&gt; [-SnmpCommunity] &lt;String&gt;[ [-Switch2Address] &lt;String&gt;][ [-SnmpPort] &lt;int&gt;] [-SnmpV1] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalSwitch[ [-Name] &lt;String&gt;] [-LogicalSwitchGroup] &lt;Object&gt; [-Monitored] &lt;SwitchParameter&gt; [-Switch1Address] &lt;String&gt; [-SshUserName] &lt;String&gt; [-SshPassword] &lt;Object&gt;[ [-Switch2Address] &lt;String&gt;][ [-SnmpPort] &lt;int&gt;] [-SnmpV3] &lt;SwitchParameter&gt; [-SnmpUserName] &lt;String&gt; [-SnmpAuthLevel] &lt;String&gt; [-SnmpAuthProtocol] &lt;String&gt; [-SnmpAuthPassword] &lt;Object&gt; [-SnmpPrivProtocol] &lt;String&gt; [-SnmpPrivPassword] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalSwitch[ [-Name] &lt;String&gt;] [-LogicalSwitchGroup] &lt;Object&gt; [-Managed] &lt;SwitchParameter&gt; [-Switch1Address] &lt;String&gt; [-SshUserName] &lt;String&gt; [-SshPassword] &lt;Object&gt;[ [-Switch2Address] &lt;String&gt;][ [-SnmpPort] &lt;int&gt;] [-SnmpV3] &lt;SwitchParameter&gt; [-SnmpUserName] &lt;String&gt; [-SnmpAuthLevel] &lt;String&gt; [-SnmpAuthProtocol] &lt;String&gt; [-SnmpAuthPassword] &lt;Object&gt; [-SnmpPrivProtocol] &lt;String&gt; [-SnmpPrivPassword] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLogicalSwitch[ [-Name] &lt;String&gt;] [-LogicalSwitchGroup] &lt;Object&gt; [-Monitored] &lt;SwitchParameter&gt; [-Switch1Address] &lt;String&gt; [-SshUserName] &lt;String&gt; [-SshPassword] &lt;Object&gt; [-SnmpCommunity] &lt;String&gt;[ [-Switch2Address] &lt;String&gt;][ [-SnmpPort] &lt;int&gt;] [-SnmpV1] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A logical switch is added into HPE OneView as a managed or monitored logical switch. The logical switch can consist of a maximum of two physical top-of-rack switches (external to the c7000 enclosure) configured in a single stacking domain.  It is based on a logical switch group configuration. If the logical switch transitions to an Inconsistent with group state (because of changes in either the logical switch or the logical switch group), update the logical switch configuration based on the logical switch group to return to a consistent state.
 You can create a logical switch with a maximum of two Cisco Nexus switches. When there are two Cisco Nexus switches in a logical switch, they are expected to be in a virtual port channel (vPC) environment. vPC must be configured on both switches, and they should belong to the same vPC domain. For information about supported switches, see the Hewlett Packard Enterprise Information Library for supportability information.
 Before you add a logical switch as managed, consider the following for Fabric Extender and Virtual Connect interconnects physically connected to the logical switch: 
 * When only IPv4 Ethernet networks are assigned to an uplink set at creation time, the uplink set can be physically connected to any upstream switch in the logical switch.
 * When an FCoE network is assigned to an uplink set at creation time, the uplink set is limited to single-homed physical connectivity and all uplink ports must connect to the same upstream switch in the logical switch.  If a port is subsequently added to the uplink set with an FCoE network or an existing port in the uplink set is connected to a second upstream switch, that port is not available for configuration and an alert is generated. If a new port added to the uplink set is connected to the same switch as the other ports, that port is available to carry traffic and an alert is not generated.  To change an uplink set from single-homed connectivity to multi-homed connectivity or vice-versa, the uplink set configuration must be deleted and re-created with the appropriate network assignments and physical configuration.
 * Make sure that LLDP is enabled on the top-of-rack switch internal (downlink) ports where Virtual Connect interconnects under HPE OneView management are connected. 
 Adding a logical switch as monitored enables HPE OneView to monitor the logical switch for operation status, collect statistics, and alert users to specific conditions and incompatibilities between the switch and Fabric Extender or Virtual Connect interconnect. In the monitored mode, deployment of the server profile connections is supported for HPE Virtual Connect interconnects but not for Fabric Extender (FEX) interconnects.
 Logical switch configuration guidelines 
 * When Virtual Connect interconnects are connected to a logical switch, an uplink set cannot span multiple interconnects. This limitation is similar to FEX interconnects. However, multiple uplink sets are supported on a single Virtual Connect interconnect.
 * When you enable or disable a top-of-rack switch internal port, the associated port on a FEX interconnect also displays the updated port status.
 * When retrieving MAC addresses for FEX interconnects, only the entries that are associated with the managed FEX interconnects are displayed.
 * If an FCoE network is assigned to an uplink set that is configured as dual-homed, (an invalid configuration), that FCoE network is not provisioned on the switch. Deployment of any server profile connection with this FCoE network will fail.
 * When a logical switch is defined and configured with only a single physical switch, the uplink set associated with any FEX module connected to this logical switch is considered single-homed. Therefore, you can add an FCoE network to the uplink set even if the uplink set was initially created only with Ethernet networks. Deployment of any server profile connection with this FCoE network will succeed.
 * For server profiles created for server ports connected to FEX interconnects, Ethernet networks are only supported on physical function a, and FCoE networks are only supported on physical function b at the server port. When both physical functions have connections defined, traffic is split evenly across both ports.
 * If HPE OneView cannot log in to the switch, a critical alert is generated. Prevent any event on the switch that might trigger switch configuration; otherwise, the switch transitions to ConfigError state and you must reapply the configuration on the associated logical interconnects to recover.
 * If HPE OneView is unable to claim a member switch of the logical switch when the operational mode of the logical switch is Managed, the operating state of the switch will transition to Added with Error. In this case, the Message of the Day (MOTD) banner on the switch will indicate that the switch is currently claimed by another HPE OneView appliance and the message "This switch is being controlled by OneView Domain, Appliance ID: {}" displays. You should remove the logical switch from that HPE OneView appliance, and then perform a refresh on the logical switch from the current HPE OneView appliance to re-initiate the claim operation.
 * HPE OneView does not fully automate configuration of FCoE connectivity on the switch specified in the logical switch. For each FCoE network specified in the uplink set, HPE OneView only provisions the VLAN for that network on the switch. Network administrators must provision additional configuration for FCoE connectivity manually on the switch in addition to what HPE OneView provisions.
    * To deploy server profile connections to a FEX interconnect, HPE OneView provisions the virtual Fibre Channel interface (VFC), VFC binding to FEX downlink port, and VSAN interface assignment on the switch.
    * For the deployment of server profile connections for a Virtual Connect interconnect, the Network administrator must configure the virtual Fibre Channel interface (vFC), VFC binding to server port, and VSAN interface assignment binding manually.
 * When a Nexus switch expansion module is removed, a warning alert is generated unless the module is powered off.
 * HPE OneView can detect configuration changes that occur on the switches specified in the logical switch when it no longer matches the configuration that HPE OneView provisions. Warning alerts are generated. Administrators can correct the configuration manually or reapply the configuration on the associated logical interconnects to recover.
 Required privileges: Infrastructure administrator or Network administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalSwitchGroup &lt;Object&gt;<p>
Provide the Logical Switch Group policy object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Managed &lt;SwitchParameter&gt;<p>
Specify if the Logical Switch will be a Managed resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Monitored &lt;SwitchParameter&gt;<p>
Specify if the Logical Switch will be a Monintored resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of the Logical Switch resource.  Supports wildcard * character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthLevel &lt;String&gt;<p>
Defines the security levels supported by SNMPv3:
 
 * Auth         - Communication with authorization and without privacy. Messages are authenticated but not encrypted.
 * AuthAndPrive - Communication with authorization as well as privacy. Messages are authenticated as well as encrypted.


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthPassword &lt;Object&gt;<p>
SNMPv3 Authorization Password.  Either [System.String] or [SecureString] values are supported.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthProtocol &lt;String&gt;<p>
The protocol used for Authentication are either MD5 (Message Digest 5) or SHA (Secure Hash Algorithm).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpCommunity &lt;String&gt;<p>
Specify the SNMPv1 Community name.  This parameter is not used if needing to configure SNMPv3.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPort &lt;int&gt;<p>
The UDP port SNMP is configured to listen on the target Switch resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>161</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivPassword &lt;Object&gt;<p>
SNMPv3 Privacy Password.  Either [System.String] or [SecureString] values are supported.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivProtocol &lt;String&gt;<p>
The protocols used to encrypt the messages are Data Encryption Standard (DES56) or Advanced Encryption Standard (AES128).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpUserName &lt;String&gt;<p>
Specify the SNMPv3 Username.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV1 &lt;SwitchParameter&gt;<p>
Specify if SNMPv1 is available.  Otherwise, use the -SNMPv3 switch parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3 &lt;SwitchParameter&gt;<p>
Specify if SNMPv3 is available.  Otherwise, use the -SNMPv1 switch parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SshPassword &lt;Object&gt;<p>
Password of the SSH User.  Either [System.String] or [SecureString] values are supported.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SshUserName &lt;String&gt;<p>
The SSH account name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Switch1Address &lt;String&gt;<p>
IP Address or FQDN of first Switch resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Switch2Address &lt;String&gt;<p>
IP Address or FQDN of first Switch resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalSwitchGroup [System.Management.Automation.PSCustomObject]**_

 Logical Switch Group resource.



### Return Values

_**HPOneView.Networking.LogicalSwitch [System.Management.Automation.PSCustomObject]**_

 

Single Logical Switch resource.

 _**System.Collections.ArrayList &lt;HPOneView.Networking.LogicalSwitch&gt;**_

 

Collection of Logical Switch resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LogicalSwitchGroup = Get-HPOVLogicalSwitchGroup -Name "My Nexus 5500 Switch Group Policy"
$SshPassword = ConvertTo-SecureString -String "MyPassword" -AsPlainText -Force
New-HPOVLogicalSwitch -Name "My Logical Switch 1" -LogicalSwitchGroup $LogicalSwitchGroup -Monitored -Switch1Address 10.1.1.1 -Switch2Address 10.1.1.2 -SshUserName admin -SshPassword $SshPassword -Snmpv1 -SnmpCommunity MyCommunity</pre>
Create the "My Logical Switch 1" as a Monitored Logical Switch resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$LogicalSwitchGroup = Get-HPOVLogicalSwitchGroup -Name "My Nexus 6001 Switch Group Policy"
$Password = ConvertTo-SecureString -String "MyPassword" -AsPlainText -Force
$Results = New-HPOVLogicalSwitch -Name "My Logical Switch 2" -LogicalSwitchGroup $LogicalSwitchGroup -Managed -Switch1Address 10.1.2.1 -Switch2Address 10.1.2.2 -SshUserName admin-SshPassword $Password -Snmpv3 -SnmpUserName SnmpV3User -SnmpAuthLevel AuthAndPriv -SnmpAuthProtocol SHA -SnmpAuthPassword $Password -SnmpPrivProtocol aes128 -SnmpPrivPassword $Password -Async</pre>
Create the "My Logical Switch 2" as a Managed Logical Switch resource.



### Related Links

* [Get-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitch)
* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [New-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitchGroup)
* [Remove-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitch)
* [Remove-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitchGroup)
* [Update-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalSwitch)


***
<div align=right><a href="#Top">Top</a></div>
