<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Add-HPOVStoragePool
<p>
Add managed Storage Pools.

### SYNTAX
<p>
<pre><code>Add-HPOVStoragePool [-StorageSystem] &lt;Object&gt; [-Pool] &lt;Array&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Add new Storage Pools (i.e. HP 3PAR Common Provisioning Group [CPG]) for volumes to be provisioned from.  The Storage System must be imported prior to adding Storage Pools.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Pool &lt;Array&gt;<p>
Aliases: [PoolName, spName, CPG]
An array containing the name(s) of the specific storage pool resource(s) to be added during storage system import.

Example: $pools = "cpg1","cpg2"

<table><tbody><tr><td>Aliases</td><td>PoolName, spName, cpg</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
Aliases: [Hostname, Name]
The Storage System object, or Name.

<table><tbody><tr><td>Aliases</td><td>Hostname, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

 Storage System resource object from Get-HPOVStorageSystem.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task resource.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple async task resources.

 _**Async Task(s) to monitor storage pool import.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVStoragePool -StorageSystem "HP3PAR_1" -PoolName "HP_CPG1"
</pre>
Add the "HP_CPG1" Stroage Pool that is mananaged in the HP3PAR_1 Storage System.  PoolName parameter data type will be converted from System.String to System.Collections.ArrayList .


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$myPools = "cpg1","cpg2"
Add-HPOVStoragePool "HP3PAR_1" $myPools

</pre>
Add the "HP_CPG1" Stroage Pool that is mananaged in the HP3PAR_1 Storage System.



### Related Links

* [Get-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStoragePool)
* [Remove-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStoragePool)
* [Set-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStoragePool)
* [Update-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStoragePool)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Add-HPOVStoragePool
<p>
Add managed Storage Pools.

### SYNTAX
<p>
<pre><code>Add-HPOVStoragePool [-StorageSystem] &lt;Object&gt; [-Pool] &lt;Array&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Add new Storage Pools (i.e. HP 3PAR Common Provisioning Group [CPG]) for volumes to be provisioned from.  The Storage System must be imported prior to adding Storage Pools.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Pool &lt;Array&gt;<p>
Aliases: [PoolName, spName, CPG]
An array containing the name(s) of the specific storage pool resource(s) to be added during storage system import.

Example: $pools = "cpg1","cpg2"

<table><tbody><tr><td>Aliases</td><td>PoolName, spName, cpg</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
Aliases: [Hostname, Name]
The Storage System object, or Name.

<table><tbody><tr><td>Aliases</td><td>Hostname, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

 Storage System resource object from Get-HPOVStorageSystem.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task resource.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple async task resources.

 _**Async Task(s) to monitor storage pool import.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVStoragePool -StorageSystem "HP3PAR_1" -PoolName "HP_CPG1"
</pre>
Add the "HP_CPG1" Stroage Pool that is mananaged in the HP3PAR_1 Storage System.  PoolName parameter data type will be converted from System.String to System.Collections.ArrayList .


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$myPools = "cpg1","cpg2"
Add-HPOVStoragePool "HP3PAR_1" $myPools

</pre>
Add the "HP_CPG1" Stroage Pool that is mananaged in the HP3PAR_1 Storage System.



### Related Links

* [Get-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStoragePool)
* [Remove-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStoragePool)
* [Set-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStoragePool)
* [Update-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStoragePool)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Add-HPOVStoragePool
<p>
Add managed Storage Pools.

### SYNTAX
<p>
<pre><code>Add-HPOVStoragePool [-StorageSystem] &lt;Object&gt; [-Pool] &lt;Array&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Add new Storage Pools (i.e. HP 3PAR Common Provisioning Group [CPG]) for volumes to be provisioned from.  The Storage System must be imported prior to adding Storage Pools.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Pool &lt;Array&gt;<p>
Aliases: [PoolName, spName, CPG]
An array containing the name(s) of the specific storage pool resource(s) to be added during storage system import.

Example: $pools = "cpg1","cpg2"

<table><tbody><tr><td>Aliases</td><td>PoolName, spName, cpg</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
Aliases: [Hostname, Name]
The Storage System object, or Name.

<table><tbody><tr><td>Aliases</td><td>Hostname, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

 Storage System resource object from Get-HPOVStorageSystem.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task resource.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple async task resources.

 _**Async Task(s) to monitor storage pool import.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVStoragePool -StorageSystem "HP3PAR_1" -PoolName "HP_CPG1"
</pre>
Add the "HP_CPG1" Stroage Pool that is mananaged in the HP3PAR_1 Storage System.  PoolName parameter data type will be converted from System.String to System.Collections.ArrayList .


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$myPools = "cpg1","cpg2"
Add-HPOVStoragePool "HP3PAR_1" $myPools

</pre>
Add the "HP_CPG1" Stroage Pool that is mananaged in the HP3PAR_1 Storage System.



### Related Links

* [Get-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStoragePool)
* [Remove-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStoragePool)
* [Set-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStoragePool)


***
<div align=right><a href="#Top">Top</a></div>
