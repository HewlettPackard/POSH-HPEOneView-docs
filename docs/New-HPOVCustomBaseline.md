<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVCustomBaseline
<p>
Create Custom Baseline from Hotfixes and Source Baseline.

### SYNTAX
<p>
<pre><code>New-HPOVCustomBaseline [-SourceBaseline] &lt;Object&gt; [-Hotfixes] &lt;Array&gt; [-BaselineName] &lt;String&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE ProLiant Hotfixes are released out of the main SPP release cycle.  Administrators can use HPSUM external to HPE OneView to create a custom baseline, but then need to upload to the appliance.  Hotfixes can be directly uploaded to an HPE OneView 2.0 Appliance, with the ability to create a Custom Baseline by using a source Baseline (which must exist in the Baseline Repository) and specified Hotfix(s).


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -BaselineName &lt;String&gt;<p>
The final custom Baseline name.

Example: custom_SPPGen9Snap3_2015_0327_82

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hotfixes &lt;Array&gt;<p>
Array of Hotfix filenames, or Component name.  
	
Example: @(cp111111.exe,cp222222.scexe,cp333333.exe,cp444444.scexe)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SourceBaseline &lt;Object&gt;<p>
An existing Baseline within the HPE OneView Baseline Repository.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Baseline [System.Management.Automation.PSCustomObject]**_

 Source HPE OneView Baseline from Get-HPOVBaseline



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task object to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
cp111111.exe,cp222222.scexe,cp333333.exe,cp444444.scexe | % { Add-HPOVBaseline $_ }
Get-HPOVBaseline -BaselineName "MyBaseline" | New-HPOVCustomBaseline -Hotfixes cp111111.exe,cp222222.scexe,cp333333.exe,cp444444.scexe -BaselineName "MyNewBaseline_20160222"

</pre>
Upload hotfixes to appliance, then create a new custom baseline from the "MyBaseline" baseline.



### Related Links

* [Restore-HPOVCustomBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restore-HPOVCustomBaseline)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVCustomBaseline
<p>
Create Custom Baseline from Hotfixes and Source Baseline.

### SYNTAX
<p>
<pre><code>New-HPOVCustomBaseline [-SourceBaseline] &lt;Object&gt; [-Hotfixes] &lt;Array&gt; [-BaselineName] &lt;String&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE ProLiant Hotfixes are released out of the main SPP release cycle.  Administrators can use HPSUM external to HPE OneView to create a custom baseline, but then need to upload to the appliance.  Hotfixes can be directly uploaded to an HPE OneView 2.0 Appliance, with the ability to create a Custom Baseline by using a source Baseline (which must exist in the Baseline Repository) and specified Hotfix(s).


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -BaselineName &lt;String&gt;<p>
The final custom Baseline name.

Example: custom_SPPGen9Snap3_2015_0327_82

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hotfixes &lt;Array&gt;<p>
Array of Hotfix filenames, or Component name.  
	
Example: @(cp111111.exe,cp222222.scexe,cp333333.exe,cp444444.scexe)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SourceBaseline &lt;Object&gt;<p>
An existing Baseline within the HPE OneView Baseline Repository.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Baseline [System.Management.Automation.PSCustomObject]**_

 Source HPE OneView Baseline from Get-HPOVBaseline



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task object to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
cp111111.exe,cp222222.scexe,cp333333.exe,cp444444.scexe | % { Add-HPOVBaseline $_ }
Get-HPOVBaseline -BaselineName "MyBaseline" | New-HPOVCustomBaseline -Hotfixes cp111111.exe,cp222222.scexe,cp333333.exe,cp444444.scexe -BaselineName "MyNewBaseline_20160222"

</pre>
Upload hotfixes to appliance, then create a new custom baseline from the "MyBaseline" baseline.



### Related Links

* [Restore-HPOVCustomBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restore-HPOVCustomBaseline)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVCustomBaseline
<p>
Create Custom Baseline from Hotfixes and Source Baseline.

### SYNTAX
<p>
<pre><code>New-HPOVCustomBaseline [-SourceBaseline] &lt;Object&gt; [-Hotfixes] &lt;Array&gt; [-BaselineName] &lt;String&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE ProLiant Hotfixes are released out of the main SPP release cycle.  Administrators can use HPSUM external to HPE OneView to create a custom baseline, but then need to upload to the appliance.  Hotfixes can be directly uploaded to an HPE OneView 2.0 Appliance, with the ability to create a Custom Baseline by using a source Baseline (which must exist in the Baseline Repository) and specified Hotfix(s).


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -BaselineName &lt;String&gt;<p>
The final custom Baseline name.

Example: custom_SPPGen9Snap3_2015_0327_82

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hotfixes &lt;Array&gt;<p>
Array of Hotfix filenames, or Component name.  
	
Example: @(cp111111.exe,cp222222.scexe,cp333333.exe,cp444444.scexe)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SourceBaseline &lt;Object&gt;<p>
An existing Baseline within the HPE OneView Baseline Repository.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Baseline [System.Management.Automation.PSCustomObject]**_

 Source HPE OneView Baseline from Get-HPOVBaseline



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task object to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
cp111111.exe,cp222222.scexe,cp333333.exe,cp444444.scexe | % { Add-HPOVBaseline $_ }
Get-HPOVBaseline -BaselineName "MyBaseline" | New-HPOVCustomBaseline -Hotfixes cp111111.exe,cp222222.scexe,cp333333.exe,cp444444.scexe -BaselineName "MyNewBaseline_20160222"

</pre>
Upload hotfixes to appliance, then create a new custom baseline from the "MyBaseline" baseline.



### Related Links

* [Restore-HPOVCustomBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restore-HPOVCustomBaseline)


***
<div align=right><a href="#Top">Top</a></div>
