<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVNetwork
<p>
Creates one or more new Ethernet or Fibre-Channel networks on the appliance.

### SYNTAX
<p>
<pre><code>New-HPOVNetwork [-Name] &lt;String&gt; [-Type] &lt;String&gt; [-VlanId] &lt;Int32&gt;[ [-NetworkSet] &lt;Object[]&gt;] [-Subnet] &lt;Object&gt; [-VLANType] &lt;String&gt; [-Purpose] &lt;String&gt; [-SmartLink] &lt;Boolean&gt; [-PrivateNetwork] &lt;Boolean&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVNetwork [-Name] &lt;String&gt; [-VlanRange] &lt;String&gt; [-Type] &lt;String&gt; [-VLANType] &lt;String&gt; [-Purpose] &lt;String&gt; [-SmartLink] &lt;Boolean&gt; [-PrivateNetwork] &lt;Boolean&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVNetwork [-Name] &lt;String&gt; [-Type] &lt;String&gt; [-VlanId] &lt;Int32&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt; [-ManagedSan] &lt;Object&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVNetwork [-Name] &lt;String&gt; [-Type] &lt;String&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt; [-LinkStabilityTime] &lt;Int32&gt; [-AutoLoginRedistribution] &lt;Boolean&gt; [-FabricType] &lt;String&gt; [-ManagedSan] &lt;Object&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVNetwork [-ImportFile] &lt;String&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Create a new network resource, including its default connection type.  Network definitions can be supplied as direct CmdLet parameters or as input from a file containing the network definition in JSON format.

To create an Ethernet Network for Image Streamer, use the following paramters:

	* Name
	* VlanType = Untagged
	* IPv4Subnet Object
	* Purpose = Management


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AutoLoginRedistribution &lt;Boolean&gt;<p>
Used for login balancing when logins are not distributed evenly over the Fibre Channel links (for example, when an uplink that was down becomes available).

True: Login redistribution is initiated automatically when the link stability time expires.
False: Login redistribution must be initiated manually.

This parameter is not applicable for Direct Attach Fabric Types.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FabricType &lt;String&gt;<p>
Valid values are DirectAttach and FabricAttach. Defaults to FabricAttach

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>FabricAttach</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ImportFile &lt;String&gt;<p>
Full path and file name of a JSON formatted input file containing network definitions.

<table><tbody><tr><td>Aliases</td><td>i, import</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LinkStabilityTime &lt;Int32&gt;<p>
The time in seconds the appliance waits before reconnecting to a link that was previously offline (Login redistribution). This interval prevents connection loss due to reconnecting to a link that is unstable (going online and offline repeatedly).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>30</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ManagedSan &lt;Object&gt;<p>
Managed SAN Object or Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaximumBandwidth &lt;Int32&gt;<p>
Maximum amount of bandwidth to assign, specified in Mbps.  Default value is 10000.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>20000</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Required object to provide a display name for the network being created.
If specifying the -VlanRange parameter, this will become the Nework Name Prefix (i.e. "VLAN" will become "VLAN-[vlanid]".)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NetworkSet &lt;Object[]&gt;<p>
Specify one or more network set objects the network should be added to during creation from Get-HPOVNetworkSet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrivateNetwork &lt;Boolean&gt;<p>
Default value is FALSE.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Purpose &lt;String&gt;<p>
A description of the network"s role within the logical interconnect.  Accepted values in string format are:

	* General
	* Management
	* VMMigration
	* FaultTolerance
	* iSCSI

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>General</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SmartLink &lt;Boolean&gt;<p>
Default value is TRUE.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>True</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Subnet &lt;Object&gt;<p>
An IPv4 Subnet Object that will be associated with a specific Ethernet Network and VLAN.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Required value that specifies the type of Network Resource to create.  Allowed values are:

	* Ethernet
	* FC
	* FibreChannel
	* FCoE

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Ethernet</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TypicalBandwidth &lt;Int32&gt;<p>
Preferred amount of bandwidth to assign, specified in Mbps.  Default value is 2500.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>2500</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VLANType &lt;String&gt;<p>
The type of VLAN configuration for the Ethernet Network.  This setting is only applicable for the Uplink Set configuration, and not the Network Set it could be assigned to.  Accepted values are 
            
	* Tagged
	* Tunnel
	* Access

