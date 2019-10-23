<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVNetwork
<p>
Modify an existing network.

### SYNTAX
<p>
<pre><code>Set-HPOVNetwork [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Prefix] &lt;String&gt;][ [-Suffix] &lt;String&gt;][ [-Purpose] &lt;String&gt;][ [-Smartlink] &lt;Boolean&gt;][ [-PrivateNetwork] &lt;Boolean&gt;][ [-TypicalBandwidth] &lt;Int32&gt;][ [-MaximumBandwidth] &lt;Int32&gt;][ [-IPv4Subnet] &lt;Object&gt;][ [-IPv6Subnet] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVNetwork [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Prefix] &lt;String&gt;][ [-Suffix] &lt;String&gt;][ [-TypicalBandwidth] &lt;Int32&gt;][ [-MaximumBandwidth] &lt;Int32&gt;][ [-LinkStabilityTime] &lt;Int32&gt;][ [-AutoLoginRedistribution] &lt;Boolean&gt;][ [-ManagedSan] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Modify a network and it"s attributes information.  Use this cmdlet to change the Network Name, Purpose, Enable or Disable Smartlink, Enable or Disable Private Network, and adjust the allocated bandwidth.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AutoLoginRedistribution &lt;Boolean&gt;<p>
Aliases [-ald]
Used for login balancing when logins are not distributed evenly over the Fibre Channel links (for example, when an uplink that was down becomes available).  Parameter is only supported with FibreChannel network resources.

True: Login redistribution is initiated automatically when the link stability time expires.
False: Login redistribution must be initiated manually.

<table><tbody><tr><td>Aliases</td><td>ald</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Subnet &lt;Object&gt;<p>
Use to specify the one IPv4 subnet the network should be associated with from Get-HPOVAddressPoolSubnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Subnet &lt;Object&gt;<p>
Use to specify the one IPv6 subnet the network should be associated with from Get-HPOVAddressPoolSubnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-net, -Network]
The Name or Resource object of the network to be modified.

<table><tbody><tr><td>Aliases</td><td>net, Network</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LinkStabilityTime &lt;Int32&gt;<p>
Aliases [-lst]
The time in seconds the appliance waits before reconnecting to a link that was previously offline (Login redistribution). This interval prevents connection loss due to reconnecting to a link that is unstable (going online and offline repeatedly).  Parameter is only supported with FibreChannel network resources.

Minimum Value: 1
Maximum Value: 1800

<table><tbody><tr><td>Aliases</td><td>lst</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ManagedSan &lt;Object&gt;<p>
Managed SAN Name or URI.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaximumBandwidth &lt;Int32&gt;<p>
The maximum bandwidth of a network connection, that will be allowed and reflected witin the Server Profile Connection, expressed in Mbps. In Flex10 adapters, the maximum supported Ethernet bandwidth is 10 Gbps. With 10Gb FlexFabric adapters, the maximum FCoE bandwidth is 8Gbps. With FlexFabric 20Gb adapters, the maximum Ethernet bandwidth is 20Gbps.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The network resource"s new Name value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Prefix &lt;String&gt;<p>
Use this parameter to add a new prefix to the name.  Will not change the original name value, simply add the prefix to the orignal name.  Use the -Name parameter to adjust the entire name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrivateNetwork &lt;Boolean&gt;<p>
Enable or Disable Private Network within the Ethernet Network.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Purpose &lt;String&gt;<p>
A description of the network"s role within the logical interconnect.  Accepted values in string format are:

	* General
	* Management
	* VMMigration
	* FaultTolerance

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Smartlink &lt;Boolean&gt;<p>
Enable or Disable Smartlink within the Ethernet Network.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Suffix &lt;String&gt;<p>
Use this parameter to add a new suffix to the name.  Will not change the original name value, simply add the suffix to the orignal name.  Use the -Name parameter to adjust the entire name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TypicalBandwidth &lt;Int32&gt;<p>
Preferred amount of bandwidth to assign within the Server Profile Connection, specified in Mbps.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.EthernetNetwork [System.Management.Automation.PSCustomObject]**_

 Ethernet Network resource object

 _**HPOneView.Networking.FCNetwork [System.Management.Automation.PSCustomObject]**_

 FC Network resource object

 _**HPOneView.Networking.FCoENetwork [System.Management.Automation.PSCustomObject]**_

 FCoE Network resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The Update Network Resource Task object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVNetwork -Name "Net-11" | Set-HPOVNetwork -name NewNet-11 -Purpose Management -SmartLink $true -PrivateNetwork $false -TypicalBandwidth 500 -MaximumBandwidth 1500 | Wait-HPOVTaskComplete
