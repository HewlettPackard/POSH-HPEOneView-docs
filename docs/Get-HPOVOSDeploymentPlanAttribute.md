<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVOSDeploymentPlanAttribute
<p>
Get HPE Synergy Image Streamer deployment plan parameters.

### SYNTAX
<p>
<pre><code>Get-HPOVOSDeploymentPlanAttribute [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE Synergy Image Streamer allows administrators to rapidly provision stateless operating systems along with bare metal provisioning.  An OS Deployment Plan dicates the characteristics of the OS, including vendor, version, boot disk size, and OS personalization parameters.  This Cmdlet will return OS Deployment Plan available and editable parameters.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The OS Deployment Plan from Get-HPOVOSDeploymentPlan.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.OSDeploymentPlan [System.Management.Automation.PSCustomObject]**_

 The OS Deployment Plan from Get-HPOVOSDeploymentPlan.



### Return Values

_**HPOneView.ServerProfile.OSDeployment.OSDeploymentParameter**_

 

The object containined the Name of the parameter, and its default Value.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVOSDeploymentPlan -Name "RHEL 7.2 OS" -ErrorAction Stop | Get-HPOVOSDeploymentPlanAttribute</pre>
Return OS Deployment Plan parameters from the "RHEL 7.2 OS" deployment plan.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$OSDeploymentAttributes = Get-HPOVOSDeploymentPlanAttributes -InputObject $MyDeploymentPlan
$OSDeploymentAttributes = $OSDeploymentAttributes | Where-Object name -NotMatch 'dns|gateway|ipaddress|netmask'
($OSDeploymentAttributes | Where-Object name -eq "NIC1.connectionid").value = 3
($OSDeploymentAttributes | Where-Object name -eq "NIC1.networkuri").value = $I3SCon3.networkUri
($OSDeploymentAttributes | Where-Object name -eq "NIC1.constraint").value = 'dhcp'
($OSDeploymentAttributes | Where-Object name -eq "NIC1.dhcp").value = $true
($OSDeploymentAttributes | Where-Object name -eq "NIC2.connectionid").value = 4
($OSDeploymentAttributes | Where-Object name -eq "NIC2.networkuri").value = $I3SCon4.networkUri
($OSDeploymentAttributes | Where-Object name -eq "NIC2.constraint").value = 'dhcp'
($OSDeploymentAttributes | Where-Object name -eq "NIC2.dhcp").value = $true</pre>
Get OS deployment plan attributes, and set DHCP for the two network connections.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVOSDeploymentPlanAttribute
<p>
Get HPE Synergy Image Streamer deployment plan parameters.

### SYNTAX
<p>
<pre><code>Get-HPOVOSDeploymentPlanAttribute [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE Synergy Image Streamer allows administrators to rapidly provision stateless operating systems along with bare metal provisioning.  An OS Deployment Plan dicates the characteristics of the OS, including vendor, version, boot disk size, and OS personalization parameters.  This Cmdlet will return OS Deployment Plan available and editable parameters.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The OS Deployment Plan from Get-HPOVOSDeploymentPlan.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.OSDeploymentPlan [System.Management.Automation.PSCustomObject]**_

 The OS Deployment Plan from Get-HPOVOSDeploymentPlan.



### Return Values

_**HPOneView.ServerProfile.OSDeployment.OSDeploymentParameter**_

 

The object containined the Name of the parameter, and its default Value.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVOSDeploymentPlan -Name "RHEL 7.2 OS" -ErrorAction Stop | Get-HPOVOSDeploymentPlanAttribute</pre>
Return OS Deployment Plan parameters from the "RHEL 7.2 OS" deployment plan.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$OSDeploymentAttributes = Get-HPOVOSDeploymentPlanAttributes -InputObject $MyDeploymentPlan
$OSDeploymentAttributes = $OSDeploymentAttributes | Where-Object name -NotMatch 'dns|gateway|ipaddress|netmask'
($OSDeploymentAttributes | Where-Object name -eq "NIC1.connectionid").value = 3
($OSDeploymentAttributes | Where-Object name -eq "NIC1.networkuri").value = $I3SCon3.networkUri
($OSDeploymentAttributes | Where-Object name -eq "NIC1.constraint").value = 'dhcp'
($OSDeploymentAttributes | Where-Object name -eq "NIC1.dhcp").value = $true
($OSDeploymentAttributes | Where-Object name -eq "NIC2.connectionid").value = 4
($OSDeploymentAttributes | Where-Object name -eq "NIC2.networkuri").value = $I3SCon4.networkUri
($OSDeploymentAttributes | Where-Object name -eq "NIC2.constraint").value = 'dhcp'
($OSDeploymentAttributes | Where-Object name -eq "NIC2.dhcp").value = $true</pre>
Get OS deployment plan attributes, and set DHCP for the two network connections.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVOSDeploymentPlanAttribute
<p>
Get HPE Synergy Image Streamer deployment plan parameters.

### SYNTAX
<p>
<pre><code>Get-HPOVOSDeploymentPlanAttribute [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE Synergy Image Streamer allows administrators to rapidly provision stateless operating systems along with bare metal provisioning.  An OS Deployment Plan dicates the characteristics of the OS, including vendor, version, boot disk size, and OS personalization parameters.  This Cmdlet will return OS Deployment Plan available and editable parameters.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The OS Deployment Plan from Get-HPOVOSDeploymentPlan.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.OSDeploymentPlan [System.Management.Automation.PSCustomObject]**_

 The OS Deployment Plan from Get-HPOVOSDeploymentPlan.



### Return Values

_**HPOneView.ServerProfile.OSDeployment.OSDeploymentParameter**_

 

The object containined the Name of the parameter, and its default Value.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVOSDeploymentPlan -Name "RHEL 7.2 OS" -ErrorAction Stop | Get-HPOVOSDeploymentPlanAttribute</pre>
Return OS Deployment Plan parameters from the "RHEL 7.2 OS" deployment plan.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$OSDeploymentAttributes = Get-HPOVOSDeploymentPlanAttributes -InputObject $MyDeploymentPlan
$OSDeploymentAttributes = $OSDeploymentAttributes | Where-Object name -NotMatch 'dns|gateway|ipaddress|netmask'
($OSDeploymentAttributes | Where-Object name -eq "NIC1.connectionid").value = 3
($OSDeploymentAttributes | Where-Object name -eq "NIC1.networkuri").value = $I3SCon3.networkUri
($OSDeploymentAttributes | Where-Object name -eq "NIC1.constraint").value = 'dhcp'
($OSDeploymentAttributes | Where-Object name -eq "NIC1.dhcp").value = $true
($OSDeploymentAttributes | Where-Object name -eq "NIC2.connectionid").value = 4
($OSDeploymentAttributes | Where-Object name -eq "NIC2.networkuri").value = $I3SCon4.networkUri
($OSDeploymentAttributes | Where-Object name -eq "NIC2.constraint").value = 'dhcp'
($OSDeploymentAttributes | Where-Object name -eq "NIC2.dhcp").value = $true</pre>
Get OS deployment plan attributes, and set DHCP for the two network connections.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
