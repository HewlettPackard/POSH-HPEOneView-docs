<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVLogicalEnclosure
<p>
Remove a Logical Enclosure.

### SYNTAX
<p>
<pre><code>Remove-HPOVLogicalEnclosure [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet willRemove a Logical Enclosure.  Removing a Logical Enclosure is only supported with Synergy.  If a C7000 Enclosure needs to be removed, use the Remove-HPOVEnclosure Cmdlet.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Forcefully remove the Logical Enclosure resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-uri, -name-, le]

Provide the Logical Enclosure name, URI or Object, or [System.Collections.ArrayList ] of names, URIs or Objects to remove.

<table><tbody><tr><td>Aliases</td><td>uri, name, le, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]**_

 Single Logical Enclosure resource

 _**System.Collections.ArrayList**_

 Multiple Logical Enclosure resources



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalEnclosure LogicalEnclosure1 | Remove-HPOVLogicalEnclosure
</pre>
Remove "LogicalEnclosure1" Logical Enclosure resource.



### Related Links

* [Get-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalEnclosure)
* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVLogicalEnclosure
<p>
Remove a Logical Enclosure.

### SYNTAX
<p>
<pre><code>Remove-HPOVLogicalEnclosure [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet willRemove a Logical Enclosure.  Removing a Logical Enclosure is only supported with Synergy.  If a C7000 Enclosure needs to be removed, use the Remove-HPOVEnclosure Cmdlet.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Forcefully remove the Logical Enclosure resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-uri, -name-, le]

Provide the Logical Enclosure name, URI or Object, or [System.Collections.ArrayList ] of names, URIs or Objects to remove.

<table><tbody><tr><td>Aliases</td><td>uri, name, le, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]**_

 Single Logical Enclosure resource

 _**System.Collections.ArrayList**_

 Multiple Logical Enclosure resources



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalEnclosure LogicalEnclosure1 | Remove-HPOVLogicalEnclosure
</pre>
Remove "LogicalEnclosure1" Logical Enclosure resource.



### Related Links

* [Get-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalEnclosure)
* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVLogicalEnclosure
<p>
Remove a Logical Enclosure.

### SYNTAX
<p>
<pre><code>Remove-HPOVLogicalEnclosure [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet willRemove a Logical Enclosure.  Removing a Logical Enclosure is only supported with Synergy.  If a C7000 Enclosure needs to be removed, use the Remove-HPOVEnclosure Cmdlet.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Forcefully remove the Logical Enclosure resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-uri, -name-, le]

Provide the Logical Enclosure name, URI or Object, or [System.Collections.ArrayList ] of names, URIs or Objects to remove.

<table><tbody><tr><td>Aliases</td><td>uri, name, le, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]**_

 Single Logical Enclosure resource

 _**System.Collections.ArrayList**_

 Multiple Logical Enclosure resources



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalEnclosure LogicalEnclosure1 | Remove-HPOVLogicalEnclosure
</pre>
Remove "LogicalEnclosure1" Logical Enclosure resource.



### Related Links

* [Get-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalEnclosure)
* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
