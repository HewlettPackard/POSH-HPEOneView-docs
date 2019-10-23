<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVOSDeploymentPlan
<p>
Retreive an HPE Synergy Image Streamer OS Deployment Plan.

### SYNTAX
<p>
<pre><code>Get-HPOVOSDeploymentPlan[ [-Name] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to return defined OS Deployment Plans on an HPE Synergy Image Streamer appliance.  The OS Deployment Plan will define the delivery of the stateless OS.  The resource object will also provide the custom attributes allowed.  Use the Get-HPOVOSDeploymentAttribute to return the collection object of attributes.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
OS Deployment Plan name.  Supports wildcard (*) character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.OSDeploymentPlan**_

 

An HPE Synergy Image Streamer OS Deployment plan object.

 _**System.Collections.ArrayList&lt;HPOneView.Appliance.OSDeploymentPlan&gt;**_

 

A collection or HPE Synergy Image Streamer OS Deployment plan objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVOSDeploymentPlan</pre>
Retrieve all defined OS Deployment Plans found on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVOSDeploymentPlan -Name "My OS Deployment Plan"</pre>
Retrieve the specified OS Deployment Plan on the appliance.



### Related Links

* [Get-HPOVOSDeploymentPlanAttribute](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVOSDeploymentPlanAttribute)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVOSDeploymentPlan
<p>
Retreive an HPE Synergy Image Streamer OS Deployment Plan.

### SYNTAX
<p>
<pre><code>Get-HPOVOSDeploymentPlan[ [-Name] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to return defined OS Deployment Plans on an HPE Synergy Image Streamer appliance.  The OS Deployment Plan will define the delivery of the stateless OS.  The resource object will also provide the custom attributes allowed.  Use the Get-HPOVOSDeploymentAttribute to return the collection object of attributes.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
OS Deployment Plan name.  Supports wildcard (*) character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.OSDeploymentPlan**_

 

An HPE Synergy Image Streamer OS Deployment plan object.

 _**System.Collections.ArrayList&lt;HPOneView.Appliance.OSDeploymentPlan&gt;**_

 

A collection or HPE Synergy Image Streamer OS Deployment plan objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVOSDeploymentPlan</pre>
Retrieve all defined OS Deployment Plans found on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVOSDeploymentPlan -Name "My OS Deployment Plan"</pre>
Retrieve the specified OS Deployment Plan on the appliance.



### Related Links

* [Get-HPOVOSDeploymentPlanAttribute](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVOSDeploymentPlanAttribute)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVOSDeploymentPlan
<p>
Retreive an HPE Synergy Image Streamer OS Deployment Plan.

### SYNTAX
<p>
<pre><code>Get-HPOVOSDeploymentPlan[ [-Name] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to return defined OS Deployment Plans on an HPE Synergy Image Streamer appliance.  The OS Deployment Plan will define the delivery of the stateless OS.  The resource object will also provide the custom attributes allowed.  Use the Get-HPOVOSDeploymentAttribute to return the collection object of attributes.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
OS Deployment Plan name.  Supports wildcard (*) character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.OSDeploymentPlan**_

 

An HPE Synergy Image Streamer OS Deployment plan object.

 _**System.Collections.ArrayList&lt;HPOneView.Appliance.OSDeploymentPlan&gt;**_

 

A collection or HPE Synergy Image Streamer OS Deployment plan objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVOSDeploymentPlan</pre>
Retrieve all defined OS Deployment Plans found on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVOSDeploymentPlan -Name "My OS Deployment Plan"</pre>
Retrieve the specified OS Deployment Plan on the appliance.



### Related Links

* [Get-HPOVOSDeploymentPlanAttribute](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVOSDeploymentPlanAttribute)


***
<div align=right><a href="#Top">Top</a></div>
