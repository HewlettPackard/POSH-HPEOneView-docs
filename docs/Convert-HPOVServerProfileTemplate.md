<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Convert-HPOVServerProfileTemplate
<p>
Migrate Server Profile Template.

### SYNTAX
<p>
<pre><code>Convert-HPOVServerProfileTemplate [-InputObject] &lt;Object&gt;[ [-ServerHardwareType] &lt;Object&gt;][ [-EnclosureGroup] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to change the Server Hardware Type and/or Enclosure Group set within the Server Profile Template.  Changing to a different server hardware type may change the capabilities available to the server profile. Changing the enclosure group may change the connections which are available for the profile.

	* The server hardware field will be set to "unassigned", requiring re-seletion of server hardware.
	* It may also cause incompatibilities with the current configuration.
	* All deployed connections will have their port assignment set to "Auto".
	* Any incompatibilities will be flagged when the server profile is committed.
	* If the new server hardware type does not support the local storage configuration, some storage may be lost.
	* If the enclosure group is changed, mezzanine storage for HPE Synergy is lost and the disk drives are released.
	* To prevent data loss, cancel this operation and backup data before applying the profile.
	* Any change in the server hardware type will lead to the associated volume loss.

Required Permissions: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Override confirmation prompt.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Specify the target HPOneView.EnclosureGroup resource object.  By changing the Enclosure Group, assigned Networks with Connections that do not exist on in the associated Logical Interconnect Group(s), the Connection may not be assigned to an available FlexNIC.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The HPOneView.ServerProfileTemplate object from Get-HPOVServerProfileTemplate.

<table><tbody><tr><td>Aliases</td><td>ServerProfileTemplate, SPT</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerHardwareType &lt;Object&gt;<p>
Specify the HPOneView.ServerHardwareType object to transform to.  BIOS Settings will be reset to defaults, and Connection FlexNIC assignment will be reset back to Auto.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>
default content

<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfileTemplate**_

 The Server Profile Template resource object to transform.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async Task resource to monitor progress of the Server Profile transformation.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$SPT = Get-HPOVServerProfileTemplate -Name "My Template Name" -ErrorAction Stop
$NewServerHardwareType = Get-HPOVServerHardwareType -Name "SY480 Gen10 2" -ErrorAction Stop
Convert-HPOVServerProfileTemplate -InputObject $SPT -ServerHardwareType $NewServerHardwareType
</pre>
Transform the specified server profile template object to a different server hardware type resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$SPT = Get-HPOVServerProfileTemplate -Name "My Template Name" -ErrorAction Stop
$NewEnclosureGroup = Get-HPOVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
Convert-HPOVServerProfileTemplate -InputObject $SPT -EnclosureGroup $NewEnclosureGroup
</pre>
Transform the specified server profile template object to a different enclosure group resource.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$SPT = Get-HPOVServerProfileTemplate -Name "My Template Name" -ErrorAction Stop
$NewEnclosureGroup = Get-HPOVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
$NewServerHardwareType = Get-HPOVServerHardwareType -Name "BL460 Gen9 3" -ErrorAction Stop
Convert-HPOVServerProfileTemplate -InputObject $SPT -EnclosureGroup $NewEnclosureGroup -ServerHardwareType $NewServerHardwareType
</pre>
Transform the specified server profile template object to a different enclosure group and server hardware type resource.



### Related Links

* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Convert-HPOVServerProfileTemplate
<p>
Migrate Server Profile Template.

### SYNTAX
<p>
<pre><code>Convert-HPOVServerProfileTemplate [-InputObject] &lt;Object&gt;[ [-ServerHardwareType] &lt;Object&gt;][ [-EnclosureGroup] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to change the Server Hardware Type and/or Enclosure Group set within the Server Profile Template.  Changing to a different server hardware type may change the capabilities available to the server profile. Changing the enclosure group may change the connections which are available for the profile.

	* The server hardware field will be set to "unassigned", requiring re-seletion of server hardware.
	* It may also cause incompatibilities with the current configuration.
	* All deployed connections will have their port assignment set to "Auto".
	* Any incompatibilities will be flagged when the server profile is committed.
	* If the new server hardware type does not support the local storage configuration, some storage may be lost.
	* If the enclosure group is changed, mezzanine storage for HPE Synergy is lost and the disk drives are released.
	* To prevent data loss, cancel this operation and backup data before applying the profile.
	* Any change in the server hardware type will lead to the associated volume loss.

Required Permissions: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Override confirmation prompt.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Specify the target HPOneView.EnclosureGroup resource object.  By changing the Enclosure Group, assigned Networks with Connections that do not exist on in the associated Logical Interconnect Group(s), the Connection may not be assigned to an available FlexNIC.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The HPOneView.ServerProfileTemplate object from Get-HPOVServerProfileTemplate.

<table><tbody><tr><td>Aliases</td><td>ServerProfileTemplate, SPT</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerHardwareType &lt;Object&gt;<p>
Specify the HPOneView.ServerHardwareType object to transform to.  BIOS Settings will be reset to defaults, and Connection FlexNIC assignment will be reset back to Auto.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>
default content

<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfileTemplate**_

 The Server Profile Template resource object to transform.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async Task resource to monitor progress of the Server Profile transformation.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$SPT = Get-HPOVServerProfileTemplate -Name "My Template Name" -ErrorAction Stop
$NewServerHardwareType = Get-HPOVServerHardwareType -Name "SY480 Gen10 2" -ErrorAction Stop
Convert-HPOVServerProfileTemplate -InputObject $SPT -ServerHardwareType $NewServerHardwareType
</pre>
Transform the specified server profile template object to a different server hardware type resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$SPT = Get-HPOVServerProfileTemplate -Name "My Template Name" -ErrorAction Stop
$NewEnclosureGroup = Get-HPOVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
Convert-HPOVServerProfileTemplate -InputObject $SPT -EnclosureGroup $NewEnclosureGroup
</pre>
Transform the specified server profile template object to a different enclosure group resource.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$SPT = Get-HPOVServerProfileTemplate -Name "My Template Name" -ErrorAction Stop
$NewEnclosureGroup = Get-HPOVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
$NewServerHardwareType = Get-HPOVServerHardwareType -Name "BL460 Gen9 3" -ErrorAction Stop
Convert-HPOVServerProfileTemplate -InputObject $SPT -EnclosureGroup $NewEnclosureGroup -ServerHardwareType $NewServerHardwareType
</pre>
Transform the specified server profile template object to a different enclosure group and server hardware type resource.



### Related Links

* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Convert-HPOVServerProfileTemplate
<p>
Migrate Server Profile Template.

### SYNTAX
<p>
<pre><code>Convert-HPOVServerProfileTemplate [-InputObject] &lt;Object&gt;[ [-ServerHardwareType] &lt;Object&gt;][ [-EnclosureGroup] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to change the Server Hardware Type and/or Enclosure Group set within the Server Profile Template.  Changing to a different server hardware type may change the capabilities available to the server profile. Changing the enclosure group may change the connections which are available for the profile.

	* The server hardware field will be set to "unassigned", requiring re-seletion of server hardware.
	* It may also cause incompatibilities with the current configuration.
	* All deployed connections will have their port assignment set to "Auto".
	* Any incompatibilities will be flagged when the server profile is committed.
	* If the new server hardware type does not support the local storage configuration, some storage may be lost.
	* If the enclosure group is changed, mezzanine storage for HPE Synergy is lost and the disk drives are released.
	* To prevent data loss, cancel this operation and backup data before applying the profile.
	* Any change in the server hardware type will lead to the associated volume loss.

Required Permissions: Infrastructure administrator or Server administrator.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Override confirmation prompt.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Specify the target HPOneView.EnclosureGroup resource object.  By changing the Enclosure Group, assigned Networks with Connections that do not exist on in the associated Logical Interconnect Group(s), the Connection may not be assigned to an available FlexNIC.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The HPOneView.ServerProfileTemplate object from Get-HPOVServerProfileTemplate.

<table><tbody><tr><td>Aliases</td><td>ServerProfileTemplate, SPT</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerHardwareType &lt;Object&gt;<p>
Specify the HPOneView.ServerHardwareType object to transform to.  BIOS Settings will be reset to defaults, and Connection FlexNIC assignment will be reset back to Auto.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>
default content

<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfileTemplate**_

 The Server Profile Template resource object to transform.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async Task resource to monitor progress of the Server Profile transformation.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$SPT = Get-HPOVServerProfileTemplate -Name "My Template Name" -ErrorAction Stop
$NewServerHardwareType = Get-HPOVServerHardwareType -Name "SY480 Gen10 2" -ErrorAction Stop
Convert-HPOVServerProfileTemplate -InputObject $SPT -ServerHardwareType $NewServerHardwareType
</pre>
Transform the specified server profile template object to a different server hardware type resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$SPT = Get-HPOVServerProfileTemplate -Name "My Template Name" -ErrorAction Stop
$NewEnclosureGroup = Get-HPOVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
Convert-HPOVServerProfileTemplate -InputObject $SPT -EnclosureGroup $NewEnclosureGroup
</pre>
Transform the specified server profile template object to a different enclosure group resource.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$SPT = Get-HPOVServerProfileTemplate -Name "My Template Name" -ErrorAction Stop
$NewEnclosureGroup = Get-HPOVEnclosureGroup -Name "Dev EG 1" -ErrorAction Stop
$NewServerHardwareType = Get-HPOVServerHardwareType -Name "BL460 Gen9 3" -ErrorAction Stop
Convert-HPOVServerProfileTemplate -InputObject $SPT -EnclosureGroup $NewEnclosureGroup -ServerHardwareType $NewServerHardwareType
</pre>
Transform the specified server profile template object to a different enclosure group and server hardware type resource.



### Related Links

* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)


***
<div align=right><a href="#Top">Top</a></div>
