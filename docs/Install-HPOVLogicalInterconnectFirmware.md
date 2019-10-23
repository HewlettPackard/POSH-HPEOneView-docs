<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Install-HPOVLogicalInterconnectFirmware
<p>
Install Logical Interconnect Firmware.

### SYNTAX
<p>
<pre><code>Install-HPOVLogicalInterconnectFirmware [-LogicalInterconnect] &lt;Object&gt; [-Baseline] &lt;Object&gt; [-Method] &lt;String&gt; [-EthernetActivateOrder] &lt;String&gt; [-EthernetActivateDelay] &lt;Int32&gt; [-FCActivateOrder] &lt;String&gt; [-FCActivateDelay] &lt;Int32&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-Force] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this cmdlet to install/update the Logical Interconnect (i.e. Virtual Connect) firmware.  You can provide the Logical Interconnect Name, URI or Object and must specify a valid SPP Baseline present on the appliance.

This cmdlet will default to performing an Update (Stage + Activate), which will cause an outage.  If you wish to avoid an outage, first stage the update usind -method stage, then -method activate.  Interconnect activation can be controlled with the -ActivateOrder parameter, which defaults to Odd interconnects.  Once the specified interconnect activation is complete, you must then call the cmdlet again with the alternate ActivateOrder value (i.e. even.)


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Baseline &lt;Object&gt;<p>
Firmware Baseline Name, URI or Object.

<table><tbody><tr><td>Aliases</td><td>spp</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EthernetActivateDelay &lt;Int32&gt;<p>
The amount of time in seconds to delay activating additional modules.

Default is 5 seconds.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EthernetActivateOrder &lt;String&gt;<p>
Aliases [-order, -ActivateOrder]
Specify the Ethernet module firmware activation order.  Accepted values are:

	* OddEven (Default)
	* Parallel
	* Serial

<table><tbody><tr><td>Aliases</td><td>Order, ActivateOrder</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>OddEven</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FCActivateDelay &lt;Int32&gt;<p>
The amount of time in seconds to delay activating additional modules.

Default is 5 seconds.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FCActivateOrder &lt;String&gt;<p>
Specify the Fibre Channel module firmware activation order.  Accepted values are:

	* OddEven
	* Parallel
	* Serial (Default)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Serial</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force the firmware update if the update version matches what is already installed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalInterconnect &lt;Object&gt;<p>
Aliases [-li, -uri, -name]
The Logical Interconnect object(s), name(s) or uris(s) to be updated.

<table><tbody><tr><td>Aliases</td><td>name, uri, li</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Method &lt;String&gt;<p>
Upgrade method to perform.  Accepted values are:

	* UPDATE (Default)
	* STAGE
	* ACTIVATE

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Update</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect Resource Object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Returns an async task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$li = Get-HPOVLogicalInterconnect Encl1-LI
$spp = Get-HPOVSppFile "HP Service Pack for ProLiant" 
$task = Install-HPOVLogicalInterconnectFirmware Stage $li $spp 
Wait-HPOVTaskComplete $task
$task = Install-HPOVLogicalInterconnectFirmware Activate $li 
Wait-HPOVTaskComplete $task

</pre>
Perform a firmware update of the Encl1-LI Logical Interconnect by first staging the firmware. Then Acitate the firmware using the default OddEven Interconnect Bay order.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalInterconnect Encl1-LI  | Install-HPOVLogicalInterconnectFirmware -method Update -baseline "HP Service Pack for ProLiant" -confirm:$false | Wait-HPOVTaskComplete
</pre>
Perform a firmware update of the Encl1-LI Logical Interconnect, do not prompt for confirmation, then wait for the task to complete.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Install-HPOVLogicalInterconnectFirmware
<p>
Install Logical Interconnect Firmware.

### SYNTAX
<p>
<pre><code>Install-HPOVLogicalInterconnectFirmware [-LogicalInterconnect] &lt;Object&gt; [-Baseline] &lt;Object&gt; [-Method] &lt;String&gt; [-EthernetActivateOrder] &lt;String&gt; [-EthernetActivateDelay] &lt;Int32&gt; [-FCActivateOrder] &lt;String&gt; [-FCActivateDelay] &lt;Int32&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-Force] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this cmdlet to install/update the Logical Interconnect (i.e. Virtual Connect) firmware.  You can provide the Logical Interconnect Name, URI or Object and must specify a valid SPP Baseline present on the appliance.

This cmdlet will default to performing an Update (Stage + Activate), which will cause an outage.  If you wish to avoid an outage, first stage the update usind -method stage, then -method activate.  Interconnect activation can be controlled with the -ActivateOrder parameter, which defaults to Odd interconnects.  Once the specified interconnect activation is complete, you must then call the cmdlet again with the alternate ActivateOrder value (i.e. even.)


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Baseline &lt;Object&gt;<p>
Firmware Baseline Name, URI or Object.

<table><tbody><tr><td>Aliases</td><td>spp</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EthernetActivateDelay &lt;Int32&gt;<p>
The amount of time in seconds to delay activating additional modules.

Default is 5 seconds.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EthernetActivateOrder &lt;String&gt;<p>
Aliases [-order, -ActivateOrder]
Specify the Ethernet module firmware activation order.  Accepted values are:

	* OddEven (Default)
	* Parallel
	* Serial

