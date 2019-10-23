<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Update-HPOVStorageSystem
<p>
Update/Refresh available Storage Systems

### SYNTAX
<p>
<pre><code>Update-HPOVStorageSystem [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will update or refresh the specific storage system(s) configured on the HPE OneView appliance.  Refreshing the storage system will cause HPE OneView to validate connectivity, the addition of any new CPG"s, and any Storage System Host Port configuration changes.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-StorageSystem]

The Storage System resource object to update/refresh.

<table><tbody><tr><td>Aliases</td><td>Name, StorageSystem</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

 Single Storage System

 _**System.Collections.ArrayList &lt;HPOneView.Storage.System&gt;**_

 Multiple Storage Systems



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Update Storage System async task object

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple Update Storage System async task objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageSystem | Update-HPOVStorageSystem
</pre>
Get all managed Storage Systems and refresh them.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStorageSystem -Name MyStorageSystem | Update-HPOVStorageSystem
</pre>
Get the "MyStorageSystem" managed Storage Systems and refresh it.



### Related Links

* [Add-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageSystem)
* [Get-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageSystem)
* [Remove-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageSystem)
* [Show-HPOVStorageSystemPerformancePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVStorageSystemPerformancePolicy)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Update-HPOVStorageSystem
<p>
Update/Refresh available Storage Systems

### SYNTAX
<p>
<pre><code>Update-HPOVStorageSystem [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will update or refresh the specific storage system(s) configured on the HPE OneView appliance.  Refreshing the storage system will cause HPE OneView to validate connectivity, the addition of any new CPG"s, and any Storage System Host Port configuration changes.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-StorageSystem]

The Storage System resource object to update/refresh.

<table><tbody><tr><td>Aliases</td><td>Name, StorageSystem</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

 Single Storage System

 _**System.Collections.ArrayList &lt;HPOneView.Storage.System&gt;**_

 Multiple Storage Systems



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Update Storage System async task object

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple Update Storage System async task objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageSystem | Update-HPOVStorageSystem
</pre>
Get all managed Storage Systems and refresh them.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStorageSystem -Name MyStorageSystem | Update-HPOVStorageSystem
</pre>
Get the "MyStorageSystem" managed Storage Systems and refresh it.



### Related Links

* [Add-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageSystem)
* [Get-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageSystem)
* [Remove-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageSystem)
* [Show-HPOVStorageSystemPerformancePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVStorageSystemPerformancePolicy)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Update-HPOVStorageSystem
<p>
Update/Refresh available Storage Systems

### SYNTAX
<p>
<pre><code>Update-HPOVStorageSystem [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will update or refresh the specific storage system(s) configured on the HPE OneView appliance.  Refreshing the storage system will cause HPE OneView to validate connectivity, the addition of any new CPG"s, and any Storage System Host Port configuration changes.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-StorageSystem]

The Storage System resource object to update/refresh.

<table><tbody><tr><td>Aliases</td><td>Name, StorageSystem</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

 Single Storage System

 _**System.Collections.ArrayList &lt;HPOneView.Storage.System&gt;**_

 Multiple Storage Systems



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Update Storage System async task object

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple Update Storage System async task objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageSystem | Update-HPOVStorageSystem
</pre>
Get all managed Storage Systems and refresh them.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStorageSystem -Name MyStorageSystem | Update-HPOVStorageSystem
</pre>
Get the "MyStorageSystem" managed Storage Systems and refresh it.



### Related Links

* [Add-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageSystem)
* [Get-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageSystem)
* [Remove-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageSystem)


***
<div align=right><a href="#Top">Top</a></div>
