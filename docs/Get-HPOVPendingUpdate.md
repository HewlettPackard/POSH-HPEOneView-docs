<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVPendingUpdate
<p>
Verify pending appliance update has been staged.

### SYNTAX
<p>
<pre><code>Get-HPOVPendingUpdate [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this cmdlet to validate a pending update has been staged on an appliance.  If one is present, the update details will be returned to the caller.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.Update.Pending [System.Management.Automation.PSCustomObject]**_

 

Pending appliance update



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVPendingUpdate
</pre>
Retrieve pending update from all connected appliance sessions.



### Related Links

* [Remove-HPOVPendingUpdate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPendingUpdate)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVPendingUpdate
<p>
Verify pending appliance update has been staged.

### SYNTAX
<p>
<pre><code>Get-HPOVPendingUpdate [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this cmdlet to validate a pending update has been staged on an appliance.  If one is present, the update details will be returned to the caller.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.Update.Pending [System.Management.Automation.PSCustomObject]**_

 

Pending appliance update



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVPendingUpdate
</pre>
Retrieve pending update from all connected appliance sessions.



### Related Links

* [Remove-HPOVPendingUpdate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPendingUpdate)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVPendingUpdate
<p>
Verify pending appliance update has been staged.

### SYNTAX
<p>
<pre><code>Get-HPOVPendingUpdate [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this cmdlet to validate a pending update has been staged on an appliance.  If one is present, the update details will be returned to the caller.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.Update.Pending [System.Management.Automation.PSCustomObject]**_

 

Pending appliance update



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVPendingUpdate
</pre>
Retrieve pending update from all connected appliance sessions.



### Related Links

* [Remove-HPOVPendingUpdate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVPendingUpdate)


***
<div align=right><a href="#Top">Top</a></div>
