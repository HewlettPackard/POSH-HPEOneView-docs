<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVReservedVlanRange
<p>
Get the reserved VLAN range for HPE Synergy.

### SYNTAX
<p>
<pre><code>Get-HPOVReservedVlanRange[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
By default, HPE Synergy reserves a sepcific VLAN range for Tunnel, untagged and FC networks for HPE Synergy Virtual Connect.  This default range is 3967-4095.  The range can be modified using Set-HPOVReservedVlanRange if none of the specified network resources have been created.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.ReservedVlanRange**_

 

The reserved VLAN range object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVReservedVlanRange
</pre>
Get the defined reserved VLAN range on the connected HPE Synergy appliance.



### Related Links

* [Set-HPOVReservedVlanRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVReservedVlanRange)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVReservedVlanRange
<p>
Get the reserved VLAN range for HPE Synergy.

### SYNTAX
<p>
<pre><code>Get-HPOVReservedVlanRange[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
By default, HPE Synergy reserves a sepcific VLAN range for Tunnel, untagged and FC networks for HPE Synergy Virtual Connect.  This default range is 3967-4095.  The range can be modified using Set-HPOVReservedVlanRange if none of the specified network resources have been created.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.ReservedVlanRange**_

 

The reserved VLAN range object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVReservedVlanRange
</pre>
Get the defined reserved VLAN range on the connected HPE Synergy appliance.



### Related Links

* [Set-HPOVReservedVlanRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVReservedVlanRange)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVReservedVlanRange
<p>
Get the reserved VLAN range for HPE Synergy.

### SYNTAX
<p>
<pre><code>Get-HPOVReservedVlanRange[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
By default, HPE Synergy reserves a sepcific VLAN range for Tunnel, untagged and FC networks for HPE Synergy Virtual Connect.  This default range is 3967-4095.  The range can be modified using Set-HPOVReservedVlanRange if none of the specified network resources have been created.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.ReservedVlanRange**_

 

The reserved VLAN range object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVReservedVlanRange
</pre>
Get the defined reserved VLAN range on the connected HPE Synergy appliance.



### Related Links

* [Set-HPOVReservedVlanRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVReservedVlanRange)


***
<div align=right><a href="#Top">Top</a></div>
