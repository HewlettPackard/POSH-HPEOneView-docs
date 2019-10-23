<a name="top"></a>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
  <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVHypervisorManager
<p>
Get configured hypervisor managers.

### SYNTAX
<p>
<pre><code>Get-HPOVHypervisorManager[ [-Name] &lt;String&gt;][ [-Version] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
You can register a hypervisor manager with HPE OneView by providing hostname and credentials in the Hypervisor Managers user interface. The registered hypervisor manager contains preferences, which are used as default hypervisor or cluster settings during hypervisor cluster profile creation. You can modify the hypervisor manager preferences using the edit operation. You can override these values in a hypervisor cluster profile. 

A valid hypervisor manager certificate must be added to HPE OneView trust store to be able to successfully communicate with a hypervisor manager.

The user must have an infrastructure administrator privilege to register or update the hypervisor manager resource in HPE OneView. You can assign scopes to the hypervisor manager resource in HPE OneView.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Filter for vCenter name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	*AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Version &lt;String&gt;<p>
Filter for specific vCenter version.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Cluster.HypervisorManager**_

 

The configured hypervisor cluster manager and its properties



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVHypervisorManager -Name vcenter.domain.com
</pre>
Get the specified hypervisor manager by resource name.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVHypervisorManager -Version 5.5.0
</pre>
Get all of the configured hypervisor managers that are vSphere 5.5.0.



### Related Links

* [Add-HPOVHypervisorManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVHypervisorManager)
* [Remove-HPOVHypervisorManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVHypervisorManager)
* [Set-HPOVHypervisorManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVHypervisorManager)


***
<div align=right><a href="#Top">Top</a></div>
