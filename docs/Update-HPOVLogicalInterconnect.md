<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Update-HPOVLogicalInterconnect
<p>
Updates a Logical Interconnect.

### SYNTAX
<p>
<pre><code>Update-HPOVLogicalInterconnect [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVLogicalInterconnect [-FactoryReset] &lt;SwitchParameter&gt; [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVLogicalInterconnect[ [-Reapply] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
When a Logical Interconnect is inconsistent with its parent Logical Interconnect Group, it can be made consistent with this CMDLET.  Updating the Logical Interconnect with its parent could cause an network outage depending on the changes about to be applied.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FactoryReset &lt;SwitchParameter&gt;<p>
Use to factory reset the HPE Synergy Fabric module.  Do know that an outage will happen while the fabric modules are reset.  Their configuration will need to be re-applied or deployed after task has completed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-li, -uri, -name]
The Logical Interconnect object(s), name(s) or uris(s) to be updated.

<table><tbody><tr><td>Aliases</td><td>uri, li, name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reapply &lt;SwitchParameter&gt;<p>
Switch to reapply the Logical Interconnect configuration.  This does NOT update the Logical Interconnect from the parent Logical Interconnect Group.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>
Use this parameter to identify what is different or changed from the parent group policy.

<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Single Logical Interconnect resource object

 _**System.Collections.ArrayList &lt;HPOneView.Networking.LogicalInterconnect&gt;**_

 Collection of Logical Interconnect Names, URIs or System.Management.Automation.PSCustomObject



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Single async Update Task

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple async Update Tasks

 _**HPOneView.Library.CompareObject**_

 

The Cmdlet will return a compare object with the Parent and Child object and settings that are different.  Otherwise, no object is returned.

	Property Name | Description
	==========================================================
	InputObject   | Compared Object Property or Setting Value
	----------------------------------------------------------
	ParentSetting | Name of Property or Setting
	----------------------------------------------------------
	ChildSetting  | Name of Property or Setting
	----------------------------------------------------------
	Parent        | Name of Parent Object
	----------------------------------------------------------
	Child         | Name of Child Object
	----------------------------------------------------------
	Description   | Description Name of difference
	----------------------------------------------------------



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Update-HPOVLogicalInterconnect -name Encl1-LI
Wait-HPOVTaskComplete $task
		            
</pre>
Perform an update of the Encl1-LI Logical Interconnect.  Will be prompted for confirmation.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$task = Update-HPOVLogicalInterconnect -name Encl1-LI -confirm:$false | Wait-HPOVTaskComplete
</pre>
Perform an update of the Encl1-LI Logical Interconnect.  Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVLogicalInterconnect | Update-HPOVLogicalInterconnect
</pre>
Search for all Logical Interconnects and update them.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVLogicalInterconnect -Name Encl1-Default VC FF LIG | Update-HPOVLogicalInterconnect -WhatIf
What if: Performing the operation "Update Logical Interconnect from Group "Default VC FF LIG". WARNING: Depending on the Update, there might be a brief outage." on target "Encl1-Default VC FF LIG".

InputObject                SideIndicator ParentSetting  ChildSetting Parent            Child                   Description
-----------                ------------- -------------  ------------ ------            -----                   -----------
macRefreshInterval         <=>           7              5            Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
enablePauseFloodProtection <=>           False          True         Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
enableRichTLV              <=>           True           False        Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
enableTaggedLldp           <=>           True           False        Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
ActiveQosConfig            <=            CustomWithFCoE Passthrough  Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
Uplink Set 2               <=            Heartbeat                   Default VC FF LIG Encl1-Default VC FF LIG MISSING_NETWORK
FC Fabric B                =>                           Bay2:X8      Default VC FF LIG Encl1-Default VC FF LIG ADDITIONAL_UPLINKPORT
FC Fabric B:Bay2:X7        <=>           Auto           2Gb          Default VC FF LIG Encl1-Default VC FF LIG LINKSPEED_MISMATCH
UplinkSets                 <=            New Uplink Set              Default VC FF LIG Encl1-Default VC FF LIG MISSING_UPLINKSET
InternalNetworks           =>                           Heartbeat    Default VC FF LIG Encl1-Default VC FF LIG EXTRA_NETWORK
InternalNetworks           <=            Dev VLAN 103-A              Default VC FF LIG Encl1-Default VC FF LIG MISSING_NETWORK
</pre>
Refresh "LogicalEnclosure1" Logical Enclosure.



### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLogicalInterconnectPortMonitoring)
* [Enable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLogicalInterconnectPortMonitoring)
* [Get-HPOVLogicalInterconnect](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnect)
* [Get-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectGroup)
* [Get-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectPortMonitoring)
* [Install-HPOVLogicalInterconnectFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Install-HPOVLogicalInterconnectFirmware)
* [New-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalInterconnectGroup)
* [Remove-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalInterconnectGroup)
* [Show-HPOVLogicalInterconnectMacTable](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLogicalInterconnectMacTable)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Update-HPOVLogicalInterconnect
<p>
Updates a Logical Interconnect.

### SYNTAX
<p>
<pre><code>Update-HPOVLogicalInterconnect [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVLogicalInterconnect [-FactoryReset] &lt;SwitchParameter&gt; [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVLogicalInterconnect[ [-Reapply] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
When a Logical Interconnect is inconsistent with its parent Logical Interconnect Group, it can be made consistent with this CMDLET.  Updating the Logical Interconnect with its parent could cause an network outage depending on the changes about to be applied.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FactoryReset &lt;SwitchParameter&gt;<p>
Use to factory reset the HPE Synergy Fabric module.  Do know that an outage will happen while the fabric modules are reset.  Their configuration will need to be re-applied or deployed after task has completed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-li, -uri, -name]
The Logical Interconnect object(s), name(s) or uris(s) to be updated.

<table><tbody><tr><td>Aliases</td><td>uri, li, name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reapply &lt;SwitchParameter&gt;<p>
Switch to reapply the Logical Interconnect configuration.  This does NOT update the Logical Interconnect from the parent Logical Interconnect Group.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>
Use this parameter to identify what is different or changed from the parent group policy.

<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Single Logical Interconnect resource object

 _**System.Collections.ArrayList &lt;HPOneView.Networking.LogicalInterconnect&gt;**_

 Collection of Logical Interconnect Names, URIs or System.Management.Automation.PSCustomObject



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Single async Update Task

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple async Update Tasks

 _**HPOneView.Library.CompareObject**_

 

The Cmdlet will return a compare object with the Parent and Child object and settings that are different.  Otherwise, no object is returned.

	Property Name | Description
	==========================================================
	InputObject   | Compared Object Property or Setting Value
	----------------------------------------------------------
	ParentSetting | Name of Property or Setting
	----------------------------------------------------------
	ChildSetting  | Name of Property or Setting
	----------------------------------------------------------
	Parent        | Name of Parent Object
	----------------------------------------------------------
	Child         | Name of Child Object
	----------------------------------------------------------
	Description   | Description Name of difference
	----------------------------------------------------------



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Update-HPOVLogicalInterconnect -name Encl1-LI
Wait-HPOVTaskComplete $task
		            
</pre>
Perform an update of the Encl1-LI Logical Interconnect.  Will be prompted for confirmation.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$task = Update-HPOVLogicalInterconnect -name Encl1-LI -confirm:$false | Wait-HPOVTaskComplete
</pre>
Perform an update of the Encl1-LI Logical Interconnect.  Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVLogicalInterconnect | Update-HPOVLogicalInterconnect
</pre>
Search for all Logical Interconnects and update them.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVLogicalInterconnect -Name Encl1-Default VC FF LIG | Update-HPOVLogicalInterconnect -WhatIf
What if: Performing the operation "Update Logical Interconnect from Group "Default VC FF LIG". WARNING: Depending on the Update, there might be a brief outage." on target "Encl1-Default VC FF LIG".

InputObject                SideIndicator ParentSetting  ChildSetting Parent            Child                   Description
-----------                ------------- -------------  ------------ ------            -----                   -----------
macRefreshInterval         <=>           7              5            Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
enablePauseFloodProtection <=>           False          True         Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
enableRichTLV              <=>           True           False        Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
enableTaggedLldp           <=>           True           False        Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
ActiveQosConfig            <=            CustomWithFCoE Passthrough  Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
Uplink Set 2               <=            Heartbeat                   Default VC FF LIG Encl1-Default VC FF LIG MISSING_NETWORK
FC Fabric B                =>                           Bay2:X8      Default VC FF LIG Encl1-Default VC FF LIG ADDITIONAL_UPLINKPORT
FC Fabric B:Bay2:X7        <=>           Auto           2Gb          Default VC FF LIG Encl1-Default VC FF LIG LINKSPEED_MISMATCH
UplinkSets                 <=            New Uplink Set              Default VC FF LIG Encl1-Default VC FF LIG MISSING_UPLINKSET
InternalNetworks           =>                           Heartbeat    Default VC FF LIG Encl1-Default VC FF LIG EXTRA_NETWORK
InternalNetworks           <=            Dev VLAN 103-A              Default VC FF LIG Encl1-Default VC FF LIG MISSING_NETWORK
</pre>
Refresh "LogicalEnclosure1" Logical Enclosure.



### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLogicalInterconnectPortMonitoring)
* [Enable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLogicalInterconnectPortMonitoring)
* [Get-HPOVLogicalInterconnect](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnect)
* [Get-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectGroup)
* [Get-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectPortMonitoring)
* [Install-HPOVLogicalInterconnectFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Install-HPOVLogicalInterconnectFirmware)
* [New-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalInterconnectGroup)
* [Remove-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalInterconnectGroup)
* [Show-HPOVLogicalInterconnectMacTable](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLogicalInterconnectMacTable)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Update-HPOVLogicalInterconnect
<p>
Updates a Logical Interconnect.

### SYNTAX
<p>
<pre><code>Update-HPOVLogicalInterconnect [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVLogicalInterconnect[ [-Reapply] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
When a Logical Interconnect is inconsistent with its parent Logical Interconnect Group, it can be made consistent with this CMDLET.  Updating the Logical Interconnect with its parent could cause an network outage depending on the changes about to be applied.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-li, -uri, -name]
The Logical Interconnect object(s), name(s) or uris(s) to be updated.

<table><tbody><tr><td>Aliases</td><td>uri, li, name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reapply &lt;SwitchParameter&gt;<p>
Switch to reapply the Logical Interconnect configuration.  This does NOT update the Logical Interconnect from the parent Logical Interconnect Group.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>
Use this parameter to identify what is different or changed from the parent group policy.

<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Single Logical Interconnect resource object

 _**System.Collections.ArrayList &lt;HPOneView.Networking.LogicalInterconnect&gt;**_

 Collection of Logical Interconnect Names, URIs or System.Management.Automation.PSCustomObject



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Single async Update Task

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple async Update Tasks

 _**HPOneView.Library.CompareObject**_

 

The Cmdlet will return a compare object with the Parent and Child object and settings that are different.  Otherwise, no object is returned.

	Property Name | Description
	==========================================================
	InputObject   | Compared Object Property or Setting Value
	----------------------------------------------------------
	ParentSetting | Name of Property or Setting
	----------------------------------------------------------
	ChildSetting  | Name of Property or Setting
	----------------------------------------------------------
	Parent        | Name of Parent Object
	----------------------------------------------------------
	Child         | Name of Child Object
	----------------------------------------------------------
	Description   | Description Name of difference
	----------------------------------------------------------



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Update-HPOVLogicalInterconnect -name Encl1-LI
Wait-HPOVTaskComplete $task
		            
</pre>
Perform an update of the Encl1-LI Logical Interconnect.  Will be prompted for confirmation.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$task = Update-HPOVLogicalInterconnect -name Encl1-LI -confirm:$false | Wait-HPOVTaskComplete
</pre>
Perform an update of the Encl1-LI Logical Interconnect.  Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVLogicalInterconnect | Update-HPOVLogicalInterconnect
</pre>
Search for all Logical Interconnects and update them.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVLogicalInterconnect -Name Encl1-Default VC FF LIG | Update-HPOVLogicalInterconnect -WhatIf
What if: Performing the operation "Update Logical Interconnect from Group "Default VC FF LIG". WARNING: Depending on the Update, there might be a brief outage." on target "Encl1-Default VC FF LIG".

InputObject                SideIndicator ParentSetting  ChildSetting Parent            Child                   Description
-----------                ------------- -------------  ------------ ------            -----                   -----------
macRefreshInterval         <=>           7              5            Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
enablePauseFloodProtection <=>           False          True         Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
enableRichTLV              <=>           True           False        Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
enableTaggedLldp           <=>           True           False        Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
ActiveQosConfig            <=            CustomWithFCoE Passthrough  Default VC FF LIG Encl1-Default VC FF LIG SETTING_MISMATCH
Uplink Set 2               <=            Heartbeat                   Default VC FF LIG Encl1-Default VC FF LIG MISSING_NETWORK
FC Fabric B                =>                           Bay2:X8      Default VC FF LIG Encl1-Default VC FF LIG ADDITIONAL_UPLINKPORT
FC Fabric B:Bay2:X7        <=>           Auto           2Gb          Default VC FF LIG Encl1-Default VC FF LIG LINKSPEED_MISMATCH
UplinkSets                 <=            New Uplink Set              Default VC FF LIG Encl1-Default VC FF LIG MISSING_UPLINKSET
InternalNetworks           =>                           Heartbeat    Default VC FF LIG Encl1-Default VC FF LIG EXTRA_NETWORK
InternalNetworks           <=            Dev VLAN 103-A              Default VC FF LIG Encl1-Default VC FF LIG MISSING_NETWORK
</pre>
Refresh "LogicalEnclosure1" Logical Enclosure.



### Related Links

* [Disable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLogicalInterconnectPortMonitoring)
* [Enable-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLogicalInterconnectPortMonitoring)
* [Get-HPOVLogicalInterconnect](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnect)
* [Get-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectGroup)
* [Get-HPOVLogicalInterconnectPortMonitoring](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalInterconnectPortMonitoring)
* [Install-HPOVLogicalInterconnectFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Install-HPOVLogicalInterconnectFirmware)
* [New-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalInterconnectGroup)
* [Remove-HPOVLogicalInterconnectGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalInterconnectGroup)
* [Show-HPOVLogicalInterconnectMacTable](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLogicalInterconnectMacTable)


***
<div align=right><a href="#Top">Top</a></div>
