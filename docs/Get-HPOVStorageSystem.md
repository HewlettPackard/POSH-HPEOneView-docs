<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVStorageSystem
<p>
Retrieve Storage System resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVStorageSystem[ [-Name] &lt;String&gt;][ [-Hostname] &lt;String&gt;][ [-Family] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-List] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVStorageSystem[ [-SerialNumber] &lt;String&gt;][ [-Family] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-List] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display all or a specific storage system configured on the HPE OneView appliance.  A specific Storage System can be searched for by using the System Name (not FQDN) or Serial Number.  Use the List switch to display a report of the requested storage system(s).


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Family &lt;String&gt;<p>
Specify StoreVirtual or StoreServ to return storage systems based on family.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Display the specific Storage System by its hostname (IP Address or FQDN).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -List &lt;SwitchParameter&gt;<p>
Aliases [-Report]
Generate a report of the specific or all storage systems.

<table><tbody><tr><td>Aliases</td><td>Report</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-SystemName]

Display the specific Storage System by its system name.

<table><tbody><tr><td>Aliases</td><td>SystemName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SerialNumber &lt;String&gt;<p>
Aliases [-SN]

Search for the Storage System based on the resource serial number instead of the name.

<table><tbody><tr><td>Aliases</td><td>SN</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

 

Single Storage System

 _**System.Collections.ArrayList &lt;HPOneView.Storage.System&gt;**_

 

Multiple Storage Systems



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageSystem
</pre>
Get all storage system resource objects managed by the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStorageSystem HP3Par_1
Status   Name     Serial Number Model        Storage Domain WWN                     Firmware
------   ----     ------------- -----        -------------- ---                     --------
Ok       HP3Par_1 TXQ1020307    HP_3PAR 7200 NoDomain       28:11:00:02:AC:00:08:7D 3.1.3

</pre>
Get "HP3Par_1" storage system resource object managed by the appliance.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVStorageSystem HP3Par_1 -report
Status   Name     Serial Number Model        Storage Domain WWN                     Firmware
------   ----     ------------- -----        -------------- ---                     --------
Ok       HP3Par_1 TXQ1020307    HP_3PAR 7200 NoDomain       28:11:00:02:AC:00:08:7D 3.1.3



[Credentials] Username Address
------------- -------- -------
              3paradm  172.18.11.13



[Capacity] Status   Total    Allocated   Free
---------- ------   -------- ----------- -------
           Ok       90.00TB  0.01TB      90.00TB



[Storage Pools] Status Name     Drive Type RAID  Total          Allocated   Free
--------------- ------ -------  ---------- ----  --------       ----------- -------
                OK     FC_NO_DN FC         RAID5 1,048,576.00GB 22.13GB     1,048,553.88GB



[Host Ports] Status  Port    WWPN                    Expected Network Actual Network Port Group Name
------------ ------  ------- ----------------------- ---------------- -------------- ---------------
             Ok      0:1:1   01:00:4A:2B:21:E1:00:11 Fabric A (DA)    Fabric A (DA)  Auto
             Ok      0:2:2   01:02:4A:2B:21:E1:00:12 Fabric A (DA)    Fabric A (DA)  Auto        

</pre>
Show a report of the managed storage system(s).



### Related Links

* [Add-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageSystem)
* [Remove-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageSystem)
* [Show-HPOVStorageSystemPerformancePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVStorageSystemPerformancePolicy)
* [Update-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStorageSystem)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVStorageSystem
<p>
Retrieve Storage System resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVStorageSystem[ [-Name] &lt;String&gt;][ [-Hostname] &lt;String&gt;][ [-Family] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-List] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVStorageSystem[ [-SerialNumber] &lt;String&gt;][ [-Family] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-List] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display all or a specific storage system configured on the HPE OneView appliance.  A specific Storage System can be searched for by using the System Name (not FQDN) or Serial Number.  Use the List switch to display a report of the requested storage system(s).


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Family &lt;String&gt;<p>
Specify StoreVirtual or StoreServ to return storage systems based on family.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Display the specific Storage System by its hostname (IP Address or FQDN).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -List &lt;SwitchParameter&gt;<p>
Aliases [-Report]
Generate a report of the specific or all storage systems.

<table><tbody><tr><td>Aliases</td><td>Report</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-SystemName]

Display the specific Storage System by its system name.

<table><tbody><tr><td>Aliases</td><td>SystemName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SerialNumber &lt;String&gt;<p>
Aliases [-SN]

Search for the Storage System based on the resource serial number instead of the name.

<table><tbody><tr><td>Aliases</td><td>SN</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

 

Single Storage System

 _**System.Collections.ArrayList &lt;HPOneView.Storage.System&gt;**_

 

Multiple Storage Systems



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageSystem
</pre>
Get all storage system resource objects managed by the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStorageSystem HP3Par_1
Status   Name     Serial Number Model        Storage Domain WWN                     Firmware
------   ----     ------------- -----        -------------- ---                     --------
Ok       HP3Par_1 TXQ1020307    HP_3PAR 7200 NoDomain       28:11:00:02:AC:00:08:7D 3.1.3

