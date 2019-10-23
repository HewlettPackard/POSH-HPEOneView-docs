<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVLogicalEnclosure
<p>
Modify a configured Logical Enclosure resource.

### SYNTAX
<p>
<pre><code>Set-HPOVLogicalEnclosure [-InputObject] &lt;Object&gt;[ [-EnclosureGroup] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVLogicalEnclosure [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-ConfigurationScript] &lt;String[]&gt;][ [-EnclosureGroup] &lt;Object&gt;][ [-PowerMode] &lt;String&gt;][ [-AmbientTemperatureSetting] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A logical enclosure represents a logical view of a single enclosure with an enclosure group serving as a template. If the intended configuration in the logical enclosure does not match the actual configuration on the enclosures, the logical enclosure becomes inconsistent. Use the Logical Enclosures screen to manage firmware, configuration scripts, create a support dump, and to apply updates made from the Enclosure Groups screen to the enclosures in the logical enclosure.

A logical enclosure is automatically created when a c7000 enclosure is added.

Use this Cmdlet to modify an existing Logical Enclosure.


### Parameters

-AmbientTemperatureSetting &lt;String&gt;<p>
The ambient temperature mode describing the environment in which the logical enclosure should be optimized to operate. When not specified, a default value of Standard is assumed.

Allowed values:

	* ASHRAE_A3 - Extended ambient temperatures up to 40C/104F degrees.
	* ASHRAE_A4 - Extended ambient temperatures up to 45C/113F degrees.
	* Standard - Expected ambient temperatures up to 35C/95F degrees.
	* Telco - Extended ambient temperatures up to 40C/104F degrees and operation extremes up to 55C/131F degrees.


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConfigurationScript &lt;String[]&gt;<p>
Specify a new HPE BladeSystem c-Class Onboard Administrator configuration script to set.  This is not supported with HPE Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Associate the Logical Enclosure with a new Enclosure Group.

<table><tbody><tr><td>Aliases</td><td>eg</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Logical Enclosure resource from Get-HPOVLogicalEnclosure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify a new Logical Enclosure name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerMode &lt;String&gt;<p>
Change the Power Mode of the Logical Enclosure.

Allowed values:

	* RedundantPowerFeed - There are at least twice as many power supplies as are necessary (n + n).
	* RedundantPowerSupply - There is at least 1 more power supply than is necessary (n + 1).


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure**_

 HPE Syngery Logical Enclosure resource from Get-HPOVLogicalEnclosure.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalEnclosure -Name OriginalName | Set-HPOVLogicalEnclosure -Name NewName
</pre>
Change the Logical Enclosure name.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalEnclosure -Name OriginalName | Set-HPOVLogicalEnclosure -AmbientTemperatureSetting ASHRAE_A3
</pre>
Change the Logical Enclosure ambient temperature setting.



### Related Links

* [Get-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalEnclosure)
* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure)
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVLogicalEnclosure
<p>
Modify a configured Logical Enclosure resource.

