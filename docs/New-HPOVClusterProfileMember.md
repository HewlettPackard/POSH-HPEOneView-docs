<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVClusterProfileMember
<p>
Helper Cmdlet to create proper add host request for New-HPOVClusterProfile.

### SYNTAX
<p>
<pre><code>New-HPOVClusterProfileMember [-InputObject] &lt;Object&gt;[ [-IPv4Address] &lt;IPAaddress&gt;][ [-OSDeploymentAttributes] &lt;OSDeploymentParameter[]&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This is a helper Cmdlet to create a valid resourc object New-HPOVClusterProfile will then use for the -Servers parameter.

Privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.


### Parameters

-IPv4Address &lt;IPAaddress&gt;<p>
A valid IPv4 Address for the hypervisor host management interface.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
A server hardware resource

<table><tbody><tr><td>Aliases</td><td>Server</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OSDeploymentAttributes &lt;OSDeploymentParameter[]&gt;<p>
Configured OS Deployment Plan parameters from Get-HPOVOSDeploymentPlanAttribute.  Only applicable for HPE Synergy Image Streamer deployment.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 An available server hardware resource.



### Return Values

_**HPOneView.Cluster.AddHostRequest**_

 

Properly formatted object for New-HPOVClusterProfile.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Server = Get-HPOVServer -Name "Encl1, Bay 1"
New-HPOVClusterProfileMember -InputObject $Server
</pre>
Create a basic add host object for New-HPOVClusterProfile.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Server = Get-HPOVServer -Name "Encl1, Bay 1"
New-HPOVClusterProfileMember -InputObject $Server -IPAddress 192.168.10.1
</pre>
Create anadd host object for New-HPOVClusterProfile and specify its managmenet IP Address if the associated Server Profile Template management network is not associated with an IP Address Pool.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$MyDeploymentPlan = Get-HPOVOSDeploymentPlan -Name "vSphere 6.5 U3 Corp Standard" -ErrorAction Stop
$OSDeploymentAttributes = Get-HPOVOSDeploymentPlanAttributes -InputObject $MyDeploymentPlan
($OSDeploymentAttributes | Where-Object name -eq "CustomAttribute1").value = "MySpecialValue"
$Server = Get-HPOVServer -Name "Encl1, Bay 1"
New-HPOVClusterProfileMember -InputObject $Server -IPAddress 192.168.10.1 -OSDeploymentParameter $OSDeploymentAttributes
</pre>
Create a basic add host object for New-HPOVClusterProfile.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVClusterProfileMember
<p>
Helper Cmdlet to create proper add host request for New-HPOVClusterProfile.

### SYNTAX
<p>
<pre><code>New-HPOVClusterProfileMember [-InputObject] &lt;Object&gt;[ [-IPv4Address] &lt;IPAaddress&gt;][ [-OSDeploymentAttributes] &lt;OSDeploymentParameter[]&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This is a helper Cmdlet to create a valid resourc object New-HPOVClusterProfile will then use for the -Servers parameter.

Privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.


### Parameters

-IPv4Address &lt;IPAaddress&gt;<p>
A valid IPv4 Address for the hypervisor host management interface.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
A server hardware resource

<table><tbody><tr><td>Aliases</td><td>Server</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OSDeploymentAttributes &lt;OSDeploymentParameter[]&gt;<p>
Configured OS Deployment Plan parameters from Get-HPOVOSDeploymentPlanAttribute.  Only applicable for HPE Synergy Image Streamer deployment.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 An available server hardware resource.



### Return Values

_**HPOneView.Cluster.AddHostRequest**_

 

Properly formatted object for New-HPOVClusterProfile.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Server = Get-HPOVServer -Name "Encl1, Bay 1"
New-HPOVClusterProfileMember -InputObject $Server
</pre>
Create a basic add host object for New-HPOVClusterProfile.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Server = Get-HPOVServer -Name "Encl1, Bay 1"
New-HPOVClusterProfileMember -InputObject $Server -IPAddress 192.168.10.1
</pre>
Create anadd host object for New-HPOVClusterProfile and specify its managmenet IP Address if the associated Server Profile Template management network is not associated with an IP Address Pool.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$MyDeploymentPlan = Get-HPOVOSDeploymentPlan -Name "vSphere 6.5 U3 Corp Standard" -ErrorAction Stop
$OSDeploymentAttributes = Get-HPOVOSDeploymentPlanAttributes -InputObject $MyDeploymentPlan
($OSDeploymentAttributes | Where-Object name -eq "CustomAttribute1").value = "MySpecialValue"
$Server = Get-HPOVServer -Name "Encl1, Bay 1"
New-HPOVClusterProfileMember -InputObject $Server -IPAddress 192.168.10.1 -OSDeploymentParameter $OSDeploymentAttributes
</pre>
Create a basic add host object for New-HPOVClusterProfile.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVClusterProfileMember
<p>
Helper Cmdlet to create proper add host request for New-HPOVClusterProfile.

### SYNTAX
<p>
<pre><code>New-HPOVClusterProfileMember [-InputObject] &lt;Object&gt;[ [-IPv4Address] &lt;IPAaddress&gt;][ [-OSDeploymentAttributes] &lt;OSDeploymentParameter[]&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This is a helper Cmdlet to create a valid resourc object New-HPOVClusterProfile will then use for the -Servers parameter.

Privileges: Infrastructure administrator, Server administrator, Server profile architect, or Server profile administrator.


### Parameters

-IPv4Address &lt;IPAaddress&gt;<p>
A valid IPv4 Address for the hypervisor host management interface.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
A server hardware resource

<table><tbody><tr><td>Aliases</td><td>Server</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OSDeploymentAttributes &lt;OSDeploymentParameter[]&gt;<p>
Configured OS Deployment Plan parameters from Get-HPOVOSDeploymentPlanAttribute.  Only applicable for HPE Synergy Image Streamer deployment.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 An available server hardware resource.



### Return Values

_**HPOneView.Cluster.AddHostRequest**_

 

Properly formatted object for New-HPOVClusterProfile.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Server = Get-HPOVServer -Name "Encl1, Bay 1"
New-HPOVClusterProfileMember -InputObject $Server
</pre>
Create a basic add host object for New-HPOVClusterProfile.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Server = Get-HPOVServer -Name "Encl1, Bay 1"
New-HPOVClusterProfileMember -InputObject $Server -IPAddress 192.168.10.1
</pre>
Create anadd host object for New-HPOVClusterProfile and specify its managmenet IP Address if the associated Server Profile Template management network is not associated with an IP Address Pool.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$MyDeploymentPlan = Get-HPOVOSDeploymentPlan -Name "vSphere 6.5 U3 Corp Standard" -ErrorAction Stop
$OSDeploymentAttributes = Get-HPOVOSDeploymentPlanAttributes -InputObject $MyDeploymentPlan
($OSDeploymentAttributes | Where-Object name -eq "CustomAttribute1").value = "MySpecialValue"
$Server = Get-HPOVServer -Name "Encl1, Bay 1"
New-HPOVClusterProfileMember -InputObject $Server -IPAddress 192.168.10.1 -OSDeploymentParameter $OSDeploymentAttributes
</pre>
Create a basic add host object for New-HPOVClusterProfile.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