</pre>
Get "HP3Par_1" storage system resource object managed by the appliance.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVStorageSystem HP3Par_1 -report
Status   Name     Serial Number Model        Storage Domain WWN                     Firmware
------   ----     ------------- -----        -------------- ---                     --------
Ok       HP3Par_1 TXQ1020307    HP_3PAR 7200 NoDomain       28:11:00:02:AC:00:08:7D 3.1.3



[Credentials] Username Address
------------- -------- -------
              3paradm  172.18.11.13



[Capacity] Status   Total    Allocated   Free
---------- ------   -------- ----------- -------
           Ok       90.00TB  0.01TB      90.00TB



[Storage Pools] Status Name     Drive Type RAID  Total          Allocated   Free
--------------- ------ -------  ---------- ----  --------       ----------- -------
                OK     FC_NO_DN FC         RAID5 1,048,576.00GB 22.13GB     1,048,553.88GB



[Host Ports] Status  Port    WWPN                    Expected Network Actual Network Port Group Name
------------ ------  ------- ----------------------- ---------------- -------------- ---------------
             Ok      0:1:1   01:00:4A:2B:21:E1:00:11 Fabric A (DA)    Fabric A (DA)  Auto
             Ok      0:2:2   01:02:4A:2B:21:E1:00:12 Fabric A (DA)    Fabric A (DA)  Auto        

</pre>
Show a report of the managed storage system(s).



### Related Links

* [Add-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageSystem)
* [Remove-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageSystem)
* [Show-HPOVStorageSystemPerformancePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVStorageSystemPerformancePolicy)
* [Update-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStorageSystem)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVStorageSystem
<p>
Retrieve Storage System resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVStorageSystem[ [-Name] &lt;String&gt;][ [-Hostname] &lt;String&gt;][ [-Family] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-List] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVStorageSystem[ [-SerialNumber] &lt;String&gt;][ [-Family] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-List] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display all or a specific storage system configured on the HPE OneView appliance.  A specific Storage System can be searched for by using the System Name (not FQDN) or Serial Number.  Use the List switch to display a report of the requested storage system(s).


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Family &lt;String&gt;<p>
Specify StoreVirtual or StoreServ to return storage systems based on family.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Display the specific Storage System by its hostname (IP Address or FQDN).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -List &lt;SwitchParameter&gt;<p>
Aliases [-Report]
Generate a report of the specific or all storage systems.

<table><tbody><tr><td>Aliases</td><td>Report</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-SystemName]

Display the specific Storage System by its system name.

<table><tbody><tr><td>Aliases</td><td>SystemName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SerialNumber &lt;String&gt;<p>
Aliases [-SN]

Search for the Storage System based on the resource serial number instead of the name.

<table><tbody><tr><td>Aliases</td><td>SN</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

 

Single Storage System

 _**System.Collections.ArrayList &lt;HPOneView.Storage.System&gt;**_

 

Multiple Storage Systems



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageSystem
</pre>
Get all storage system resource objects managed by the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStorageSystem HP3Par_1
Status   Name     Serial Number Model        Storage Domain WWN                     Firmware
------   ----     ------------- -----        -------------- ---                     --------
Ok       HP3Par_1 TXQ1020307    HP_3PAR 7200 NoDomain       28:11:00:02:AC:00:08:7D 3.1.3

</pre>
Get "HP3Par_1" storage system resource object managed by the appliance.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVStorageSystem HP3Par_1 -report
Status   Name     Serial Number Model        Storage Domain WWN                     Firmware
------   ----     ------------- -----        -------------- ---                     --------
Ok       HP3Par_1 TXQ1020307    HP_3PAR 7200 NoDomain       28:11:00:02:AC:00:08:7D 3.1.3



[Credentials] Username Address
------------- -------- -------
              3paradm  172.18.11.13



[Capacity] Status   Total    Allocated   Free
---------- ------   -------- ----------- -------
           Ok       90.00TB  0.01TB      90.00TB



[Storage Pools] Status Name     Drive Type RAID  Total          Allocated   Free
--------------- ------ -------  ---------- ----  --------       ----------- -------
                OK     FC_NO_DN FC         RAID5 1,048,576.00GB 22.13GB     1,048,553.88GB



[Host Ports] Status  Port    WWPN                    Expected Network Actual Network Port Group Name
------------ ------  ------- ----------------------- ---------------- -------------- ---------------
             Ok      0:1:1   01:00:4A:2B:21:E1:00:11 Fabric A (DA)    Fabric A (DA)  Auto
             Ok      0:2:2   01:02:4A:2B:21:E1:00:12 Fabric A (DA)    Fabric A (DA)  Auto        

</pre>
Show a report of the managed storage system(s).



### Related Links

* [Add-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageSystem)
* [Remove-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageSystem)
* [Update-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStorageSystem)


***
<div align=right><a href="#Top">Top</a></div>