### SYNTAX
<p>
<pre><code>Set-HPOVLogicalEnclosure [-InputObject] &lt;Object&gt;[ [-EnclosureGroup] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVLogicalEnclosure [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-ConfigurationScript] &lt;String[]&gt;][ [-EnclosureGroup] &lt;Object&gt;][ [-PowerMode] &lt;String&gt;][ [-AmbientTemperatureSetting] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A logical enclosure represents a logical view of a single enclosure with an enclosure group serving as a template. If the intended configuration in the logical enclosure does not match the actual configuration on the enclosures, the logical enclosure becomes inconsistent. Use the Logical Enclosures screen to manage firmware, configuration scripts, create a support dump, and to apply updates made from the Enclosure Groups screen to the enclosures in the logical enclosure.

A logical enclosure is automatically created when a c7000 enclosure is added.

Use this Cmdlet to modify an existing Logical Enclosure.


### Parameters

-AmbientTemperatureSetting &lt;String&gt;<p>
The ambient temperature mode describing the environment in which the logical enclosure should be optimized to operate. When not specified, a default value of Standard is assumed.

Allowed values:

	* ASHRAE_A3 - Extended ambient temperatures up to 40C/104F degrees.
	* ASHRAE_A4 - Extended ambient temperatures up to 45C/113F degrees.
	* Standard - Expected ambient temperatures up to 35C/95F degrees.
	* Telco - Extended ambient temperatures up to 40C/104F degrees and operation extremes up to 55C/131F degrees.


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConfigurationScript &lt;String[]&gt;<p>
Specify a new HPE BladeSystem c-Class Onboard Administrator configuration script to set.  This is not supported with HPE Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Associate the Logical Enclosure with a new Enclosure Group.

<table><tbody><tr><td>Aliases</td><td>eg</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Logical Enclosure resource from Get-HPOVLogicalEnclosure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify a new Logical Enclosure name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerMode &lt;String&gt;<p>
Change the Power Mode of the Logical Enclosure.

Allowed values:

	* RedundantPowerFeed - There are at least twice as many power supplies as are necessary (n + n).
	* RedundantPowerSupply - There is at least 1 more power supply than is necessary (n + 1).


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure**_

 HPE Syngery Logical Enclosure resource from Get-HPOVLogicalEnclosure.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalEnclosure -Name OriginalName | Set-HPOVLogicalEnclosure -Name NewName
</pre>
Change the Logical Enclosure name.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalEnclosure -Name OriginalName | Set-HPOVLogicalEnclosure -AmbientTemperatureSetting ASHRAE_A3
</pre>
Change the Logical Enclosure ambient temperature setting.



### Related Links

* [Get-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalEnclosure)
* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure)
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVLogicalEnclosure
<p>
Modify a configured Logical Enclosure resource.

### SYNTAX
<p>
<pre><code>Set-HPOVLogicalEnclosure [-InputObject] &lt;Object&gt;[ [-EnclosureGroup] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVLogicalEnclosure [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-ConfigurationScript] &lt;String[]&gt;][ [-EnclosureGroup] &lt;Object&gt;][ [-PowerMode] &lt;String&gt;][ [-AmbientTemperatureSetting] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A logical enclosure represents a logical view of a single enclosure with an enclosure group serving as a template. If the intended configuration in the logical enclosure does not match the actual configuration on the enclosures, the logical enclosure becomes inconsistent. Use the Logical Enclosures screen to manage firmware, configuration scripts, create a support dump, and to apply updates made from the Enclosure Groups screen to the enclosures in the logical enclosure.

A logical enclosure is automatically created when a c7000 enclosure is added.

Use this Cmdlet to modify an existing Logical Enclosure.


### Parameters

-AmbientTemperatureSetting &lt;String&gt;<p>
The ambient temperature mode describing the environment in which the logical enclosure should be optimized to operate. When not specified, a default value of Standard is assumed.

Allowed values:

	* ASHRAE_A3 - Extended ambient temperatures up to 40C/104F degrees.
	* ASHRAE_A4 - Extended ambient temperatures up to 45C/113F degrees.
	* Standard - Expected ambient temperatures up to 35C/95F degrees.
	* Telco - Extended ambient temperatures up to 40C/104F degrees and operation extremes up to 55C/131F degrees.


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConfigurationScript &lt;String[]&gt;<p>
Specify a new HPE BladeSystem c-Class Onboard Administrator configuration script to set.  This is not supported with HPE Synergy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Associate the Logical Enclosure with a new Enclosure Group.

<table><tbody><tr><td>Aliases</td><td>eg</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Logical Enclosure resource from Get-HPOVLogicalEnclosure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Specify a new Logical Enclosure name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerMode &lt;String&gt;<p>
Change the Power Mode of the Logical Enclosure.

Allowed values:

	* RedundantPowerFeed - There are at least twice as many power supplies as are necessary (n + n).
	* RedundantPowerSupply - There is at least 1 more power supply than is necessary (n + 1).


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure**_

 HPE Syngery Logical Enclosure resource from Get-HPOVLogicalEnclosure.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalEnclosure -Name OriginalName | Set-HPOVLogicalEnclosure -Name NewName
</pre>
Change the Logical Enclosure name.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalEnclosure -Name OriginalName | Set-HPOVLogicalEnclosure -AmbientTemperatureSetting ASHRAE_A3
</pre>
Change the Logical Enclosure ambient temperature setting.



### Related Links

* [Get-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalEnclosure)
* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure)
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
