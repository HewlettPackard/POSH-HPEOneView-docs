<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVPowerDevice
<p>
Remove power device (iPDU)

### SYNTAX
<p>
<pre><code>Remove-HPOVPowerDevice [-InputObject] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Removes a power device (iPDU) from appliance management.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Set to $true to force-remove the power device.  Force-removing will succeed even when there are connectivity issues or resource errors.

When the request is accepted by the appliance, it does not return an Async Task Resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Power Device object(s), name(s) or uri(s) to be removed from management.

<table><tbody><tr><td>Aliases</td><td>uri, name, PowerDevice</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.PowerDeliveryDevice [System.Management.Automation.PSCustomObject]**_

 Power Device (iPDU) Resource Object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async remove task

 _**System.Management.Automation.PSCustomObject**_

 

When using the -Force parameter, a PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVPowerDevice -PowerDevice "iPDU16" | Wait-HPOVTaskComplete
</pre>
Remove the power device specifed by name. Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ipdu = Get-HPOVPowerDevice -name "iPDU24"
Remove-HPOVPowerDevice -PowerDevice $ipdu -force -confirm:$false

</pre>
Force-Remove the profile specifed by $ipdu. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVPowerDevice | Remove-HPOVPowerDevice
</pre>
Search for all power devices and remove them from appliance.



### Related Links

* [Add-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDevice)
* [Add-HPOVPowerDeviceConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDeviceConnection)
* [Get-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVPowerDevice)
* [New-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVPowerDevice)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVPowerDevice
<p>
Remove power device (iPDU)

### SYNTAX
<p>
<pre><code>Remove-HPOVPowerDevice [-InputObject] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Removes a power device (iPDU) from appliance management.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Set to $true to force-remove the power device.  Force-removing will succeed even when there are connectivity issues or resource errors.

When the request is accepted by the appliance, it does not return an Async Task Resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Power Device object(s), name(s) or uri(s) to be removed from management.

<table><tbody><tr><td>Aliases</td><td>uri, name, PowerDevice</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.PowerDeliveryDevice [System.Management.Automation.PSCustomObject]**_

 Power Device (iPDU) Resource Object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async remove task

 _**System.Management.Automation.PSCustomObject**_

 

When using the -Force parameter, a PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVPowerDevice -PowerDevice "iPDU16" | Wait-HPOVTaskComplete
</pre>
Remove the power device specifed by name. Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ipdu = Get-HPOVPowerDevice -name "iPDU24"
Remove-HPOVPowerDevice -PowerDevice $ipdu -force -confirm:$false

</pre>
Force-Remove the profile specifed by $ipdu. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVPowerDevice | Remove-HPOVPowerDevice
</pre>
Search for all power devices and remove them from appliance.



### Related Links

* [Add-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDevice)
* [Add-HPOVPowerDeviceConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDeviceConnection)
* [Get-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVPowerDevice)
* [New-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVPowerDevice)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVPowerDevice
<p>
Remove power device (iPDU)

### SYNTAX
<p>
<pre><code>Remove-HPOVPowerDevice [-InputObject] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Removes a power device (iPDU) from appliance management.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Set to $true to force-remove the power device.  Force-removing will succeed even when there are connectivity issues or resource errors.

When the request is accepted by the appliance, it does not return an Async Task Resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Power Device object(s), name(s) or uri(s) to be removed from management.

<table><tbody><tr><td>Aliases</td><td>uri, name, PowerDevice</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.PowerDeliveryDevice [System.Management.Automation.PSCustomObject]**_

 Power Device (iPDU) Resource Object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async remove task

 _**System.Management.Automation.PSCustomObject**_

 

When using the -Force parameter, a PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVPowerDevice -PowerDevice "iPDU16" | Wait-HPOVTaskComplete
</pre>
Remove the power device specifed by name. Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ipdu = Get-HPOVPowerDevice -name "iPDU24"
Remove-HPOVPowerDevice -PowerDevice $ipdu -force -confirm:$false

</pre>
Force-Remove the profile specifed by $ipdu. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVPowerDevice | Remove-HPOVPowerDevice
</pre>
Search for all power devices and remove them from appliance.



### Related Links

* [Add-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDevice)
* [Add-HPOVPowerDeviceConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVPowerDeviceConnection)
* [Get-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVPowerDevice)
* [New-HPOVPowerDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVPowerDevice)


***
<div align=right><a href="#Top">Top</a></div>
