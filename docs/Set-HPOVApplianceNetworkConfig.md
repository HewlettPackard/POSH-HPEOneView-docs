<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVApplianceNetworkConfig
<p>
Updates the configuration parameters for the primary network interface on the appliance.

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceNetworkConfig [-Hostname] &lt;String&gt; [-IPv4Type] &lt;String&gt; [-IPv4Addr] &lt;IPAddress&gt; [-IPv4Subnet] &lt;String&gt; [-IPv4Gateway] &lt;IPAddress&gt; [-IPv6Type] &lt;String&gt; [-IPv6Addr] &lt;IPAddress&gt; [-IPv6Subnet] &lt;String&gt; [-IPv6Gateway] &lt;String&gt;[ [-OverrideIPv4DhcpDns] &lt;SwitchParameter&gt;][ [-OverrideIPv6DhcpDns] &lt;SwitchParameter&gt;] [-DomainName] &lt;String&gt; [-SearchDomains] &lt;Array&gt; [-IPv4NameServers] &lt;Array&gt; [-IPv6NameServers] &lt;Array&gt; [-NtpServers] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVApplianceNetworkConfig [-Hostname] &lt;String&gt; [-IPv4Addr] &lt;IPAddress&gt; [-IPv4Subnet] &lt;String&gt; [-IPv4Gateway] &lt;IPAddress&gt; [-ServiceIPv4Node1] &lt;IPAddress&gt; [-ServiceIPv4Node2] &lt;IPAddress&gt; [-IPv4Type] &lt;String&gt; [-IPv6Type] &lt;String&gt; [-IPv6Addr] &lt;IPAddress&gt; [-IPv6Subnet] &lt;String&gt; [-IPv6Gateway] &lt;String&gt;[ [-ServiceIPv6Node1] &lt;IPAddress&gt;][ [-ServiceIPv6Node2] &lt;IPAddress&gt;][ [-OverrideIPv4DhcpDns] &lt;SwitchParameter&gt;][ [-OverrideIPv6DhcpDns] &lt;SwitchParameter&gt;] [-DomainName] &lt;String&gt; [-SearchDomains] &lt;Array&gt; [-IPv4NameServers] &lt;Array&gt; [-IPv6NameServers] &lt;Array&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVApplianceNetworkConfig [-importFile] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Updates any or all configuration parameters for the primary network interface on the appliance. All parameters are  Current settings will be retained for any parameters NOT specified.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DomainName &lt;String&gt;<p>
DNS domain name for the appliance: "my.com"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Fully-qualified hostname for the appliance

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Addr &lt;IPAddress&gt;<p>
"www.xxx.yyy.zzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Gateway &lt;IPAddress&gt;<p>
"www.xxx.yyy.zzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4NameServers &lt;Array&gt;<p>
Aliases [-nameServers]
Array of DNS servers: "www.xxx.yyy.zzz", "sss.ttt.uuu.vvv"

<table><tbody><tr><td>Aliases</td><td>nameServers</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Subnet &lt;String&gt;<p>
"www.xxx.yyy.zzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Type &lt;String&gt;<p>
"DHCP", "STATIC" or "UNCONFIGURE"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>STATIC</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Addr &lt;IPAddress&gt;<p>
"ssss:tttt:uuuu:vvvv:wwww:xxxx:yyyy:zzzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Gateway &lt;String&gt;<p>
"ssss:tttt:uuuu:vvvv:wwww:xxxx:yyyy:zzzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6NameServers &lt;Array&gt;<p>
Array of DNS servers: "fe80::200:f8ff:fe21:67cf", "fe80::200:f8ff:fe21:89cb"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Subnet &lt;String&gt;<p>
"ffff:ffff:ffff:ffff:0:0:0:0" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Type &lt;String&gt;<p>
"DHCP", "STATIC" or "UNCONFIGURE"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>UNCONFIGURE</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NtpServers &lt;Object&gt;<p>
Deprecated parameter.  NTP Server configuration is now controlled in the Set-HPOVApplianceDateTime Cmdlet.  Please update your scripts accordingly.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideIPv4DhcpDns &lt;SwitchParameter&gt;<p>
Aliases [-overrideDhcpDns]
Switch to override DHCP provided DNS Servers

