<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVApplianceSnmpV3EngineId
<p>
Change the appliance SNMPv3 Engine ID

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceSnmpV3EngineId [-EngineID] &lt;string&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Change or update the appliance SNMPv3 engine ID.

Required permissions: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EngineID &lt;string&gt;<p>
A 16 hexacharacter value. E.g. "0x73cb660f279b9e"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SnmpV3EngineId**_

 

The appliance SNMPv3 engine ID.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVApplianceSnmpV3EngineId -EngineID 0x73cb660f279b9e
</pre>
Default example



### Related Links

* [Get-HPOVApplianceSnmpV3EngineId](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSnmpV3EngineId)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVApplianceSnmpV3EngineId
<p>
Change the appliance SNMPv3 Engine ID

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceSnmpV3EngineId [-EngineID] &lt;string&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Change or update the appliance SNMPv3 engine ID.

Required permissions: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EngineID &lt;string&gt;<p>
A 16 hexacharacter value. E.g. "0x73cb660f279b9e"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SnmpV3EngineId**_

 

The appliance SNMPv3 engine ID.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVApplianceSnmpV3EngineId -EngineID 0x73cb660f279b9e
</pre>
Default example



### Related Links

* [Get-HPOVApplianceSnmpV3EngineId](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSnmpV3EngineId)


***
<div align=right><a href="#Top">Top</a></div>
