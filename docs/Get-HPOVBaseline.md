<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVBaseline
<p>
Retrieve available SPP Baseline information.

### SYNTAX
<p>
<pre><code>Get-HPOVBaseline[ [-File] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVBaseline[ [-SppName] &lt;String&gt;][ [-Version] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVBaseline[ [-HotfixesOnly] &lt;SwitchParameter&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves the list of SPPs that have been uploaded to the appliance, and their detail.  You can examine the included components and their versions reported by the baseline.

Please note that any file name that contains the . (period, CHAR46) character will be replaced with _ (underscore, CHAR95).

Example: My.Spp.To.Upload.201605.iso will become My_Spp_To_Upload_201605.iso.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -File &lt;String&gt;<p>
Aliases [-isoFileName, -FileName]

The ISO file name of an SPP.

<table><tbody><tr><td>Aliases</td><td>isoFileName, FileName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HotfixesOnly &lt;SwitchParameter&gt;<p>
Display only the available Hotfixes present with in the repository.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SppName &lt;String&gt;<p>
The SPP/Baseline Name.

<table><tbody><tr><td>Aliases</td><td>name</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Version &lt;String&gt;<p>
If multiple SPP/Baselines with the same name exist, use the Version parameter to filter to the specific SPP/Baseline version.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.Baseline [System.Management.Automation.PSCustomObject]**_

 

Single SPP resource object

 _**System.Collections.ArrayList  (HPOneView.Appliance.Baseline)**_

 

Multiple SPP resource objects

 _**The firmware-baseline object or collection of firmware-baseline objects if no sppFile is provided in the command.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$sppCollection = Get-HPOVBaseline
</pre>
Retrieves all SPP objects from the appliance and stores them in the sppCollection object


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$sppObject = Get-HPOVBaseline -Filename SPP2012060B.2012_0525.1.iso
</pre>
Retrieves an SPP object with the filename SPP2012060B.2012_0525.1.iso


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$sppObject = Get-HPOVBaseline -SppName "HP Service Pack for ProLiant"
</pre>
Retrieves an SPP object with the SPP Name "HP Service Pack for ProLiant"



### Related Links

* [Add-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVBaseline)
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository)
* [Remove-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVBaseline)
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVBaseline
<p>
Retrieve available SPP Baseline information.

### SYNTAX
<p>
<pre><code>Get-HPOVBaseline[ [-File] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVBaseline[ [-SppName] &lt;String&gt;][ [-Version] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVBaseline[ [-HotfixesOnly] &lt;SwitchParameter&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves the list of SPPs that have been uploaded to the appliance, and their detail.  You can examine the included components and their versions reported by the baseline.

Please note that any file name that contains the . (period, CHAR46) character will be replaced with _ (underscore, CHAR95).

Example: My.Spp.To.Upload.201605.iso will become My_Spp_To_Upload_201605.iso.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -File &lt;String&gt;<p>
Aliases [-isoFileName, -FileName]

The ISO file name of an SPP.

<table><tbody><tr><td>Aliases</td><td>isoFileName, FileName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HotfixesOnly &lt;SwitchParameter&gt;<p>
Display only the available Hotfixes present with in the repository.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SppName &lt;String&gt;<p>
The SPP/Baseline Name.

<table><tbody><tr><td>Aliases</td><td>name</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Version &lt;String&gt;<p>
If multiple SPP/Baselines with the same name exist, use the Version parameter to filter to the specific SPP/Baseline version.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.Baseline [System.Management.Automation.PSCustomObject]**_

 

Single SPP resource object

 _**System.Collections.ArrayList  (HPOneView.Appliance.Baseline)**_

 

Multiple SPP resource objects

 _**The firmware-baseline object or collection of firmware-baseline objects if no sppFile is provided in the command.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$sppCollection = Get-HPOVBaseline
</pre>
Retrieves all SPP objects from the appliance and stores them in the sppCollection object


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$sppObject = Get-HPOVBaseline -Filename SPP2012060B.2012_0525.1.iso
</pre>
Retrieves an SPP object with the filename SPP2012060B.2012_0525.1.iso


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$sppObject = Get-HPOVBaseline -SppName "HP Service Pack for ProLiant"
</pre>
Retrieves an SPP object with the SPP Name "HP Service Pack for ProLiant"



### Related Links

* [Add-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVBaseline)
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository)
* [Remove-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVBaseline)
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVBaseline
<p>
Retrieve available SPP Baseline information.

### SYNTAX
<p>
<pre><code>Get-HPOVBaseline[ [-File] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVBaseline[ [-SppName] &lt;String&gt;][ [-Version] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVBaseline[ [-HotfixesOnly] &lt;SwitchParameter&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieves the list of SPPs that have been uploaded to the appliance, and their detail.  You can examine the included components and their versions reported by the baseline.

Please note that any file name that contains the . (period, CHAR46) character will be replaced with _ (underscore, CHAR95).

Example: My.Spp.To.Upload.201605.iso will become My_Spp_To_Upload_201605.iso.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -File &lt;String&gt;<p>
Aliases [-isoFileName, -FileName]

The ISO file name of an SPP.

<table><tbody><tr><td>Aliases</td><td>isoFileName, FileName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HotfixesOnly &lt;SwitchParameter&gt;<p>
Display only the available Hotfixes present with in the repository.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SppName &lt;String&gt;<p>
The SPP/Baseline Name.

<table><tbody><tr><td>Aliases</td><td>name</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Version &lt;String&gt;<p>
If multiple SPP/Baselines with the same name exist, use the Version parameter to filter to the specific SPP/Baseline version.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.Baseline [System.Management.Automation.PSCustomObject]**_

 

Single SPP resource object

 _**System.Collections.ArrayList  (HPOneView.Appliance.Baseline)**_

 

Multiple SPP resource objects

 _**The firmware-baseline object or collection of firmware-baseline objects if no sppFile is provided in the command.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$sppCollection = Get-HPOVBaseline
</pre>
Retrieves all SPP objects from the appliance and stores them in the sppCollection object


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$sppObject = Get-HPOVBaseline -Filename SPP2012060B.2012_0525.1.iso
</pre>
Retrieves an SPP object with the filename SPP2012060B.2012_0525.1.iso


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$sppObject = Get-HPOVBaseline -SppName "HP Service Pack for ProLiant"
</pre>
Retrieves an SPP object with the SPP Name "HP Service Pack for ProLiant"



### Related Links

* [Add-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVBaseline)
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository)
* [Remove-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVBaseline)
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize)


***
<div align=right><a href="#Top">Top</a></div>
