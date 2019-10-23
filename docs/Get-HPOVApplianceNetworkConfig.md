<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVApplianceNetworkConfig
<p>
Retrieves the configuration of the primary NIC of the appliance

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceNetworkConfig[ [-Location] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves the configuration parameters of the primary network interface on the appliance, which can be captured into a customer object for further operation, or captured to a text file in json format.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
Aliases [-ExportFile]
Directory to where the applinace network configuration will be exported to.
Exported file name will be "{$ApplianceConnection.Name}_ApplianceNetConf.json".

<table><tbody><tr><td>Aliases</td><td>x, export, exportFile</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ApplianceServerConfiguration [System.Management.Automation.PSCustomObject]**_

 

A collection object containing the properties and values of the primary network interface of the appliance.

 _**HPOneView.Appliance.ApplianceServerConfiguration.ApplianceNetworks [System.Management.Automation.PSCustomObject]**_

 

The applianceNetworks property will display the appliance Networking in either a Format-Table (default) or Format-List view.

 _**System.IO.FileSystemInfo**_

 

If exporting the appliance network configuration, the file object created will be returned.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceNetworkConfig
Hostname         IPv4Type IPv4Address    IPv4DNS                      IPv6Type    IPv6Address IPv6DNS
--------         -------- -----------    -------                      --------    ----------- -------
hpov1.domain.com STATIC   172.20.51.4\24 {172.20.10.41, 172.20.10.42} UNCONFIGURE             {}
hpov2.domain.com STATIC   172.20.52.4\24 {172.20.10.41, 172.20.10.42} UNCONFIGURE             {}

</pre>
Outputs the configuration of the primary network interface to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVApplianceNetworkConfig -Appliance hpov1.domain.com | fl
Hostname    : hpov1.domain.com 
IPv4Type    : STATIC
IPv4Address : 172.20.51.4
IPv4Mask    : 255.255.255.0
IPv4Gateway : 172.20.51.1
IPv4DNS     : {172.20.10.41, 172.20.10.42}
IPv6Type    : UNCONFIGURE
IPv6Address :
IPv6Mask    :
IPv6Gateway :
IPv6DNS     : {}

</pre>
Outputs the configuration of the primary network interface and pipe to Format-List for more information about the network configuration.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myAppNetConfig = Get-HPOVApplianceNetworkConfig -Appliance hpov1.domain.com
</pre>
Outputs the configuration of the primary network interface of the appliance to the object variable $myAppNetConfig


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVApplianceNetworkConfig -Location .
</pre>
Outputs the configuration of the primary network interface of the appliance to the current directory.



### Related Links

* [Set-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceNetworkConfig)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVApplianceNetworkConfig
<p>
Retrieves the configuration of the primary NIC of the appliance

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceNetworkConfig[ [-Location] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves the configuration parameters of the primary network interface on the appliance, which can be captured into a customer object for further operation, or captured to a text file in json format.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
Aliases [-ExportFile]
Directory to where the applinace network configuration will be exported to.
Exported file name will be "{$ApplianceConnection.Name}_ApplianceNetConf.json".

<table><tbody><tr><td>Aliases</td><td>x, export, exportFile</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ApplianceServerConfiguration [System.Management.Automation.PSCustomObject]**_

 

A collection object containing the properties and values of the primary network interface of the appliance.

 _**HPOneView.Appliance.ApplianceServerConfiguration.ApplianceNetworks [System.Management.Automation.PSCustomObject]**_

 

The applianceNetworks property will display the appliance Networking in either a Format-Table (default) or Format-List view.

 _**System.IO.FileSystemInfo**_

 

If exporting the appliance network configuration, the file object created will be returned.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceNetworkConfig
Hostname         IPv4Type IPv4Address    IPv4DNS                      IPv6Type    IPv6Address IPv6DNS
--------         -------- -----------    -------                      --------    ----------- -------
hpov1.domain.com STATIC   172.20.51.4\24 {172.20.10.41, 172.20.10.42} UNCONFIGURE             {}
hpov2.domain.com STATIC   172.20.52.4\24 {172.20.10.41, 172.20.10.42} UNCONFIGURE             {}

</pre>
Outputs the configuration of the primary network interface to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVApplianceNetworkConfig -Appliance hpov1.domain.com | fl
Hostname    : hpov1.domain.com 
IPv4Type    : STATIC
IPv4Address : 172.20.51.4
IPv4Mask    : 255.255.255.0
IPv4Gateway : 172.20.51.1
IPv4DNS     : {172.20.10.41, 172.20.10.42}
IPv6Type    : UNCONFIGURE
IPv6Address :
IPv6Mask    :
IPv6Gateway :
IPv6DNS     : {}

</pre>
Outputs the configuration of the primary network interface and pipe to Format-List for more information about the network configuration.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myAppNetConfig = Get-HPOVApplianceNetworkConfig -Appliance hpov1.domain.com
</pre>
Outputs the configuration of the primary network interface of the appliance to the object variable $myAppNetConfig


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVApplianceNetworkConfig -Location .
</pre>
Outputs the configuration of the primary network interface of the appliance to the current directory.



### Related Links

* [Set-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceNetworkConfig)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVApplianceNetworkConfig
<p>
Retrieves the configuration of the primary NIC of the appliance

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceNetworkConfig[ [-Location] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves the configuration parameters of the primary network interface on the appliance, which can be captured into a customer object for further operation, or captured to a text file in json format.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
Aliases [-ExportFile]
Directory to where the applinace network configuration will be exported to.
Exported file name will be "{$ApplianceConnection.Name}_ApplianceNetConf.json".

<table><tbody><tr><td>Aliases</td><td>x, export, exportFile</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ApplianceServerConfiguration [System.Management.Automation.PSCustomObject]**_

 

A collection object containing the properties and values of the primary network interface of the appliance.

 _**HPOneView.Appliance.ApplianceServerConfiguration.ApplianceNetworks [System.Management.Automation.PSCustomObject]**_

 

The applianceNetworks property will display the appliance Networking in either a Format-Table (default) or Format-List view.

 _**System.IO.FileSystemInfo**_

 

If exporting the appliance network configuration, the file object created will be returned.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceNetworkConfig
Hostname         IPv4Type IPv4Address    IPv4DNS                      IPv6Type    IPv6Address IPv6DNS
--------         -------- -----------    -------                      --------    ----------- -------
hpov1.domain.com STATIC   172.20.51.4\24 {172.20.10.41, 172.20.10.42} UNCONFIGURE             {}
hpov2.domain.com STATIC   172.20.52.4\24 {172.20.10.41, 172.20.10.42} UNCONFIGURE             {}

</pre>
Outputs the configuration of the primary network interface to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVApplianceNetworkConfig -Appliance hpov1.domain.com | fl
Hostname    : hpov1.domain.com 
IPv4Type    : STATIC
IPv4Address : 172.20.51.4
IPv4Mask    : 255.255.255.0
IPv4Gateway : 172.20.51.1
IPv4DNS     : {172.20.10.41, 172.20.10.42}
IPv6Type    : UNCONFIGURE
IPv6Address :
IPv6Mask    :
IPv6Gateway :
IPv6DNS     : {}

</pre>
Outputs the configuration of the primary network interface and pipe to Format-List for more information about the network configuration.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myAppNetConfig = Get-HPOVApplianceNetworkConfig -Appliance hpov1.domain.com
</pre>
Outputs the configuration of the primary network interface of the appliance to the object variable $myAppNetConfig


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVApplianceNetworkConfig -Location .
</pre>
Outputs the configuration of the primary network interface of the appliance to the current directory.



### Related Links

* [Set-HPOVApplianceNetworkConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceNetworkConfig)


***
<div align=right><a href="#Top">Top</a></div>
