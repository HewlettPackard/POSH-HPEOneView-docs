<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVStoragePool
<p>
Modify storage pool managed state.

### SYNTAX
<p>
<pre><code>Set-HPOVStoragePool [-InputObject] &lt;HPOneView.Storage.StoragePool[]&gt; [-Managed] &lt;bool&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A storage pool is an aggregation of physical storage resources (disks) in a storage system. Storage systems contain information about the storage ports through which they can be accessed. You can provision logical storage spaces, known as volumes, from storage pools.
 You cannot create or delete storage pools from the appliance, you can only add or remove them from management. Using this Cmdlet will change the managed state of a storage pool.  Its management state cannot be changed when volumes are currently provisioned from it and managed by HPE OneView, or a storage volume template specify the storage pool.
 If you remove a storage system from the appliance, all storage pools in it are removed automatically.
 Minimum required privileges: Infrastructure administrator or Storage administrator. 


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Storage.StoragePool[]&gt;<p>
One or more HPOneView.Storage.StoragePool resources from Get-HPOVStoragePool.

<table><tbody><tr><td>Aliases</td><td>Pool</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Managed &lt;bool&gt;<p>
Specify a boolean value to modify the storage pools managed state.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.StoragePool**_

 Storage pool resource(s) from Get-HPOVStoragePool.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$StoragePool = Get-HPOVStoragePool -Name "r5_cpg1" -ErrorAction Stop Set-HPOVStoragePool -InputObject $StoragePool -Managed $true</pre>
Manage the specified storage pool to provision volumes.


 <pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStoragePool -Name r5_* -ErrorAction Stop | Set-HPOVStoragePool -Managed $false</pre>
Change the managed state to "unmanaged" of the specified storage pools.



### Related Links

* [Add-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStoragePool)
* [Get-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStoragePool)
* [Remove-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStoragePool)
* [Update-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStoragePool)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVStoragePool
<p>
Modify storage pool managed state.

### SYNTAX
<p>
<pre><code>Set-HPOVStoragePool [-InputObject] &lt;HPOneView.Storage.StoragePool[]&gt; [-Managed] &lt;bool&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A storage pool is an aggregation of physical storage resources (disks) in a storage system. Storage systems contain information about the storage ports through which they can be accessed. You can provision logical storage spaces, known as volumes, from storage pools.
 You cannot create or delete storage pools from the appliance, you can only add or remove them from management. Using this Cmdlet will change the managed state of a storage pool.  Its management state cannot be changed when volumes are currently provisioned from it and managed by HPE OneView, or a storage volume template specify the storage pool.
 If you remove a storage system from the appliance, all storage pools in it are removed automatically.
 Minimum required privileges: Infrastructure administrator or Storage administrator. 


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Storage.StoragePool[]&gt;<p>
One or more HPOneView.Storage.StoragePool resources from Get-HPOVStoragePool.

<table><tbody><tr><td>Aliases</td><td>Pool</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Managed &lt;bool&gt;<p>
Specify a boolean value to modify the storage pools managed state.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.StoragePool**_

 Storage pool resource(s) from Get-HPOVStoragePool.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$StoragePool = Get-HPOVStoragePool -Name "r5_cpg1" -ErrorAction Stop Set-HPOVStoragePool -InputObject $StoragePool -Managed $true</pre>
Manage the specified storage pool to provision volumes.


 <pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStoragePool -Name r5_* -ErrorAction Stop | Set-HPOVStoragePool -Managed $false</pre>
Change the managed state to "unmanaged" of the specified storage pools.



### Related Links

* [Add-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStoragePool)
* [Get-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStoragePool)
* [Remove-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStoragePool)
* [Update-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStoragePool)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVStoragePool
<p>
Modify storage pool managed state.

### SYNTAX
<p>
<pre><code>Set-HPOVStoragePool [-InputObject] &lt;HPOneView.Storage.StoragePool[]&gt; [-Managed] &lt;bool&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A storage pool is an aggregation of physical storage resources (disks) in a storage system. Storage systems contain information about the storage ports through which they can be accessed. You can provision logical storage spaces, known as volumes, from storage pools.
 You cannot create or delete storage pools from the appliance, you can only add or remove them from management. Using this Cmdlet will change the managed state of a storage pool.  Its management state cannot be changed when volumes are currently provisioned from it and managed by HPE OneView, or a storage volume template specify the storage pool.
 If you remove a storage system from the appliance, all storage pools in it are removed automatically.
 Minimum required privileges: Infrastructure administrator or Storage administrator. 


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Storage.StoragePool[]&gt;<p>
One or more HPOneView.Storage.StoragePool resources from Get-HPOVStoragePool.

<table><tbody><tr><td>Aliases</td><td>Pool</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Managed &lt;bool&gt;<p>
Specify a boolean value to modify the storage pools managed state.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.StoragePool**_

 Storage pool resource(s) from Get-HPOVStoragePool.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$StoragePool = Get-HPOVStoragePool -Name "r5_cpg1" -ErrorAction Stop Set-HPOVStoragePool -InputObject $StoragePool -Managed $true</pre>
Manage the specified storage pool to provision volumes.


 <pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStoragePool -Name r5_* -ErrorAction Stop | Set-HPOVStoragePool -Managed $false</pre>
Change the managed state to "unmanaged" of the specified storage pools.



### Related Links

* [Add-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStoragePool)
* [Get-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStoragePool)
* [Remove-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStoragePool)


***
<div align=right><a href="#Top">Top</a></div>
