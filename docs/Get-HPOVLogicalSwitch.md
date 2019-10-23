<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVLogicalSwitch
<p>
Retrieve Logical Switch resources.

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalSwitch[ [-Name] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-exportFile] &lt;String&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLogicalSwitch [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will retrieve one or more Logical Switch resources configured on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Provide an HPOneView.Appliance.TaskResource object and the Cmdlet will return the associated Logical Switch resource created from the New-HPOVLogicalSwitch Cmdlet..

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of the Logical Switch resource.  Supports wildcard * character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Save the Logical Switch resource(s) to the specified JSON file.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 Async Task resource object, from New-HPOVLogicalSwitch.



### Return Values

_**HPOneView.Networking.LogicalSwitch [System.Management.Automation.PSCustomObject]**_

 

Single Logical Switch resource.

 _**System.Collections.ArrayList &lt;HPOneView.Networking.LogicalSwitch&gt;**_

 

Collection of Logical Switch resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalSwitch
</pre>
Retrieve all Logical Switch resources from the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalSwitch -Name MyLogicalSwitch1
</pre>
Retrieve the specified MyLogicalSwitch1 resource from the default appliance connection.



### Related Links

* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [New-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitch)
* [New-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitchGroup)
* [Remove-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitch)
* [Remove-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitchGroup)
* [Update-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalSwitch)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVLogicalSwitch
<p>
Retrieve Logical Switch resources.

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalSwitch[ [-Name] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-exportFile] &lt;String&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLogicalSwitch [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will retrieve one or more Logical Switch resources configured on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Provide an HPOneView.Appliance.TaskResource object and the Cmdlet will return the associated Logical Switch resource created from the New-HPOVLogicalSwitch Cmdlet..

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of the Logical Switch resource.  Supports wildcard * character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Save the Logical Switch resource(s) to the specified JSON file.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 Async Task resource object, from New-HPOVLogicalSwitch.



### Return Values

_**HPOneView.Networking.LogicalSwitch [System.Management.Automation.PSCustomObject]**_

 

Single Logical Switch resource.

 _**System.Collections.ArrayList &lt;HPOneView.Networking.LogicalSwitch&gt;**_

 

Collection of Logical Switch resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalSwitch
</pre>
Retrieve all Logical Switch resources from the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalSwitch -Name MyLogicalSwitch1
</pre>
Retrieve the specified MyLogicalSwitch1 resource from the default appliance connection.



### Related Links

* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [New-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitch)
* [New-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitchGroup)
* [Remove-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitch)
* [Remove-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitchGroup)
* [Update-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalSwitch)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVLogicalSwitch
<p>
Retrieve Logical Switch resources.

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalSwitch[ [-Name] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-exportFile] &lt;String&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLogicalSwitch [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will retrieve one or more Logical Switch resources configured on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Provide an HPOneView.Appliance.TaskResource object and the Cmdlet will return the associated Logical Switch resource created from the New-HPOVLogicalSwitch Cmdlet..

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of the Logical Switch resource.  Supports wildcard * character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Save the Logical Switch resource(s) to the specified JSON file.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 Async Task resource object, from New-HPOVLogicalSwitch.



### Return Values

_**HPOneView.Networking.LogicalSwitch [System.Management.Automation.PSCustomObject]**_

 

Single Logical Switch resource.

 _**System.Collections.ArrayList &lt;HPOneView.Networking.LogicalSwitch&gt;**_

 

Collection of Logical Switch resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalSwitch
</pre>
Retrieve all Logical Switch resources from the default appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalSwitch -Name MyLogicalSwitch1
</pre>
Retrieve the specified MyLogicalSwitch1 resource from the default appliance connection.



### Related Links

* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [New-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitch)
* [New-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalSwitchGroup)
* [Remove-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitch)
* [Remove-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitchGroup)
* [Update-HPOVLogicalSwitch](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalSwitch)


***
<div align=right><a href="#Top">Top</a></div>
