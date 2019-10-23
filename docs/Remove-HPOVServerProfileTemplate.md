<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVServerProfileTemplate
<p>
Delete Server Profile Template Resource(s).

### SYNTAX
<p>
<pre><code>Remove-HPOVServerProfileTemplate [-ServerProfileTemplate] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Delete one or multiple Server Profile Template resource(s).  A Server Profile Template cannot be removed if there are linked Server Profiles.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfileTemplate &lt;Object&gt;<p>
Aliases [-spt, -name]
The server profile template object(s) or name(s) to be removed.

<table><tbody><tr><td>Aliases</td><td>spt, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -force &lt;SwitchParameter&gt;<p>
Set to force-delete the profile.  For example, force-remove will successfully remove the profile, even when connectivity has been lost to the server or enclosure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfileTemplate [System.Management.Automation.PSCustomObject]**_

 Server Profile Template resource object.

 _**System.String**_

 Server Profile Template resource name.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

A task resource that can be monitored for status of the profile deletion

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple Async task resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVServerProfileTemplate -ServerProfileTemplate "My Template Profile"
Wait-HPOVTaskComplete $task.uri
                        
</pre>
Remove the profile template specifed by name. Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$spt = Get-HPOVServerProfileTemplate -name "My Template Profile"
Remove-HPOVServerProfileTemplate $spt -confirm:$false
</pre>
Remove the profile template specifed by $spt. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVServerProfileTemplate | Remove-HPOVServerProfileTemplate
</pre>
Search for all profile template resources and remove them from appliance.



### Related Links

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVServerProfileTemplate
<p>
Delete Server Profile Template Resource(s).

### SYNTAX
<p>
<pre><code>Remove-HPOVServerProfileTemplate [-ServerProfileTemplate] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Delete one or multiple Server Profile Template resource(s).  A Server Profile Template cannot be removed if there are linked Server Profiles.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfileTemplate &lt;Object&gt;<p>
Aliases [-spt, -name]
The server profile template object(s) or name(s) to be removed.

<table><tbody><tr><td>Aliases</td><td>spt, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -force &lt;SwitchParameter&gt;<p>
Set to force-delete the profile.  For example, force-remove will successfully remove the profile, even when connectivity has been lost to the server or enclosure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfileTemplate [System.Management.Automation.PSCustomObject]**_

 Server Profile Template resource object.

 _**System.String**_

 Server Profile Template resource name.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

A task resource that can be monitored for status of the profile deletion

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple Async task resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVServerProfileTemplate -ServerProfileTemplate "My Template Profile"
Wait-HPOVTaskComplete $task.uri
                        
</pre>
Remove the profile template specifed by name. Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$spt = Get-HPOVServerProfileTemplate -name "My Template Profile"
Remove-HPOVServerProfileTemplate $spt -confirm:$false
</pre>
Remove the profile template specifed by $spt. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVServerProfileTemplate | Remove-HPOVServerProfileTemplate
</pre>
Search for all profile template resources and remove them from appliance.



### Related Links

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVServerProfileTemplate
<p>
Delete Server Profile Template Resource(s).

### SYNTAX
<p>
<pre><code>Remove-HPOVServerProfileTemplate [-ServerProfileTemplate] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Delete one or multiple Server Profile Template resource(s).  A Server Profile Template cannot be removed if there are linked Server Profiles.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfileTemplate &lt;Object&gt;<p>
Aliases [-spt, -name]
The server profile template object(s) or name(s) to be removed.

<table><tbody><tr><td>Aliases</td><td>spt, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -force &lt;SwitchParameter&gt;<p>
Set to force-delete the profile.  For example, force-remove will successfully remove the profile, even when connectivity has been lost to the server or enclosure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfileTemplate [System.Management.Automation.PSCustomObject]**_

 Server Profile Template resource object.

 _**System.String**_

 Server Profile Template resource name.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

A task resource that can be monitored for status of the profile deletion

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple Async task resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVServerProfileTemplate -ServerProfileTemplate "My Template Profile"
Wait-HPOVTaskComplete $task.uri
                        
</pre>
Remove the profile template specifed by name. Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$spt = Get-HPOVServerProfileTemplate -name "My Template Profile"
Remove-HPOVServerProfileTemplate $spt -confirm:$false
</pre>
Remove the profile template specifed by $spt. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVServerProfileTemplate | Remove-HPOVServerProfileTemplate
</pre>
Search for all profile template resources and remove them from appliance.



### Related Links

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)


***
<div align=right><a href="#Top">Top</a></div>