<table><tbody><tr><td>Aliases</td><td>overrideDhcpDns</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideIPv6DhcpDns &lt;SwitchParameter&gt;<p>
Switch to override DHCPv6 provided DNS Servers

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SearchDomains &lt;Array&gt;<p>
Array of DNS search domains: "my.com", "other.com"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceIPv4Node1 &lt;IPAddress&gt;<p>
Reserved for Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceIPv4Node2 &lt;IPAddress&gt;<p>
Reserved for Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceIPv6Node1 &lt;IPAddress&gt;<p>
Reserved for Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceIPv6Node2 &lt;IPAddress&gt;<p>
Reserved for Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -importFile &lt;Object&gt;<p>
Aliases [-i, -import]
 File containing JSON formatted input values for the appliance network configuration parameters.

<table><tbody><tr><td>Aliases</td><td>i, import</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Final Task status (for asynchronous appliance config)



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVApplianceNetworkConfig -hostname "appliance1.my.com" -IPv4Type "DHCP" -IPv6Type "UNCONFIGURE" -domainName "my.com"
</pre>
This example passes in updated values to set for the appliance networking configuration.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVApplianceNetworkConfig -importFile "c:\myNetworkInput.json"
</pre>
This example passes the name of an input file containing JSON formatted properties and values for the appliance network configuration.



### Related Links

* [Get-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceNetworkConfig)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVApplianceNetworkConfig
<p>
Updates the configuration parameters for the primary network interface on the appliance.

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceNetworkConfig [-Hostname] &lt;String&gt; [-IPv4Type] &lt;String&gt; [-IPv4Addr] &lt;IPAddress&gt; [-IPv4Subnet] &lt;String&gt; [-IPv4Gateway] &lt;IPAddress&gt; [-IPv6Type] &lt;String&gt; [-IPv6Addr] &lt;IPAddress&gt; [-IPv6Subnet] &lt;String&gt; [-IPv6Gateway] &lt;String&gt;[ [-OverrideIPv4DhcpDns] &lt;SwitchParameter&gt;][ [-OverrideIPv6DhcpDns] &lt;SwitchParameter&gt;] [-DomainName] &lt;String&gt; [-SearchDomains] &lt;Array&gt; [-IPv4NameServers] &lt;Array&gt; [-IPv6NameServers] &lt;Array&gt; [-NtpServers] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVApplianceNetworkConfig [-Hostname] &lt;String&gt; [-IPv4Addr] &lt;IPAddress&gt; [-IPv4Subnet] &lt;String&gt; [-IPv4Gateway] &lt;IPAddress&gt; [-ServiceIPv4Node1] &lt;IPAddress&gt; [-ServiceIPv4Node2] &lt;IPAddress&gt; [-IPv4Type] &lt;String&gt; [-IPv6Type] &lt;String&gt; [-IPv6Addr] &lt;IPAddress&gt; [-IPv6Subnet] &lt;String&gt; [-IPv6Gateway] &lt;String&gt;[ [-ServiceIPv6Node1] &lt;IPAddress&gt;][ [-ServiceIPv6Node2] &lt;IPAddress&gt;][ [-OverrideIPv4DhcpDns] &lt;SwitchParameter&gt;][ [-OverrideIPv6DhcpDns] &lt;SwitchParameter&gt;] [-DomainName] &lt;String&gt; [-SearchDomains] &lt;Array&gt; [-IPv4NameServers] &lt;Array&gt; [-IPv6NameServers] &lt;Array&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVApplianceNetworkConfig [-importFile] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Updates any or all configuration parameters for the primary network interface on the appliance. All parameters are  Current settings will be retained for any parameters NOT specified.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DomainName &lt;String&gt;<p>
DNS domain name for the appliance: "my.com"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Fully-qualified hostname for the appliance

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Addr &lt;IPAddress&gt;<p>
"www.xxx.yyy.zzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Gateway &lt;IPAddress&gt;<p>
"www.xxx.yyy.zzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4NameServers &lt;Array&gt;<p>
Aliases [-nameServers]
Array of DNS servers: "www.xxx.yyy.zzz", "sss.ttt.uuu.vvv"

