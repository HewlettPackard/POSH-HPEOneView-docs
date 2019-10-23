<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVServer
<p>
Remove a rackmount server from the appliance.

### SYNTAX
<p>
<pre><code>Remove-HPOVServer [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Removes a physical server object from appliance management.
    
The server object can be specified by its name or its full URI on the appliance by using the -Server parameter. It can also be supplied as an object by using the -resource parameter the object variable can be piped to Remove-HPOVServer.
    
Blade servers can only be removed by removing the enclosure (Remove-HPOVEnclosure), or phyhsically removing the blade from the enclosure.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Use to force-remove the server.  For example, if the server is gone or managed by a different appliance, force-remove will remove the server from this appliance without removing any of the HPE OneView applied configuration.

When the request is accepted by the appliance, it does not return an Async Task Resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-uri, -name, -Server]
The Server object(s), name(s) or uri(s) to be removed from management.

<table><tbody><tr><td>Aliases</td><td>uri, name, Server</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Provide the Server Resource Object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async removal task

 _**System.Management.Automation.PSCustomObject**_

 

When using the -Force parameter, a PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVServer -name "Server-1234" -force
Wait-HPOVTaskComplete $task
                    
</pre>
Force-remove the server specifed by name. Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$server = Get-HPOVServer -name "Server-1234"
Remove-HPOVServer $server -confirm:$false
</pre>
Remove the server specifed by $server. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$server = Get-HPOVServer -name "Server-1234"
Remove-HPOVServer $server -confirm:$false -force
</pre>
Remove the server specifed by $server. Disable confirmation prompt, and force remove the server.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVServer | Remove-HPOVServer
</pre>
Search for all rackmount servers and remove them from appliance.



### Related Links

* [Add-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVServer)
* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile)
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile)
* [Get-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServer)
* [Get-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerHardwareType)
* [Get-HPOVServerOneTimeBoot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerOneTimeBoot)
* [Get-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfile)
* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList)
* [Get-HPOVServerProfileMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileMessage)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [Join-HPOVServerProfileToTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Join-HPOVServerProfileToTemplate)
* [New-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfile)
* [New-HPOVServerProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAssign)
* [New-HPOVServerProfileAttachVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAttachVolume)
* [New-HPOVServerProfileConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileConnection)
* [New-HPOVServerProfileLogicalDisk](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDisk)
* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Restart-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restart-HPOVServer)
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerHardwareType)
* [Set-HPOVServerOneTimeBoot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerOneTimeBoot)
* [Set-HPOVServerPower](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerPower)
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)
* [Start-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Start-HPOVServer)
* [Stop-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Stop-HPOVServer)
* [Update-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServer)
* [Update-HPOVServerHardwareLicenseIntent](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerHardwareLicenseIntent)
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVServer
<p>
Remove a rackmount server from the appliance.

### SYNTAX
<p>
<pre><code>Remove-HPOVServer [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Removes a physical server object from appliance management.
    
The server object can be specified by its name or its full URI on the appliance by using the -Server parameter. It can also be supplied as an object by using the -resource parameter the object variable can be piped to Remove-HPOVServer.
    
Blade servers can only be removed by removing the enclosure (Remove-HPOVEnclosure), or phyhsically removing the blade from the enclosure.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Use to force-remove the server.  For example, if the server is gone or managed by a different appliance, force-remove will remove the server from this appliance without removing any of the HPE OneView applied configuration.

When the request is accepted by the appliance, it does not return an Async Task Resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-uri, -name, -Server]
The Server object(s), name(s) or uri(s) to be removed from management.

<table><tbody><tr><td>Aliases</td><td>uri, name, Server</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Provide the Server Resource Object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async removal task

 _**System.Management.Automation.PSCustomObject**_

 

When using the -Force parameter, a PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVServer -name "Server-1234" -force
Wait-HPOVTaskComplete $task
                    
