<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVApplianceTrapDestination
<p>
Remove configured appliance SNMP trap destinations.

### SYNTAX
<p>
<pre><code>Remove-HPOVApplianceTrapDestination [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Array&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to remove configured SNMPv1 and/or SNMPv3 trap destinations.

Required permissions: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Override confirmation prompt.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The HPOneView.Appliance.SnmpV1TrapDestination or HPOneView.Appliance.SnmpV3TrapDestination object from Get-HPOVApplianceTrapDestination to remove.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.SnmpV1TrapDestination**_

 Appliance SNMPv1 trap destination from Get-HPOVHPOVApplianceTrapDestination.

 _**HPOneView.Appliance.SnmpV3TrapDestination**_

 Appliance SNMPv3 trap destination from Get-HPOVHPOVApplianceTrapDestination.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Success message of deleted resource.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVHPOVApplianceTrapDestination -Destination 10.45.110.76 -ErrorAction Stop | Remove-HPOVApplianceTrapDestination
</pre>
Remove the specified trap destination.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVHPOVApplianceTrapDestination -Type SNMPv3 | Remove-HPOVApplianceTrapDestination
</pre>
Remove all of the SNMPv3 trap destinations.



### Related Links

* [Get-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrapDestination)
* [New-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceTrapDestination)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVApplianceTrapDestination
<p>
Remove configured appliance SNMP trap destinations.

### SYNTAX
<p>
<pre><code>Remove-HPOVApplianceTrapDestination [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Array&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to remove configured SNMPv1 and/or SNMPv3 trap destinations.

Required permissions: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Override confirmation prompt.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The HPOneView.Appliance.SnmpV1TrapDestination or HPOneView.Appliance.SnmpV3TrapDestination object from Get-HPOVApplianceTrapDestination to remove.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.SnmpV1TrapDestination**_

 Appliance SNMPv1 trap destination from Get-HPOVHPOVApplianceTrapDestination.

 _**HPOneView.Appliance.SnmpV3TrapDestination**_

 Appliance SNMPv3 trap destination from Get-HPOVHPOVApplianceTrapDestination.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Success message of deleted resource.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVHPOVApplianceTrapDestination -Destination 10.45.110.76 -ErrorAction Stop | Remove-HPOVApplianceTrapDestination
</pre>
Remove the specified trap destination.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVHPOVApplianceTrapDestination -Type SNMPv3 | Remove-HPOVApplianceTrapDestination
</pre>
Remove all of the SNMPv3 trap destinations.



### Related Links

* [Get-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrapDestination)
* [New-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceTrapDestination)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVApplianceTrapDestination
<p>
Remove configured appliance SNMP trap destinations.

### SYNTAX
<p>
<pre><code>Remove-HPOVApplianceTrapDestination [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Array&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to remove configured SNMPv1 and/or SNMPv3 trap destinations.

Required permissions: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Override confirmation prompt.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The HPOneView.Appliance.SnmpV1TrapDestination or HPOneView.Appliance.SnmpV3TrapDestination object from Get-HPOVApplianceTrapDestination to remove.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.SnmpV1TrapDestination**_

 Appliance SNMPv1 trap destination from Get-HPOVHPOVApplianceTrapDestination.

 _**HPOneView.Appliance.SnmpV3TrapDestination**_

 Appliance SNMPv3 trap destination from Get-HPOVHPOVApplianceTrapDestination.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Success message of deleted resource.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVHPOVApplianceTrapDestination -Destination 10.45.110.76 -ErrorAction Stop | Remove-HPOVApplianceTrapDestination
</pre>
Remove the specified trap destination.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVHPOVApplianceTrapDestination -Type SNMPv3 | Remove-HPOVApplianceTrapDestination
</pre>
Remove all of the SNMPv3 trap destinations.



### Related Links

* [Get-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrapDestination)
* [New-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceTrapDestination)


***
<div align=right><a href="#Top">Top</a></div>
