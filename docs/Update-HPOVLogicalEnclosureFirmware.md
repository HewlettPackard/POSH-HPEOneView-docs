<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Update-HPOVLogicalEnclosureFirmware
<p>
Initiate Logical Enclosure Firmware update.

### SYNTAX
<p>
<pre><code>Update-HPOVLogicalEnclosureFirmware [-InputObject] &lt;Object&gt; [-Baseline] &lt;HPOneView.Appliance.Baseline&gt; [-FirmwareUpdateProcess] &lt;String&gt;[ [-InterconnectActivationMode] &lt;String&gt;][ [-ForceInstallation] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
You can update firmware from a logical enclosure for shared infrastructure, shared infrastructure and profiles, and OA (Onboard Administrators) only, if any.  When you update the firmware for an enclosure associated with a logical enclosure, the firmware baseline configured for the logical enclosure sets the baseline on the enclosure and each of the logical interconnects in the enclosure, as well as the OA.
 Firmware is updated in the following order: 

	* Onboard Administrators
	* Logical interconnects
	* Server hardware and their associated server profiles
 The Orchestrated activation option allows nondisruptive updates of interconnects in a production ready, properly configured, and redundant environment. Orchestrated firmware updates do not affect the network traffic and no outages are caused while the update process is in progress as one virtual connect module is always forwarding network traffic, with no or minimal impact to application network connection.
 A default delay of 8 minutes is set between activating or rebooting interconnect modules.
 Hypervisor clusters are updated nondisruptively when the orchestrated activation option is chosen. If the logical enclosure contains one or more hypervisor profiles, each hypervisor is serially placed into a maintenance mode before updating. It can take up to 90 minutes to place a hypervisor into the maintenance mode, perform the firmware update, and take it back out of the maintenance mode.
 Parallel activation activates all the interconnect modules at the same time, resulting in disruption of the network and storage connectivity. It is recommended to perform parallel activation during a maintenance window when you can better coordinate the downtime.
 When selecting "SharedInfrastructureAndServerProfiles" firmware update process, any servers without profiles will perform an automated offline firmware update. Assigned Server Profiles will require HPE Smart Update Tools (HPSUT, iSUT) to be installed and available.
 Required Privileges: Infrastructure administrator or Server administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Baseline &lt;HPOneView.Appliance.Baseline&gt;<p>
The firmware bundle or baseline to install.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FirmwareUpdateProcess &lt;String&gt;<p>
Specify the type of firmware update to invoke.  Allowed values:

	* EnclosureOnly - Will only upgrade enclosure or frame components (c-Class Onboard Administrator, Synergy Frame Link Module)
	* SharedInfrastructureOnly
	* SharedInfrastructureAndServerProfiles

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ForceInstallation &lt;SwitchParameter&gt;<p>
Force the re-installation or downgrade of components within the baseline.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The HPOneView.LogicalEnclosure from Get-HPOVLogicalEnclosure.

<table><tbody><tr><td>Aliases</td><td>le, LogicalEnclosure</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InterconnectActivationMode &lt;String&gt;<p>
Specify the logical interconnect activation mode. Choosing "Parallel" is the fastest update operation but will require downtime and servers to be powered off.
 Allowed values:

	* Orchestrated
	* Parallel Default: Orchestrated

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]**_

 Logical enclosure resource from Get-HPOVLogicalEnclosure.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Basline = Get-HPOVBaseline -Name "HPE Service Pack for ProLiant" -ErrorAction Stop Get-HPOVLogicalEnclosure -Name Encl1 -ErrorAction Stop | Update-HPOVLogicalEnclosureFirmware -Baseline $Basline -FirmwareUpdateProcess SharedInfrastructureOnly</pre>
Get the specified baseline, and update the specified logical enclosure's shared infrastructure only.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Update-HPOVLogicalEnclosureFirmware
<p>
Initiate Logical Enclosure Firmware update.

