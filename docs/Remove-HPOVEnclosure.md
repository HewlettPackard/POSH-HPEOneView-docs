<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVEnclosure
<p>
Removes an enclosure and associated devices.

### SYNTAX
<p>
<pre><code>Remove-HPOVEnclosure [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Removes an enclosure, its servers, and interconnects from appliance management


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Set to force-remove the enclosure. For example, if the enclosure is gone or is now being managed by a different appliance, force-removing will remove the enclosure from this appliance without clearing vcmode. 

When the request is accepted by the appliance, it does not return an Async Task Resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name, -enclosure]
The Enclosure object(s) or name(s) to be removed from management.

<table><tbody><tr><td>Aliases</td><td>uri, name, Enclosure, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Collections.ArrayList**_

 Collection of Enclosure Resources

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Single Enclosure resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Removal async task

 _**System.Management.Automation.PSCustomObject**_

 

When using the -Force parameter, a PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVEnclosure -enclosure "Enclosure-1234" -force
Wait-HPOVTaskComplete $task
                        
</pre>
Force-remove the enclosure specifed by name. Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$enclosure = Get-HPOVEnclosure -name "Enclosure1"
Remove-HPOVEnclosure $enclosure -confirm:$false

</pre>
Remove the enclosure specifed by $enclosure. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVEnclosure | Remove-HPOVEnclosure
</pre>
Search for all enclosures and remove them from appliance.



### Related Links

* [Add-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVEnclosure)
* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosure)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)
* [Update-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVEnclosure)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVEnclosure
<p>
Removes an enclosure and associated devices.

### SYNTAX
<p>
<pre><code>Remove-HPOVEnclosure [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Removes an enclosure, its servers, and interconnects from appliance management


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Set to force-remove the enclosure. For example, if the enclosure is gone or is now being managed by a different appliance, force-removing will remove the enclosure from this appliance without clearing vcmode. 

When the request is accepted by the appliance, it does not return an Async Task Resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name, -enclosure]
The Enclosure object(s) or name(s) to be removed from management.

<table><tbody><tr><td>Aliases</td><td>uri, name, Enclosure, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Collections.ArrayList**_

 Collection of Enclosure Resources

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Single Enclosure resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Removal async task

 _**System.Management.Automation.PSCustomObject**_

 

When using the -Force parameter, a PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVEnclosure -enclosure "Enclosure-1234" -force
Wait-HPOVTaskComplete $task
                        
</pre>
Force-remove the enclosure specifed by name. Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$enclosure = Get-HPOVEnclosure -name "Enclosure1"
Remove-HPOVEnclosure $enclosure -confirm:$false

</pre>
Remove the enclosure specifed by $enclosure. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVEnclosure | Remove-HPOVEnclosure
</pre>
Search for all enclosures and remove them from appliance.



### Related Links

* [Add-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVEnclosure)
* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosure)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)
* [Update-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVEnclosure)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVEnclosure
<p>
Removes an enclosure and associated devices.

### SYNTAX
<p>
<pre><code>Remove-HPOVEnclosure [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Removes an enclosure, its servers, and interconnects from appliance management


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Set to force-remove the enclosure. For example, if the enclosure is gone or is now being managed by a different appliance, force-removing will remove the enclosure from this appliance without clearing vcmode. 

When the request is accepted by the appliance, it does not return an Async Task Resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name, -enclosure]
The Enclosure object(s) or name(s) to be removed from management.

<table><tbody><tr><td>Aliases</td><td>uri, name, Enclosure, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Collections.ArrayList**_

 Collection of Enclosure Resources

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Single Enclosure resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Removal async task

 _**System.Management.Automation.PSCustomObject**_

 

When using the -Force parameter, a PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVEnclosure -enclosure "Enclosure-1234" -force
Wait-HPOVTaskComplete $task
                        
</pre>
Force-remove the enclosure specifed by name. Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$enclosure = Get-HPOVEnclosure -name "Enclosure1"
Remove-HPOVEnclosure $enclosure -confirm:$false

</pre>
Remove the enclosure specifed by $enclosure. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVEnclosure | Remove-HPOVEnclosure
</pre>
Search for all enclosures and remove them from appliance.



### Related Links

* [Add-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVEnclosure)
* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosure)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)
* [Update-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVEnclosure)


***
<div align=right><a href="#Top">Top</a></div>
