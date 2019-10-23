<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Reset-HPOVInterconnectNetOpPassword
<p>
Reset HPE Synergy Virtual Connect NetOp account password.

### SYNTAX
<p>
<pre><code>Reset-HPOVInterconnectNetOpPassword [-InputObject] &lt;Object&gt; [-Password] &lt;System.Security.SecureString&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
*** THIS CMDLET SHOULD NOT BE EXECUTED WITHOUT GUIDANCE FROM HPE CUSTOMER SUPPORT CENTER ***

This Cmdlet will reset the HPE Synergy Virtual Connect NetOp account password to the specified value.

Required permissions: Infrastructure administrator, Network administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Logical Interconnect from Get-HPOVLogicalInterconnect Cmdlet.

<table><tbody><tr><td>Aliases</td><td>Interconnect</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;System.Security.SecureString&gt;<p>
The password in System.Security.SecureString format.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Logical interconnect resource from Get-HPOVLogicalInterconnect.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task that tracks the power state change



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$NetOpPassword = Read-Host -Message "New password: " -AsSecureString
$LiObject = Get-HPOVLogicalInterconnect -Name MyEncl1-Ethernet-LIG1
Reset-HPOVInterconnectNetOpPassword -InputObject $LiObject -Password $NetOpPassword
</pre>
Set the NetOp password to the new value, for the specific Logical Interconnect.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Reset-HPOVInterconnectNetOpPassword
<p>
Reset HPE Synergy Virtual Connect NetOp account password.

### SYNTAX
<p>
<pre><code>Reset-HPOVInterconnectNetOpPassword [-InputObject] &lt;Object&gt; [-Password] &lt;System.Security.SecureString&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
*** THIS CMDLET SHOULD NOT BE EXECUTED WITHOUT GUIDANCE FROM HPE CUSTOMER SUPPORT CENTER ***

This Cmdlet will reset the HPE Synergy Virtual Connect NetOp account password to the specified value.

Required permissions: Infrastructure administrator, Network administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Logical Interconnect from Get-HPOVLogicalInterconnect Cmdlet.

<table><tbody><tr><td>Aliases</td><td>Interconnect</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;System.Security.SecureString&gt;<p>
The password in System.Security.SecureString format.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.LogicalInterconnect [System.Management.Automation.PSCustomObject]**_

 Logical interconnect resource from Get-HPOVLogicalInterconnect.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task that tracks the power state change



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$NetOpPassword = Read-Host -Message "New password: " -AsSecureString
$LiObject = Get-HPOVLogicalInterconnect -Name MyEncl1-Ethernet-LIG1
Reset-HPOVInterconnectNetOpPassword -InputObject $LiObject -Password $NetOpPassword
</pre>
Set the NetOp password to the new value, for the specific Logical Interconnect.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