</pre>
Force-remove the server specifed by name. Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$server = Get-HPOVServer -name "Server-1234"
Remove-HPOVServer $server -confirm:$false
</pre>
Remove the server specifed by $server. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$server = Get-HPOVServer -name "Server-1234"
Remove-HPOVServer $server -confirm:$false -force
</pre>
Remove the server specifed by $server. Disable confirmation prompt, and force remove the server.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVServer | Remove-HPOVServer
</pre>
Search for all rackmount servers and remove them from appliance.



### Related Links

* [Add-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVServer)
* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile)
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile)
* [Get-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServer)
* [Get-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerHardwareType)
* [Get-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfile)
* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList)
* [Get-HPOVServerProfileMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileMessage)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [Join-HPOVServerProfileToTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Join-HPOVServerProfileToTemplate)
* [New-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfile)
* [New-HPOVServerProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAssign)
* [New-HPOVServerProfileAttachVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAttachVolume)
* [New-HPOVServerProfileConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileConnection)
* [New-HPOVServerProfileLogicalDisk](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDisk)
* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Restart-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restart-HPOVServer)
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerHardwareType)
* [Set-HPOVServerPower](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerPower)
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)
* [Start-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Start-HPOVServer)
* [Stop-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Stop-HPOVServer)
* [Update-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServer)
* [Update-HPOVServerHardwareLicenseIntent](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerHardwareLicenseIntent)
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVServer
<p>
Remove a rackmount server from the appliance.

### SYNTAX
<p>
<pre><code>Remove-HPOVServer [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Removes a physical server object from appliance management.
    
The server object can be specified by its name or its full URI on the appliance by using the -Server parameter. It can also be supplied as an object by using the -resource parameter the object variable can be piped to Remove-HPOVServer.
    
Blade servers can only be removed by removing the enclosure (Remove-HPOVEnclosure), or phyhsically removing the blade from the enclosure.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Use to force-remove the server.  For example, if the server is gone or managed by a different appliance, force-remove will remove the server from this appliance without removing any of the HPE OneView applied configuration.

When the request is accepted by the appliance, it does not return an Async Task Resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-uri, -name, -Server]
The Server object(s), name(s) or uri(s) to be removed from management.

<table><tbody><tr><td>Aliases</td><td>uri, name, Server</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Provide the Server Resource Object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async removal task

 _**System.Management.Automation.PSCustomObject**_

 

When using the -Force parameter, a PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVServer -name "Server-1234" -force
Wait-HPOVTaskComplete $task
                    
</pre>
Force-remove the server specifed by name. Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$server = Get-HPOVServer -name "Server-1234"
Remove-HPOVServer $server -confirm:$false
</pre>
Remove the server specifed by $server. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$server = Get-HPOVServer -name "Server-1234"
Remove-HPOVServer $server -confirm:$false -force
</pre>
Remove the server specifed by $server. Disable confirmation prompt, and force remove the server.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVServer | Remove-HPOVServer
</pre>
Search for all rackmount servers and remove them from appliance.



### Related Links

* [Add-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVServer)
* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile)
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile)
* [Get-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServer)
* [Get-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerHardwareType)
* [Get-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfile)
* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList)
* [Get-HPOVServerProfileMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileMessage)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [Join-HPOVServerProfileToTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Join-HPOVServerProfileToTemplate)
* [New-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfile)
* [New-HPOVServerProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAssign)
* [New-HPOVServerProfileAttachVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAttachVolume)
* [New-HPOVServerProfileConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileConnection)
* [New-HPOVServerProfileLogicalDisk](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDisk)
* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Restart-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restart-HPOVServer)
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerHardwareType)
* [Set-HPOVServerPower](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerPower)
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)
* [Start-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Start-HPOVServer)
* [Stop-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Stop-HPOVServer)
* [Update-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServer)
* [Update-HPOVServerHardwareLicenseIntent](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerHardwareLicenseIntent)
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile)


***
<div align=right><a href="#Top">Top</a></div>
