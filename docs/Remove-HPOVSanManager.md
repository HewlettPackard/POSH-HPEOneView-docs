<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVSanManager
<p>
Remove a SAN Manager.

### SYNTAX
<p>
<pre><code>Remove-HPOVSanManager [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to remove the specified SAN Manager from the appliance.  Before removing a SAN Manager, the Managed SAN resource must be removed from any configured FC or FCoE Network resources.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Name, -SanManager]

Managed SAN resource object or name to remove.

<table><tbody><tr><td>Aliases</td><td>Name, SanManager</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

 SAN Manager resource object(s)



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

A PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Remove-HPOVSanManager bna.contoso.com
</pre>
Remove the bna.contoso.com SAN Manager from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVSanManager | Remove-HPOVSanManager
</pre>
Remove all SAN Managers from all connected appliances.



### Related Links

* [Add-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVSanManager)
* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager)
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager)
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVSanManager
<p>
Remove a SAN Manager.

### SYNTAX
<p>
<pre><code>Remove-HPOVSanManager [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to remove the specified SAN Manager from the appliance.  Before removing a SAN Manager, the Managed SAN resource must be removed from any configured FC or FCoE Network resources.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Name, -SanManager]

Managed SAN resource object or name to remove.

<table><tbody><tr><td>Aliases</td><td>Name, SanManager</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

 SAN Manager resource object(s)



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

A PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Remove-HPOVSanManager bna.contoso.com
</pre>
Remove the bna.contoso.com SAN Manager from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVSanManager | Remove-HPOVSanManager
</pre>
Remove all SAN Managers from all connected appliances.



### Related Links

* [Add-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVSanManager)
* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager)
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager)
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVSanManager
<p>
Remove a SAN Manager.

### SYNTAX
<p>
<pre><code>Remove-HPOVSanManager [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to remove the specified SAN Manager from the appliance.  Before removing a SAN Manager, the Managed SAN resource must be removed from any configured FC or FCoE Network resources.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Name, -SanManager]

Managed SAN resource object or name to remove.

<table><tbody><tr><td>Aliases</td><td>Name, SanManager</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

 SAN Manager resource object(s)



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

A PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Remove-HPOVSanManager bna.contoso.com
</pre>
Remove the bna.contoso.com SAN Manager from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVSanManager | Remove-HPOVSanManager
</pre>
Remove all SAN Managers from all connected appliances.



### Related Links

* [Add-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVSanManager)
* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager)
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager)
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