Default value is Tagged.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Tagged</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VlanId &lt;Int32&gt;<p>
The Virtual LAN (VLAN) identification number assigned to the network. The VLAN ID must be unique. The VLAN ID cannot be changed once the network has been created.

When creating an Ethernet Network on an HPE Synergy Composer, Vlan ID 1 is not a valid ID.  The allowed range is 2-4095.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VlanRange &lt;String&gt;<p>
VLAN Range of networks to create.  Can be consecutive, non-consecutive or a combination of both.

e.g. -VLANRange "10-90,94,96,200-210"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

 ManagedSan resource object to be assigned to a FC or FCoE Network



### Return Values

_**System.Collections.ArrayList**_

 

A custom status object or array of objects containing the following PsCustomObject keys:
 
 * Name - name of the network object attempted to be created * Status - status of the creation attempt (Failed for http error return; Complete if a task object is returned)
 * Description - Task object or Error object * Exception -  System.Management.Automation.ErrorRecord object of the error generated



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVNetwork -type Ethernet -name MyNetwork1 -vlanid 100 -typicalbandwidth 5000 -maximumbandwidth 7500
</pre>
Creates new Ethernet Network type, with "MyNetwork1" name, VLAN ID 100, and specifies preferred bandwidth to 5Gb/s and max to 7.5Gb/s.  Network will be created on all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVNetwork -type Ethernet -name MyNetwork1 -vlanid 100 -typicalbandwidth 5000 -maximumbandwidth 7500 -Appliance MyAppliance
</pre>
Creates new Ethernet Network type, with "MyNetwork1" name, VLAN ID 100, an dspecifies preferred bandwidth to 5Gb/s and max to 7.5Gb/s to be created on "MyAppliance"


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$Connection1 = Connect-HPOVMgmt MyAppliance1.domain.local Administrator MyPassword
$Connection2 = Connect-HPOVMgmt MyAppliance2.domain.local Administrator MyPassword
New-HPOVNetwork -type Ethernet -name MyNetwork1 -vlanid 100 -typicalbandwidth 5000 -maximumbandwidth 7500 -Appliance $Connection1,$Connection2

</pre>
Creates new Ethernet Network type, with "MyNetwork1" name, VLAN ID 100, an dspecifies preferred bandwidth to 5Gb/s and max to 7.5Gb/s to be created on "MyAppliance1" and "MyAppliance2" using the connection objects.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
10,20,30,40,50,60 | % { New-HPOVNetwork -type Ethernet -name "VLAN $_" -vlanid $_ }
</pre>
Create multiple Ethernet Networks.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
10,20,30,40,50,60 | % { New-HPOVNetwork -type Ethernet -name "VLAN $_-A" -vlanid $_ }
10,20,30,40,50,60 | % { New-HPOVNetwork -type Ethernet -name "VLAN $_-B" -vlanid $_ }

</pre>
Create Ethernet Networks for an Active/Active configuration.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
New-HPOVNetwork -name "VLAN A Side" -vlanRange "10,20,30,40,50,60"
New-HPOVNetwork -name "VLAN B Side" -VlanRange "10,20,30,40,50,60"

</pre>
Create Ethernet Networks for an Active/Active configuration using the -VlanRange parameter.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
New-HPOVNetwork -type FC -name "Fabric A" -typicalBandwidth 2000 -maximumBandwidth 4000
</pre>
Creates a new FC network type, called "Fabric A" and preferred bandwidth is 2Gb/s and max is 4Gb/s.


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
New-HPOVNetwork -type FC -name "Fabric A" -typicalBandwidth 2000 -maximumBandwidth 4000 -fabricType FabricAttach -managedSAN Fabric_A
</pre>
Creates a new FC network type, called "Fabric A", preferred bandwidth is 2Gb/s and max is 4Gb/s, and is associated with a Managed SAN Fabric.


 <pre> -------------------------- EXAMPLE 9 --------------------------<p>
New-HPOVNetwork -importFile "c:\OneViewInput\myNewNets.json"
</pre>
Creates the network(s) defined in the input file myNewNets.json



### Related Links

