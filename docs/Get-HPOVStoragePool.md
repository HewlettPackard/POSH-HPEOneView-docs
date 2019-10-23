<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVStoragePool
<p>
Retrieve Storage Pool resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVStoragePool[ [-Name] &lt;String&gt;][ [-StorageSystem] &lt;Object&gt;][ [-Label] &lt;Object&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-Managed] &lt;SwitchParameter&gt;][ [-Unmanaged] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of storage pools (i.e. CPG"s) from discovered and managed storage systems.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;Object&gt;<p>
Specify the Label to filter on.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Managed &lt;SwitchParameter&gt;<p>
Only returned storage pools that are managed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-PoolName, -Pool]

The name of the specific storage pool resource to be returned.  All storage pool resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>pool, PoolName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
The name or Storage System object of the specific storage system to return storage pool resource from.  Can be combined with the PoolName parameter to single out a specific storage pool in a specific storage system.

<table><tbody><tr><td>Aliases</td><td>systemName, system</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Unmanaged &lt;SwitchParameter&gt;<p>
Only returned storage pools that are unmanaged.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System**_

 Managed Storage System from Get-HPOVStorageSystem.



### Return Values

_**HPOneView.Storage.Pool [System.Management.Automation.PSCustomObject]**_

 

Single Storage Pool resource

 _**System.Collections.ArrayList**_

 

Multiple Storage Pool resources

 _**The matching storage pool resources.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStoragePool
Status Name     Storage System    Storage Domain Drive Type RAID  Total          Allocated   Free           
------ ----     --------------    -------------- ---------- ----  --------       ----------- -------        
OK     FC_NO_DN ThreePAR7200-5706 NoDomain       FC         RAID5 1,048,576.00GB 22.13GB     1,048,553.88GB 
OK     FC_NO_DN ThreePAR7200-2870 NoDomain       FC         RAID5 1,048,576.00GB 22.13GB     1,048,553.88GB 

</pre>
Get all available storage pools.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStoragePool | format-list
Name             : FC_NO_DN
Status           : OK
Storage System   : ThreePAR7200-5706
Domain           : NoDomain
Drive Type       : FC
RAID             : RAID5
Total            : 1,048,576.00 GB
Allocated        : 22.13 GB
Free             : 1,048,553.88 GB
Volumes          : 0
Volume Templates : 0

Name             : FC_NO_DN
Status           : OK
Storage System   : ThreePAR7200-2870 
Domain           : NoDomain
Drive Type       : FC
RAID             : RAID5
Total            : 1,048,576.00 GB
Allocated        : 22.13 GB
Free             : 1,048,553.88 GB
Volumes          : 0
Volume Templates : 0


</pre>
Get all available storage pools, display using Format-List to see extended information.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myPool = Get-HPOVStoragePool -name "HP_CPG1"
</pre>
Return the storage pool resource(s) with the name "HP_CPG1"


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$myPools = Get-HPOVStoragePool
</pre>
Return all the storage pool resources


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVStoragePool -StorageSystem "HP_3PAR_1"
</pre>
Returns all managed storage pool resources on the storage system "HP_3PAR_1"


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVStoragePool -poolName "HP_CPG1" -systemName "HP_3PAR_1"
</pre>
Returns the storage pool resource "HP_CPG1" on the storage system "HP_3PAR_1"



### Related Links

* [Add-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStoragePool)
* [Remove-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStoragePool)
* [Set-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStoragePool)
* [Update-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStoragePool)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVStoragePool
<p>
Retrieve Storage Pool resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVStoragePool[ [-Name] &lt;String&gt;][ [-StorageSystem] &lt;Object&gt;][ [-Label] &lt;Object&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-Managed] &lt;SwitchParameter&gt;][ [-Unmanaged] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of storage pools (i.e. CPG"s) from discovered and managed storage systems.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;Object&gt;<p>
Specify the Label to filter on.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Managed &lt;SwitchParameter&gt;<p>
Only returned storage pools that are managed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-PoolName, -Pool]

The name of the specific storage pool resource to be returned.  All storage pool resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>pool, PoolName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
The name or Storage System object of the specific storage system to return storage pool resource from.  Can be combined with the PoolName parameter to single out a specific storage pool in a specific storage system.

<table><tbody><tr><td>Aliases</td><td>systemName, system</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Unmanaged &lt;SwitchParameter&gt;<p>
Only returned storage pools that are unmanaged.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System**_

 Managed Storage System from Get-HPOVStorageSystem.



### Return Values

_**HPOneView.Storage.Pool [System.Management.Automation.PSCustomObject]**_

 

Single Storage Pool resource

 _**System.Collections.ArrayList**_

 

Multiple Storage Pool resources

 _**The matching storage pool resources.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStoragePool
Status Name     Storage System    Storage Domain Drive Type RAID  Total          Allocated   Free           
------ ----     --------------    -------------- ---------- ----  --------       ----------- -------        
OK     FC_NO_DN ThreePAR7200-5706 NoDomain       FC         RAID5 1,048,576.00GB 22.13GB     1,048,553.88GB 
OK     FC_NO_DN ThreePAR7200-2870 NoDomain       FC         RAID5 1,048,576.00GB 22.13GB     1,048,553.88GB 

</pre>
Get all available storage pools.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStoragePool | format-list
Name             : FC_NO_DN
Status           : OK
Storage System   : ThreePAR7200-5706
Domain           : NoDomain
Drive Type       : FC
RAID             : RAID5
Total            : 1,048,576.00 GB
Allocated        : 22.13 GB
Free             : 1,048,553.88 GB
Volumes          : 0
Volume Templates : 0

Name             : FC_NO_DN
Status           : OK
Storage System   : ThreePAR7200-2870 
Domain           : NoDomain
Drive Type       : FC
RAID             : RAID5
Total            : 1,048,576.00 GB
Allocated        : 22.13 GB
Free             : 1,048,553.88 GB
Volumes          : 0
Volume Templates : 0


</pre>
Get all available storage pools, display using Format-List to see extended information.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myPool = Get-HPOVStoragePool -name "HP_CPG1"
</pre>
Return the storage pool resource(s) with the name "HP_CPG1"


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$myPools = Get-HPOVStoragePool
</pre>
Return all the storage pool resources


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVStoragePool -StorageSystem "HP_3PAR_1"
</pre>
Returns all managed storage pool resources on the storage system "HP_3PAR_1"


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVStoragePool -poolName "HP_CPG1" -systemName "HP_3PAR_1"
</pre>
Returns the storage pool resource "HP_CPG1" on the storage system "HP_3PAR_1"



### Related Links

* [Add-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStoragePool)
* [Remove-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStoragePool)
* [Set-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStoragePool)
* [Update-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStoragePool)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVStoragePool
<p>
Retrieve Storage Pool resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVStoragePool[ [-Name] &lt;String&gt;][ [-StorageSystem] &lt;Object&gt;][ [-Label] &lt;Object&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-Managed] &lt;SwitchParameter&gt;][ [-Unmanaged] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of storage pools (i.e. CPG"s) from discovered and managed storage systems.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;Object&gt;<p>
Specify the Label to filter on.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Managed &lt;SwitchParameter&gt;<p>
Only returned storage pools that are managed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-PoolName, -Pool]

The name of the specific storage pool resource to be returned.  All storage pool resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>pool, PoolName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageSystem &lt;Object&gt;<p>
The name or Storage System object of the specific storage system to return storage pool resource from.  Can be combined with the PoolName parameter to single out a specific storage pool in a specific storage system.

<table><tbody><tr><td>Aliases</td><td>systemName, system</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Unmanaged &lt;SwitchParameter&gt;<p>
Only returned storage pools that are unmanaged.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System**_

 Managed Storage System from Get-HPOVStorageSystem.



### Return Values

_**HPOneView.Storage.Pool [System.Management.Automation.PSCustomObject]**_

 

Single Storage Pool resource

 _**System.Collections.ArrayList**_

 

Multiple Storage Pool resources

 _**The matching storage pool resources.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStoragePool
Status Name     Storage System    Storage Domain Drive Type RAID  Total          Allocated   Free           
------ ----     --------------    -------------- ---------- ----  --------       ----------- -------        
OK     FC_NO_DN ThreePAR7200-5706 NoDomain       FC         RAID5 1,048,576.00GB 22.13GB     1,048,553.88GB 
OK     FC_NO_DN ThreePAR7200-2870 NoDomain       FC         RAID5 1,048,576.00GB 22.13GB     1,048,553.88GB 

</pre>
Get all available storage pools.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStoragePool | format-list
Name             : FC_NO_DN
Status           : OK
Storage System   : ThreePAR7200-5706
Domain           : NoDomain
Drive Type       : FC
RAID             : RAID5
Total            : 1,048,576.00 GB
Allocated        : 22.13 GB
Free             : 1,048,553.88 GB
Volumes          : 0
Volume Templates : 0

Name             : FC_NO_DN
Status           : OK
Storage System   : ThreePAR7200-2870 
Domain           : NoDomain
Drive Type       : FC
RAID             : RAID5
Total            : 1,048,576.00 GB
Allocated        : 22.13 GB
Free             : 1,048,553.88 GB
Volumes          : 0
Volume Templates : 0


</pre>
Get all available storage pools, display using Format-List to see extended information.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$myPool = Get-HPOVStoragePool -name "HP_CPG1"
</pre>
Return the storage pool resource(s) with the name "HP_CPG1"


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$myPools = Get-HPOVStoragePool
</pre>
Return all the storage pool resources


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVStoragePool -StorageSystem "HP_3PAR_1"
</pre>
Returns all managed storage pool resources on the storage system "HP_3PAR_1"


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVStoragePool -poolName "HP_CPG1" -systemName "HP_3PAR_1"
</pre>
Returns the storage pool resource "HP_CPG1" on the storage system "HP_3PAR_1"



### Related Links

* [Add-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStoragePool)
* [Remove-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStoragePool)
* [Set-HPOVStoragePool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStoragePool)


***
<div align=right><a href="#Top">Top</a></div>
