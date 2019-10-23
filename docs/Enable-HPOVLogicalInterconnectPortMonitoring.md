<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Enable-HPOVLogicalInterconnectPortMonitoring
<p>
Enable port monitoring for a logical interconnect.

### SYNTAX
<p>
<pre><code>Enable-HPOVLogicalInterconnectPortMonitoring [-InputObject] &lt;Object&gt; [-AnalyzerPort] &lt;Object&gt; [-MonitoredPorts] &lt;Hashtable&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Port monitoring enables you to send a copy of every Ethernet or Fibre Channel frame coming in and going out of a downlink (server-facing) port to another port. To evaluate network traffic between ports, you can connect debugging equipment, such as a network analyzer. This capability is important in a server environment where there is limited physical access to the network interfaces on the servers. 


NOTE: 
	*  You cannot use Virtual Connect to forward captured traffic to a server. For more information, see the HPE Virtual Connect for c-Class BladeSystem User Guide in the Hewlett Packard Enterprise Information Library. 
	*  You can configure one network analyzer port (the uplink port) for up to 16 downlink server ports within a logical interconnect. 
	*  The HPE Virtual Connect 16Gb 24-Port Fibre Channel Module monitors 1 downlink server port. 
	*  HPE Virtual Connect 16Gb 24-Port Fibre Channel Module firmware must be 4.00 or later 

Required Privileges: Network administrator


### Parameters

-AnalyzerPort &lt;Object&gt;<p>
Specifies the network analyzer port (the mirrored-to uplink port) for the downlink server ports within a single enclosure. There is a single ï¿½mirrored-to portï¿½ per logical interconnect.

Allowed string value:  "Bay1:X6" or "Enclosure1:Bay6:Q1.1"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
HPOneView.Networking.LogicalInterconnect from Get-HPOVLogicalInterconnect.

<table><tbody><tr><td>Aliases</td><td>uri, li, name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MonitoredPorts &lt;Hashtable&gt;<p>
An Array of Hashtable or PSCustomObject with the following format:

@{Port = "Bay1:D2"; Direction = "toserver"}

The "Port" property format must be "BayID:ServerDownlinkPortID".  For HPE Synergy, the "Port" property must be "EnclosureID:BayID:ServerDownlinkPortID".

The "Direction" property value must be one of the following:

	* ToServer
	* FromServer
	* Both

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPoneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect resource object from Get-HPOVLogicalInterconnect



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnect -Name "Encl1-Default VC FF LIG" | Enable-HPOVLogicalInterconnectPortMonitoring -AnalyzerPort "Bay1:Q1.1" -MonitoredPorts @{Port = "Bay1:d2"; Direction = "toserver"}, @{Port = "Bay1:D3"; Direction = "MonitoredFromServer"}, @{Port = "Bay2:D7"; Direction = "Both"}
</pre>
Enable port monitoring for the specific logical interconnect.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalInterconnect -Name "LE1-Default VC LIG" | Enable-HPOVLogicalInterconnectPortMonitoring -AnalyzerPort "Enclosure1:Bay3:Q1.1" -MonitoredPorts @{Port = "Enclosure1:Bay3:d1"; Direction = "Both"}, @{Port = "Enclosure1:Bay6:d1"; Direction = "Both"}
</pre>
Enable port monitoring for the specific logical interconnect.



### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLogicalInterconnectPortMonitoring)
* [Get-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectPortMonitoring)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Enable-HPOVLogicalInterconnectPortMonitoring
<p>
Enable port monitoring for a logical interconnect.

### SYNTAX
<p>
<pre><code>Enable-HPOVLogicalInterconnectPortMonitoring [-InputObject] &lt;Object&gt; [-AnalyzerPort] &lt;Object&gt; [-MonitoredPorts] &lt;Hashtable&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Port monitoring enables you to send a copy of every Ethernet or Fibre Channel frame coming in and going out of a downlink (server-facing) port to another port. To evaluate network traffic between ports, you can connect debugging equipment, such as a network analyzer. This capability is important in a server environment where there is limited physical access to the network interfaces on the servers. 


NOTE: 
	*  You cannot use Virtual Connect to forward captured traffic to a server. For more information, see the HPE Virtual Connect for c-Class BladeSystem User Guide in the Hewlett Packard Enterprise Information Library. 
	*  You can configure one network analyzer port (the uplink port) for up to 16 downlink server ports within a logical interconnect. 
	*  The HPE Virtual Connect 16Gb 24-Port Fibre Channel Module monitors 1 downlink server port. 
	*  HPE Virtual Connect 16Gb 24-Port Fibre Channel Module firmware must be 4.00 or later 

Required Privileges: Network administrator


### Parameters

-AnalyzerPort &lt;Object&gt;<p>
Specifies the network analyzer port (the mirrored-to uplink port) for the downlink server ports within a single enclosure. There is a single ï¿½mirrored-to portï¿½ per logical interconnect.

Allowed string value:  "Bay1:X6" or "Enclosure1:Bay6:Q1.1"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
HPOneView.Networking.LogicalInterconnect from Get-HPOVLogicalInterconnect.

