<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Disconnect-HPOVMgmt
<p>
Disconnect from the appliance.

### SYNTAX
<p>
<pre><code>Disconnect-HPOVMgmt[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet disconnects the specified or all HPE OneView appliance session(s).


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance, ApplianceSession, Hostname</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>$ConnectedSessions | Where-Object Default</td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**None.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Connection1 = Connect-HPOVMgmt MyAppliance.domain.com
Disconnect-HPOVMgmt -Hostname $Connection1

</pre>
Disconnect from the specific appliance session.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Disconnect-HPOVMgmt -Hostname 1
</pre>
Disconnect ConnectionID 1 appliance session.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$ConnectedSessions | Disconnect-HPOVMgmt
</pre>
Disconnect all appliance sessions.



### Related Links

* [Connect-HPOVMgmt](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Connect-HPOVMgmt)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Disconnect-HPOVMgmt
<p>
Disconnect from the appliance.

### SYNTAX
<p>
<pre><code>Disconnect-HPOVMgmt[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet disconnects the specified or all HPE OneView appliance session(s).


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance, ApplianceSession, Hostname</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>$ConnectedSessions | Where-Object Default</td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**None.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Connection1 = Connect-HPOVMgmt MyAppliance.domain.com
Disconnect-HPOVMgmt -Hostname $Connection1

</pre>
Disconnect from the specific appliance session.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Disconnect-HPOVMgmt -Hostname 1
</pre>
Disconnect ConnectionID 1 appliance session.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$ConnectedSessions | Disconnect-HPOVMgmt
</pre>
Disconnect all appliance sessions.



### Related Links

* [Connect-HPOVMgmt](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Connect-HPOVMgmt)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Disconnect-HPOVMgmt
<p>
Disconnect from the appliance.

### SYNTAX
<p>
<pre><code>Disconnect-HPOVMgmt[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet disconnects the specified or all HPE OneView appliance session(s).


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance, ApplianceSession, Hostname</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>$ConnectedSessions | Where-Object Default</td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**None.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Connection1 = Connect-HPOVMgmt MyAppliance.domain.com
Disconnect-HPOVMgmt -Hostname $Connection1

</pre>
Disconnect from the specific appliance session.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Disconnect-HPOVMgmt -Hostname 1
</pre>
Disconnect ConnectionID 1 appliance session.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$ConnectedSessions | Disconnect-HPOVMgmt
</pre>
Disconnect all appliance sessions.



### Related Links

* [Connect-HPOVMgmt](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Connect-HPOVMgmt)


***
<div align=right><a href="#Top">Top</a></div>
