<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Update-HPOVSanManager
<p>
Refresh SAN Manager and it"s configuration.

### SYNTAX
<p>
<pre><code>Update-HPOVSanManager [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to refresh a SAN Managers configuration.  You can provide the Name or Object of a single or multiple SAN Managers.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-SanManager]
Managed SAN Object to update.

<table><tbody><tr><td>Aliases</td><td>Name, SANManager</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

 SAN Manager resource object from Get-HPOVSanManager

 _**System.Collections.ArrayList &lt;HPOneView.Storage.SanManager&gt;**_

 Multiple SAN Manager resource objects from Get-HPOVSanManager



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async Task to update SAN Manager

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Single or Multiple Resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSanManager -name bna.contoso.com | Update-HPOVSanManager | Wait-HPOVTaskComplete
</pre>
Refreshes the SAN Manager.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVSanManager | Update-HPOVSanManager | Wait-HPOVTaskComplete
</pre>
Refreshes all SAN Managers on the appliance.



### Related Links

* [Add-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVSanManager)
* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager)
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager)
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Update-HPOVSanManager
<p>
Refresh SAN Manager and it"s configuration.

### SYNTAX
<p>
<pre><code>Update-HPOVSanManager [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to refresh a SAN Managers configuration.  You can provide the Name or Object of a single or multiple SAN Managers.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-SanManager]
Managed SAN Object to update.

<table><tbody><tr><td>Aliases</td><td>Name, SANManager</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

 SAN Manager resource object from Get-HPOVSanManager

 _**System.Collections.ArrayList &lt;HPOneView.Storage.SanManager&gt;**_

 Multiple SAN Manager resource objects from Get-HPOVSanManager



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async Task to update SAN Manager

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Single or Multiple Resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSanManager -name bna.contoso.com | Update-HPOVSanManager | Wait-HPOVTaskComplete
</pre>
Refreshes the SAN Manager.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVSanManager | Update-HPOVSanManager | Wait-HPOVTaskComplete
</pre>
Refreshes all SAN Managers on the appliance.



### Related Links

* [Add-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVSanManager)
* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager)
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager)
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Update-HPOVSanManager
<p>
Refresh SAN Manager and it"s configuration.

### SYNTAX
<p>
<pre><code>Update-HPOVSanManager [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to refresh a SAN Managers configuration.  You can provide the Name or Object of a single or multiple SAN Managers.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-SanManager]
Managed SAN Object to update.

<table><tbody><tr><td>Aliases</td><td>Name, SANManager</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

 SAN Manager resource object from Get-HPOVSanManager

 _**System.Collections.ArrayList &lt;HPOneView.Storage.SanManager&gt;**_

 Multiple SAN Manager resource objects from Get-HPOVSanManager



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async Task to update SAN Manager

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Single or Multiple Resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSanManager -name bna.contoso.com | Update-HPOVSanManager | Wait-HPOVTaskComplete
</pre>
Refreshes the SAN Manager.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVSanManager | Update-HPOVSanManager | Wait-HPOVTaskComplete
</pre>
Refreshes all SAN Managers on the appliance.



### Related Links

* [Add-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVSanManager)
* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager)
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager)
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
