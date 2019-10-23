<a name="top"></a>
 <h4><a href="#3.00">Library Version 3.00</a></h4>
 <a name="3.00"></a>

### <u>HPE OneView 3.00 Library</u>

## Show-HPOVBaselineRepositorySize
<p>
View appliance basline repository size.

### SYNTAX
<p>
<pre><code>Show-HPOVBaselineRepositorySize [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will display the applinace baseline repository size


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.BaselineRepository [System.Management.Automation.PSCustomObject]**_

 

Appliance baseline repository capacity object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:\> Show-HPOVBaselineRepositorySize
</pre>
Show the appliance baseline repository size.



### Related Links

* [Get-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBaseline)
* [Add-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVBaseline)
* [Remove-HPOVBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVBaseline)


***
<div align=right><a href="#Top">Top</a></div>