<table><tbody><tr><td>Aliases</td><td>uri, li, name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MonitoredPorts &lt;Hashtable&gt;<p>
An Array of Hashtable or PSCustomObject with the following format:

@{Port = "Bay1:D2"; Direction = "toserver"}

The "Port" property format must be "BayID:ServerDownlinkPortID".  For HPE Synergy, the "Port" property must be "EnclosureID:BayID:ServerDownlinkPortID".

The "Direction" property value must be one of the following:

	* ToServer
	* FromServer
	* Both

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPoneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect resource object from Get-HPOVLogicalInterconnect



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnect -Name "Encl1-Default VC FF LIG" | Enable-HPOVLogicalInterconnectPortMonitoring -AnalyzerPort "Bay1:Q1.1" -MonitoredPorts @{Port = "Bay1:d2"; Direction = "toserver"}, @{Port = "Bay1:D3"; Direction = "MonitoredFromServer"}, @{Port = "Bay2:D7"; Direction = "Both"}
</pre>
Enable port monitoring for the specific logical interconnect.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalInterconnect -Name "LE1-Default VC LIG" | Enable-HPOVLogicalInterconnectPortMonitoring -AnalyzerPort "Enclosure1:Bay3:Q1.1" -MonitoredPorts @{Port = "Enclosure1:Bay3:d1"; Direction = "Both"}, @{Port = "Enclosure1:Bay6:d1"; Direction = "Both"}
</pre>
Enable port monitoring for the specific logical interconnect.



### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLogicalInterconnectPortMonitoring)
* [Get-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectPortMonitoring)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Enable-HPOVLogicalInterconnectPortMonitoring
<p>
Enable port monitoring for a logical interconnect.

### SYNTAX
<p>
<pre><code>Enable-HPOVLogicalInterconnectPortMonitoring [-InputObject] &lt;Object&gt; [-AnalyzerPort] &lt;Object&gt; [-MonitoredPorts] &lt;Hashtable&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Port monitoring enables you to send a copy of every Ethernet or Fibre Channel frame coming in and going out of a downlink (server-facing) port to another port. To evaluate network traffic between ports, you can connect debugging equipment, such as a network analyzer. This capability is important in a server environment where there is limited physical access to the network interfaces on the servers. 


NOTE: 
	*  You cannot use Virtual Connect to forward captured traffic to a server. For more information, see the HPE Virtual Connect for c-Class BladeSystem User Guide in the Hewlett Packard Enterprise Information Library. 
	*  You can configure one network analyzer port (the uplink port) for up to 16 downlink server ports within a logical interconnect. 
	*  The HPE Virtual Connect 16Gb 24-Port Fibre Channel Module monitors 1 downlink server port. 
	*  HPE Virtual Connect 16Gb 24-Port Fibre Channel Module firmware must be 4.00 or later 

Required Privileges: Network administrator


### Parameters

-AnalyzerPort &lt;Object&gt;<p>
Specifies the network analyzer port (the mirrored-to uplink port) for the downlink server ports within a single enclosure. There is a single ï¿½mirrored-to portï¿½ per logical interconnect.

Allowed string value:  "Bay1:X6" or "Enclosure1:Bay6:Q1.1"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
HPOneView.Networking.LogicalInterconnect from Get-HPOVLogicalInterconnect.

<table><tbody><tr><td>Aliases</td><td>uri, li, name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MonitoredPorts &lt;Hashtable&gt;<p>
An Array of Hashtable or PSCustomObject with the following format:

@{Port = "Bay1:D2"; Direction = "toserver"}

The "Port" property format must be "BayID:ServerDownlinkPortID".  For HPE Synergy, the "Port" property must be "EnclosureID:BayID:ServerDownlinkPortID".

The "Direction" property value must be one of the following:

	* ToServer
	* FromServer
	* Both

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPoneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect resource object from Get-HPOVLogicalInterconnect



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnect -Name "Encl1-Default VC FF LIG" | Enable-HPOVLogicalInterconnectPortMonitoring -AnalyzerPort "Bay1:Q1.1" -MonitoredPorts @{Port = "Bay1:d2"; Direction = "toserver"}, @{Port = "Bay1:D3"; Direction = "MonitoredFromServer"}, @{Port = "Bay2:D7"; Direction = "Both"}
</pre>
Enable port monitoring for the specific logical interconnect.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalInterconnect -Name "LE1-Default VC LIG" | Enable-HPOVLogicalInterconnectPortMonitoring -AnalyzerPort "Enclosure1:Bay3:Q1.1" -MonitoredPorts @{Port = "Enclosure1:Bay3:d1"; Direction = "Both"}, @{Port = "Enclosure1:Bay6:d1"; Direction = "Both"}
</pre>
Enable port monitoring for the specific logical interconnect.



### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLogicalInterconnectPortMonitoring)
* [Get-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectPortMonitoring)


***
<div align=right><a href="#Top">Top</a></div>
