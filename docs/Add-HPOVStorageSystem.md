<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Add-HPOVStorageSystem
<p>
Import a supported Storage System

### SYNTAX
<p>
<pre><code>Add-HPOVStorageSystem [-Hostname] &lt;String&gt; [-Credential] &lt;PSCredential PSCredential&gt;[ [-Username] &lt;String&gt;][ [-Password] &lt;Object&gt;][ [-Family] &lt;String&gt;][ [-Domain] &lt;String&gt;][ [-Ports] &lt;Object&gt;][ [-PortGroups] &lt;Hashtable&gt;][ [-ShowSystemDetails] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVStorageSystem [-Hostname] &lt;String&gt; [-VIPS] &lt;Hashtable&gt; [-Credential] &lt;PSCredential PSCredential&gt;[ [-Username] &lt;String&gt;][ [-Password] &lt;Object&gt;][ [-Family] &lt;String&gt;][ [-ShowSystemDetails] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will assist with importing a supported Storage System. In order for the Storage Ports to be mapped to Expected Networks, either a Supported SAN Manager will need to be configured, or 3PAR Direct Attach networks will have to exist.

When adding supported HP 3PAR storage systems, please make sure "startwsapi" has been executed from the HP 3PAR CLI, which enables the HP 3PAR REST API that is required by HPE OneView.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead. Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Domain &lt;String&gt;<p>
Specify the HP 3PAR Virtual Domain name.  Default is "NO DOMAIN". The value provided is CAsesEnSItive.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>NO DOMAIN</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Family &lt;String&gt;<p>
Aliases [-Type]

Specify the type of Storage System to add: StorageVirtual or StoreServ.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>StoreServ</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
IP Address of FQDN of the storage systems.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Password of administrator account password.  Can either be String or System.Security.SecureString.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PortGroups &lt;Hashtable&gt;<p>
Specify the Host Ports to group together. 
	
Example: @{"1:1:1" = "PG1"; "2:2:2" = "PG2"}

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Ports &lt;Object&gt;<p>
Specify the Host Ports and Expected Network in an Array of PSCustomObject entries. 
	
Example: @{"1:1:1"="Fabric A";"2:2:2"="Fabric B"}

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ShowSystemDetails &lt;SwitchParameter&gt;<p>
By default, the Cmdlet will no longer display the details about the Storage System.  Use this parameter to display information about the storage system when adding to the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Administrator account of the target storage system.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VIPS &lt;Hashtable&gt;<p>
Specify the StoreVirtual VIP(s) and associated Ethernet Network. 
	
Example:

	@{"10.158.11.42" = $EthernetNetwork}

or

	@{"10.158.11.42" = $EthernetNetwork1; "10.158.12.42" = $EthernetNetwork2;}

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Add Storage System Async Task.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Add-HPOVStorageSystem -hostname "3par-array.consoto.com" -username 3paradm -password 3pardata -Async
Wait-HPOVTaskComplete $task

</pre>
Add the Storage System using default settings, and let the appliance detect the connected Storage System Ports.  (A supported SAN Manager must first be added, and Managed SANs mapped to the specific FC Network resources.)


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$StorageSystemPorts = @{"1:1:1" = "Fabric A"; "2:1:1" = "Fabric A"; "1:1:2" = "Fabric B"; "2:1:2" = "Fabric B"}
$StoragePortGroups = @{"1:1:1"= "PG1";  "2:1:1" = "PG1"; "1:1:2" = "PG2"; "2:1:2" = "PG2"}
Add-HPOVStorageSystem -hostname "3par-array.consoto.com" -username 3paradm -password 3pardata -Domain VirtaulDomain1 -Ports $StorageSystemPorts -PortGroups $StoragePortGroups | Wait-HPOVTaskComplete
</pre>
Add the Storage System using default settings, and specify the Storage System Ports that will be assigned to the Expected Networks.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$IscsiNetwork = Get-HPOVNetwork -Name "IscsiNetwork" -ErrorAction Stop
$StoreVirtualAddress = "storevirtual1.domain.com"
$StorageSystemPSCredential = Get-Credential -Username administrator
Add-HPOVStorageSystem -Family StoreVirtual -Hostname $StoreVirtualAddress -Credential $StorageSystemPSCredential -VIPS @{ "192.168.191.22" = $IscsiNetwork }</pre>
Add a StoreVirtual storage system with PSCredential object.



### Related Links

* [Get-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageSystem)
* [Remove-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageSystem)
* [Show-HPOVStorageSystemPerformancePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVStorageSystemPerformancePolicy)
* [Update-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStorageSystem)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Add-HPOVStorageSystem
<p>
Import a supported Storage System

### SYNTAX
<p>
<pre><code>Add-HPOVStorageSystem [-Hostname] &lt;String&gt; [-Credential] &lt;PSCredential PSCredential&gt;[ [-Username] &lt;String&gt;][ [-Password] &lt;Object&gt;][ [-Family] &lt;String&gt;][ [-Domain] &lt;String&gt;][ [-Ports] &lt;Object&gt;][ [-PortGroups] &lt;Hashtable&gt;][ [-ShowSystemDetails] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVStorageSystem [-Hostname] &lt;String&gt; [-VIPS] &lt;Hashtable&gt; [-Credential] &lt;PSCredential PSCredential&gt;[ [-Username] &lt;String&gt;][ [-Password] &lt;Object&gt;][ [-Family] &lt;String&gt;][ [-ShowSystemDetails] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will assist with importing a supported Storage System. In order for the Storage Ports to be mapped to Expected Networks, either a Supported SAN Manager will need to be configured, or 3PAR Direct Attach networks will have to exist.

When adding supported HP 3PAR storage systems, please make sure "startwsapi" has been executed from the HP 3PAR CLI, which enables the HP 3PAR REST API that is required by HPE OneView.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead. Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Domain &lt;String&gt;<p>
Specify the HP 3PAR Virtual Domain name.  Default is "NO DOMAIN". The value provided is CAsesEnSItive.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>NO DOMAIN</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Family &lt;String&gt;<p>
Aliases [-Type]

Specify the type of Storage System to add: StorageVirtual or StoreServ.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>StoreServ</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
IP Address of FQDN of the storage systems.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Password of administrator account password.  Can either be String or System.Security.SecureString.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PortGroups &lt;Hashtable&gt;<p>
Specify the Host Ports to group together. 
	
Example: @{"1:1:1" = "PG1"; "2:2:2" = "PG2"}

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Ports &lt;Object&gt;<p>
Specify the Host Ports and Expected Network in an Array of PSCustomObject entries. 
	
Example: @{"1:1:1"="Fabric A";"2:2:2"="Fabric B"}

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ShowSystemDetails &lt;SwitchParameter&gt;<p>
By default, the Cmdlet will no longer display the details about the Storage System.  Use this parameter to display information about the storage system when adding to the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Administrator account of the target storage system.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VIPS &lt;Hashtable&gt;<p>
Specify the StoreVirtual VIP(s) and associated Ethernet Network. 
	
Example:

	@{"10.158.11.42" = $EthernetNetwork}

or

	@{"10.158.11.42" = $EthernetNetwork1; "10.158.12.42" = $EthernetNetwork2;}

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Add Storage System Async Task.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Add-HPOVStorageSystem -hostname "3par-array.consoto.com" -username 3paradm -password 3pardata -Async
Wait-HPOVTaskComplete $task

</pre>
Add the Storage System using default settings, and let the appliance detect the connected Storage System Ports.  (A supported SAN Manager must first be added, and Managed SANs mapped to the specific FC Network resources.)


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$StorageSystemPorts = @{"1:1:1" = "Fabric A"; "2:1:1" = "Fabric A"; "1:1:2" = "Fabric B"; "2:1:2" = "Fabric B"}
$StoragePortGroups = @{"1:1:1"= "PG1";  "2:1:1" = "PG1"; "1:1:2" = "PG2"; "2:1:2" = "PG2"}
Add-HPOVStorageSystem -hostname "3par-array.consoto.com" -username 3paradm -password 3pardata -Domain VirtaulDomain1 -Ports $StorageSystemPorts -PortGroups $StoragePortGroups | Wait-HPOVTaskComplete
</pre>
Add the Storage System using default settings, and specify the Storage System Ports that will be assigned to the Expected Networks.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$IscsiNetwork = Get-HPOVNetwork -Name "IscsiNetwork" -ErrorAction Stop
$StoreVirtualAddress = "storevirtual1.domain.com"
$StorageSystemPSCredential = Get-Credential -Username administrator
Add-HPOVStorageSystem -Family StoreVirtual -Hostname $StoreVirtualAddress -Credential $StorageSystemPSCredential -VIPS @{ "192.168.191.22" = $IscsiNetwork }</pre>
Add a StoreVirtual storage system with PSCredential object.



### Related Links

* [Get-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageSystem)
* [Remove-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageSystem)
* [Show-HPOVStorageSystemPerformancePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVStorageSystemPerformancePolicy)
* [Update-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStorageSystem)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Add-HPOVStorageSystem
<p>
Import a supported Storage System

### SYNTAX
<p>
<pre><code>Add-HPOVStorageSystem [-Hostname] &lt;String&gt; [-Credential] &lt;PSCredential PSCredential&gt;[ [-Username] &lt;String&gt;][ [-Password] &lt;Object&gt;][ [-Family] &lt;String&gt;][ [-Domain] &lt;String&gt;][ [-Ports] &lt;Object&gt;][ [-PortGroups] &lt;Hashtable&gt;][ [-ShowSystemDetails] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVStorageSystem [-Hostname] &lt;String&gt; [-VIPS] &lt;Hashtable&gt; [-Credential] &lt;PSCredential PSCredential&gt;[ [-Username] &lt;String&gt;][ [-Password] &lt;Object&gt;][ [-Family] &lt;String&gt;][ [-ShowSystemDetails] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will assist with importing a supported Storage System. In order for the Storage Ports to be mapped to Expected Networks, either a Supported SAN Manager will need to be configured, or 3PAR Direct Attach networks will have to exist.

When adding supported HP 3PAR storage systems, please make sure "startwsapi" has been executed from the HP 3PAR CLI, which enables the HP 3PAR REST API that is required by HPE OneView.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead. Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Domain &lt;String&gt;<p>
Specify the HP 3PAR Virtual Domain name.  Default is "NO DOMAIN". The value provided is CAsesEnSItive.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>NO DOMAIN</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Family &lt;String&gt;<p>
Aliases [-Type]

Specify the type of Storage System to add: StorageVirtual or StoreServ.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>StoreServ</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
IP Address of FQDN of the storage systems.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Password of administrator account password.  Can either be String or System.Security.SecureString.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PortGroups &lt;Hashtable&gt;<p>
Specify the Host Ports to group together. 
	
Example: @{"1:1:1" = "PG1"; "2:2:2" = "PG2"}

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Ports &lt;Object&gt;<p>
Specify the Host Ports and Expected Network in an Array of PSCustomObject entries. 
	
Example: @{"1:1:1"="Fabric A";"2:2:2"="Fabric B"}

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ShowSystemDetails &lt;SwitchParameter&gt;<p>
By default, the Cmdlet will no longer display the details about the Storage System.  Use this parameter to display information about the storage system when adding to the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Administrator account of the target storage system.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VIPS &lt;Hashtable&gt;<p>
Specify the StoreVirtual VIP(s) and associated Ethernet Network. 
	
Example:

	@{"10.158.11.42" = $EthernetNetwork}

or

	@{"10.158.11.42" = $EthernetNetwork1; "10.158.12.42" = $EthernetNetwork2;}

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Add Storage System Async Task.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Add-HPOVStorageSystem -hostname "3par-array.consoto.com" -username 3paradm -password 3pardata -Async
Wait-HPOVTaskComplete $task

</pre>
Add the Storage System using default settings, and let the appliance detect the connected Storage System Ports.  (A supported SAN Manager must first be added, and Managed SANs mapped to the specific FC Network resources.)


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$StorageSystemPorts = @{"1:1:1" = "Fabric A"; "2:1:1" = "Fabric A"; "1:1:2" = "Fabric B"; "2:1:2" = "Fabric B"}
$StoragePortGroups = @{"1:1:1"= "PG1";  "2:1:1" = "PG1"; "1:1:2" = "PG2"; "2:1:2" = "PG2"}
Add-HPOVStorageSystem -hostname "3par-array.consoto.com" -username 3paradm -password 3pardata -Domain VirtaulDomain1 -Ports $StorageSystemPorts -PortGroups $StoragePortGroups | Wait-HPOVTaskComplete
</pre>
Add the Storage System using default settings, and specify the Storage System Ports that will be assigned to the Expected Networks.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$IscsiNetwork = Get-HPOVNetwork -Name "IscsiNetwork" -ErrorAction Stop
$StoreVirtualAddress = "storevirtual1.domain.com"
$StorageSystemPSCredential = Get-Credential -Username administrator
Add-HPOVStorageSystem -Family StoreVirtual -Hostname $StoreVirtualAddress -Credential $StorageSystemPSCredential -VIPS @{ "192.168.191.22" = $IscsiNetwork }</pre>
Add a StoreVirtual storage system with PSCredential object.



### Related Links

* [Get-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageSystem)
* [Remove-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageSystem)
* [Update-HPOVStorageSystem](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVStorageSystem)


***
<div align=right><a href="#Top">Top</a></div>