<table><tbody><tr><td>Aliases</td><td>Order, ActivateOrder</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>OddEven</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FCActivateDelay &lt;Int32&gt;<p>
The amount of time in seconds to delay activating additional modules.

Default is 5 seconds.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FCActivateOrder &lt;String&gt;<p>
Specify the Fibre Channel module firmware activation order.  Accepted values are:

	* OddEven
	* Parallel
	* Serial (Default)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Serial</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force the firmware update if the update version matches what is already installed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalInterconnect &lt;Object&gt;<p>
Aliases [-li, -uri, -name]
The Logical Interconnect object(s), name(s) or uris(s) to be updated.

<table><tbody><tr><td>Aliases</td><td>name, uri, li</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Method &lt;String&gt;<p>
Upgrade method to perform.  Accepted values are:

	* UPDATE (Default)
	* STAGE
	* ACTIVATE

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Update</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect Resource Object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Returns an async task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$li = Get-HPOVLogicalInterconnect Encl1-LI
$spp = Get-HPOVSppFile "HP Service Pack for ProLiant" 
$task = Install-HPOVLogicalInterconnectFirmware Stage $li $spp 
Wait-HPOVTaskComplete $task
$task = Install-HPOVLogicalInterconnectFirmware Activate $li 
Wait-HPOVTaskComplete $task

</pre>
Perform a firmware update of the Encl1-LI Logical Interconnect by first staging the firmware. Then Acitate the firmware using the default OddEven Interconnect Bay order.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalInterconnect Encl1-LI  | Install-HPOVLogicalInterconnectFirmware -method Update -baseline "HP Service Pack for ProLiant" -confirm:$false | Wait-HPOVTaskComplete
</pre>
Perform a firmware update of the Encl1-LI Logical Interconnect, do not prompt for confirmation, then wait for the task to complete.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Install-HPOVLogicalInterconnectFirmware
<p>
Install Logical Interconnect Firmware.

### SYNTAX
<p>
<pre><code>Install-HPOVLogicalInterconnectFirmware [-LogicalInterconnect] &lt;Object&gt; [-Baseline] &lt;Object&gt; [-Method] &lt;String&gt; [-EthernetActivateOrder] &lt;String&gt; [-EthernetActivateDelay] &lt;Int32&gt; [-FCActivateOrder] &lt;String&gt; [-FCActivateDelay] &lt;Int32&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-Force] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this cmdlet to install/update the Logical Interconnect (i.e. Virtual Connect) firmware.  You can provide the Logical Interconnect Name, URI or Object and must specify a valid SPP Baseline present on the appliance.

This cmdlet will default to performing an Update (Stage + Activate), which will cause an outage.  If you wish to avoid an outage, first stage the update usind -method stage, then -method activate.  Interconnect activation can be controlled with the -ActivateOrder parameter, which defaults to Odd interconnects.  Once the specified interconnect activation is complete, you must then call the cmdlet again with the alternate ActivateOrder value (i.e. even.)


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Baseline &lt;Object&gt;<p>
Firmware Baseline Name, URI or Object.

<table><tbody><tr><td>Aliases</td><td>spp</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EthernetActivateDelay &lt;Int32&gt;<p>
The amount of time in seconds to delay activating additional modules.

Default is 5 seconds.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EthernetActivateOrder &lt;String&gt;<p>
Aliases [-order, -ActivateOrder]
Specify the Ethernet module firmware activation order.  Accepted values are:

	* OddEven (Default)
	* Parallel
	* Serial

<table><tbody><tr><td>Aliases</td><td>Order, ActivateOrder</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>OddEven</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FCActivateDelay &lt;Int32&gt;<p>
The amount of time in seconds to delay activating additional modules.

Default is 5 seconds.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>5</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FCActivateOrder &lt;String&gt;<p>
Specify the Fibre Channel module firmware activation order.  Accepted values are:

	* OddEven
	* Parallel
	* Serial (Default)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Serial</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Force the firmware update if the update version matches what is already installed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalInterconnect &lt;Object&gt;<p>
Aliases [-li, -uri, -name]
The Logical Interconnect object(s), name(s) or uris(s) to be updated.

<table><tbody><tr><td>Aliases</td><td>name, uri, li</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Method &lt;String&gt;<p>
Upgrade method to perform.  Accepted values are:

	* UPDATE (Default)
	* STAGE
	* ACTIVATE

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Update</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Logical Interconnect Resource Object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Returns an async task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$li = Get-HPOVLogicalInterconnect Encl1-LI
$spp = Get-HPOVSppFile "HP Service Pack for ProLiant" 
$task = Install-HPOVLogicalInterconnectFirmware Stage $li $spp 
Wait-HPOVTaskComplete $task
$task = Install-HPOVLogicalInterconnectFirmware Activate $li 
Wait-HPOVTaskComplete $task

</pre>
Perform a firmware update of the Encl1-LI Logical Interconnect by first staging the firmware. Then Acitate the firmware using the default OddEven Interconnect Bay order.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalInterconnect Encl1-LI  | Install-HPOVLogicalInterconnectFirmware -method Update -baseline "HP Service Pack for ProLiant" -confirm:$false | Wait-HPOVTaskComplete
</pre>
Perform a firmware update of the Encl1-LI Logical Interconnect, do not prompt for confirmation, then wait for the task to complete.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
