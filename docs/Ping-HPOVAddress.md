<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Ping-HPOVAddress
<p>
Validate IP Connectivity to resources.

### SYNTAX
<p>
<pre><code>Ping-HPOVAddress [-Address] &lt;String&gt; [-Packets] &lt;Int32&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET provides the administrator the capability to PING (ICMP "echo request") to a resource the appliance is or is not managing, to help validate L2 and/or L3 connectivity from the appliance.


### Parameters

-Address &lt;String&gt;<p>
The IP or FQDN Address of the target device.  If using FQDN, please make sure valid DNS Servers are configured on the appliance for proper DNS resolution.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Packets &lt;Int32&gt;<p>
Number of Packets to generate.

Default: 5

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Net.IPAddress**_

 IP Address of target node to ping



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Task resource of the PING request



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$results = Ping-HPOVAddress host.domain.com -Appliance appliance.contoso.com
$results.progressUpdates.statusUpdate
PING host.domain.com (192.168.1.100) 56(84) bytes of data.
64 bytes from host.domain.com (192.168.1.100): icmp_seq=1 ttl=64 time=0.462 ms
64 bytes from host.domain.com (192.168.1.100): icmp_seq=2 ttl=64 time=0.629 ms
64 bytes from host.domain.com (192.168.1.100): icmp_seq=3 ttl=64 time=0.478 ms
64 bytes from host.domain.com (192.168.1.100): icmp_seq=4 ttl=64 time=0.424 ms
</pre>
64 bytes from host.domain.com (192.168.1.100): icmp_seq=5 ttl=64 time=0.578 ms



### Related Links

* [Get-HPOVAddressPool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPool)
* [Get-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolRange)
* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange)
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Ping-HPOVAddress
<p>
Validate IP Connectivity to resources.

### SYNTAX
<p>
<pre><code>Ping-HPOVAddress [-Address] &lt;String&gt; [-Packets] &lt;Int32&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET provides the administrator the capability to PING (ICMP "echo request") to a resource the appliance is or is not managing, to help validate L2 and/or L3 connectivity from the appliance.


### Parameters

-Address &lt;String&gt;<p>
The IP or FQDN Address of the target device.  If using FQDN, please make sure valid DNS Servers are configured on the appliance for proper DNS resolution.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Packets &lt;Int32&gt;<p>
Number of Packets to generate.

Default: 5

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Net.IPAddress**_

 IP Address of target node to ping



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Task resource of the PING request



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$results = Ping-HPOVAddress host.domain.com -Appliance appliance.contoso.com
$results.progressUpdates.statusUpdate
PING host.domain.com (192.168.1.100) 56(84) bytes of data.
64 bytes from host.domain.com (192.168.1.100): icmp_seq=1 ttl=64 time=0.462 ms
64 bytes from host.domain.com (192.168.1.100): icmp_seq=2 ttl=64 time=0.629 ms
64 bytes from host.domain.com (192.168.1.100): icmp_seq=3 ttl=64 time=0.478 ms
64 bytes from host.domain.com (192.168.1.100): icmp_seq=4 ttl=64 time=0.424 ms
</pre>
64 bytes from host.domain.com (192.168.1.100): icmp_seq=5 ttl=64 time=0.578 ms



### Related Links

* [Get-HPOVAddressPool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPool)
* [Get-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolRange)
* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange)
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Ping-HPOVAddress
<p>
Validate IP Connectivity to resources.

### SYNTAX
<p>
<pre><code>Ping-HPOVAddress [-Address] &lt;String&gt; [-Packets] &lt;Int32&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET provides the administrator the capability to PING (ICMP "echo request") to a resource the appliance is or is not managing, to help validate L2 and/or L3 connectivity from the appliance.


### Parameters

-Address &lt;String&gt;<p>
The IP or FQDN Address of the target device.  If using FQDN, please make sure valid DNS Servers are configured on the appliance for proper DNS resolution.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Packets &lt;Int32&gt;<p>
Number of Packets to generate.

Default: 5

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Net.IPAddress**_

 IP Address of target node to ping



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Task resource of the PING request



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$results = Ping-HPOVAddress host.domain.com -Appliance appliance.contoso.com
$results.progressUpdates.statusUpdate
PING host.domain.com (192.168.1.100) 56(84) bytes of data.
64 bytes from host.domain.com (192.168.1.100): icmp_seq=1 ttl=64 time=0.462 ms
64 bytes from host.domain.com (192.168.1.100): icmp_seq=2 ttl=64 time=0.629 ms
64 bytes from host.domain.com (192.168.1.100): icmp_seq=3 ttl=64 time=0.478 ms
64 bytes from host.domain.com (192.168.1.100): icmp_seq=4 ttl=64 time=0.424 ms
</pre>
64 bytes from host.domain.com (192.168.1.100): icmp_seq=5 ttl=64 time=0.578 ms



### Related Links

* [Get-HPOVAddressPool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPool)
* [Get-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolRange)
* [Get-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPoolSubnet)
* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange)
* [New-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolSubnet)
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange)
* [Remove-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolSubnet)
* [Set-HPOVAddressPoolSubnet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAddressPoolSubnet)


***
<div align=right><a href="#Top">Top</a></div>
