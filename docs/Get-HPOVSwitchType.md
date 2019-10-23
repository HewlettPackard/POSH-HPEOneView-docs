<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVSwitchType
<p>
Retrieve Switch Type resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVSwitchType[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVSwitchType[ [-PartNumber] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all supported Switch Types or just specific ones via a query if the name or partnumber parameters are provided. 


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the switch type model name to retrieve.  Does not support wildcard search.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PartNumber &lt;String&gt;<p>
The Part Number of an switch type to search for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.SwitchType**_

 

Single Switch Type resource.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSwitchType
</pre>
Returns all Switch Types available from all connected appliances to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVSwitchType -Name "Cisco Nexus 55xx"
</pre>
Returns just the "Cisco Nexus 55xx" Switch Type object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVSwitchType -Partnumber "DCS-7060X-SERIES"
</pre>
Returns just the partnumber "DCS-7060X-SERIES" Switch Type object to standard output.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVSwitchType
<p>
Retrieve Switch Type resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVSwitchType[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVSwitchType[ [-PartNumber] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all supported Switch Types or just specific ones via a query if the name or partnumber parameters are provided. 


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the switch type model name to retrieve.  Does not support wildcard search.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PartNumber &lt;String&gt;<p>
The Part Number of an switch type to search for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.SwitchType**_

 

Single Switch Type resource.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSwitchType
</pre>
Returns all Switch Types available from all connected appliances to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVSwitchType -Name "Cisco Nexus 55xx"
</pre>
Returns just the "Cisco Nexus 55xx" Switch Type object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVSwitchType -Partnumber "DCS-7060X-SERIES"
</pre>
Returns just the partnumber "DCS-7060X-SERIES" Switch Type object to standard output.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVSwitchType
<p>
Retrieve Switch Type resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVSwitchType [-Name] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVSwitchType [-PartNumber] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves a list of all supported Switch Types or just specific ones via a query if the name or partnumber parameters are provided.  Curently, supported switch types are:
 * Cisco Nexus 50xx N5K-C50XX
 * Cisco Nexus 55xx N5K-C55XX
 * Cisco Nexus 56xx N5K-C56XX
 * Cisco Nexus 600x N6K-C600X



### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the switch type model name to retrieve.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PartNumber &lt;String&gt;<p>
The Part Number of an switch type to search for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.SwitchType [System.Management.Automation.PSCustomObject]**_

 

Single Switch Type resource.

 _**System.Collections.ArrayList &lt;HPOneView.Networking.SwitchType&gt;**_

 

Multiple Switch Type resources.

 _**A Switch Type or collection of Switch Types.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSwitchType
</pre>
Returns all Switch Types available from all connected appliances to standard output.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVInterconnect -Name "Cisco Nexus 55xx"
</pre>
Returns just the "Cisco Nexus 55xx" Switch Type object to standard output.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVInterconnect -Name "N5K-C55XX"
</pre>
Returns just the partnumber "N5K-C55XX" Switch Type object to standard output.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
