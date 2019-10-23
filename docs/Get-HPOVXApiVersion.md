<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVXApiVersion
<p>
Get appliance API version.

### SYNTAX
<p>
<pre><code>Get-HPOVXApiVersion [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Returns the API versions supported by the appliance.  You do not need to authenticate, or call Connect-HPOVMgmt, to an appliance in order to retrieve the supported REST API Versions by the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The current and minimum supported API versions on the appliance



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
(Get-HPOVXApiVersion myAppliance.domain.com).minimumversion
</pre>
This example retrieves the minimum XApi version supported by the appliance.  An existing connection is not needed since the appliance name is provided.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
(Get-HPOVXApiVersion).minimumversion
</pre>
This example retrieves the minimum XApi version supported by the appliance and requires that a connection has been established by using Connect-HPOVMgmt.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVXApiVersion
<p>
Get appliance API version.

### SYNTAX
<p>
<pre><code>Get-HPOVXApiVersion [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Returns the API versions supported by the appliance.  You do not need to authenticate, or call Connect-HPOVMgmt, to an appliance in order to retrieve the supported REST API Versions by the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The current and minimum supported API versions on the appliance



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
(Get-HPOVXApiVersion myAppliance.domain.com).minimumversion
</pre>
This example retrieves the minimum XApi version supported by the appliance.  An existing connection is not needed since the appliance name is provided.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
(Get-HPOVXApiVersion).minimumversion
</pre>
This example retrieves the minimum XApi version supported by the appliance and requires that a connection has been established by using Connect-HPOVMgmt.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVXApiVersion
<p>
Get appliance API version.

### SYNTAX
<p>
<pre><code>Get-HPOVXApiVersion [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Returns the API versions supported by the appliance.  You do not need to authenticate, or call Connect-HPOVMgmt, to an appliance in order to retrieve the supported REST API Versions by the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The current and minimum supported API versions on the appliance



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
(Get-HPOVXApiVersion myAppliance.domain.com).minimumversion
</pre>
This example retrieves the minimum XApi version supported by the appliance.  An existing connection is not needed since the appliance name is provided.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
(Get-HPOVXApiVersion).minimumversion
</pre>
This example retrieves the minimum XApi version supported by the appliance and requires that a connection has been established by using Connect-HPOVMgmt.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
