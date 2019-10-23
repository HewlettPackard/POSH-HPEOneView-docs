<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVLdapGroup
<p>
Remove Directory Group.

### SYNTAX
<p>
<pre><code>Remove-HPOVLdapGroup [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Remove Directory Group(s) from the appliance. Can provide Group Name or Object for removal.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-g, -Group, -Name]

Configured Directory Group Name.

<table><tbody><tr><td>Aliases</td><td>g, Group, Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Single Group resource object

 _**System.Collections.ArrayList**_

 Collection of Group resource objects



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

A PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Remove-HPOVLdapGroup -Group "My Directory Group1"
</pre>
Remove "My Directroy Group1" from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLdapGroup | Remove-HPOVLdapGroup
</pre>
Get all groups and remove them from all connected appliances.



### Related Links

* [Get-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapGroup)
* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup)
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole)
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVLdapGroup
<p>
Remove Directory Group.

### SYNTAX
<p>
<pre><code>Remove-HPOVLdapGroup [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Remove Directory Group(s) from the appliance. Can provide Group Name or Object for removal.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-g, -Group, -Name]

Configured Directory Group Name.

<table><tbody><tr><td>Aliases</td><td>g, Group, Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Single Group resource object

 _**System.Collections.ArrayList**_

 Collection of Group resource objects



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

A PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Remove-HPOVLdapGroup -Group "My Directory Group1"
</pre>
Remove "My Directroy Group1" from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLdapGroup | Remove-HPOVLdapGroup
</pre>
Get all groups and remove them from all connected appliances.



### Related Links

* [Get-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapGroup)
* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup)
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole)
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVLdapGroup
<p>
Remove Directory Group.

### SYNTAX
<p>
<pre><code>Remove-HPOVLdapGroup [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Remove Directory Group(s) from the appliance. Can provide Group Name or Object for removal.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-g, -Group, -Name]

Configured Directory Group Name.

<table><tbody><tr><td>Aliases</td><td>g, Group, Name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Single Group resource object

 _**System.Collections.ArrayList**_

 Collection of Group resource objects



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

A PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Remove-HPOVLdapGroup -Group "My Directory Group1"
</pre>
Remove "My Directroy Group1" from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLdapGroup | Remove-HPOVLdapGroup
</pre>
Get all groups and remove them from all connected appliances.



### Related Links

* [Get-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapGroup)
* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup)
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole)
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups)


***
<div align=right><a href="#Top">Top</a></div>
