<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVInterconnect
<p>
Retrieve Interconnect resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVInterconnect[ [-Name] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-Export] &lt;String&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all Interconnects (Ethernet, FC, Converged Network, and/or SAS) or just specific ones via a query if the name parameter is provided.  The output can be sent to a file using the Export parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Aliases [-x, -exportFile]
The full path and file name to export the contents retrieved from the call to Get-HPOVInterconnect.

<table><tbody><tr><td>Aliases</td><td>x, exportFile</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the interconnect to retrieve.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.Interconnect [System.Management.Automation.PSCustomObject]**_

 

Single Interconnect object.

 _**HPOneView.Networking.SasInterconnect [System.Management.Automation.PSCustomObject]**_

 

Single SAS Interconnect object.

 _**System.Collections.ArrayList**_

 

Multiple Interconnect objects.

 _**An Interconnect or collection of Interconnects**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVInterconnect
</pre>
Returns all Interconnects managed by all connected appliances to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVInterconnect "Encl1, Interconnect 1"
</pre>
Returns just the Encl1, Interconnect 1 Interconnect object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myICs = Get-HPOVInterconnect
</pre>
Returns the Get-HPOVInterconnect query and stores it in the object $myICs


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVInterconnect -exportFile "c:\myApplianceConfig\ICs.json"
</pre>
Returns the Get-HPOVInterconnect query results to the file c:\myApplianceConfig\ICs.json



### Related Links

* [Get-HPOVInterconnectType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVInterconnectType)
* [Reset-HPOVInterconnectNetOpPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVInterconnectNetOpPassword)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVInterconnect
<p>
Retrieve Interconnect resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVInterconnect[ [-Name] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-Export] &lt;String&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all Interconnects (Ethernet, FC, Converged Network, and/or SAS) or just specific ones via a query if the name parameter is provided.  The output can be sent to a file using the Export parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Aliases [-x, -exportFile]
The full path and file name to export the contents retrieved from the call to Get-HPOVInterconnect.

<table><tbody><tr><td>Aliases</td><td>x, exportFile</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the interconnect to retrieve.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.Interconnect [System.Management.Automation.PSCustomObject]**_

 

Single Interconnect object.

 _**HPOneView.Networking.SasInterconnect [System.Management.Automation.PSCustomObject]**_

 

Single SAS Interconnect object.

 _**System.Collections.ArrayList**_

 

Multiple Interconnect objects.

 _**An Interconnect or collection of Interconnects**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVInterconnect
</pre>
Returns all Interconnects managed by all connected appliances to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVInterconnect "Encl1, Interconnect 1"
</pre>
Returns just the Encl1, Interconnect 1 Interconnect object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myICs = Get-HPOVInterconnect
</pre>
Returns the Get-HPOVInterconnect query and stores it in the object $myICs


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVInterconnect -exportFile "c:\myApplianceConfig\ICs.json"
</pre>
Returns the Get-HPOVInterconnect query results to the file c:\myApplianceConfig\ICs.json



### Related Links

* [Get-HPOVInterconnectType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVInterconnectType)
* [Reset-HPOVInterconnectNetOpPassword](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVInterconnectNetOpPassword)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVInterconnect
<p>
Retrieve Interconnect resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVInterconnect[ [-Name] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-Export] &lt;String&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all Interconnects (Ethernet, FC, Converged Network, and/or SAS) or just specific ones via a query if the name parameter is provided.  The output can be sent to a file using the Export parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Aliases [-x, -exportFile]
The full path and file name to export the contents retrieved from the call to Get-HPOVInterconnect.

<table><tbody><tr><td>Aliases</td><td>x, exportFile</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the interconnect to retrieve.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.Interconnect [System.Management.Automation.PSCustomObject]**_

 

Single Interconnect object.

 _**HPOneView.Networking.SasInterconnect [System.Management.Automation.PSCustomObject]**_

 

Single SAS Interconnect object.

 _**System.Collections.ArrayList**_

 

Multiple Interconnect objects.

 _**An Interconnect or collection of Interconnects**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVInterconnect
</pre>
Returns all Interconnects managed by all connected appliances to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVInterconnect "Encl1, Interconnect 1"
</pre>
Returns just the Encl1, Interconnect 1 Interconnect object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myICs = Get-HPOVInterconnect
</pre>
Returns the Get-HPOVInterconnect query and stores it in the object $myICs


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVInterconnect -exportFile "c:\myApplianceConfig\ICs.json"
</pre>
Returns the Get-HPOVInterconnect query results to the file c:\myApplianceConfig\ICs.json



### Related Links

* [Get-HPOVInterconnectType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVInterconnectType)


***
<div align=right><a href="#Top">Top</a></div>
