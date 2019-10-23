<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Update-HPOVStoragePool
<p>
Refresh a storage pool.

### SYNTAX
<p>
<pre><code>Update-HPOVStoragePool [-InputObject] &lt;HPOneView.Storage.StoragePool[]&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to refresh a storage pool when it's associated policies have been updated within the storage system external management console.  Can be used to collect new Nimble Volume Sets.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Storage.StoragePool[]&gt;<p>
The storage pool object to update or refresh.

<table><tbody><tr><td>Aliases</td><td>Name, StoragePool</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.StoragePool**_

 One or more storage pool resources from Get-HPOVStoragePool.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStoragePool -Name default | Update-HPOVStoragePool
</pre>
Update the Nimble storage pool 'default' to refresh available policies.



### Related Links

* [Add-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStoragePool)
* [Get-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStoragePool)
* [Remove-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStoragePool)
* [Set-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStoragePool)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Update-HPOVStoragePool
<p>
Refresh a storage pool.

### SYNTAX
<p>
<pre><code>Update-HPOVStoragePool [-InputObject] &lt;HPOneView.Storage.StoragePool[]&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to refresh a storage pool when it's associated policies have been updated within the storage system external management console.  Can be used to collect new Nimble Volume Sets.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Storage.StoragePool[]&gt;<p>
The storage pool object to update or refresh.

<table><tbody><tr><td>Aliases</td><td>Name, StoragePool</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.StoragePool**_

 One or more storage pool resources from Get-HPOVStoragePool.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStoragePool -Name default | Update-HPOVStoragePool
</pre>
Update the Nimble storage pool 'default' to refresh available policies.



### Related Links

* [Add-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStoragePool)
* [Get-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStoragePool)
* [Remove-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStoragePool)
* [Set-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStoragePool)


***
<div align=right><a href="#Top">Top</a></div>
