<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVStoragePool
<p>
Delete storage pool resource(s).

### SYNTAX
<p>
<pre><code>Remove-HPOVStoragePool [-InputObject] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Remove-HPOVStoragePool [-InputObject] &lt;Object&gt; [-StorageSystem] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Delete one or more storage pools from the appliance configuration.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
If specified, the Storage Pool resource will forceablly removed despite any problems with network connectivity or errors with the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name, -StoragePool]
The network object(s) or name(s) to be removed on the appliance.

<table><tbody><tr><td>Aliases</td><td>uri, name, StoragePool</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
Aliases [-storage]
Provide the Storage System Name, URI or Object when the StoragePool name is not unique.

<table><tbody><tr><td>Aliases</td><td>storage</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System.Pool [System.Management.Automation.PSCustomObject]**_

 Single Storage Pool resource, typically retrieved with Get-HPOVStoragePool



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Removal task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVStoragePool -storagePool "yellow" | Wait-HPOVTaskComplete $task
</pre>
Remove the storage pool specifed by name.  Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$pool = Get-HPOVStoragePool -name "yellow"
Remove-HPOVStoragePool -storagePool $pool -confirm:$false

</pre>
Remove the network specifed by $pool, and do not prompt for confirmation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVStoragePool | Remove-HPOVStoragePool
</pre>
Search for all storage pools and remove them from appliance.



### Related Links

* [Add-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStoragePool)
* [Get-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStoragePool)
* [Set-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStoragePool)
* [Update-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStoragePool)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVStoragePool
<p>
Delete storage pool resource(s).

### SYNTAX
<p>
<pre><code>Remove-HPOVStoragePool [-InputObject] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Remove-HPOVStoragePool [-InputObject] &lt;Object&gt; [-StorageSystem] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Delete one or more storage pools from the appliance configuration.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
If specified, the Storage Pool resource will forceablly removed despite any problems with network connectivity or errors with the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name, -StoragePool]
The network object(s) or name(s) to be removed on the appliance.

<table><tbody><tr><td>Aliases</td><td>uri, name, StoragePool</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
Aliases [-storage]
Provide the Storage System Name, URI or Object when the StoragePool name is not unique.

<table><tbody><tr><td>Aliases</td><td>storage</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System.Pool [System.Management.Automation.PSCustomObject]**_

 Single Storage Pool resource, typically retrieved with Get-HPOVStoragePool



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Removal task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVStoragePool -storagePool "yellow" | Wait-HPOVTaskComplete $task
</pre>
Remove the storage pool specifed by name.  Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$pool = Get-HPOVStoragePool -name "yellow"
Remove-HPOVStoragePool -storagePool $pool -confirm:$false

</pre>
Remove the network specifed by $pool, and do not prompt for confirmation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVStoragePool | Remove-HPOVStoragePool
</pre>
Search for all storage pools and remove them from appliance.



### Related Links

* [Add-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStoragePool)
* [Get-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStoragePool)
* [Set-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStoragePool)
* [Update-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStoragePool)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVStoragePool
<p>
Delete storage pool resource(s).

### SYNTAX
<p>
<pre><code>Remove-HPOVStoragePool [-InputObject] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Remove-HPOVStoragePool [-InputObject] &lt;Object&gt; [-StorageSystem] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Delete one or more storage pools from the appliance configuration.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
If specified, the Storage Pool resource will forceablly removed despite any problems with network connectivity or errors with the resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name, -StoragePool]
The network object(s) or name(s) to be removed on the appliance.

<table><tbody><tr><td>Aliases</td><td>uri, name, StoragePool</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
Aliases [-storage]
Provide the Storage System Name, URI or Object when the StoragePool name is not unique.

<table><tbody><tr><td>Aliases</td><td>storage</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System.Pool [System.Management.Automation.PSCustomObject]**_

 Single Storage Pool resource, typically retrieved with Get-HPOVStoragePool



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Removal task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVStoragePool -storagePool "yellow" | Wait-HPOVTaskComplete $task
</pre>
Remove the storage pool specifed by name.  Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$pool = Get-HPOVStoragePool -name "yellow"
Remove-HPOVStoragePool -storagePool $pool -confirm:$false

</pre>
Remove the network specifed by $pool, and do not prompt for confirmation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVStoragePool | Remove-HPOVStoragePool
</pre>
Search for all storage pools and remove them from appliance.



### Related Links

* [Add-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStoragePool)
* [Get-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStoragePool)
* [Set-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStoragePool)


***
<div align=right><a href="#Top">Top</a></div>
