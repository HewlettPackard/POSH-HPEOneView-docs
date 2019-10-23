<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVEnclosure
<p>
Rename Synergy Frame Name or Rack Name.

### SYNTAX
<p>
<pre><code>Set-HPOVEnclosure [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-RackName] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to set a Synergy Frame/Enclosure Name and/or the Synergy Rack Name to provided values.  Each requires a seperate async task to complete.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Encl, -Enclosure]

A Syngery Frame/Enclosure Object.

<table><tbody><tr><td>Aliases</td><td>Enclosure, Encl</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The new name of a Synergy Frame.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RackName &lt;String&gt;<p>
The new name of ta Synergy Rack.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Single Syngery Enclosure resource



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Single async task resource for resource name update

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of async tasks



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEnclosure -Name "0000A66101" -ErrorAction Stop | Set-HPOVEnclosure -Name "MyEnclName1" | Wait-HPOVTaskComplete
</pre>
Set the provided Synergy Frame resource Name to a new value.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVEnclosure -Name "0000A66101" -ErrorAction Stop | Set-HPOVEnclosure -Name "MyEnclName1" -RackName "DC11-Rack4A" | Wait-HPOVTaskComplete
</pre>
Set the provided Synergy Frame resource Name and RackName to a new value.



### Related Links

* [Add-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVEnclosure)
* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosure)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)
* [Update-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVEnclosure)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVEnclosure
<p>
Rename Synergy Frame Name or Rack Name.

### SYNTAX
<p>
<pre><code>Set-HPOVEnclosure [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-RackName] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to set a Synergy Frame/Enclosure Name and/or the Synergy Rack Name to provided values.  Each requires a seperate async task to complete.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Encl, -Enclosure]

A Syngery Frame/Enclosure Object.

<table><tbody><tr><td>Aliases</td><td>Enclosure, Encl</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The new name of a Synergy Frame.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RackName &lt;String&gt;<p>
The new name of ta Synergy Rack.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Single Syngery Enclosure resource



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Single async task resource for resource name update

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of async tasks



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEnclosure -Name "0000A66101" -ErrorAction Stop | Set-HPOVEnclosure -Name "MyEnclName1" | Wait-HPOVTaskComplete
</pre>
Set the provided Synergy Frame resource Name to a new value.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVEnclosure -Name "0000A66101" -ErrorAction Stop | Set-HPOVEnclosure -Name "MyEnclName1" -RackName "DC11-Rack4A" | Wait-HPOVTaskComplete
</pre>
Set the provided Synergy Frame resource Name and RackName to a new value.



### Related Links

* [Add-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVEnclosure)
* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosure)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)
* [Update-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVEnclosure)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVEnclosure
<p>
Rename Synergy Frame Name or Rack Name.

### SYNTAX
<p>
<pre><code>Set-HPOVEnclosure [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-RackName] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to set a Synergy Frame/Enclosure Name and/or the Synergy Rack Name to provided values.  Each requires a seperate async task to complete.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Encl, -Enclosure]

A Syngery Frame/Enclosure Object.

<table><tbody><tr><td>Aliases</td><td>Enclosure, Encl</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The new name of a Synergy Frame.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RackName &lt;String&gt;<p>
The new name of ta Synergy Rack.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Single Syngery Enclosure resource



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Single async task resource for resource name update

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of async tasks



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEnclosure -Name "0000A66101" -ErrorAction Stop | Set-HPOVEnclosure -Name "MyEnclName1" | Wait-HPOVTaskComplete
</pre>
Set the provided Synergy Frame resource Name to a new value.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVEnclosure -Name "0000A66101" -ErrorAction Stop | Set-HPOVEnclosure -Name "MyEnclName1" -RackName "DC11-Rack4A" | Wait-HPOVTaskComplete
</pre>
Set the provided Synergy Frame resource Name and RackName to a new value.



### Related Links

* [Add-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVEnclosure)
* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosure)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)
* [Update-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVEnclosure)


***
<div align=right><a href="#Top">Top</a></div>
