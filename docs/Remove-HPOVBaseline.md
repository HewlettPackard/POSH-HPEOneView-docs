<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVBaseline
<p>
Delete a baseline or hotfix from an appliance repository.

### SYNTAX
<p>
<pre><code>Remove-HPOVBaseline [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to remove one or more SPP Baselines from one or more appliances.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-b, -Baseline]
The SPP Baseline or hotfix resource object.  Can be accepted via pipeline input.

<table><tbody><tr><td>Aliases</td><td>b, Baseline</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Baseline [System.Management.Automation.PSCustomObject]**_

 Source HPE OneView Baseline from Get-HPOVBaseline



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The progress of uploading the file to the appliance, and in-progress or completion result



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVBaseline | Remove-HPOVBaseline
</pre>
Remove all baselines from any connected appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVBaseline -Name "My Custom Baseline" | Remove-HPOVBaseline
</pre>
Remove the specified "My Custom Baseline" baseline.



### Related Links

* [Add-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVBaseline)
* [Get-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaseline)
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository)
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVBaseline
<p>
Delete a baseline or hotfix from an appliance repository.

### SYNTAX
<p>
<pre><code>Remove-HPOVBaseline [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to remove one or more SPP Baselines from one or more appliances.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-b, -Baseline]
The SPP Baseline or hotfix resource object.  Can be accepted via pipeline input.

<table><tbody><tr><td>Aliases</td><td>b, Baseline</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Baseline [System.Management.Automation.PSCustomObject]**_

 Source HPE OneView Baseline from Get-HPOVBaseline



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The progress of uploading the file to the appliance, and in-progress or completion result



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVBaseline | Remove-HPOVBaseline
</pre>
Remove all baselines from any connected appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVBaseline -Name "My Custom Baseline" | Remove-HPOVBaseline
</pre>
Remove the specified "My Custom Baseline" baseline.



### Related Links

* [Add-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVBaseline)
* [Get-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaseline)
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository)
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVBaseline
<p>
Delete a Baseline from an appliance repository.

### SYNTAX
<p>
<pre><code>Remove-HPOVBaseline [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to remove one or more SPP Baselines from one or more appliances.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force remove the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-b, -Baseline]
The SPP Baseline resource Name or Object.  Can be accepted via pipeline input.

<table><tbody><tr><td>Aliases</td><td>b, Baseline</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Baseline [System.Management.Automation.PSCustomObject]**_

 Source HPE OneView Baseline from Get-HPOVBaseline



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The progress of uploading the file to the appliance, and in-progress or completion result



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVBaseline | Remove-HPOVBaseline
</pre>
Remove all baselines from any connected appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Remove-HPOVBaseline -Name "My Custom Baseline"
</pre>
Remove "My Custom Baseline" from MyAppliance.domain.com, using the -Name alias to the InputObject parameter.



### Related Links

* [Add-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVBaseline)
* [Get-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaseline)
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository)
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize)


***
<div align=right><a href="#Top">Top</a></div>
