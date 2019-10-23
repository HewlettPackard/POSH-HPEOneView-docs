<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVOSDeploymentServer
<p>
Create a new HPE Synergy OS Deployment Server.

### SYNTAX
<p>
<pre><code>New-HPOVOSDeploymentServer [-Name] &lt;String&gt; [-InputObject] &lt;Object&gt; [-ManagementNetwork] &lt;Object&gt;[ [-Description] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
An OS deployment server is a resource that enables you to deploy (install and configure) operating systems for use by servers. HPE OneView connects to an OS deployment server and configures it for deploying operating systems.
HPE OneView manages the OS deployment server after it is configured and displays the list of attributes, management settings, the OS deployment plans, and the server profiles that reference the available OS deployment plans.

To create an OS Deployment Server, HPE Synergy Image Streamer appliances must be installed into managed or monitored Synergy Frames, a Management Network created with an association to an IPv4 Address Pool Subnet, and available IP Addresses within the pool.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Description of the OS Deployment Server resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
HPE Synergy Image Streamer appliance.  Can be any Image Streamer resource object from Get-HPOVImageStreamerAppliance.

<table><tbody><tr><td>Aliases</td><td>ImageStreamer, I3S</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ManagementNetwork &lt;Object&gt;<p>
Either a Tagged or Untagged Ethernet Network associated with an IPv4 Address Pool Subnet.  Subnet must be in the same IPv4 Address Network ID as the HPE Synergy Composer IPv4 Address(es).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
OS Deployment resource name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject [HPOneView.Appliance.ImageStreamerAppliance]**_

 HPE Synergy Image Streamer Appliance object from Get-HPOVImageStreamerAppliance.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for modifying the Remote Support Collection schedules.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ManagementNetwork = Get-HPOVNetwork -Type Ethernet -Name "Deployment Network"
Get-HPOVImageStreamerAppliance | Select -First 1 | New-HPOVOSDeploymentServer -Name "MY OS Deployment Server" -ManagementNetwork $ManagementNetwork</pre>
Get the Ethernet network resource object, then pass via the pipeline the first HPE Synergy Image Streamer object, and create a new OS Deployment Server.



### Related Links

* [Get-HPOVOSDeploymentServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVOSDeploymentServer)
* [Remove-HPOVOSDeploymentServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVOSDeploymentServer)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVOSDeploymentServer
<p>
Create a new HPE Synergy OS Deployment Server.

### SYNTAX
<p>
<pre><code>New-HPOVOSDeploymentServer [-Name] &lt;String&gt; [-InputObject] &lt;Object&gt; [-ManagementNetwork] &lt;Object&gt;[ [-Description] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
An OS deployment server is a resource that enables you to deploy (install and configure) operating systems for use by servers. HPE OneView connects to an OS deployment server and configures it for deploying operating systems.
HPE OneView manages the OS deployment server after it is configured and displays the list of attributes, management settings, the OS deployment plans, and the server profiles that reference the available OS deployment plans.

To create an OS Deployment Server, HPE Synergy Image Streamer appliances must be installed into managed or monitored Synergy Frames, a Management Network created with an association to an IPv4 Address Pool Subnet, and available IP Addresses within the pool.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Description of the OS Deployment Server resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
HPE Synergy Image Streamer appliance.  Can be any Image Streamer resource object from Get-HPOVImageStreamerAppliance.

<table><tbody><tr><td>Aliases</td><td>ImageStreamer, I3S</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ManagementNetwork &lt;Object&gt;<p>
Either a Tagged or Untagged Ethernet Network associated with an IPv4 Address Pool Subnet.  Subnet must be in the same IPv4 Address Network ID as the HPE Synergy Composer IPv4 Address(es).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
OS Deployment resource name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject [HPOneView.Appliance.ImageStreamerAppliance]**_

 HPE Synergy Image Streamer Appliance object from Get-HPOVImageStreamerAppliance.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for modifying the Remote Support Collection schedules.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ManagementNetwork = Get-HPOVNetwork -Type Ethernet -Name "Deployment Network"
Get-HPOVImageStreamerAppliance | Select -First 1 | New-HPOVOSDeploymentServer -Name "MY OS Deployment Server" -ManagementNetwork $ManagementNetwork</pre>
Get the Ethernet network resource object, then pass via the pipeline the first HPE Synergy Image Streamer object, and create a new OS Deployment Server.



### Related Links

* [Get-HPOVOSDeploymentServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVOSDeploymentServer)
* [Remove-HPOVOSDeploymentServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVOSDeploymentServer)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVOSDeploymentServer
<p>
Create a new HPE Synergy OS Deployment Server.

### SYNTAX
<p>
<pre><code>New-HPOVOSDeploymentServer [-Name] &lt;String&gt; [-InputObject] &lt;Object&gt; [-ManagementNetwork] &lt;Object&gt;[ [-Description] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
An OS deployment server is a resource that enables you to deploy (install and configure) operating systems for use by servers. HPE OneView connects to an OS deployment server and configures it for deploying operating systems.
HPE OneView manages the OS deployment server after it is configured and displays the list of attributes, management settings, the OS deployment plans, and the server profiles that reference the available OS deployment plans.

To create an OS Deployment Server, HPE Synergy Image Streamer appliances must be installed into managed or monitored Synergy Frames, a Management Network created with an association to an IPv4 Address Pool Subnet, and available IP Addresses within the pool.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
Description of the OS Deployment Server resource.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
HPE Synergy Image Streamer appliance.  Can be any Image Streamer resource object from Get-HPOVImageStreamerAppliance.

<table><tbody><tr><td>Aliases</td><td>ImageStreamer, I3S</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ManagementNetwork &lt;Object&gt;<p>
Either a Tagged or Untagged Ethernet Network associated with an IPv4 Address Pool Subnet.  Subnet must be in the same IPv4 Address Network ID as the HPE Synergy Composer IPv4 Address(es).

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
OS Deployment resource name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject [HPOneView.Appliance.ImageStreamerAppliance]**_

 HPE Synergy Image Streamer Appliance object from Get-HPOVImageStreamerAppliance.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for modifying the Remote Support Collection schedules.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$ManagementNetwork = Get-HPOVNetwork -Type Ethernet -Name "Deployment Network"
Get-HPOVImageStreamerAppliance | Select -First 1 | New-HPOVOSDeploymentServer -Name "MY OS Deployment Server" -ManagementNetwork $ManagementNetwork</pre>
Get the Ethernet network resource object, then pass via the pipeline the first HPE Synergy Image Streamer object, and create a new OS Deployment Server.



### Related Links

* [Get-HPOVOSDeploymentServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVOSDeploymentServer)
* [Remove-HPOVOSDeploymentServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVOSDeploymentServer)


***
<div align=right><a href="#Top">Top</a></div>