* [Get-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetwork)
* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetwork)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetwork)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVNetwork
<p>
Creates one or more new Ethernet or Fibre-Channel networks on the appliance.

### SYNTAX
<p>
<pre><code>New-HPOVNetwork [-Name] &lt;String&gt; [-Type] &lt;String&gt; [-VlanId] &lt;Int32&gt;[ [-NetworkSet] &lt;Object[]&gt;] [-Subnet] &lt;Object&gt; [-VLANType] &lt;String&gt; [-Purpose] &lt;String&gt; [-SmartLink] &lt;Boolean&gt; [-PrivateNetwork] &lt;Boolean&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVNetwork [-Name] &lt;String&gt; [-VlanRange] &lt;String&gt; [-Type] &lt;String&gt; [-VLANType] &lt;String&gt; [-Purpose] &lt;String&gt; [-SmartLink] &lt;Boolean&gt; [-PrivateNetwork] &lt;Boolean&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVNetwork [-Name] &lt;String&gt; [-Type] &lt;String&gt; [-VlanId] &lt;Int32&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt; [-ManagedSan] &lt;Object&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVNetwork [-Name] &lt;String&gt; [-Type] &lt;String&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt; [-LinkStabilityTime] &lt;Int32&gt; [-AutoLoginRedistribution] &lt;Boolean&gt; [-FabricType] &lt;String&gt; [-ManagedSan] &lt;Object&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVNetwork [-ImportFile] &lt;String&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Create a new network resource, including its default connection type.  Network definitions can be supplied as direct CmdLet parameters or as input from a file containing the network definition in JSON format.

To create an Ethernet Network for Image Streamer, use the following paramters:

	* Name
	* VlanType = Untagged
	* IPv4Subnet Object
	* Purpose = Management


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AutoLoginRedistribution &lt;Boolean&gt;<p>
Used for login balancing when logins are not distributed evenly over the Fibre Channel links (for example, when an uplink that was down becomes available).

True: Login redistribution is initiated automatically when the link stability time expires.
False: Login redistribution must be initiated manually.

This parameter is not applicable for Direct Attach Fabric Types.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FabricType &lt;String&gt;<p>
Valid values are DirectAttach and FabricAttach. Defaults to FabricAttach

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>FabricAttach</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ImportFile &lt;String&gt;<p>
Full path and file name of a JSON formatted input file containing network definitions.

<table><tbody><tr><td>Aliases</td><td>i, import</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LinkStabilityTime &lt;Int32&gt;<p>
The time in seconds the appliance waits before reconnecting to a link that was previously offline (Login redistribution). This interval prevents connection loss due to reconnecting to a link that is unstable (going online and offline repeatedly).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>30</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ManagedSan &lt;Object&gt;<p>
Managed SAN Object or Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaximumBandwidth &lt;Int32&gt;<p>
Maximum amount of bandwidth to assign, specified in Mbps.  Default value is 10000.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>20000</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Required object to provide a display name for the network being created.
If specifying the -VlanRange parameter, this will become the Nework Name Prefix (i.e. "VLAN" will become "VLAN-[vlanid]".)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NetworkSet &lt;Object[]&gt;<p>
Specify one or more network set objects the network should be added to during creation from Get-HPOVNetworkSet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrivateNetwork &lt;Boolean&gt;<p>
Default value is FALSE.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Purpose &lt;String&gt;<p>
A description of the network"s role within the logical interconnect.  Accepted values in string format are:

	* General
	* Management
	* VMMigration
	* FaultTolerance
	* iSCSI

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>General</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SmartLink &lt;Boolean&gt;<p>
Default value is TRUE.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>True</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Subnet &lt;Object&gt;<p>
An IPv4 Subnet Object that will be associated with a specific Ethernet Network and VLAN.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Required value that specifies the type of Network Resource to create.  Allowed values are:

	* Ethernet
	* FC
	* FibreChannel
	* FCoE

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Ethernet</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TypicalBandwidth &lt;Int32&gt;<p>
Preferred amount of bandwidth to assign, specified in Mbps.  Default value is 2500.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>2500</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VLANType &lt;String&gt;<p>
The type of VLAN configuration for the Ethernet Network.  This setting is only applicable for the Uplink Set configuration, and not the Network Set it could be assigned to.  Accepted values are 
            
	* Tagged
	* Tunnel
	* Access

