<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVClusterNode
<p>
Default content

### SYNTAX
<p>
<pre><code>Get-HPOVClusterNode [-Name] &lt;string&gt;[ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Default content


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;string&gt;<p>


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:\r\n\r\n\t* AllResources\r\n\t*AllResourcesInScope\r\n\t* HPOneView.Appliance.ScopeCollection\r\n\t* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types



### Return Values



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVClusterNode
</pre>
Default example



### Related Links

* [Add-HPOVClusterNode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVClusterNode)
* [Add-HPOVClusterNodeToCluster](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVClusterNodeToCluster)
* [Enter-HPOVClusterNodeMaintenanceMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enter-HPOVClusterNodeMaintenanceMode)
* [Exit-HPOVClusterNodeMaintenanceMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Exit-HPOVClusterNodeMaintenanceMode)
* [Update-HPOVClusterNode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVClusterNode)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVClusterNode
<p>
Default content

### SYNTAX
<p>
<pre><code>Get-HPOVClusterNode [-Name] &lt;string&gt;[ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Default content


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;string&gt;<p>


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:\r\n\r\n\t* AllResources\r\n\t*AllResourcesInScope\r\n\t* HPOneView.Appliance.ScopeCollection\r\n\t* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types



### Return Values



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVClusterNode
</pre>
Default example



### Related Links

* [Add-HPOVClusterNode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVClusterNode)
* [Add-HPOVClusterNodeToCluster](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVClusterNodeToCluster)
* [Enter-HPOVClusterNodeMaintenanceMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enter-HPOVClusterNodeMaintenanceMode)
* [Exit-HPOVClusterNodeMaintenanceMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Exit-HPOVClusterNodeMaintenanceMode)
* [Update-HPOVClusterNode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVClusterNode)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVClusterNode
<p>
Default content

### SYNTAX
<p>
<pre><code>Get-HPOVClusterNode [-Name] &lt;string&gt;[ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Default content


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;string&gt;<p>


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:\r\n\r\n\t* AllResources\r\n\t*AllResourcesInScope\r\n\t* HPOneView.Appliance.ScopeCollection\r\n\t* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types



### Return Values



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVClusterNode
</pre>
Default example



### Related Links

* [Add-HPOVClusterNode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVClusterNode)
* [Add-HPOVClusterNodeToCluster](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVClusterNodeToCluster)
* [Enter-HPOVClusterNodeMaintenanceMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enter-HPOVClusterNodeMaintenanceMode)
* [Exit-HPOVClusterNodeMaintenanceMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Exit-HPOVClusterNodeMaintenanceMode)
* [Update-HPOVClusterNode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVClusterNode)


***
<div align=right><a href="#Top">Top</a></div>