</pre>
Get the "Net-11" Ethernet Network, pipe it to Set-HPOVNetwork to update values.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$fabricAManagedSan = Get-HPOVManagedSan -Name "Fabric A"
Get-HPOVNetwork -Name "Prod Fabric A" | Set-HPOVNetwork -ManagedSan $fabricAManagedSan  | Wait-HPOVTaskComplete
</pre>
Update "Prod Fabric A" FC Network with "Fabric a" Managed SAN resource.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$NewSuffix = "-prod A"
Get-HPOVNetwork -type Ethernet | Set-HPOVNetwork -Suffix $NewSuffix
</pre>
Get all Ethernet networks, and add a Suffix to their names.



### Related Links

* [Get-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetwork)
* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetwork)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetwork)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVNetwork
<p>
Modify an existing network.

### SYNTAX
<p>
<pre><code>Set-HPOVNetwork [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Prefix] &lt;String&gt;][ [-Suffix] &lt;String&gt;][ [-Purpose] &lt;String&gt;][ [-Smartlink] &lt;Boolean&gt;][ [-PrivateNetwork] &lt;Boolean&gt;][ [-TypicalBandwidth] &lt;Int32&gt;][ [-MaximumBandwidth] &lt;Int32&gt;][ [-IPv4Subnet] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVNetwork [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Prefix] &lt;String&gt;][ [-Suffix] &lt;String&gt;][ [-TypicalBandwidth] &lt;Int32&gt;][ [-MaximumBandwidth] &lt;Int32&gt;][ [-LinkStabilityTime] &lt;Int32&gt;][ [-AutoLoginRedistribution] &lt;Boolean&gt;][ [-ManagedSan] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Modify a network and it"s attributes information.  Use this cmdlet to change the Network Name, Purpose, Enable or Disable Smartlink, Enable or Disable Private Network, and adjust the allocated bandwidth.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AutoLoginRedistribution &lt;Boolean&gt;<p>
Aliases [-ald]
Used for login balancing when logins are not distributed evenly over the Fibre Channel links (for example, when an uplink that was down becomes available).  Parameter is only supported with FibreChannel network resources.

True: Login redistribution is initiated automatically when the link stability time expires.
False: Login redistribution must be initiated manually.

<table><tbody><tr><td>Aliases</td><td>ald</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Subnet &lt;Object&gt;<p>
Associate with IPv4Subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-net, -Network]
The Name or Resource object of the network to be modified.

<table><tbody><tr><td>Aliases</td><td>net, Network</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LinkStabilityTime &lt;Int32&gt;<p>
Aliases [-lst]
The time in seconds the appliance waits before reconnecting to a link that was previously offline (Login redistribution). This interval prevents connection loss due to reconnecting to a link that is unstable (going online and offline repeatedly).  Parameter is only supported with FibreChannel network resources.

Minimum Value: 1
Maximum Value: 1800

