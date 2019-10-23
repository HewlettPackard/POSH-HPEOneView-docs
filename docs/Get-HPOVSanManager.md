<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVSanManager
<p>
Retrieve SAN Manager resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVSanManager[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will return the configured SAN Manager(s).


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-SanManager]
Provide the name of the SAN Manager to display.

<table><tbody><tr><td>Aliases</td><td>SanManager</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

 

Single SAN Manager resource

 _**System.Collections.ArrayList &lt;HPOneView.Storage.SanManager&gt;**_

 

Multiple SAN Manager resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSanManager
Name            Status State   Type                    Version  Managed SANs
----            ------ -----   ----                    -------  ------------
bna1.domain.com OK     Managed Brocade Network Advisor 12.3.4.5 {Fabric_A, Fabric_B}
bna2.domain.com OK     Managed Brocade Network Advisor 12.3.4.5 {Fabric_C, Fabric_D}
</pre>
Display all SAN Managers.



### Related Links

* [Add-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVSanManager)
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager)
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager)
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVSanManager
<p>
Retrieve SAN Manager resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVSanManager[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will return the configured SAN Manager(s).


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-SanManager]
Provide the name of the SAN Manager to display.

<table><tbody><tr><td>Aliases</td><td>SanManager</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

 

Single SAN Manager resource

 _**System.Collections.ArrayList &lt;HPOneView.Storage.SanManager&gt;**_

 

Multiple SAN Manager resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSanManager
Name            Status State   Type                    Version  Managed SANs
----            ------ -----   ----                    -------  ------------
bna1.domain.com OK     Managed Brocade Network Advisor 12.3.4.5 {Fabric_A, Fabric_B}
bna2.domain.com OK     Managed Brocade Network Advisor 12.3.4.5 {Fabric_C, Fabric_D}
</pre>
Display all SAN Managers.



### Related Links

* [Add-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVSanManager)
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager)
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager)
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVSanManager
<p>
Retrieve SAN Manager resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVSanManager[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will return the configured SAN Manager(s).


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-SanManager]
Provide the name of the SAN Manager to display.

<table><tbody><tr><td>Aliases</td><td>SanManager</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

 

Single SAN Manager resource

 _**System.Collections.ArrayList &lt;HPOneView.Storage.SanManager&gt;**_

 

Multiple SAN Manager resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSanManager
Name            Status State   Type                    Version  Managed SANs
----            ------ -----   ----                    -------  ------------
bna1.domain.com OK     Managed Brocade Network Advisor 12.3.4.5 {Fabric_A, Fabric_B}
bna2.domain.com OK     Managed Brocade Network Advisor 12.3.4.5 {Fabric_C, Fabric_D}
</pre>
Display all SAN Managers.



### Related Links

* [Add-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVSanManager)
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager)
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager)
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