Default value is Tagged.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Tagged</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VlanId &lt;Int32&gt;<p>
The Virtual LAN (VLAN) identification number assigned to the network. The VLAN ID must be unique. The VLAN ID cannot be changed once the network has been created.

When creating an Ethernet Network on an HPE Synergy Composer, Vlan ID 1 is not a valid ID.  The allowed range is 2-4095.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VlanRange &lt;String&gt;<p>
VLAN Range of networks to create.  Can be consecutive, non-consecutive or a combination of both.

e.g. -VLANRange "10-90,94,96,200-210"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

 ManagedSan resource object to be assigned to a FC or FCoE Network



### Return Values

_**System.Collections.ArrayList**_

 

A custom status object or array of objects containing the following PsCustomObject keys:
 
 * Name - name of the network object attempted to be created * Status - status of the creation attempt (Failed for http error return; Complete if a task object is returned)
 * Description - Task object or Error object * Exception -  System.Management.Automation.ErrorRecord object of the error generated



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVNetwork -type Ethernet -name MyNetwork1 -vlanid 100 -typicalbandwidth 5000 -maximumbandwidth 7500
</pre>
Creates new Ethernet Network type, with "MyNetwork1" name, VLAN ID 100, and specifies preferred bandwidth to 5Gb/s and max to 7.5Gb/s.  Network will be created on all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVNetwork -type Ethernet -name MyNetwork1 -vlanid 100 -typicalbandwidth 5000 -maximumbandwidth 7500 -Appliance MyAppliance
</pre>
Creates new Ethernet Network type, with "MyNetwork1" name, VLAN ID 100, an dspecifies preferred bandwidth to 5Gb/s and max to 7.5Gb/s to be created on "MyAppliance"


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$Connection1 = Connect-HPOVMgmt MyAppliance1.domain.local Administrator MyPassword
$Connection2 = Connect-HPOVMgmt MyAppliance2.domain.local Administrator MyPassword
New-HPOVNetwork -type Ethernet -name MyNetwork1 -vlanid 100 -typicalbandwidth 5000 -maximumbandwidth 7500 -Appliance $Connection1,$Connection2

</pre>
Creates new Ethernet Network type, with "MyNetwork1" name, VLAN ID 100, an dspecifies preferred bandwidth to 5Gb/s and max to 7.5Gb/s to be created on "MyAppliance1" and "MyAppliance2" using the connection objects.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
10,20,30,40,50,60 | % { New-HPOVNetwork -type Ethernet -name "VLAN $_" -vlanid $_ }
</pre>
Create multiple Ethernet Networks.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
10,20,30,40,50,60 | % { New-HPOVNetwork -type Ethernet -name "VLAN $_-A" -vlanid $_ }
10,20,30,40,50,60 | % { New-HPOVNetwork -type Ethernet -name "VLAN $_-B" -vlanid $_ }

</pre>
Create Ethernet Networks for an Active/Active configuration.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
New-HPOVNetwork -name "VLAN A Side" -vlanRange "10,20,30,40,50,60"
New-HPOVNetwork -name "VLAN B Side" -VlanRange "10,20,30,40,50,60"

</pre>
Create Ethernet Networks for an Active/Active configuration using the -VlanRange parameter.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
New-HPOVNetwork -type FC -name "Fabric A" -typicalBandwidth 2000 -maximumBandwidth 4000
</pre>
Creates a new FC network type, called "Fabric A" and preferred bandwidth is 2Gb/s and max is 4Gb/s.


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
New-HPOVNetwork -type FC -name "Fabric A" -typicalBandwidth 2000 -maximumBandwidth 4000 -fabricType FabricAttach -managedSAN Fabric_A
</pre>
Creates a new FC network type, called "Fabric A", preferred bandwidth is 2Gb/s and max is 4Gb/s, and is associated with a Managed SAN Fabric.


 <pre> -------------------------- EXAMPLE 9 --------------------------<p>
New-HPOVNetwork -importFile "c:\OneViewInput\myNewNets.json"
</pre>
Creates the network(s) defined in the input file myNewNets.json



### Related Links