<table><tbody><tr><td>Aliases</td><td>nameServers</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Subnet &lt;String&gt;<p>
"www.xxx.yyy.zzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Type &lt;String&gt;<p>
"DHCP", "STATIC" or "UNCONFIGURE"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>STATIC</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Addr &lt;IPAddress&gt;<p>
"ssss:tttt:uuuu:vvvv:wwww:xxxx:yyyy:zzzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Gateway &lt;String&gt;<p>
"ssss:tttt:uuuu:vvvv:wwww:xxxx:yyyy:zzzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6NameServers &lt;Array&gt;<p>
Array of DNS servers: "fe80::200:f8ff:fe21:67cf", "fe80::200:f8ff:fe21:89cb"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Subnet &lt;String&gt;<p>
"ffff:ffff:ffff:ffff:0:0:0:0" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Type &lt;String&gt;<p>
"DHCP", "STATIC" or "UNCONFIGURE"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>UNCONFIGURE</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NtpServers &lt;Object&gt;<p>
Deprecated parameter.  NTP Server configuration is now controlled in the Set-HPOVApplianceDateTime Cmdlet.  Please update your scripts accordingly.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideIPv4DhcpDns &lt;SwitchParameter&gt;<p>
Aliases [-overrideDhcpDns]
Switch to override DHCP provided DNS Servers

<table><tbody><tr><td>Aliases</td><td>overrideDhcpDns</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideIPv6DhcpDns &lt;SwitchParameter&gt;<p>
Switch to override DHCPv6 provided DNS Servers

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SearchDomains &lt;Array&gt;<p>
Array of DNS search domains: "my.com", "other.com"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceIPv4Node1 &lt;IPAddress&gt;<p>
Reserved for Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceIPv4Node2 &lt;IPAddress&gt;<p>
Reserved for Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceIPv6Node1 &lt;IPAddress&gt;<p>
Reserved for Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceIPv6Node2 &lt;IPAddress&gt;<p>
Reserved for Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -importFile &lt;Object&gt;<p>
Aliases [-i, -import]
 File containing JSON formatted input values for the appliance network configuration parameters.

<table><tbody><tr><td>Aliases</td><td>i, import</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Final Task status (for asynchronous appliance config)



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVApplianceNetworkConfig -hostname "appliance1.my.com" -IPv4Type "DHCP" -IPv6Type "UNCONFIGURE" -domainName "my.com"
</pre>
This example passes in updated values to set for the appliance networking configuration.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVApplianceNetworkConfig -importFile "c:\myNetworkInput.json"
</pre>
This example passes the name of an input file containing JSON formatted properties and values for the appliance network configuration.



### Related Links

* [Get-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceNetworkConfig)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVApplianceNetworkConfig
<p>
Updates the configuration parameters for the primary network interface on the appliance.

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceNetworkConfig [-Hostname] &lt;String&gt; [-IPv4Type] &lt;String&gt; [-IPv4Addr] &lt;IPAddress&gt; [-IPv4Subnet] &lt;String&gt; [-IPv4Gateway] &lt;IPAddress&gt; [-IPv6Type] &lt;String&gt; [-IPv6Addr] &lt;IPAddress&gt; [-IPv6Subnet] &lt;String&gt; [-IPv6Gateway] &lt;String&gt;[ [-OverrideIPv4DhcpDns] &lt;SwitchParameter&gt;][ [-OverrideIPv6DhcpDns] &lt;SwitchParameter&gt;] [-DomainName] &lt;String&gt; [-SearchDomains] &lt;Array&gt; [-IPv4NameServers] &lt;Array&gt; [-IPv6NameServers] &lt;Array&gt; [-NtpServers] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVApplianceNetworkConfig [-Hostname] &lt;String&gt; [-IPv4Addr] &lt;IPAddress&gt; [-IPv4Subnet] &lt;String&gt; [-IPv4Gateway] &lt;IPAddress&gt; [-ServiceIPv4Node1] &lt;IPAddress&gt; [-ServiceIPv4Node2] &lt;IPAddress&gt; [-IPv4Type] &lt;String&gt; [-IPv6Type] &lt;String&gt; [-IPv6Addr] &lt;IPAddress&gt; [-IPv6Subnet] &lt;String&gt; [-IPv6Gateway] &lt;String&gt;[ [-ServiceIPv6Node1] &lt;IPAddress&gt;][ [-ServiceIPv6Node2] &lt;IPAddress&gt;][ [-OverrideIPv4DhcpDns] &lt;SwitchParameter&gt;][ [-OverrideIPv6DhcpDns] &lt;SwitchParameter&gt;] [-DomainName] &lt;String&gt; [-SearchDomains] &lt;Array&gt; [-IPv4NameServers] &lt;Array&gt; [-IPv6NameServers] &lt;Array&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVApplianceNetworkConfig [-importFile] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Updates any or all configuration parameters for the primary network interface on the appliance. All parameters are  Current settings will be retained for any parameters NOT specified.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DomainName &lt;String&gt;<p>
DNS domain name for the appliance: "my.com"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Fully-qualified hostname for the appliance

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Addr &lt;IPAddress&gt;<p>
"www.xxx.yyy.zzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Gateway &lt;IPAddress&gt;<p>
"www.xxx.yyy.zzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4NameServers &lt;Array&gt;<p>
Aliases [-nameServers]
Array of DNS servers: "www.xxx.yyy.zzz", "sss.ttt.uuu.vvv"

