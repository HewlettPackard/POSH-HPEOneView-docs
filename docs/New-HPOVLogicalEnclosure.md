<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVLogicalEnclosure
<p>
Create a Logical Enclosure.

### SYNTAX
<p>
<pre><code>New-HPOVLogicalEnclosure [-Name] &lt;String&gt; [-Enclosure] &lt;Object&gt; [-EnclosureGroup] &lt;Object&gt; [-FirmwareBaseline] &lt;String&gt; [-ForceFirmwareBaseline] &lt;Boolean&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A logical enclosure represents a logical view of a single enclosure with an enclosure group serving as a template. If the intended configuration in the logical enclosure does not match the actual configuration on the enclosures, the logical enclosure becomes inconsistent. Use the Logical Enclosures screen to manage firmware, configuration scripts, create a support dump, and to apply updates made from the Enclosure Groups screen to the enclosures in the logical enclosure.

A logical enclosure is automatically created when a c7000 enclosure is added.

Use this Cmdlet to define a new Logical Enclosure that will include multiple Synergy Frames that share the same Virtual Connect Fabric Domain.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enclosure &lt;Object&gt;<p>
One of the connected Frames.  The Interlink Topology will be discovered to include the other Frame members.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
The Enclosure Group resource to deploy the policy from.

<table><tbody><tr><td>Aliases</td><td>eg</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FirmwareBaseline &lt;String&gt;<p>
Provide the Firmware Baseline object to use with the Logical Enclosure is being created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ForceFirmwareBaseline &lt;Boolean&gt;<p>
Specify to force the installation of firmware if the same version is found or if you wish to downgrade from a newer installed version.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
A name for the new Logical Enclosure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Single Enclosure (Synergy Frame) resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$EG = Get-HPOVEnclosureGroup -Name "Prod Synergy EG 1"
Get-HPOVEnclosure -Name 0000A66101 | New-HPOVLogicalEnclosure "My Synergy LE 1" -EnclosureGroup $EG

</pre>
Create a new Logical Enclosure, "My Synergy LE 1", using the specified Enclosure Group and a specific Synergy Frame.



### Related Links

* [Get-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalEnclosure)
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVLogicalEnclosure
<p>
Create a Logical Enclosure.

### SYNTAX
<p>
<pre><code>New-HPOVLogicalEnclosure [-Name] &lt;String&gt; [-Enclosure] &lt;Object&gt; [-EnclosureGroup] &lt;Object&gt; [-FirmwareBaseline] &lt;String&gt; [-ForceFirmwareBaseline] &lt;Boolean&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A logical enclosure represents a logical view of a single enclosure with an enclosure group serving as a template. If the intended configuration in the logical enclosure does not match the actual configuration on the enclosures, the logical enclosure becomes inconsistent. Use the Logical Enclosures screen to manage firmware, configuration scripts, create a support dump, and to apply updates made from the Enclosure Groups screen to the enclosures in the logical enclosure.

A logical enclosure is automatically created when a c7000 enclosure is added.

Use this Cmdlet to define a new Logical Enclosure that will include multiple Synergy Frames that share the same Virtual Connect Fabric Domain.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enclosure &lt;Object&gt;<p>
One of the connected Frames.  The Interlink Topology will be discovered to include the other Frame members.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
The Enclosure Group resource to deploy the policy from.

<table><tbody><tr><td>Aliases</td><td>eg</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FirmwareBaseline &lt;String&gt;<p>
Provide the Firmware Baseline object to use with the Logical Enclosure is being created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ForceFirmwareBaseline &lt;Boolean&gt;<p>
Specify to force the installation of firmware if the same version is found or if you wish to downgrade from a newer installed version.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
A name for the new Logical Enclosure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Single Enclosure (Synergy Frame) resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$EG = Get-HPOVEnclosureGroup -Name "Prod Synergy EG 1"
Get-HPOVEnclosure -Name 0000A66101 | New-HPOVLogicalEnclosure "My Synergy LE 1" -EnclosureGroup $EG

</pre>
Create a new Logical Enclosure, "My Synergy LE 1", using the specified Enclosure Group and a specific Synergy Frame.



### Related Links

* [Get-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalEnclosure)
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVLogicalEnclosure
<p>
Create a Logical Enclosure.

### SYNTAX
<p>
<pre><code>New-HPOVLogicalEnclosure [-Name] &lt;String&gt; [-Enclosure] &lt;Object&gt; [-EnclosureGroup] &lt;Object&gt; [-FirmwareBaseline] &lt;String&gt; [-ForceFirmwareBaseline] &lt;Boolean&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A logical enclosure represents a logical view of a single enclosure with an enclosure group serving as a template. If the intended configuration in the logical enclosure does not match the actual configuration on the enclosures, the logical enclosure becomes inconsistent. Use the Logical Enclosures screen to manage firmware, configuration scripts, create a support dump, and to apply updates made from the Enclosure Groups screen to the enclosures in the logical enclosure.

A logical enclosure is automatically created when a c7000 enclosure is added.

Use this Cmdlet to define a new Logical Enclosure that will include multiple Synergy Frames that share the same Virtual Connect Fabric Domain.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enclosure &lt;Object&gt;<p>
One of the connected Frames.  The Interlink Topology will be discovered to include the other Frame members.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
The Enclosure Group resource to deploy the policy from.

<table><tbody><tr><td>Aliases</td><td>eg</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FirmwareBaseline &lt;String&gt;<p>
Provide the Firmware Baseline object to use with the Logical Enclosure is being created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ForceFirmwareBaseline &lt;Boolean&gt;<p>
Specify to force the installation of firmware if the same version is found or if you wish to downgrade from a newer installed version.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
A name for the new Logical Enclosure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Single Enclosure (Synergy Frame) resource object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$EG = Get-HPOVEnclosureGroup -Name "Prod Synergy EG 1"
Get-HPOVEnclosure -Name 0000A66101 | New-HPOVLogicalEnclosure "My Synergy LE 1" -EnclosureGroup $EG

</pre>
Create a new Logical Enclosure, "My Synergy LE 1", using the specified Enclosure Group and a specific Synergy Frame.



### Related Links

* [Get-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalEnclosure)
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
