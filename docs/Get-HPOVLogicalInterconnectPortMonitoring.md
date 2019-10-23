<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVLogicalInterconnectPortMonitoring
<p>
Get port monitoring configuration from provided logical interconnect.

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalInterconnectPortMonitoring [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Port monitoring enables you to send a copy of every Ethernet or Fibre Channel frame coming in and going out of a downlink (server-facing) port to another port. To evaluate network traffic between ports, you can connect debugging equipment, such as a network analyzer. This capability is important in a server environment where there is limited physical access to the network interfaces on the servers.

This Cmdlet will return the port monitoring configuration for the provided logical interconnect.

Required Privileges: Network administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
HPOneView.Networking.LogicalInterconnect from Get-HPOVLogicalInterconnect.

<table><tbody><tr><td>Aliases</td><td>uri, li, name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPoneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect resource object from Get-HPOVLogicalInterconnect



### Return Values

_**HPOneView.Networking.LogicalInterconnect+PortMonitoringConfig**_

 

The current port monitor configuration of the provided logical interconnect(s).



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnect -Name "Encl1-Default VC FF LIG" -ErrorAction Stop | Get-HPOVLogicalInterconnectPortMonitoring
</pre>
Get the port monitoring configuration from the specified Logical Interconnect.



### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLogicalInterconnectPortMonitoring)
* [Enable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLogicalInterconnectPortMonitoring)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVLogicalInterconnectPortMonitoring
<p>
Get port monitoring configuration from provided logical interconnect.

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalInterconnectPortMonitoring [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Port monitoring enables you to send a copy of every Ethernet or Fibre Channel frame coming in and going out of a downlink (server-facing) port to another port. To evaluate network traffic between ports, you can connect debugging equipment, such as a network analyzer. This capability is important in a server environment where there is limited physical access to the network interfaces on the servers.

This Cmdlet will return the port monitoring configuration for the provided logical interconnect.

Required Privileges: Network administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
HPOneView.Networking.LogicalInterconnect from Get-HPOVLogicalInterconnect.

<table><tbody><tr><td>Aliases</td><td>uri, li, name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPoneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect resource object from Get-HPOVLogicalInterconnect



### Return Values

_**HPOneView.Networking.LogicalInterconnect+PortMonitoringConfig**_

 

The current port monitor configuration of the provided logical interconnect(s).



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnect -Name "Encl1-Default VC FF LIG" -ErrorAction Stop | Get-HPOVLogicalInterconnectPortMonitoring
</pre>
Get the port monitoring configuration from the specified Logical Interconnect.



### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLogicalInterconnectPortMonitoring)
* [Enable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLogicalInterconnectPortMonitoring)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVLogicalInterconnectPortMonitoring
<p>
Get port monitoring configuration from provided logical interconnect.

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalInterconnectPortMonitoring [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Port monitoring enables you to send a copy of every Ethernet or Fibre Channel frame coming in and going out of a downlink (server-facing) port to another port. To evaluate network traffic between ports, you can connect debugging equipment, such as a network analyzer. This capability is important in a server environment where there is limited physical access to the network interfaces on the servers.

This Cmdlet will return the port monitoring configuration for the provided logical interconnect.

Required Privileges: Network administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
HPOneView.Networking.LogicalInterconnect from Get-HPOVLogicalInterconnect.

<table><tbody><tr><td>Aliases</td><td>uri, li, name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPoneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect resource object from Get-HPOVLogicalInterconnect



### Return Values

_**HPOneView.Networking.LogicalInterconnect+PortMonitoringConfig**_

 

The current port monitor configuration of the provided logical interconnect(s).



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnect -Name "Encl1-Default VC FF LIG" -ErrorAction Stop | Get-HPOVLogicalInterconnectPortMonitoring
</pre>
Get the port monitoring configuration from the specified Logical Interconnect.



### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLogicalInterconnectPortMonitoring)
* [Enable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLogicalInterconnectPortMonitoring)


***
<div align=right><a href="#Top">Top</a></div>
