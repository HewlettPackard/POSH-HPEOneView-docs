<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVUnmanagedDevice
<p>
Remove an Unmanaged Device.

### SYNTAX
<p>
<pre><code>Remove-HPOVUnmanagedDevice [-UnmanagedDevice] &lt;Object&gt;[ [-force] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to remove an Unmanaged Device from the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UnmanagedDevice &lt;Object&gt;<p>
Alias [-name, -uri]

The Name, URI or Object of the Unmanaged Device to remove.

<table><tbody><tr><td>Aliases</td><td>uri, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -force &lt;SwitchParameter&gt;<p>
Set to force-remove the resource.

When the request is accepted by the appliance, it does not return an Async Task Resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.UnmanagedResource [System.Management.Automation.PSCustomObject]**_

 Unmanaged Device resource object



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

When using the -Force parameter, a PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Remove-HPOVUnmanagedDevice MyDevice
</pre>
Remove the Unmanaged Device "MyDevice" from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Remove-HPOVUnmanagedDevice MyDevice -confirm:$false
</pre>
Remove the Unmanaged Device "MyDevice" from the appliance and do not prompt for confirmation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVUnmanagedDevice | Remove-HPOVUnmanagedDevice
</pre>
Get all Unmanaged Devices on the appliance and remove them.



### Related Links

* [Get-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUnmanagedDevice)
* [New-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUnmanagedDevice)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVUnmanagedDevice
<p>
Remove an Unmanaged Device.

### SYNTAX
<p>
<pre><code>Remove-HPOVUnmanagedDevice [-UnmanagedDevice] &lt;Object&gt;[ [-force] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to remove an Unmanaged Device from the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UnmanagedDevice &lt;Object&gt;<p>
Alias [-name, -uri]

The Name, URI or Object of the Unmanaged Device to remove.

<table><tbody><tr><td>Aliases</td><td>uri, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -force &lt;SwitchParameter&gt;<p>
Set to force-remove the resource.

When the request is accepted by the appliance, it does not return an Async Task Resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.UnmanagedResource [System.Management.Automation.PSCustomObject]**_

 Unmanaged Device resource object



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

When using the -Force parameter, a PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Remove-HPOVUnmanagedDevice MyDevice
</pre>
Remove the Unmanaged Device "MyDevice" from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Remove-HPOVUnmanagedDevice MyDevice -confirm:$false
</pre>
Remove the Unmanaged Device "MyDevice" from the appliance and do not prompt for confirmation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVUnmanagedDevice | Remove-HPOVUnmanagedDevice
</pre>
Get all Unmanaged Devices on the appliance and remove them.



### Related Links

* [Get-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUnmanagedDevice)
* [New-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUnmanagedDevice)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVUnmanagedDevice
<p>
Remove an Unmanaged Device.

### SYNTAX
<p>
<pre><code>Remove-HPOVUnmanagedDevice [-UnmanagedDevice] &lt;Object&gt;[ [-force] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to remove an Unmanaged Device from the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UnmanagedDevice &lt;Object&gt;<p>
Alias [-name, -uri]

The Name, URI or Object of the Unmanaged Device to remove.

<table><tbody><tr><td>Aliases</td><td>uri, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -force &lt;SwitchParameter&gt;<p>
Set to force-remove the resource.

When the request is accepted by the appliance, it does not return an Async Task Resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.UnmanagedResource [System.Management.Automation.PSCustomObject]**_

 Unmanaged Device resource object



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

When using the -Force parameter, a PSCustomObject is returned indicating successful removal of the resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Remove-HPOVUnmanagedDevice MyDevice
</pre>
Remove the Unmanaged Device "MyDevice" from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Remove-HPOVUnmanagedDevice MyDevice -confirm:$false
</pre>
Remove the Unmanaged Device "MyDevice" from the appliance and do not prompt for confirmation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVUnmanagedDevice | Remove-HPOVUnmanagedDevice
</pre>
Get all Unmanaged Devices on the appliance and remove them.



### Related Links

* [Get-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUnmanagedDevice)
* [New-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUnmanagedDevice)


***
<div align=right><a href="#Top">Top</a></div>
