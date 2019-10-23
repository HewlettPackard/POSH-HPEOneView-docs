<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVLogicalInterconnectGroup
<p>
Retrieve Logical Interconnect Group resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalInterconnectGroup[ [-Name] &lt;String&gt;] [-Type] &lt;String&gt;[ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-exportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLogicalInterconnectGroup [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all Logical Interconnect Groups or just specific ones via a query if the name parameter is provided.  The output can be sent to a file using the exportFile parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Pipeline input resource generated from Wait-HPOVTaskComplete, or successfully completed Async Task resource object.

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Logical Interconnect Group to retrieve.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Provide the type of Logical Interconnect Group to return.  Omit to return all Logical Interconnect Group resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases [-x, -export]
The full path and file name to export the contents retrieved from the call to Get-HPOVLogicalInterconnectGroup.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 Successfully Completed Async task resource from Wait-HPOVTaskComplete or other supported method



### Return Values

_**System.Collections.ArrayList**_

 

A Logical Interconnect Group or collection of Logical Interconnect Groups



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnectGroup
</pre>
Returns all Logical Interconnect Groups defined on the appliance to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalInterconnectGroup -Name "Production"
</pre>
Returns just the Production Logical Interconnect Group object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myLigs = Get-HPOVLogicalInterconnectGroup
</pre>
Returns the Get-HPOVLogicalInterconnectGroup query and stores it in the object $myLigs


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$LigName = "VC FF Virt Prod"
$CreatedLig = New-HPOVLogicalInterconnectGroup -Name $LigName -bays @{1 = "FlexFabric";2 = "FlexFabric"} -EnableIgmpSnooping $True -InternalNetworks "VMMigration Network" | Wait-HPOVTaskComplete | Get-HPOVLogicalInterconnectGroup
$CreatedLig

Name            Enclosure Groups
----            ----------------
VC FF Virt Prod

</pre>
Create a new Logical Interconnect Group resource, wait for the task to complete, then retrieve the created resource.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVLogicalInterconnectGroup -exportFile "c:\myApplianceConfig\LogicaICGs.json"
</pre>
Returns the Get-HPOVLogicalInterconnectGroup query results to the file c:\myApplianceConfig\LogicaICGs.json



### Related Links

* [New-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalInterconnectGroup)
* [Remove-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalInterconnectGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVLogicalInterconnectGroup
<p>
Retrieve Logical Interconnect Group resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalInterconnectGroup[ [-Name] &lt;String&gt;] [-Type] &lt;String&gt;[ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-exportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLogicalInterconnectGroup [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all Logical Interconnect Groups or just specific ones via a query if the name parameter is provided.  The output can be sent to a file using the exportFile parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Pipeline input resource generated from Wait-HPOVTaskComplete, or successfully completed Async Task resource object.

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Logical Interconnect Group to retrieve.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Provide the type of Logical Interconnect Group to return.  Omit to return all Logical Interconnect Group resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases [-x, -export]
The full path and file name to export the contents retrieved from the call to Get-HPOVLogicalInterconnectGroup.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 Successfully Completed Async task resource from Wait-HPOVTaskComplete or other supported method



### Return Values

_**System.Collections.ArrayList**_

 

A Logical Interconnect Group or collection of Logical Interconnect Groups



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnectGroup
</pre>
Returns all Logical Interconnect Groups defined on the appliance to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalInterconnectGroup -Name "Production"
</pre>
Returns just the Production Logical Interconnect Group object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myLigs = Get-HPOVLogicalInterconnectGroup
</pre>
Returns the Get-HPOVLogicalInterconnectGroup query and stores it in the object $myLigs


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$LigName = "VC FF Virt Prod"
$CreatedLig = New-HPOVLogicalInterconnectGroup -Name $LigName -bays @{1 = "FlexFabric";2 = "FlexFabric"} -EnableIgmpSnooping $True -InternalNetworks "VMMigration Network" | Wait-HPOVTaskComplete | Get-HPOVLogicalInterconnectGroup
$CreatedLig

Name            Enclosure Groups
----            ----------------
VC FF Virt Prod

</pre>
Create a new Logical Interconnect Group resource, wait for the task to complete, then retrieve the created resource.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVLogicalInterconnectGroup -exportFile "c:\myApplianceConfig\LogicaICGs.json"
</pre>
Returns the Get-HPOVLogicalInterconnectGroup query results to the file c:\myApplianceConfig\LogicaICGs.json



### Related Links

* [New-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalInterconnectGroup)
* [Remove-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalInterconnectGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVLogicalInterconnectGroup
<p>
Retrieve Logical Interconnect Group resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalInterconnectGroup[ [-Name] &lt;String&gt;] [-Type] &lt;String&gt;[ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-exportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLogicalInterconnectGroup [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all Logical Interconnect Groups or just specific ones via a query if the name parameter is provided.  The output can be sent to a file using the exportFile parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Pipeline input resource generated from Wait-HPOVTaskComplete, or successfully completed Async Task resource object.

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Logical Interconnect Group to retrieve.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Provide the type of Logical Interconnect Group to return.  Omit to return all Logical Interconnect Group resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases [-x, -export]
The full path and file name to export the contents retrieved from the call to Get-HPOVLogicalInterconnectGroup.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 Successfully Completed Async task resource from Wait-HPOVTaskComplete or other supported method



### Return Values

_**System.Collections.ArrayList**_

 

A Logical Interconnect Group or collection of Logical Interconnect Groups



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnectGroup
</pre>
Returns all Logical Interconnect Groups defined on the appliance to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalInterconnectGroup -Name "Production"
</pre>
Returns just the Production Logical Interconnect Group object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myLigs = Get-HPOVLogicalInterconnectGroup
</pre>
Returns the Get-HPOVLogicalInterconnectGroup query and stores it in the object $myLigs


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$LigName = "VC FF Virt Prod"
$CreatedLig = New-HPOVLogicalInterconnectGroup -Name $LigName -bays @{1 = "FlexFabric";2 = "FlexFabric"} -EnableIgmpSnooping $True -InternalNetworks "VMMigration Network" | Wait-HPOVTaskComplete | Get-HPOVLogicalInterconnectGroup
$CreatedLig

Name            Enclosure Groups
----            ----------------
VC FF Virt Prod

</pre>
Create a new Logical Interconnect Group resource, wait for the task to complete, then retrieve the created resource.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVLogicalInterconnectGroup -exportFile "c:\myApplianceConfig\LogicaICGs.json"
</pre>
Returns the Get-HPOVLogicalInterconnectGroup query results to the file c:\myApplianceConfig\LogicaICGs.json



### Related Links

* [New-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalInterconnectGroup)
* [Remove-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalInterconnectGroup)


***
<div align=right><a href="#Top">Top</a></div>