<table><tbody><tr><td>Aliases</td><td>lst</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ManagedSan &lt;Object&gt;<p>
Managed SAN Name or URI.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaximumBandwidth &lt;Int32&gt;<p>
The maximum bandwidth of a network connection, that will be allowed and reflected witin the Server Profile Connection, expressed in Mbps. In Flex10 adapters, the maximum supported Ethernet bandwidth is 10 Gbps. With 10Gb FlexFabric adapters, the maximum FCoE bandwidth is 8Gbps. With FlexFabric 20Gb adapters, the maximum Ethernet bandwidth is 20Gbps.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The network resource"s new Name value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Prefix &lt;String&gt;<p>
Use this parameter to add a new prefix to the name.  Will not change the original name value, simply add the prefix to the orignal name.  Use the -Name parameter to adjust the entire name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrivateNetwork &lt;Boolean&gt;<p>
Enable or Disable Private Network within the Ethernet Network.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Purpose &lt;String&gt;<p>
A description of the network"s role within the logical interconnect.  Accepted values in string format are:

	* General
	* Management
	* VMMigration
	* FaultTolerance

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Smartlink &lt;Boolean&gt;<p>
Enable or Disable Smartlink within the Ethernet Network.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Suffix &lt;String&gt;<p>
Use this parameter to add a new suffix to the name.  Will not change the original name value, simply add the suffix to the orignal name.  Use the -Name parameter to adjust the entire name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TypicalBandwidth &lt;Int32&gt;<p>
Preferred amount of bandwidth to assign within the Server Profile Connection, specified in Mbps.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.EthernetNetwork [System.Management.Automation.PSCustomObject]**_

 Ethernet Network resource object

 _**HPOneView.Networking.FCNetwork [System.Management.Automation.PSCustomObject]**_

 FC Network resource object

 _**HPOneView.Networking.FCoENetwork [System.Management.Automation.PSCustomObject]**_

 FCoE Network resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The Update Network Resource Task object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVNetwork "Net-11" | Set-HPOVNetwork -name NewNet-11 -Purpose Management -SmartLink $true -PrivateNetwork $false -TypicalBandwidth 500 -MaximumBandwidth 1500 | Wait-HPOVTaskComplete
</pre>
Get the "Net-11" Ethernet Network, pipe it to Set-HPOVNetwork to update values.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$fabricAManagedSan = Get-HPOVManagedSan -Name "Fabric A"
Get-HPOVNetwork "Prod Fabric A" | Set-HPOVNetwork -ManagedSan $fabricAManagedSan  | Wait-HPOVTaskComplete
</pre>
Update "Prod Fabric A" FC Network with "Fabric a" Managed SAN resource.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$NewSuffix = "-prod A"
Get-HPOVNetwork -type Ethernet | Set-HPOVNetwork -Suffix $NewSuffix
</pre>
Get all Ethernet networks, and add a Suffix to their names.



### Related Links

* [Get-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetwork)
* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetwork)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetwork)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVNetwork
<p>
Modify an existing network.

### SYNTAX
<p>
<pre><code>Set-HPOVNetwork [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Prefix] &lt;String&gt;][ [-Suffix] &lt;String&gt;][ [-Purpose] &lt;String&gt;][ [-Smartlink] &lt;Boolean&gt;][ [-PrivateNetwork] &lt;Boolean&gt;][ [-TypicalBandwidth] &lt;Int32&gt;][ [-MaximumBandwidth] &lt;Int32&gt;][ [-IPv4Subnet] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVNetwork [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Prefix] &lt;String&gt;][ [-Suffix] &lt;String&gt;][ [-TypicalBandwidth] &lt;Int32&gt;][ [-MaximumBandwidth] &lt;Int32&gt;][ [-LinkStabilityTime] &lt;Int32&gt;][ [-AutoLoginRedistribution] &lt;Boolean&gt;][ [-ManagedSan] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Modify a network and it"s attributes information.  Use this cmdlet to change the Network Name, Purpose, Enable or Disable Smartlink, Enable or Disable Private Network, and adjust the allocated bandwidth.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AutoLoginRedistribution &lt;Boolean&gt;<p>
Aliases [-ald]
Used for login balancing when logins are not distributed evenly over the Fibre Channel links (for example, when an uplink that was down becomes available).  Parameter is only supported with FibreChannel network resources.

True: Login redistribution is initiated automatically when the link stability time expires.
False: Login redistribution must be initiated manually.

<table><tbody><tr><td>Aliases</td><td>ald</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Subnet &lt;Object&gt;<p>
Associate with IPv4Subnet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-net, -Network]
The Name or Resource object of the network to be modified.

