<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Reset-HPOVEnclosureDevice
<p>
Power reset or EFuse HPS Synergy Frame component.

### SYNTAX
<p>
<pre><code>Reset-HPOVEnclosureDevice [-Enclosure] &lt;Object&gt; [-Component] &lt;String&gt; [-DeviceID] &lt;Int32&gt;[ [-Efuse] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Reset-HPOVEnclosureDevice [-Enclosure] &lt;Object&gt; [-Component] &lt;String&gt; [-DeviceID] &lt;Int32&gt;[ [-Reset] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will assist Server Administrators in performing various power operations with enclosure resources.  The following resources are supported with their supported operation:

	* HPE Synergy Appliance Bay - EFuse
	* HPE Synergy Frame Link Module - EFuse or Resetn	* Device Bay - EFuse or Resetn	* HPE Synergy Fabric Module Device - EFuse



### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Component &lt;String&gt;<p>
The embedded component to perform the action against.  Allowed value:

* FLM - Frame Link Module.  Both EFuse and Reset are supported.
* Appliance - Management Appliance; Synergy Compser or Synergy Image Streamer.  Only supported method is EFuse.
* ICM - Synergy Fabric Interconnect Module.  Only supported method is EFuse.
* Device - Synergy Device (e.g. Compute Node populated in Bay 1). Both EFuse and Reset are supported.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DeviceID &lt;Int32&gt;<p>
The corrisponding bay ID.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Efuse &lt;SwitchParameter&gt;<p>
EFuse will take away and then present power back to the device.  Supported with all component types.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enclosure &lt;Object&gt;<p>
The Synergy Frame resource from Get-HPOVEnclosure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reset &lt;SwitchParameter&gt;<p>
Reset power to the device.  Only supported with certain component types.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Enclosure**_

 Resource from Get-HPOVEnclosure.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Enclosure = Get-HPOVEnclosure -Name Enclosure1 -ErrorAction Stop
Reset-HPOVEnclosureDevice -Enclosure $Enclosure -Component FLM -DeviceID 1 -EFuse
</pre>
Reset the FLM in slot 1 by performing an EFuse.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Task = Get-HPOVEnclosure -Name Enclosure1 -ErrorAction Stop | Reset-HPOVEnclosureDevice -Component Device -DeviceID 4 -Reset
</pre>
Reset the device in bay 4 by requesting it to reset itself.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Reset-HPOVEnclosureDevice
<p>
Power reset or EFuse HPS Synergy Frame component.

### SYNTAX
<p>
<pre><code>Reset-HPOVEnclosureDevice [-Enclosure] &lt;Object&gt; [-Component] &lt;String&gt; [-DeviceID] &lt;Int32&gt;[ [-Efuse] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Reset-HPOVEnclosureDevice [-Enclosure] &lt;Object&gt; [-Component] &lt;String&gt; [-DeviceID] &lt;Int32&gt;[ [-Reset] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will assist Server Administrators in performing various power operations with enclosure resources.  The following resources are supported with their supported operation:

	* HPE Synergy Appliance Bay - EFuse
	* HPE Synergy Frame Link Module - EFuse or Resetn	* Device Bay - EFuse or Resetn	* HPE Synergy Fabric Module Device - EFuse



### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Component &lt;String&gt;<p>
The embedded component to perform the action against.  Allowed value:

* FLM - Frame Link Module.  Both EFuse and Reset are supported.
* Appliance - Management Appliance; Synergy Compser or Synergy Image Streamer.  Only supported method is EFuse.
* ICM - Synergy Fabric Interconnect Module.  Only supported method is EFuse.
* Device - Synergy Device (e.g. Compute Node populated in Bay 1). Both EFuse and Reset are supported.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DeviceID &lt;Int32&gt;<p>
The corrisponding bay ID.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Efuse &lt;SwitchParameter&gt;<p>
EFuse will take away and then present power back to the device.  Supported with all component types.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enclosure &lt;Object&gt;<p>
The Synergy Frame resource from Get-HPOVEnclosure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reset &lt;SwitchParameter&gt;<p>
Reset power to the device.  Only supported with certain component types.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Enclosure**_

 Resource from Get-HPOVEnclosure.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Enclosure = Get-HPOVEnclosure -Name Enclosure1 -ErrorAction Stop
Reset-HPOVEnclosureDevice -Enclosure $Enclosure -Component FLM -DeviceID 1 -EFuse
</pre>
Reset the FLM in slot 1 by performing an EFuse.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Task = Get-HPOVEnclosure -Name Enclosure1 -ErrorAction Stop | Reset-HPOVEnclosureDevice -Component Device -DeviceID 4 -Reset
</pre>
Reset the device in bay 4 by requesting it to reset itself.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Reset-HPOVEnclosureDevice
<p>
Power reset or EFuse HPS Synergy Frame component.

### SYNTAX
<p>
<pre><code>Reset-HPOVEnclosureDevice [-Enclosure] &lt;Object&gt; [-Component] &lt;String&gt; [-DeviceID] &lt;Int32&gt;[ [-Efuse] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Reset-HPOVEnclosureDevice [-Enclosure] &lt;Object&gt; [-Component] &lt;String&gt; [-DeviceID] &lt;Int32&gt;[ [-Reset] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will assist Server Administrators in performing various power operations with enclosure resources.  The following resources are supported with their supported operation:

	* HPE Synergy Appliance Bay - EFuse
	* HPE Synergy Frame Link Module - EFuse or Resetn	* Device Bay - EFuse or Resetn	* HPE Synergy Fabric Module Device - EFuse



### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Component &lt;String&gt;<p>
The embedded component to perform the action against.  Allowed value:

* FLM - Frame Link Module.  Both EFuse and Reset are supported.
* Appliance - Management Appliance; Synergy Compser or Synergy Image Streamer.  Only supported method is EFuse.
* ICM - Synergy Fabric Interconnect Module.  Only supported method is EFuse.
* Device - Synergy Device (e.g. Compute Node populated in Bay 1). Both EFuse and Reset are supported.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DeviceID &lt;Int32&gt;<p>
The corrisponding bay ID.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Efuse &lt;SwitchParameter&gt;<p>
EFuse will take away and then present power back to the device.  Supported with all component types.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enclosure &lt;Object&gt;<p>
The Synergy Frame resource from Get-HPOVEnclosure.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reset &lt;SwitchParameter&gt;<p>
Reset power to the device.  Only supported with certain component types.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Enclosure**_

 Resource from Get-HPOVEnclosure.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Enclosure = Get-HPOVEnclosure -Name Enclosure1 -ErrorAction Stop
Reset-HPOVEnclosureDevice -Enclosure $Enclosure -Component FLM -DeviceID 1 -EFuse
</pre>
Reset the FLM in slot 1 by performing an EFuse.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Task = Get-HPOVEnclosure -Name Enclosure1 -ErrorAction Stop | Reset-HPOVEnclosureDevice -Component Device -DeviceID 4 -Reset
</pre>
Reset the device in bay 4 by requesting it to reset itself.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
