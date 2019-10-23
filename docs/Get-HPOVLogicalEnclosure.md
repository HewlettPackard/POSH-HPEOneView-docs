<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVLogicalEnclosure
<p>
Retrieve Logical Enclosure resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalEnclosure [-Name] &lt;String&gt;[ [-EnclosureGroup] &lt;Object&gt;][ [-NonCompliant] &lt;SwitchParameter&gt;][ [-Scope] &lt;Object&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of Logical Enclosure resources, or a single Logical Enclosure with the specified name.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Filter resources based on provided EnclosureGroup association.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Logical Enclosure resource to be returned.  All Logical Enclosure resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NonCompliant &lt;SwitchParameter&gt;<p>
Filter resources based on their non-compliant state.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 

Single Enclosure Group

 _**System.Collections.ArrayList**_

 

Multiple Enclosure Groups



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalEnclosure
</pre>
Return all the Logical Enclosure resources managed by all appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$LogicalEnclosures = Get-HPOVLogicalEnclosure
</pre>
Return all found Logical Enclosure resources on MyAppliance.domain.com appliance.



### Related Links

* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure)
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVLogicalEnclosure
<p>
Retrieve Logical Enclosure resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalEnclosure [-Name] &lt;String&gt;[ [-EnclosureGroup] &lt;Object&gt;][ [-NonCompliant] &lt;SwitchParameter&gt;][ [-Scope] &lt;Object&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of Logical Enclosure resources, or a single Logical Enclosure with the specified name.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Filter resources based on provided EnclosureGroup association.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Logical Enclosure resource to be returned.  All Logical Enclosure resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NonCompliant &lt;SwitchParameter&gt;<p>
Filter resources based on their non-compliant state.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 

Single Enclosure Group

 _**System.Collections.ArrayList**_

 

Multiple Enclosure Groups



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalEnclosure
</pre>
Return all the Logical Enclosure resources managed by all appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$LogicalEnclosures = Get-HPOVLogicalEnclosure
</pre>
Return all found Logical Enclosure resources on MyAppliance.domain.com appliance.



### Related Links

* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure)
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVLogicalEnclosure
<p>
Retrieve Logical Enclosure resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalEnclosure [-Name] &lt;String&gt;[ [-EnclosureGroup] &lt;Object&gt;][ [-NonCompliant] &lt;SwitchParameter&gt;][ [-Scope] &lt;Object&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of Logical Enclosure resources, or a single Logical Enclosure with the specified name.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Filter resources based on provided EnclosureGroup association.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Logical Enclosure resource to be returned.  All Logical Enclosure resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NonCompliant &lt;SwitchParameter&gt;<p>
Filter resources based on their non-compliant state.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

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

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 

Single Enclosure Group

 _**System.Collections.ArrayList**_

 

Multiple Enclosure Groups



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalEnclosure
</pre>
Return all the Logical Enclosure resources managed by all appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$LogicalEnclosures = Get-HPOVLogicalEnclosure
</pre>
Return all found Logical Enclosure resources on MyAppliance.domain.com appliance.



### Related Links

* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure)
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
