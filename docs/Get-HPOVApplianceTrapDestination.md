<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVApplianceTrapDestination
<p>
Get configured appliance SNMP trap destinations.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceTrapDestination[ [-Destination] &lt;String&gt;][ [-Type] &lt;Array&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to retrieve configured SNMPv1 and/or SNMPv3 trap destinations.

Required permissions: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Destination &lt;String&gt;<p>
Filter trap destinations by the destination value.  Supports wildcard.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;Array&gt;<p>
Filter based on SNMP version.  Supported values:

	* SNMPv1
	*SNMPv3


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SnmpV1TrapDestination**_

 

Appliance SNMPv1 trap destination, including trap community and target.

 _**HPOneView.Appliance.SnmpV3TrapDestination**_

 

Appliance SNMPv3 trap destination, including type, SNMPv3 user and target.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceTrapDestination
</pre>
Default example



### Related Links

* [New-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceTrapDestination)
* [Remove-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrapDestination)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVApplianceTrapDestination
<p>
Get configured appliance SNMP trap destinations.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceTrapDestination[ [-Destination] &lt;String&gt;][ [-Type] &lt;Array&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to retrieve configured SNMPv1 and/or SNMPv3 trap destinations.

Required permissions: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Destination &lt;String&gt;<p>
Filter trap destinations by the destination value.  Supports wildcard.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;Array&gt;<p>
Filter based on SNMP version.  Supported values:

	* SNMPv1
	*SNMPv3


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SnmpV1TrapDestination**_

 

Appliance SNMPv1 trap destination, including trap community and target.

 _**HPOneView.Appliance.SnmpV3TrapDestination**_

 

Appliance SNMPv3 trap destination, including type, SNMPv3 user and target.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceTrapDestination
</pre>
Default example



### Related Links

* [New-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceTrapDestination)
* [Remove-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrapDestination)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVApplianceTrapDestination
<p>
Get configured appliance SNMP trap destinations.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceTrapDestination[ [-Destination] &lt;String&gt;][ [-Type] &lt;Array&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to retrieve configured SNMPv1 and/or SNMPv3 trap destinations.

Required permissions: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Destination &lt;String&gt;<p>
Filter trap destinations by the destination value.  Supports wildcard.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;Array&gt;<p>
Filter based on SNMP version.  Supported values:

	* SNMPv1
	*SNMPv3


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SnmpV1TrapDestination**_

 

Appliance SNMPv1 trap destination, including trap community and target.

 _**HPOneView.Appliance.SnmpV3TrapDestination**_

 

Appliance SNMPv3 trap destination, including type, SNMPv3 user and target.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceTrapDestination
</pre>
Default example



### Related Links

* [New-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceTrapDestination)
* [Remove-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrapDestination)


***
<div align=right><a href="#Top">Top</a></div>
