<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Update-HPOVLogicalEnclosure
<p>
Update or Refresh a Logical Enclosure.

### SYNTAX
<p>
<pre><code>Update-HPOVLogicalEnclosure[ [-Reapply] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVLogicalEnclosure[ [-Update] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will update or refresh a Logical Enclosure.  A Refresh will instruct HPE OneView to go inventory the enclosure and update any missing management configurations. An Update will perform Logical Enclosure compliance remediation with the parent Enclosure Group.

Use the -Refresh switch for scenarios where adding an enclosure results in a warning or critical error when a BL server cannot be managed due to an existing _HPOneViewAdmin account that cannot be reset or too many HP SSO Certificates are configured (iLO supports no more than 5) and you have manually cleared the HP SSO list and/or removed the _HPOneViewAdmin account.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-le, -LogicalEnclosure]

Provide the Logical Enclosure name, URI or Object, or [System.Collections.ArrayList ] of names, URIs or Objects to refresh/update.

<table><tbody><tr><td>Aliases</td><td>le, LogicalEnclosure</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reapply &lt;SwitchParameter&gt;<p>
Reapply the Enclosure Configuration.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Update &lt;SwitchParameter&gt;<p>
Aliases [-UpdateFromEG]

Useing this switch will update the Logical Enclosure to be compliant with the Parent Enclosure Group.  Can be combined with the -WhatIf parameter to perform a Compare with group and return object with differences.

<table><tbody><tr><td>Aliases</td><td>UpdateFromGroup</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>
Use this parameter to identify what is different or changed from the parent group policy.

<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]**_

 Single Logical Enclosure resource

 _**System.Collections.ArrayList**_

 Multiple Logical Enclosure resources

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



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring the enclosure import process



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalEnclosure | Update-HPOVLogicalEnclosure -Refresh
</pre>
Refresh all available Logical Enclosures, for the default connected session.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalEnclosure -ApplianceConnect $ConnectedSessions | Update-HPOVLogicalEnclosure -Update
</pre>
Refresh all available Logical Enclosures, for the all connected sessions.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVLogicalEnclosure -Name LogicalEnclosure1 | Update-HPOVLogicalEnclosure -Refresh
</pre>
Refresh "LogicalEnclosure1" Logical Enclosure.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVLogicalEnclosure -Name Encl1 | Update-HPOVLogicalEnclosure -Update -WhatIf
What if: Performing the operation "Update Logical Enclosure configuration. WARNING: Depending on this action, there might be a brief outage." on target "Encl1".

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

* [Get-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalEnclosure)
* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure)
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Update-HPOVLogicalEnclosure
<p>
Update or Refresh a Logical Enclosure.

### SYNTAX
<p>
<pre><code>Update-HPOVLogicalEnclosure[ [-Reapply] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVLogicalEnclosure[ [-Update] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will update or refresh a Logical Enclosure.  A Refresh will instruct HPE OneView to go inventory the enclosure and update any missing management configurations. An Update will perform Logical Enclosure compliance remediation with the parent Enclosure Group.

Use the -Refresh switch for scenarios where adding an enclosure results in a warning or critical error when a BL server cannot be managed due to an existing _HPOneViewAdmin account that cannot be reset or too many HP SSO Certificates are configured (iLO supports no more than 5) and you have manually cleared the HP SSO list and/or removed the _HPOneViewAdmin account.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-le, -LogicalEnclosure]

Provide the Logical Enclosure name, URI or Object, or [System.Collections.ArrayList ] of names, URIs or Objects to refresh/update.

<table><tbody><tr><td>Aliases</td><td>le, LogicalEnclosure</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reapply &lt;SwitchParameter&gt;<p>
Reapply the Enclosure Configuration.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Update &lt;SwitchParameter&gt;<p>
Aliases [-UpdateFromEG]

Useing this switch will update the Logical Enclosure to be compliant with the Parent Enclosure Group.  Can be combined with the -WhatIf parameter to perform a Compare with group and return object with differences.

<table><tbody><tr><td>Aliases</td><td>UpdateFromGroup</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>
Use this parameter to identify what is different or changed from the parent group policy.

<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]**_

 Single Logical Enclosure resource

 _**System.Collections.ArrayList**_

 Multiple Logical Enclosure resources

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



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring the enclosure import process



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalEnclosure | Update-HPOVLogicalEnclosure -Refresh
</pre>
Refresh all available Logical Enclosures, for the default connected session.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalEnclosure -ApplianceConnect $ConnectedSessions | Update-HPOVLogicalEnclosure -Update
</pre>
Refresh all available Logical Enclosures, for the all connected sessions.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVLogicalEnclosure -Name LogicalEnclosure1 | Update-HPOVLogicalEnclosure -Refresh
</pre>
Refresh "LogicalEnclosure1" Logical Enclosure.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVLogicalEnclosure -Name Encl1 | Update-HPOVLogicalEnclosure -Update -WhatIf
What if: Performing the operation "Update Logical Enclosure configuration. WARNING: Depending on this action, there might be a brief outage." on target "Encl1".

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

