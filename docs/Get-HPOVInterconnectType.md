<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVInterconnectType
<p>
Retrieve Interconnect Type resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVInterconnectType[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVInterconnectType[ [-PartNumber] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all Interconnect Types or just specific ones via a query if the name or partnumber parameters are provided.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the interconnect type model name to retrieve.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PartNumber &lt;String&gt;<p>
The Part Number of an Interconnect Type to search for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.InterconnectType [System.Management.Automation.PSCustomObject]**_

 

Single Interconnect Type resource.

 _**System.Collections.ArrayList &lt;HPOneView.Networking.InterconnectType&gt;**_

 

Multiple Interconnect Type resources or formatted table dispalying basic Interconnect Type information.

 _**An Interconnect Type or collection of Interconnect Types.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVInterconnectType
</pre>
Returns all Interconnect Types available from all connected appliances to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVInterconnect -name "HP VC FlexFabric 10Gb/24-Port Module"
</pre>
Returns just the "HP VC FlexFabric 10Gb/24-Port Module" Interconnect Type object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVInterconnect -name "571956-B21"
</pre>
Returns just the partnumber "571956-B21" Interconnect Type object to standard output.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVInterconnectType
<p>
Retrieve Interconnect Type resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVInterconnectType[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVInterconnectType[ [-PartNumber] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all Interconnect Types or just specific ones via a query if the name or partnumber parameters are provided.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the interconnect type model name to retrieve.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PartNumber &lt;String&gt;<p>
The Part Number of an Interconnect Type to search for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.InterconnectType [System.Management.Automation.PSCustomObject]**_

 

Single Interconnect Type resource.

 _**System.Collections.ArrayList &lt;HPOneView.Networking.InterconnectType&gt;**_

 

Multiple Interconnect Type resources or formatted table dispalying basic Interconnect Type information.

 _**An Interconnect Type or collection of Interconnect Types.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVInterconnectType
</pre>
Returns all Interconnect Types available from all connected appliances to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVInterconnect -name "HP VC FlexFabric 10Gb/24-Port Module"
</pre>
Returns just the "HP VC FlexFabric 10Gb/24-Port Module" Interconnect Type object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVInterconnect -name "571956-B21"
</pre>
Returns just the partnumber "571956-B21" Interconnect Type object to standard output.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVInterconnectType
<p>
Retrieve Interconnect Type resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVInterconnectType[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVInterconnectType[ [-PartNumber] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all Interconnect Types or just specific ones via a query if the name or partnumber parameters are provided.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the interconnect type model name to retrieve.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PartNumber &lt;String&gt;<p>
The Part Number of an Interconnect Type to search for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.InterconnectType [System.Management.Automation.PSCustomObject]**_

 

Single Interconnect Type resource.

 _**System.Collections.ArrayList &lt;HPOneView.Networking.InterconnectType&gt;**_

 

Multiple Interconnect Type resources or formatted table dispalying basic Interconnect Type information.

 _**An Interconnect Type or collection of Interconnect Types.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVInterconnectType
</pre>
Returns all Interconnect Types available from all connected appliances to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVInterconnect -name "HP VC FlexFabric 10Gb/24-Port Module"
</pre>
Returns just the "HP VC FlexFabric 10Gb/24-Port Module" Interconnect Type object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVInterconnect -name "571956-B21"
</pre>
Returns just the partnumber "571956-B21" Interconnect Type object to standard output.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
