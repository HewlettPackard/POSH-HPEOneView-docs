<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVServerProfileAssign
<p>
Unassign or Reassign an existing Server Profile.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileAssign [-ServerProfile] &lt;Object&gt; [-Server] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileAssign [-ServerProfile] &lt;Object&gt;[ [-Unassigned] &lt;SwitchParameter&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to unassign or reassign an existing HPE OneView Server Profile.  The destination Server and its Server Hardware Type does not need to match the original Server Hardware Type defined in the Server Profile.  The Server Profile will be updated accordingly.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Use to force add the Server Profile if there are any async task validation failures, like server hardware is in a Warning or Failed state, or SAN attach volume only have a single path configured.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Server &lt;Object&gt;<p>
The server hardware resource where the new profile is to be applied.  This is normally retrieved with a "Get-HPOVServer" call, and the Server state property should be "NoProfileApplied".  Can also be the Server Hardware name.s

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfile &lt;Object&gt;<p>
Aliases [-Profile]

The name or object of the server profile resource to modify assignment.

<table><tbody><tr><td>Aliases</td><td>Profile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Unassigned &lt;SwitchParameter&gt;<p>
Siwtch parameter to unassign a Server Profile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Server Profile resource object from Get-HPOVServerProfile



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

If successful returns a task resource which may be polled to follow the progress of the profile creation.  Otherwise, a request validation error will be returned



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile "Profile 1" | New-HPOVServerProfileAssign -Server "Encl1, Bay 10" | Wait-HPOVTaskComplete
</pre>
Get "Profile 1" Server Profile and assign it to "Encl1, Bay 10", then wait for the async task to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServerProfile "Profile 1" | New-HPOVServerProfileAssign -unassign | Wait-HPOVTaskComplete
</pre>
Get "Profile 1" Server Profile and unassign it, then wait for the async task to complete.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVServerProfileAssign
<p>
Unassign or Reassign an existing Server Profile.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileAssign [-ServerProfile] &lt;Object&gt; [-Server] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileAssign [-ServerProfile] &lt;Object&gt;[ [-Unassigned] &lt;SwitchParameter&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to unassign or reassign an existing HPE OneView Server Profile.  The destination Server and its Server Hardware Type does not need to match the original Server Hardware Type defined in the Server Profile.  The Server Profile will be updated accordingly.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Use to force add the Server Profile if there are any async task validation failures, like server hardware is in a Warning or Failed state, or SAN attach volume only have a single path configured.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Server &lt;Object&gt;<p>
The server hardware resource where the new profile is to be applied.  This is normally retrieved with a "Get-HPOVServer" call, and the Server state property should be "NoProfileApplied".  Can also be the Server Hardware name.s

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfile &lt;Object&gt;<p>
Aliases [-Profile]

The name or object of the server profile resource to modify assignment.

<table><tbody><tr><td>Aliases</td><td>Profile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Unassigned &lt;SwitchParameter&gt;<p>
Siwtch parameter to unassign a Server Profile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Server Profile resource object from Get-HPOVServerProfile



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

If successful returns a task resource which may be polled to follow the progress of the profile creation.  Otherwise, a request validation error will be returned



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile "Profile 1" | New-HPOVServerProfileAssign -Server "Encl1, Bay 10" | Wait-HPOVTaskComplete
</pre>
Get "Profile 1" Server Profile and assign it to "Encl1, Bay 10", then wait for the async task to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServerProfile "Profile 1" | New-HPOVServerProfileAssign -unassign | Wait-HPOVTaskComplete
</pre>
Get "Profile 1" Server Profile and unassign it, then wait for the async task to complete.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVServerProfileAssign
<p>
Unassign or Reassign an existing Server Profile.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileAssign [-ServerProfile] &lt;Object&gt; [-Server] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileAssign [-ServerProfile] &lt;Object&gt;[ [-Unassigned] &lt;SwitchParameter&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to unassign or reassign an existing HPE OneView Server Profile.  The destination Server and its Server Hardware Type does not need to match the original Server Hardware Type defined in the Server Profile.  The Server Profile will be updated accordingly.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Use to force add the Server Profile if there are any async task validation failures, like server hardware is in a Warning or Failed state, or SAN attach volume only have a single path configured.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Server &lt;Object&gt;<p>
The server hardware resource where the new profile is to be applied.  This is normally retrieved with a "Get-HPOVServer" call, and the Server state property should be "NoProfileApplied".  Can also be the Server Hardware name.s

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfile &lt;Object&gt;<p>
Aliases [-Profile]

The name or object of the server profile resource to modify assignment.

<table><tbody><tr><td>Aliases</td><td>Profile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Unassigned &lt;SwitchParameter&gt;<p>
Siwtch parameter to unassign a Server Profile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Server Profile resource object from Get-HPOVServerProfile



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

If successful returns a task resource which may be polled to follow the progress of the profile creation.  Otherwise, a request validation error will be returned



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile "Profile 1" | New-HPOVServerProfileAssign -Server "Encl1, Bay 10" | Wait-HPOVTaskComplete
</pre>
Get "Profile 1" Server Profile and assign it to "Encl1, Bay 10", then wait for the async task to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServerProfile "Profile 1" | New-HPOVServerProfileAssign -unassign | Wait-HPOVTaskComplete
</pre>
Get "Profile 1" Server Profile and unassign it, then wait for the async task to complete.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
