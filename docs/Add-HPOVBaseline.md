<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Add-HPOVBaseline
<p>
Upload new SPP Baseline or hotfix to appliance firmware repository.

### SYNTAX
<p>
<pre><code>Add-HPOVBaseline [-File] &lt;String&gt;[ [-CompSigFile] &lt;String&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to upload a new SPP Baseline into the appliance.  It will return after the upload has completed but before the SPP file has been imported into the firmware repository.

After upload the baseline ISO, any . (period character) within the filename will be chaned to the _ (underscore character) by the appliance.  So, if a baseline ISo file name is "bp.2016.04.custom.ISo", the appliance will change the filename to "bp_2016_04_custom.iso".


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CompSigFile &lt;String&gt;<p>
When adding a Gen10 hotfix component, the associated compsig file is required to validate the digital signature of the hotfix.  Use this parameter to accompany the hotfix file upload to the repository.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -File &lt;String&gt;<p>
Aliases [-sppFile]

The full path and file name of the SPP file.  The function returns an error if the file path cannot be validated.

<table><tbody><tr><td>Aliases</td><td>sppFile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.IO.FileSystemInfo**_

 File System bject from Get-ChildItem



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The progress of uploading the file to the appliance, and in-progress or completion result.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVBaseline -File "C:\Users\me\Documents\SPP2012060B.2012.0525.1.iso"
</pre>
Upload SPP ISO to all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Add-HPOVBaseline -File (Get-ChildItem .\CP672214.exe)
</pre>
Upload the specified hotfix to all connected appliances.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$HotFixFile = dir .\CP672214.exe
$CompSigFile = dir .\CP672214.compsig
Add-HPOVBaseline -File $HotFixFile -CompSigFile $CompSigFile
</pre>
Upload the specified Gen10 hotfix and its associated compsig file to all connected appliances.



### Related Links

* [Get-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaseline)
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository)
* [Remove-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVBaseline)
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Add-HPOVBaseline
<p>
Upload new SPP Baseline or hotfix to appliance firmware repository.

### SYNTAX
<p>
<pre><code>Add-HPOVBaseline [-File] &lt;String&gt;[ [-CompSigFile] &lt;String&gt;][ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to upload a new SPP Baseline into the appliance.  It will return after the upload has completed but before the SPP file has been imported into the firmware repository.

After upload the baseline ISO, any . (period character) within the filename will be chaned to the _ (underscore character) by the appliance.  So, if a baseline ISo file name is "bp.2016.04.custom.ISo", the appliance will change the filename to "bp_2016_04_custom.iso".


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CompSigFile &lt;String&gt;<p>
When adding a Gen10 hotfix component, the associated compsig file is required to validate the digital signature of the hotfix.  Use this parameter to accompany the hotfix file upload to the repository.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -File &lt;String&gt;<p>
Aliases [-sppFile]

The full path and file name of the SPP file.  The function returns an error if the file path cannot be validated.

<table><tbody><tr><td>Aliases</td><td>sppFile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.IO.FileSystemInfo**_

 File System bject from Get-ChildItem



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The progress of uploading the file to the appliance, and in-progress or completion result.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVBaseline -File "C:\Users\me\Documents\SPP2012060B.2012.0525.1.iso"
</pre>
Upload SPP ISO to all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Add-HPOVBaseline -File (Get-ChildItem .\CP672214.exe)
</pre>
Upload the specified hotfix to all connected appliances.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$HotFixFile = dir .\CP672214.exe
$CompSigFile = dir .\CP672214.compsig
Add-HPOVBaseline -File $HotFixFile -CompSigFile $CompSigFile
</pre>
Upload the specified Gen10 hotfix and its associated compsig file to all connected appliances.



### Related Links

* [Get-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaseline)
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository)
* [Remove-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVBaseline)
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Add-HPOVBaseline
<p>
Upload new SPP Baseline to appliance firmware repository.

### SYNTAX
<p>
<pre><code>Add-HPOVBaseline [-File] &lt;String&gt;[ [-Scope] &lt;HPOneView.Appliance.ScopeCollection&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to upload a new SPP Baseline into the appliance.  It will return after the upload has completed but before the SPP file has been imported into the firmware repository.

After upload the baseline ISO, any . (period character) within the filename will be chaned to the _ (underscore character) by the appliance.  So, if a baseline ISo file name is "bp.2016.04.custom.ISo", the appliance will change the filename to "bp_2016_04_custom.iso".


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -File &lt;String&gt;<p>
Aliases [-sppFile]

The full path and file name of the SPP file.  The function returns an error if the file path cannot be validated.

<table><tbody><tr><td>Aliases</td><td>sppFile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;HPOneView.Appliance.ScopeCollection&gt;<p>
Provide an HPOneView.Appliance.ScopeCollection resource object to initially associate with.  Resource can also be added to scope using the Add-HPOVResourceToScope Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.IO.FileSystemInfo**_

 File System bject from Get-ChildItem



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The progress of uploading the file to the appliance, and in-progress or completion result.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVBaseline "C:\Users\me\Documents\SPP2012060B.2012.0525.1.iso"
</pre>
Upload SPP ISO to all connected appliances.



### Related Links

* [Get-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaseline)
* [Get-HPOVBaselineRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaselineRepository)
* [Remove-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVBaseline)
* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize)


***
<div align=right><a href="#Top">Top</a></div>
