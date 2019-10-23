<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVNetwork
<p>
Retrieve Network resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVNetwork [-Name] &lt;String&gt; [-Type] &lt;String&gt;[ [-Purpose] &lt;String&gt;][ [-Scope] &lt;Object&gt;] [-Label] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [-exportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of network resources which have the specified type and/or name.  The default connection information is included in the returned network resources.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label name the network resource is associated with.  Cannot be combined with Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the network resource to be returned.  All network resources will be returned if omitted.  Supports "*" wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Purpose &lt;String&gt;<p>
Specify the Ethernet Purpose value to filter on.

Supported Values:

	* General
	* Management
	* VMMigration
	* FaultTolerance
	* ISCSI

	Note: When using this parameter, only Ethernet networks will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
The type of the network resource to be returned.  Valid types are "Ethernet" for Ethernet networks, "FC" or "FibreChannel" for Fibre Channel networks.  All network resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases  [-x, -export]
The full path and file name to export the JSON formatted definition of the networks to a file. The directory for the file is validated prior to execution and the function returns an error is the directory does not exist.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Network Resource Name(s)



### Return Values

_**HPOneView.Networking.EthernetNetwork**_

 

Single Ethernet Network resource

 _**HPOneView.Networking.FibreChannelNetwork**_

 

Single Fibre Channel Network resource

 _**HPOneView.Networking.FCoENetwork**_

 

Single FCoE Network resource

 _**System.Collections.ArrayList**_

 

Multiple Network Object resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$net41 = Get-HPOVNetwork -name "Net-41"
</pre>
Return the network resource with the name "Net-41"


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ethNets = Get-HPOVNetwork -type Ethernet
</pre>
Return all the Ethernet network resources


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$ethNets = Get-HPOVNetwork -Name VLAN_19*
</pre>
Return all Ethernet Networks that match "VLAN_19*".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$ethNets = "Net1","Net2","Net3" | Get-HPOVNetwork -Type Ethernet
</pre>
Return Net1, Net2, and Net3 Ethernet Networks from the specified appliance connection.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVNetwork -exportFile "c:\myApplianceConfig\myNets.json"
</pre>
Exports all networks to the file myNets.json in JSON format.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVNetwork -x "c:\myApplianceConfig\myNets.json" -type Ethernet
</pre>
Exports only the ethernet networks to the file myNets.json.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
Get-HPOVNetwork
Type: Ethernet


Name       Type   VLAN ID Purpose     Smartlink Private Network Status Preferred Bandwidth Max Bandwidth
----       ----   ------- -------     --------- --------------- ------ ------------------- -------------
VLAN 1-A   Tagged 1       Management  True      False           OK     2500                10000
VLAN 1-B   Tagged 1       Management  True      False           OK     2500                10000
VLAN 10-A  Tagged 10      VMMigration True      False           OK     2500                10000
VLAN 10-B  Tagged 10      VMMigration True      False           OK     2500                10000
VLAN 101-A Tagged 101     General     True      False           OK     2500                10000
VLAN 101-B Tagged 101     General     True      False           OK     2500                10000
VLAN 102-A Tagged 102     General     True      False           OK     2500                10000
VLAN 102-B Tagged 102     General     True      False           OK     2500                10000
VLAN 103-A Tagged 103     General     True      False           OK     2500                10000
VLAN 103-B Tagged 103     General     True      False           OK     2500                10000
VLAN 104-A Tagged 104     General     True      False           OK     2500                10000
VLAN 104-B Tagged 104     General     True      False           OK     2500                10000
VLAN 105-A Tagged 105     General     True      False           OK     2500                10000
VLAN 105-B Tagged 105     General     True      False           OK     2500                10000
VLAN 20-A  Tagged 20      General     True      False           OK     2500                10000
VLAN 20-B  Tagged 20      General     True      False           OK     2500                10000
VLAN 201-A Tagged 201     General     True      False           OK     2500                10000
VLAN 201-B Tagged 201     General     True      False           OK     2500                10000
VLAN 30-A  Tagged 30      General     True      False           OK     2500                10000
VLAN 30-B  Tagged 30      General     True      False           OK     2500                10000
VLAN 301-A Tagged 301     General     True      False           OK     2500                10000
VLAN 301-B Tagged 301     General     True      False           OK     2500                10000
VLAN 40-A  Tagged 40      General     True      False           OK     2500                10000
VLAN 40-B  Tagged 40      General     True      False           OK     2500                10000
VLAN 401-A Tagged 401     General     True      False           OK     2500                10000
VLAN 401-B Tagged 401     General     True      False           OK     2500                10000
VLAN 50-A  Tagged 50      General     True      False           OK     2500                10000
VLAN 50-B  Tagged 50      General     True      False           OK     2500                10000
VLAN 501-A Tagged 501     General     True      False           OK     2500                10000
VLAN 501-B Tagged 501     General     True      False           OK     2500                10000


    Type: Fibre Channel


Name              Status Type         Typical Bandwidth Max Bandwidth Auto Login Redistribution Link Stability Interval
----              ------ ----         ----------------- ------------- ------------------------- -----------------------
3PAR SAN DA A     OK     DirectAttach 4000              8000          False                     0
3PAR SAN DA B     OK     DirectAttach 4000              8000          False                     0
3PAR SAN Fabric A OK     FabricAttach 4000              8000          True                      30
3PAR SAN Fabric B OK     FabricAttach 4000              8000          True                      30

	
    Type: FCoE


Name   Status vlanId Typical Bandwidth Max Bandwidth Associated SAN
----   ------ ------ ----------------- ------------- --------------
fcoe1  OK     134    2500              20000
FCOE3  OK     11     2500              10000
FCOE2  OK     10     2500              10000
FCOE12 OK     12     2500              10000

</pre>
Get all available networks.



### Related Links

* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetwork)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetwork)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetwork)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVNetwork
<p>
Retrieve Network resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVNetwork [-Name] &lt;String&gt; [-Type] &lt;String&gt;[ [-Purpose] &lt;String&gt;][ [-Scope] &lt;Object&gt;] [-Label] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [-exportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of network resources which have the specified type and/or name.  The default connection information is included in the returned network resources.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label name the network resource is associated with.  Cannot be combined with Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the network resource to be returned.  All network resources will be returned if omitted.  Supports "*" wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Purpose &lt;String&gt;<p>
Specify the Ethernet Purpose value to filter on.

Supported Values:

	* General
	* Management
	* VMMigration
	* FaultTolerance
	* ISCSI

	Note: When using this parameter, only Ethernet networks will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
The type of the network resource to be returned.  Valid types are "Ethernet" for Ethernet networks, "FC" or "FibreChannel" for Fibre Channel networks.  All network resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases  [-x, -export]
The full path and file name to export the JSON formatted definition of the networks to a file. The directory for the file is validated prior to execution and the function returns an error is the directory does not exist.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Network Resource Name(s)



### Return Values

_**HPOneView.Networking.EthernetNetwork**_

 

Single Ethernet Network resource

 _**HPOneView.Networking.FibreChannelNetwork**_

 

Single Fibre Channel Network resource

 _**HPOneView.Networking.FCoENetwork**_

 

Single FCoE Network resource

 _**System.Collections.ArrayList**_

 

Multiple Network Object resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$net41 = Get-HPOVNetwork -name "Net-41"
</pre>
Return the network resource with the name "Net-41"


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ethNets = Get-HPOVNetwork -type Ethernet
</pre>
Return all the Ethernet network resources


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$ethNets = Get-HPOVNetwork -Name VLAN_19*
</pre>
Return all Ethernet Networks that match "VLAN_19*".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$ethNets = "Net1","Net2","Net3" | Get-HPOVNetwork -Type Ethernet
</pre>
Return Net1, Net2, and Net3 Ethernet Networks from the specified appliance connection.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVNetwork -exportFile "c:\myApplianceConfig\myNets.json"
</pre>
Exports all networks to the file myNets.json in JSON format.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVNetwork -x "c:\myApplianceConfig\myNets.json" -type Ethernet
</pre>
Exports only the ethernet networks to the file myNets.json.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
Get-HPOVNetwork
Type: Ethernet


Name       Type   VLAN ID Purpose     Smartlink Private Network Status Preferred Bandwidth Max Bandwidth
----       ----   ------- -------     --------- --------------- ------ ------------------- -------------
VLAN 1-A   Tagged 1       Management  True      False           OK     2500                10000
VLAN 1-B   Tagged 1       Management  True      False           OK     2500                10000
VLAN 10-A  Tagged 10      VMMigration True      False           OK     2500                10000
VLAN 10-B  Tagged 10      VMMigration True      False           OK     2500                10000
VLAN 101-A Tagged 101     General     True      False           OK     2500                10000
VLAN 101-B Tagged 101     General     True      False           OK     2500                10000
VLAN 102-A Tagged 102     General     True      False           OK     2500                10000
VLAN 102-B Tagged 102     General     True      False           OK     2500                10000
VLAN 103-A Tagged 103     General     True      False           OK     2500                10000
VLAN 103-B Tagged 103     General     True      False           OK     2500                10000
VLAN 104-A Tagged 104     General     True      False           OK     2500                10000
VLAN 104-B Tagged 104     General     True      False           OK     2500                10000
VLAN 105-A Tagged 105     General     True      False           OK     2500                10000
VLAN 105-B Tagged 105     General     True      False           OK     2500                10000
VLAN 20-A  Tagged 20      General     True      False           OK     2500                10000
VLAN 20-B  Tagged 20      General     True      False           OK     2500                10000
VLAN 201-A Tagged 201     General     True      False           OK     2500                10000
VLAN 201-B Tagged 201     General     True      False           OK     2500                10000
VLAN 30-A  Tagged 30      General     True      False           OK     2500                10000
VLAN 30-B  Tagged 30      General     True      False           OK     2500                10000
VLAN 301-A Tagged 301     General     True      False           OK     2500                10000
VLAN 301-B Tagged 301     General     True      False           OK     2500                10000
VLAN 40-A  Tagged 40      General     True      False           OK     2500                10000
VLAN 40-B  Tagged 40      General     True      False           OK     2500                10000
VLAN 401-A Tagged 401     General     True      False           OK     2500                10000
VLAN 401-B Tagged 401     General     True      False           OK     2500                10000
VLAN 50-A  Tagged 50      General     True      False           OK     2500                10000
VLAN 50-B  Tagged 50      General     True      False           OK     2500                10000
VLAN 501-A Tagged 501     General     True      False           OK     2500                10000
VLAN 501-B Tagged 501     General     True      False           OK     2500                10000


    Type: Fibre Channel


Name              Status Type         Typical Bandwidth Max Bandwidth Auto Login Redistribution Link Stability Interval
----              ------ ----         ----------------- ------------- ------------------------- -----------------------
3PAR SAN DA A     OK     DirectAttach 4000              8000          False                     0
3PAR SAN DA B     OK     DirectAttach 4000              8000          False                     0
3PAR SAN Fabric A OK     FabricAttach 4000              8000          True                      30
3PAR SAN Fabric B OK     FabricAttach 4000              8000          True                      30

	
    Type: FCoE


Name   Status vlanId Typical Bandwidth Max Bandwidth Associated SAN
----   ------ ------ ----------------- ------------- --------------
fcoe1  OK     134    2500              20000
FCOE3  OK     11     2500              10000
FCOE2  OK     10     2500              10000
FCOE12 OK     12     2500              10000

</pre>
Get all available networks.



### Related Links

* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetwork)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetwork)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetwork)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVNetwork
<p>
Retrieve Network resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVNetwork [-Name] &lt;String&gt; [-Type] &lt;String&gt;[ [-Purpose] &lt;String&gt;][ [-Scope] &lt;Object&gt;] [-Label] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [-exportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of network resources which have the specified type and/or name.  The default connection information is included in the returned network resources.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label name the network resource is associated with.  Cannot be combined with Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the network resource to be returned.  All network resources will be returned if omitted.  Supports "*" wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Purpose &lt;String&gt;<p>
Specify the Ethernet Purpose value to filter on.

Supported Values:

	* General
	* Management
	* VMMigration
	* FaultTolerance
	* ISCSI

	Note: When using this parameter, only Ethernet networks will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
The type of the network resource to be returned.  Valid types are "Ethernet" for Ethernet networks, "FC" or "FibreChannel" for Fibre Channel networks.  All network resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases  [-x, -export]
The full path and file name to export the JSON formatted definition of the networks to a file. The directory for the file is validated prior to execution and the function returns an error is the directory does not exist.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Network Resource Name(s)



### Return Values

_**HPOneView.Networking.EthernetNetwork**_

 

Single Ethernet Network resource

 _**HPOneView.Networking.FibreChannelNetwork**_

 

Single Fibre Channel Network resource

 _**HPOneView.Networking.FCoENetwork**_

 

Single FCoE Network resource

 _**System.Collections.ArrayList**_

 

Multiple Network Object resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$net41 = Get-HPOVNetwork -name "Net-41"
</pre>
Return the network resource with the name "Net-41"


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ethNets = Get-HPOVNetwork -type Ethernet
</pre>
Return all the Ethernet network resources


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$ethNets = Get-HPOVNetwork -Name VLAN_19*
</pre>
Return all Ethernet Networks that match "VLAN_19*".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$ethNets = "Net1","Net2","Net3" | Get-HPOVNetwork -Type Ethernet
</pre>
Return Net1, Net2, and Net3 Ethernet Networks from the specified appliance connection.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVNetwork -exportFile "c:\myApplianceConfig\myNets.json"
</pre>
Exports all networks to the file myNets.json in JSON format.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVNetwork -x "c:\myApplianceConfig\myNets.json" -type Ethernet
</pre>
Exports only the ethernet networks to the file myNets.json.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
Get-HPOVNetwork
Type: Ethernet


Name       Type   VLAN ID Purpose     Smartlink Private Network Status Preferred Bandwidth Max Bandwidth
----       ----   ------- -------     --------- --------------- ------ ------------------- -------------
VLAN 1-A   Tagged 1       Management  True      False           OK     2500                10000
VLAN 1-B   Tagged 1       Management  True      False           OK     2500                10000
VLAN 10-A  Tagged 10      VMMigration True      False           OK     2500                10000
VLAN 10-B  Tagged 10      VMMigration True      False           OK     2500                10000
VLAN 101-A Tagged 101     General     True      False           OK     2500                10000
VLAN 101-B Tagged 101     General     True      False           OK     2500                10000
VLAN 102-A Tagged 102     General     True      False           OK     2500                10000
VLAN 102-B Tagged 102     General     True      False           OK     2500                10000
VLAN 103-A Tagged 103     General     True      False           OK     2500                10000
VLAN 103-B Tagged 103     General     True      False           OK     2500                10000
VLAN 104-A Tagged 104     General     True      False           OK     2500                10000
VLAN 104-B Tagged 104     General     True      False           OK     2500                10000
VLAN 105-A Tagged 105     General     True      False           OK     2500                10000
VLAN 105-B Tagged 105     General     True      False           OK     2500                10000
VLAN 20-A  Tagged 20      General     True      False           OK     2500                10000
VLAN 20-B  Tagged 20      General     True      False           OK     2500                10000
VLAN 201-A Tagged 201     General     True      False           OK     2500                10000
VLAN 201-B Tagged 201     General     True      False           OK     2500                10000
VLAN 30-A  Tagged 30      General     True      False           OK     2500                10000
VLAN 30-B  Tagged 30      General     True      False           OK     2500                10000
VLAN 301-A Tagged 301     General     True      False           OK     2500                10000
VLAN 301-B Tagged 301     General     True      False           OK     2500                10000
VLAN 40-A  Tagged 40      General     True      False           OK     2500                10000
VLAN 40-B  Tagged 40      General     True      False           OK     2500                10000
VLAN 401-A Tagged 401     General     True      False           OK     2500                10000
VLAN 401-B Tagged 401     General     True      False           OK     2500                10000
VLAN 50-A  Tagged 50      General     True      False           OK     2500                10000
VLAN 50-B  Tagged 50      General     True      False           OK     2500                10000
VLAN 501-A Tagged 501     General     True      False           OK     2500                10000
VLAN 501-B Tagged 501     General     True      False           OK     2500                10000


    Type: Fibre Channel


Name              Status Type         Typical Bandwidth Max Bandwidth Auto Login Redistribution Link Stability Interval
----              ------ ----         ----------------- ------------- ------------------------- -----------------------
3PAR SAN DA A     OK     DirectAttach 4000              8000          False                     0
3PAR SAN DA B     OK     DirectAttach 4000              8000          False                     0
3PAR SAN Fabric A OK     FabricAttach 4000              8000          True                      30
3PAR SAN Fabric B OK     FabricAttach 4000              8000          True                      30

	
    Type: FCoE


Name   Status vlanId Typical Bandwidth Max Bandwidth Associated SAN
----   ------ ------ ----------------- ------------- --------------
fcoe1  OK     134    2500              20000
FCOE3  OK     11     2500              10000
FCOE2  OK     10     2500              10000
FCOE12 OK     12     2500              10000

</pre>
Get all available networks.



### Related Links

* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetwork)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetwork)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetwork)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
