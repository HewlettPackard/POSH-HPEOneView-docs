<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVLogicalSwitchGroup
<p>
Create a new Logical Switch Group resource.

### SYNTAX
<p>
<pre><code>New-HPOVLogicalSwitchGroup [-Name] &lt;String&gt;[ [-SwitchType] &lt;HPOneView.Networking.SwitchType&gt;][ [-NumberOfSwitches] &lt;Int&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The logical switch group is a template for creating logical switches. Logical switches are an aggregation of up to two physical top-of-rack switches.
 Once constructed from a logical switch group, a logical switch continues to be associated with its logical switch group. Any change in consistency between the logical switch group and its associated logical switches is monitored and made visible on the associated logical switch screen in HPE OneView.
 This Cmdlet will help create a Logical Switch Group resources.  Use Get-HPOVSwitchType to identify which switch family and models are supported. Please refer to either Get-HPOVSwitchType values, or the HPE OneView Support Matrix for which specific models are supported.
 Required privileges: Infrastructure administrator or Network administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The Logical Switch Group resource Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NumberOfSwitches &lt;Int&gt;<p>
The maximum number of switches supported in the Logical Switch Group.  Only 1 or 2 are allowed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SwitchType &lt;HPOneView.Networking.SwitchType&gt;<p>
The Switch Type resource from Get-HPOVSwitchType.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.SwitchType**_

 Switch Type resource from Get-HPOVSwitchType.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task resource object to monitor (if -Async was used) or results.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of remove Logical Switch async task resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSwitchType -Name "Cisco Nexus 56xx" | New-HPOVLogicalSwitchGroup -Name "My Logical Switch Group Policy 1" -NumberOfSwitches 2</pre>
Create a Logical Switch Group fro the "Cisco Nexus 5600" series, specifying 2 expected switches.



### Related Links

* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [Remove-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitchGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVLogicalSwitchGroup
<p>
Create a new Logical Switch Group resource.

### SYNTAX
<p>
<pre><code>New-HPOVLogicalSwitchGroup [-Name] &lt;String&gt;[ [-SwitchType] &lt;HPOneView.Networking.SwitchType&gt;][ [-NumberOfSwitches] &lt;Int&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The logical switch group is a template for creating logical switches. Logical switches are an aggregation of up to two physical top-of-rack switches.
 Once constructed from a logical switch group, a logical switch continues to be associated with its logical switch group. Any change in consistency between the logical switch group and its associated logical switches is monitored and made visible on the associated logical switch screen in HPE OneView.
 This Cmdlet will help create a Logical Switch Group resources.  Use Get-HPOVSwitchType to identify which switch family and models are supported. Please refer to either Get-HPOVSwitchType values, or the HPE OneView Support Matrix for which specific models are supported.
 Required privileges: Infrastructure administrator or Network administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The Logical Switch Group resource Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NumberOfSwitches &lt;Int&gt;<p>
The maximum number of switches supported in the Logical Switch Group.  Only 1 or 2 are allowed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SwitchType &lt;HPOneView.Networking.SwitchType&gt;<p>
The Switch Type resource from Get-HPOVSwitchType.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.SwitchType**_

 Switch Type resource from Get-HPOVSwitchType.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task resource object to monitor (if -Async was used) or results.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of remove Logical Switch async task resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSwitchType -Name "Cisco Nexus 56xx" | New-HPOVLogicalSwitchGroup -Name "My Logical Switch Group Policy 1" -NumberOfSwitches 2</pre>
Create a Logical Switch Group fro the "Cisco Nexus 5600" series, specifying 2 expected switches.



### Related Links

* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [Remove-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitchGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVLogicalSwitchGroup
<p>
Create a new Logical Switch Group resource.

### SYNTAX
<p>
<pre><code>New-HPOVLogicalSwitchGroup [-Name] &lt;String&gt;[ [-SwitchType] &lt;SwitchParameter&gt;][ [-NumberOfSwitches] &lt;Int&gt;][ [-ApplianceConnection] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The logical switch group is a template for creating logical switches. Logical switches are an aggregation of up to two physical top-of-rack switches.
 Once constructed from a logical switch group, a logical switch continues to be associated with its logical switch group. Any change in consistency between the logical switch group and its associated logical switches is monitored and made visible on the associated logical switch screen in HPE OneView.
 This Cmdlet will help create a Logical Switch Group resources.  Only the following switch model family"s are supported:
 * Cisco Nexus 5000
 * Cisco Nexus 5500
 * Cisco Nexus 5600
 * Cisco Nexus 6000
 Please refer to either Get-HPOVSwitchType values, or the HPE OneView Support Matrix for which specific models are supported.
 Required privileges: Infrastructure administrator or Network administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The Logical Switch Group resource Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NumberOfSwitches &lt;Int&gt;<p>
The maximum number of switches supported in the Logical Switch Group.  Only 1 or 2 are allowed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SwitchType &lt;SwitchParameter&gt;<p>
The Switch Type resource from Get-HPOVSwitchType.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.SwitchType [System.Management.Automation.PSCustomObject]**_

 Switch Type resource from Get-HPOVSwitchType.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task resource object to monitor (if -Async was used) or results.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of remove Logical Switch async task resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSwitchType -Name "Cisco Nexus 56xx" | New-HPOVLogicalSwitchGroup -Name "My Logical Switch Group Policy 1" -NumberOfSwitches 2</pre>
Create a Logical Switch Group fro the "Cisco Nexus 5600" series, specifying 2 expected switches.



### Related Links

* [Get-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLogicalSwitchGroup)
* [Remove-HPOVLogicalSwitchGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLogicalSwitchGroup)


***
<div align=right><a href="#Top">Top</a></div>