<table><tbody><tr><td>Aliases</td><td>nameServers</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Subnet &lt;String&gt;<p>
"www.xxx.yyy.zzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Type &lt;String&gt;<p>
"DHCP", "STATIC" or "UNCONFIGURE"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>STATIC</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Addr &lt;IPAddress&gt;<p>
"ssss:tttt:uuuu:vvvv:wwww:xxxx:yyyy:zzzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Gateway &lt;String&gt;<p>
"ssss:tttt:uuuu:vvvv:wwww:xxxx:yyyy:zzzz" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6NameServers &lt;Array&gt;<p>
Array of DNS servers: "fe80::200:f8ff:fe21:67cf", "fe80::200:f8ff:fe21:89cb"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Subnet &lt;String&gt;<p>
"ffff:ffff:ffff:ffff:0:0:0:0" (leave blank for DHCP)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Type &lt;String&gt;<p>
"DHCP", "STATIC" or "UNCONFIGURE"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>UNCONFIGURE</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NtpServers &lt;Object&gt;<p>
Deprecated parameter.  NTP Server configuration is now controlled in the Set-HPOVApplianceDateTime Cmdlet.  Please update your scripts accordingly.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideIPv4DhcpDns &lt;SwitchParameter&gt;<p>
Aliases [-overrideDhcpDns]
Switch to override DHCP provided DNS Servers

<table><tbody><tr><td>Aliases</td><td>overrideDhcpDns</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OverrideIPv6DhcpDns &lt;SwitchParameter&gt;<p>
Switch to override DHCPv6 provided DNS Servers

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SearchDomains &lt;Array&gt;<p>
Array of DNS search domains: "my.com", "other.com"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceIPv4Node1 &lt;IPAddress&gt;<p>
Reserved for Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceIPv4Node2 &lt;IPAddress&gt;<p>
Reserved for Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceIPv6Node1 &lt;IPAddress&gt;<p>
Reserved for Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServiceIPv6Node2 &lt;IPAddress&gt;<p>
Reserved for Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -importFile &lt;Object&gt;<p>
Aliases [-i, -import]
 File containing JSON formatted input values for the appliance network configuration parameters.

<table><tbody><tr><td>Aliases</td><td>i, import</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Final Task status (for asynchronous appliance config)



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVApplianceNetworkConfig -hostname "appliance1.my.com" -IPv4Type "DHCP" -IPv6Type "UNCONFIGURE" -domainName "my.com"
</pre>
This example passes in updated values to set for the appliance networking configuration.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVApplianceNetworkConfig -importFile "c:\myNetworkInput.json"
</pre>
This example passes the name of an input file containing JSON formatted properties and values for the appliance network configuration.



### Related Links

* [Get-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceNetworkConfig)


***
<div align=right><a href="#Top">Top</a></div>