<table><tbody><tr><td>Aliases</td><td>net, Network</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LinkStabilityTime &lt;Int32&gt;<p>
Aliases [-lst]
The time in seconds the appliance waits before reconnecting to a link that was previously offline (Login redistribution). This interval prevents connection loss due to reconnecting to a link that is unstable (going online and offline repeatedly).  Parameter is only supported with FibreChannel network resources.

Minimum Value: 1
Maximum Value: 1800

<table><tbody><tr><td>Aliases</td><td>lst</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ManagedSan &lt;Object&gt;<p>
Managed SAN Name or URI.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaximumBandwidth &lt;Int32&gt;<p>
The maximum bandwidth of a network connection, that will be allowed and reflected witin the Server Profile Connection, expressed in Mbps. In Flex10 adapters, the maximum supported Ethernet bandwidth is 10 Gbps. With 10Gb FlexFabric adapters, the maximum FCoE bandwidth is 8Gbps. With FlexFabric 20Gb adapters, the maximum Ethernet bandwidth is 20Gbps.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The network resource"s new Name value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Prefix &lt;String&gt;<p>
Use this parameter to add a new prefix to the name.  Will not change the original name value, simply add the prefix to the orignal name.  Use the -Name parameter to adjust the entire name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrivateNetwork &lt;Boolean&gt;<p>
Enable or Disable Private Network within the Ethernet Network.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Purpose &lt;String&gt;<p>
A description of the network"s role within the logical interconnect.  Accepted values in string format are:

	* General
	* Management
	* VMMigration
	* FaultTolerance

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Smartlink &lt;Boolean&gt;<p>
Enable or Disable Smartlink within the Ethernet Network.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Suffix &lt;String&gt;<p>
Use this parameter to add a new suffix to the name.  Will not change the original name value, simply add the suffix to the orignal name.  Use the -Name parameter to adjust the entire name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TypicalBandwidth &lt;Int32&gt;<p>
Preferred amount of bandwidth to assign within the Server Profile Connection, specified in Mbps.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.EthernetNetwork [System.Management.Automation.PSCustomObject]**_

 Ethernet Network resource object

 _**HPOneView.Networking.FCNetwork [System.Management.Automation.PSCustomObject]**_

 FC Network resource object

 _**HPOneView.Networking.FCoENetwork [System.Management.Automation.PSCustomObject]**_

 FCoE Network resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The Update Network Resource Task object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVNetwork "Net-11" | Set-HPOVNetwork -name NewNet-11 -Purpose Management -SmartLink $true -PrivateNetwork $false -TypicalBandwidth 500 -MaximumBandwidth 1500 | Wait-HPOVTaskComplete
</pre>
Get the "Net-11" Ethernet Network, pipe it to Set-HPOVNetwork to update values.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$fabricAManagedSan = Get-HPOVManagedSan -Name "Fabric A"
Get-HPOVNetwork "Prod Fabric A" | Set-HPOVNetwork -ManagedSan $fabricAManagedSan  | Wait-HPOVTaskComplete
</pre>
Update "Prod Fabric A" FC Network with "Fabric a" Managed SAN resource.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$NewSuffix = "-prod A"
Get-HPOVNetwork -type Ethernet | Set-HPOVNetwork -Suffix $NewSuffix
</pre>
Get all Ethernet networks, and add a Suffix to their names.



### Related Links

* [Get-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetwork)
* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetwork)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetwork)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
