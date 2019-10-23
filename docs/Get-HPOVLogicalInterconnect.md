<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVLogicalInterconnect
<p>
Retrieve Logical Interconnect resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalInterconnect [-Name] &lt;String&gt;[ [-NonCompliant] &lt;SwitchParameter&gt;][ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;] [-ApplianceConnection] &lt;Object&gt; [-Export] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all Logical Interconnect or just specific ones via a query if the name parameter is provided.  The output can be sent to a file using the exportFile parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Aliases [-x, -export]
The full path and file name to export the contents retrieved from the call to Get-HPOVLogicalInterconnect.

<table><tbody><tr><td>Aliases</td><td>x, ExportFile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Logical Interconnect to retrieve.

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

_**HPoneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 

Logical Interconnect resource object from Get-HPOVLogicalInterconnect

 _**System.Collections.ArrayList &lt;HPoneView.Networking.LogicalInterconnect&gt;**_

 

Multiple Logical Interconnects

 _**A Logical Interconnect or collection of Logical Interconnects**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnect
</pre>
Returns all Logical Interconnect defined on the appliance to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalInterconnect "Production"
</pre>
Returns just the Production Logical Interconnect object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myLogicalICs = Get-HPOVLogicalInterconnect
</pre>
Returns the Get-HPOVLogicalInterconnect query and stores it in the object $myLogicalICs


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVLogicalInterconnect -Export "c:\myApplianceConfig\LogicaICs.json"
</pre>
Returns the Get-HPOVLogicalInterconnect query results to the file c:\myApplianceConfig\LogicaICs.json



### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLogicalInterconnectPortMonitoring)
* [Enable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLogicalInterconnectPortMonitoring)
* [Get-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectGroup)
* [Get-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectPortMonitoring)
* [Install-HPOVLogicalInterconnectFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Install-HPOVLogicalInterconnectFirmware)
* [New-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalInterconnectGroup)
* [Remove-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalInterconnectGroup)
* [Show-HPOVLogicalInterconnectMacTable](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLogicalInterconnectMacTable)
* [Update-HPOVLogicalInterconnect](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalInterconnect)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVLogicalInterconnect
<p>
Retrieve Logical Interconnect resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalInterconnect [-Name] &lt;String&gt;[ [-NonCompliant] &lt;SwitchParameter&gt;][ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;] [-ApplianceConnection] &lt;Object&gt; [-Export] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all Logical Interconnect or just specific ones via a query if the name parameter is provided.  The output can be sent to a file using the exportFile parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Aliases [-x, -export]
The full path and file name to export the contents retrieved from the call to Get-HPOVLogicalInterconnect.

<table><tbody><tr><td>Aliases</td><td>x, ExportFile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Logical Interconnect to retrieve.

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

_**HPoneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 

Logical Interconnect resource object from Get-HPOVLogicalInterconnect

 _**System.Collections.ArrayList &lt;HPoneView.Networking.LogicalInterconnect&gt;**_

 

Multiple Logical Interconnects

 _**A Logical Interconnect or collection of Logical Interconnects**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnect
</pre>
Returns all Logical Interconnect defined on the appliance to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalInterconnect "Production"
</pre>
Returns just the Production Logical Interconnect object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myLogicalICs = Get-HPOVLogicalInterconnect
</pre>
Returns the Get-HPOVLogicalInterconnect query and stores it in the object $myLogicalICs


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVLogicalInterconnect -Export "c:\myApplianceConfig\LogicaICs.json"
</pre>
Returns the Get-HPOVLogicalInterconnect query results to the file c:\myApplianceConfig\LogicaICs.json



### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLogicalInterconnectPortMonitoring)
* [Enable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLogicalInterconnectPortMonitoring)
* [Get-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectGroup)
* [Get-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectPortMonitoring)
* [Install-HPOVLogicalInterconnectFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Install-HPOVLogicalInterconnectFirmware)
* [New-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalInterconnectGroup)
* [Remove-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalInterconnectGroup)
* [Show-HPOVLogicalInterconnectMacTable](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLogicalInterconnectMacTable)
* [Update-HPOVLogicalInterconnect](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalInterconnect)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVLogicalInterconnect
<p>
Retrieve Logical Interconnect resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVLogicalInterconnect [-Name] &lt;String&gt;[ [-NonCompliant] &lt;SwitchParameter&gt;][ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;] [-ApplianceConnection] &lt;Object&gt; [-Export] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all Logical Interconnect or just specific ones via a query if the name parameter is provided.  The output can be sent to a file using the exportFile parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Aliases [-x, -export]
The full path and file name to export the contents retrieved from the call to Get-HPOVLogicalInterconnect.

<table><tbody><tr><td>Aliases</td><td>x, ExportFile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Logical Interconnect to retrieve.

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

_**HPoneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 

Logical Interconnect resource object from Get-HPOVLogicalInterconnect

 _**System.Collections.ArrayList &lt;HPoneView.Networking.LogicalInterconnect&gt;**_

 

Multiple Logical Interconnects

 _**A Logical Interconnect or collection of Logical Interconnects**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalInterconnect
</pre>
Returns all Logical Interconnect defined on the appliance to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalInterconnect "Production"
</pre>
Returns just the Production Logical Interconnect object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myLogicalICs = Get-HPOVLogicalInterconnect
</pre>
Returns the Get-HPOVLogicalInterconnect query and stores it in the object $myLogicalICs


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVLogicalInterconnect -Export "c:\myApplianceConfig\LogicaICs.json"
</pre>
Returns the Get-HPOVLogicalInterconnect query results to the file c:\myApplianceConfig\LogicaICs.json



### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLogicalInterconnectPortMonitoring)
* [Enable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLogicalInterconnectPortMonitoring)
* [Get-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectGroup)
* [Get-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectPortMonitoring)
* [Install-HPOVLogicalInterconnectFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Install-HPOVLogicalInterconnectFirmware)
* [New-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalInterconnectGroup)
* [Remove-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalInterconnectGroup)
* [Show-HPOVLogicalInterconnectMacTable](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLogicalInterconnectMacTable)
* [Update-HPOVLogicalInterconnect](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalInterconnect)


***
<div align=right><a href="#Top">Top</a></div>
