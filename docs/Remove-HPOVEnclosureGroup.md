<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVEnclosureGroup
<p>
Remove an enclosure group.

### SYNTAX
<p>
<pre><code>Remove-HPOVEnclosureGroup [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Deletes an enclosure group from the appliance.
An enclosure group cannot be deleted if any enclosures are currently part of that enclosure group.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Specify to forceably remove the resource from the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-EnclosureGroup, -uri, -name]

The Enclosure Group object(s), name(s) or uri(s) to be removed from management.

<table><tbody><tr><td>Aliases</td><td>uri, name, EnclosureGroup, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Collections.ArrayList**_

 Collection of Enclousre Resource Objects

 _**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 Single Enclosure Grou Resource Object



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

A PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$resp = Remove-HPOVEnclosureGroup -enclosureGroup "My-EG" -force
</pre>
Force-remove the enclosure group specifed by name.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$eg = Get-HPOVEnclosureGroup -name "My-EG"
Remove-HPOVEnclosureGroup $enclosureGroup -confirm:$false

</pre>
Remove the enclosure group specifed by $eg. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVEnclosureGroup | Remove-HPOVEnclosureGroup
</pre>
Search for all enclosure groups and remove them from appliance.



### Related Links

* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVEnclosureGroup
<p>
Remove an enclosure group.

### SYNTAX
<p>
<pre><code>Remove-HPOVEnclosureGroup [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Deletes an enclosure group from the appliance.
An enclosure group cannot be deleted if any enclosures are currently part of that enclosure group.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Specify to forceably remove the resource from the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-EnclosureGroup, -uri, -name]

The Enclosure Group object(s), name(s) or uri(s) to be removed from management.

<table><tbody><tr><td>Aliases</td><td>uri, name, EnclosureGroup, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Collections.ArrayList**_

 Collection of Enclousre Resource Objects

 _**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 Single Enclosure Grou Resource Object



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

A PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$resp = Remove-HPOVEnclosureGroup -enclosureGroup "My-EG" -force
</pre>
Force-remove the enclosure group specifed by name.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$eg = Get-HPOVEnclosureGroup -name "My-EG"
Remove-HPOVEnclosureGroup $enclosureGroup -confirm:$false

</pre>
Remove the enclosure group specifed by $eg. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVEnclosureGroup | Remove-HPOVEnclosureGroup
</pre>
Search for all enclosure groups and remove them from appliance.



### Related Links

* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVEnclosureGroup
<p>
Remove an enclosure group.

### SYNTAX
<p>
<pre><code>Remove-HPOVEnclosureGroup [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Deletes an enclosure group from the appliance.
An enclosure group cannot be deleted if any enclosures are currently part of that enclosure group.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Specify to forceably remove the resource from the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-EnclosureGroup, -uri, -name]

The Enclosure Group object(s), name(s) or uri(s) to be removed from management.

<table><tbody><tr><td>Aliases</td><td>uri, name, EnclosureGroup, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Collections.ArrayList**_

 Collection of Enclousre Resource Objects

 _**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 Single Enclosure Grou Resource Object



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

A PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$resp = Remove-HPOVEnclosureGroup -enclosureGroup "My-EG" -force
</pre>
Force-remove the enclosure group specifed by name.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$eg = Get-HPOVEnclosureGroup -name "My-EG"
Remove-HPOVEnclosureGroup $enclosureGroup -confirm:$false

</pre>
Remove the enclosure group specifed by $eg. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVEnclosureGroup | Remove-HPOVEnclosureGroup
</pre>
Search for all enclosure groups and remove them from appliance.



### Related Links

* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