* [Get-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetwork)
* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetwork)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetwork)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVNetwork
<p>
Creates one or more new Ethernet or Fibre-Channel networks on the appliance.

### SYNTAX
<p>
<pre><code>New-HPOVNetwork [-Name] &lt;String&gt; [-Type] &lt;String&gt; [-VlanId] &lt;Int32&gt;[ [-NetworkSet] &lt;Object[]&gt;] [-Subnet] &lt;Object&gt; [-VLANType] &lt;String&gt; [-Purpose] &lt;String&gt; [-SmartLink] &lt;Boolean&gt; [-PrivateNetwork] &lt;Boolean&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVNetwork [-Name] &lt;String&gt; [-VlanRange] &lt;String&gt; [-Type] &lt;String&gt; [-VLANType] &lt;String&gt; [-Purpose] &lt;String&gt; [-SmartLink] &lt;Boolean&gt; [-PrivateNetwork] &lt;Boolean&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVNetwork [-Name] &lt;String&gt; [-Type] &lt;String&gt; [-VlanId] &lt;Int32&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt; [-ManagedSan] &lt;Object&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVNetwork [-Name] &lt;String&gt; [-Type] &lt;String&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt; [-LinkStabilityTime] &lt;Int32&gt; [-AutoLoginRedistribution] &lt;Boolean&gt; [-FabricType] &lt;String&gt; [-ManagedSan] &lt;Object&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVNetwork [-ImportFile] &lt;String&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Create a new network resource, including its default connection type.  Network definitions can be supplied as direct CmdLet parameters or as input from a file containing the network definition in JSON format.

To create an Ethernet Network for Image Streamer, use the following paramters:

	* Name
	* VlanType = Untagged
	* IPv4Subnet Object
	* Purpose = Management


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AutoLoginRedistribution &lt;Boolean&gt;<p>
Used for login balancing when logins are not distributed evenly over the Fibre Channel links (for example, when an uplink that was down becomes available).

True: Login redistribution is initiated automatically when the link stability time expires.
False: Login redistribution must be initiated manually.

This parameter is not applicable for Direct Attach Fabric Types.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FabricType &lt;String&gt;<p>
Valid values are DirectAttach and FabricAttach. Defaults to FabricAttach

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>FabricAttach</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ImportFile &lt;String&gt;<p>
Full path and file name of a JSON formatted input file containing network definitions.

<table><tbody><tr><td>Aliases</td><td>i, import</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LinkStabilityTime &lt;Int32&gt;<p>
The time in seconds the appliance waits before reconnecting to a link that was previously offline (Login redistribution). This interval prevents connection loss due to reconnecting to a link that is unstable (going online and offline repeatedly).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>30</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ManagedSan &lt;Object&gt;<p>
Managed SAN Object or Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaximumBandwidth &lt;Int32&gt;<p>
Maximum amount of bandwidth to assign, specified in Mbps.  Default value is 10000.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>20000</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Required object to provide a display name for the network being created.
If specifying the -VlanRange parameter, this will become the Nework Name Prefix (i.e. "VLAN" will become "VLAN-[vlanid]".)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NetworkSet &lt;Object[]&gt;<p>
Specify one or more network set objects the network should be added to during creation from Get-HPOVNetworkSet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrivateNetwork &lt;Boolean&gt;<p>
Default value is FALSE.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Purpose &lt;String&gt;<p>
A description of the network"s role within the logical interconnect.  Accepted values in string format are:

	* General
	* Management
	* VMMigration
	* FaultTolerance
	* iSCSI

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>General</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SmartLink &lt;Boolean&gt;<p>
Default value is TRUE.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>True</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Subnet &lt;Object&gt;<p>
An IPv4 Subnet Object that will be associated with a specific Ethernet Network and VLAN.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Required value that specifies the type of Network Resource to create.  Allowed values are:

	* Ethernet
	* FC
	* FibreChannel
	* FCoE

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Ethernet</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TypicalBandwidth &lt;Int32&gt;<p>
Preferred amount of bandwidth to assign, specified in Mbps.  Default value is 2500.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>2500</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VLANType &lt;String&gt;<p>
The type of VLAN configuration for the Ethernet Network.  This setting is only applicable for the Uplink Set configuration, and not the Network Set it could be assigned to.  Accepted values are 
            
	* Tagged
	* Tunnel
	* Access