### SYNTAX
<p>
<pre><code>Update-HPOVLogicalEnclosureFirmware [-InputObject] &lt;Object&gt; [-Baseline] &lt;HPOneView.Appliance.Baseline&gt; [-FirmwareUpdateProcess] &lt;String&gt;[ [-InterconnectActivationMode] &lt;String&gt;][ [-ForceInstallation] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
You can update firmware from a logical enclosure for shared infrastructure, shared infrastructure and profiles, and OA (Onboard Administrators) only, if any.  When you update the firmware for an enclosure associated with a logical enclosure, the firmware baseline configured for the logical enclosure sets the baseline on the enclosure and each of the logical interconnects in the enclosure, as well as the OA.
 Firmware is updated in the following order: 

	* Onboard Administrators
	* Logical interconnects
	* Server hardware and their associated server profiles
 The Orchestrated activation option allows nondisruptive updates of interconnects in a production ready, properly configured, and redundant environment. Orchestrated firmware updates do not affect the network traffic and no outages are caused while the update process is in progress as one virtual connect module is always forwarding network traffic, with no or minimal impact to application network connection.
 A default delay of 8 minutes is set between activating or rebooting interconnect modules.
 Hypervisor clusters are updated nondisruptively when the orchestrated activation option is chosen. If the logical enclosure contains one or more hypervisor profiles, each hypervisor is serially placed into a maintenance mode before updating. It can take up to 90 minutes to place a hypervisor into the maintenance mode, perform the firmware update, and take it back out of the maintenance mode.
 Parallel activation activates all the interconnect modules at the same time, resulting in disruption of the network and storage connectivity. It is recommended to perform parallel activation during a maintenance window when you can better coordinate the downtime.
 When selecting "SharedInfrastructureAndServerProfiles" firmware update process, any servers without profiles will perform an automated offline firmware update. Assigned Server Profiles will require HPE Smart Update Tools (HPSUT, iSUT) to be installed and available.
 Required Privileges: Infrastructure administrator or Server administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Baseline &lt;HPOneView.Appliance.Baseline&gt;<p>
The firmware bundle or baseline to install.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FirmwareUpdateProcess &lt;String&gt;<p>
Specify the type of firmware update to invoke.  Allowed values:

	* EnclosureOnly - Will only upgrade enclosure or frame components (c-Class Onboard Administrator, Synergy Frame Link Module)
	* SharedInfrastructureOnly
	* SharedInfrastructureAndServerProfiles

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ForceInstallation &lt;SwitchParameter&gt;<p>
Force the re-installation or downgrade of components within the baseline.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The HPOneView.LogicalEnclosure from Get-HPOVLogicalEnclosure.

<table><tbody><tr><td>Aliases</td><td>le, LogicalEnclosure</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InterconnectActivationMode &lt;String&gt;<p>
Specify the logical interconnect activation mode. Choosing "Parallel" is the fastest update operation but will require downtime and servers to be powered off.
 Allowed values:

	* Orchestrated
	* Parallel Default: Orchestrated

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]**_

 Logical enclosure resource from Get-HPOVLogicalEnclosure.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Basline = Get-HPOVBaseline -Name "HPE Service Pack for ProLiant" -ErrorAction Stop Get-HPOVLogicalEnclosure -Name Encl1 -ErrorAction Stop | Update-HPOVLogicalEnclosureFirmware -Baseline $Basline -FirmwareUpdateProcess SharedInfrastructureOnly</pre>
Get the specified baseline, and update the specified logical enclosure's shared infrastructure only.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Update-HPOVLogicalEnclosureFirmware
<p>
Initiate Logical Enclosure Firmware update.

### SYNTAX
<p>
<pre><code>Update-HPOVLogicalEnclosureFirmware [-InputObject] &lt;Object&gt; [-Baseline] &lt;HPOneView.Appliance.Baseline&gt; [-FirmwareUpdateProcess] &lt;String&gt;[ [-InterconnectActivationMode] &lt;String&gt;][ [-ForceInstallation] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
You can update firmware from a logical enclosure for shared infrastructure, shared infrastructure and profiles, and OA (Onboard Administrators) only, if any.  When you update the firmware for an enclosure associated with a logical enclosure, the firmware baseline configured for the logical enclosure sets the baseline on the enclosure and each of the logical interconnects in the enclosure, as well as the OA.
 Firmware is updated in the following order: 

	* Onboard Administrators
	* Logical interconnects
	* Server hardware and their associated server profiles
 The Orchestrated activation option allows nondisruptive updates of interconnects in a production ready, properly configured, and redundant environment. Orchestrated firmware updates do not affect the network traffic and no outages are caused while the update process is in progress as one virtual connect module is always forwarding network traffic, with no or minimal impact to application network connection.
 A default delay of 8 minutes is set between activating or rebooting interconnect modules.
 Hypervisor clusters are updated nondisruptively when the orchestrated activation option is chosen. If the logical enclosure contains one or more hypervisor profiles, each hypervisor is serially placed into a maintenance mode before updating. It can take up to 90 minutes to place a hypervisor into the maintenance mode, perform the firmware update, and take it back out of the maintenance mode.
 Parallel activation activates all the interconnect modules at the same time, resulting in disruption of the network and storage connectivity. It is recommended to perform parallel activation during a maintenance window when you can better coordinate the downtime.
 When selecting "SharedInfrastructureAndServerProfiles" firmware update process, any servers without profiles will perform an automated offline firmware update. Assigned Server Profiles will require HPE Smart Update Tools (HPSUT, iSUT) to be installed and available.
 Required Privileges: Infrastructure administrator or Server administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Baseline &lt;HPOneView.Appliance.Baseline&gt;<p>
The firmware bundle or baseline to install.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FirmwareUpdateProcess &lt;String&gt;<p>
Specify the type of firmware update to invoke.  Allowed values:

	* EnclosureOnly - Will only upgrade enclosure or frame components (c-Class Onboard Administrator, Synergy Frame Link Module)
	* SharedInfrastructureOnly
	* SharedInfrastructureAndServerProfiles

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ForceInstallation &lt;SwitchParameter&gt;<p>
Force the re-installation or downgrade of components within the baseline.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The HPOneView.LogicalEnclosure from Get-HPOVLogicalEnclosure.

<table><tbody><tr><td>Aliases</td><td>le, LogicalEnclosure</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InterconnectActivationMode &lt;String&gt;<p>
Specify the logical interconnect activation mode. Choosing "Parallel" is the fastest update operation but will require downtime and servers to be powered off.
 Allowed values:

	* Orchestrated
	* Parallel Default: Orchestrated

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]**_

 Logical enclosure resource from Get-HPOVLogicalEnclosure.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Basline = Get-HPOVBaseline -Name "HPE Service Pack for ProLiant" -ErrorAction Stop Get-HPOVLogicalEnclosure -Name Encl1 -ErrorAction Stop | Update-HPOVLogicalEnclosureFirmware -Baseline $Basline -FirmwareUpdateProcess SharedInfrastructureOnly</pre>
Get the specified baseline, and update the specified logical enclosure's shared infrastructure only.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
