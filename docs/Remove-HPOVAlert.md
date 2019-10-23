<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVAlert
<p>
Delete alerts.

### SYNTAX
<p>
<pre><code>Remove-HPOVAlert [-InputObject] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet allows the administrator to remove one or more alerts.  Alerts can be in one of two administratively controlled states: Active or Cleared.    Only alerts that are no longer active (in a Cleared state) can be removed.

In order for an administrator to remove an Alert, the administrator must be assigned to the respective resource role (Network, Server, Storage, or Infrastructure.)


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The alert to be removed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

 Alert resource object (i.e. Get-HPOVAlert)



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Status object indicating the resource was removed.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAlert -State Cleared | Remove-HPOVAlert
</pre>
Remove all cleared alerts on the appliance.



### Related Links

* [Clear-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Clear-HPOVAlert)
* [Get-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAlert)
* [Set-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAlert)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVAlert
<p>
Delete alerts.

### SYNTAX
<p>
<pre><code>Remove-HPOVAlert [-InputObject] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet allows the administrator to remove one or more alerts.  Alerts can be in one of two administratively controlled states: Active or Cleared.    Only alerts that are no longer active (in a Cleared state) can be removed.

In order for an administrator to remove an Alert, the administrator must be assigned to the respective resource role (Network, Server, Storage, or Infrastructure.)


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The alert to be removed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

 Alert resource object (i.e. Get-HPOVAlert)



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Status object indicating the resource was removed.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAlert -State Cleared | Remove-HPOVAlert
</pre>
Remove all cleared alerts on the appliance.



### Related Links

* [Clear-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Clear-HPOVAlert)
* [Get-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAlert)
* [Set-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAlert)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVAlert
<p>
Delete alerts.

### SYNTAX
<p>
<pre><code>Remove-HPOVAlert [-InputObject] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet allows the administrator to remove one or more alerts.  Alerts can be in one of two administratively controlled states: Active or Cleared.    Only alerts that are no longer active (in a Cleared state) can be removed.

In order for an administrator to remove an Alert, the administrator must be assigned to the respective resource role (Network, Server, Storage, or Infrastructure.)


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The alert to be removed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

 Alert resource object (i.e. Get-HPOVAlert)



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Status object indicating the resource was removed.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAlert -State Cleared | Remove-HPOVAlert
</pre>
Remove all cleared alerts on the appliance.



### Related Links

* [Clear-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Clear-HPOVAlert)
* [Get-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAlert)
* [Set-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAlert)


***
<div align=right><a href="#Top">Top</a></div>