Default value is Tagged.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Tagged</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VlanId &lt;Int32&gt;<p>
The Virtual LAN (VLAN) identification number assigned to the network. The VLAN ID must be unique. The VLAN ID cannot be changed once the network has been created.

When creating an Ethernet Network on an HPE Synergy Composer, Vlan ID 1 is not a valid ID.  The allowed range is 2-4095.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VlanRange &lt;String&gt;<p>
VLAN Range of networks to create.  Can be consecutive, non-consecutive or a combination of both.

e.g. -VLANRange "10-90,94,96,200-210"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

 ManagedSan resource object to be assigned to a FC or FCoE Network



### Return Values

_**System.Collections.ArrayList**_

 

A custom status object or array of objects containing the following PsCustomObject keys:
 
 * Name - name of the network object attempted to be created * Status - status of the creation attempt (Failed for http error return; Complete if a task object is returned)
 * Description - Task object or Error object * Exception -  System.Management.Automation.ErrorRecord object of the error generated



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVNetwork -type Ethernet -name MyNetwork1 -vlanid 100 -typicalbandwidth 5000 -maximumbandwidth 7500
</pre>
Creates new Ethernet Network type, with "MyNetwork1" name, VLAN ID 100, and specifies preferred bandwidth to 5Gb/s and max to 7.5Gb/s.  Network will be created on all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVNetwork -type Ethernet -name MyNetwork1 -vlanid 100 -typicalbandwidth 5000 -maximumbandwidth 7500 -Appliance MyAppliance
</pre>
Creates new Ethernet Network type, with "MyNetwork1" name, VLAN ID 100, an dspecifies preferred bandwidth to 5Gb/s and max to 7.5Gb/s to be created on "MyAppliance"


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$Connection1 = Connect-HPOVMgmt MyAppliance1.domain.local Administrator MyPassword
$Connection2 = Connect-HPOVMgmt MyAppliance2.domain.local Administrator MyPassword
New-HPOVNetwork -type Ethernet -name MyNetwork1 -vlanid 100 -typicalbandwidth 5000 -maximumbandwidth 7500 -Appliance $Connection1,$Connection2

</pre>
Creates new Ethernet Network type, with "MyNetwork1" name, VLAN ID 100, an dspecifies preferred bandwidth to 5Gb/s and max to 7.5Gb/s to be created on "MyAppliance1" and "MyAppliance2" using the connection objects.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
10,20,30,40,50,60 | % { New-HPOVNetwork -type Ethernet -name "VLAN $_" -vlanid $_ }
</pre>
Create multiple Ethernet Networks.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
10,20,30,40,50,60 | % { New-HPOVNetwork -type Ethernet -name "VLAN $_-A" -vlanid $_ }
10,20,30,40,50,60 | % { New-HPOVNetwork -type Ethernet -name "VLAN $_-B" -vlanid $_ }

</pre>
Create Ethernet Networks for an Active/Active configuration.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
New-HPOVNetwork -name "VLAN A Side" -vlanRange "10,20,30,40,50,60"
New-HPOVNetwork -name "VLAN B Side" -VlanRange "10,20,30,40,50,60"

</pre>
Create Ethernet Networks for an Active/Active configuration using the -VlanRange parameter.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
New-HPOVNetwork -type FC -name "Fabric A" -typicalBandwidth 2000 -maximumBandwidth 4000
</pre>
Creates a new FC network type, called "Fabric A" and preferred bandwidth is 2Gb/s and max is 4Gb/s.


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
New-HPOVNetwork -type FC -name "Fabric A" -typicalBandwidth 2000 -maximumBandwidth 4000 -fabricType FabricAttach -managedSAN Fabric_A
</pre>
Creates a new FC network type, called "Fabric A", preferred bandwidth is 2Gb/s and max is 4Gb/s, and is associated with a Managed SAN Fabric.


 <pre> -------------------------- EXAMPLE 9 --------------------------<p>
New-HPOVNetwork -importFile "c:\OneViewInput\myNewNets.json"
</pre>
Creates the network(s) defined in the input file myNewNets.json



### Related Links

* [Get-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetwork)
* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetwork)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetwork)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