* [Get-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalEnclosure)
* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure)
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Update-HPOVLogicalEnclosure
<p>
Update or Refresh a Logical Enclosure.

### SYNTAX
<p>
<pre><code>Update-HPOVLogicalEnclosure[ [-Reapply] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVLogicalEnclosure[ [-Update] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will update or refresh a Logical Enclosure.  A Refresh will instruct HPE OneView to go inventory the enclosure and update any missing management configurations. An Update will perform Logical Enclosure compliance remediation with the parent Enclosure Group.

Use the -Refresh switch for scenarios where adding an enclosure results in a warning or critical error when a BL server cannot be managed due to an existing _HPOneViewAdmin account that cannot be reset or too many HP SSO Certificates are configured (iLO supports no more than 5) and you have manually cleared the HP SSO list and/or removed the _HPOneViewAdmin account.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-le, -LogicalEnclosure]

Provide the Logical Enclosure name, URI or Object, or [System.Collections.ArrayList ] of names, URIs or Objects to refresh/update.

<table><tbody><tr><td>Aliases</td><td>le, LogicalEnclosure</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reapply &lt;SwitchParameter&gt;<p>
Reapply the Enclosure Configuration.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Update &lt;SwitchParameter&gt;<p>
Aliases [-UpdateFromEG]

Useing this switch will update the Logical Enclosure to be compliant with the Parent Enclosure Group.  Can be combined with the -WhatIf parameter to perform a Compare with group and return object with differences.

<table><tbody><tr><td>Aliases</td><td>UpdateFromGroup</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>
Use this parameter to identify what is different or changed from the parent group policy.

<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]**_

 Single Logical Enclosure resource

 _**System.Collections.ArrayList**_

 Multiple Logical Enclosure resources

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



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring the enclosure import process



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLogicalEnclosure | Update-HPOVLogicalEnclosure -Refresh
</pre>
Refresh all available Logical Enclosures, for the default connected session.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLogicalEnclosure -ApplianceConnect $ConnectedSessions | Update-HPOVLogicalEnclosure -Update
</pre>
Refresh all available Logical Enclosures, for the all connected sessions.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVLogicalEnclosure -Name LogicalEnclosure1 | Update-HPOVLogicalEnclosure -Refresh
</pre>
Refresh "LogicalEnclosure1" Logical Enclosure.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVLogicalEnclosure -Name Encl1 | Update-HPOVLogicalEnclosure -Update -WhatIf
What if: Performing the operation "Update Logical Enclosure configuration. WARNING: Depending on this action, there might be a brief outage." on target "Encl1".

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

* [Get-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalEnclosure)
* [New-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLogicalEnclosure)
* [Remove-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalEnclosure)
* [Set-HPOVLogicalEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLogicalEnclosure)
* [Update-HPOVLogicalEnclosureFirmware](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVLogicalEnclosureFirmware)


***
<div align=right><a href="#Top">Top</a></div>
