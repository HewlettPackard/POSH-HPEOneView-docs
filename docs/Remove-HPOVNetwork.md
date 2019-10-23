<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVNetwork
<p>
Delete network from appliance configuration.

### SYNTAX
<p>
<pre><code>Remove-HPOVNetwork [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Delete a network and its corresponding default connection type.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Forcefully remove the network object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name, -Network]

The network object(s) or name(s) to be deleted.

<table><tbody><tr><td>Aliases</td><td>uri, name, network, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Network Name or URI

 _**System.Management.Automation.PSCustomObject**_

 Network Resource Object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async Removal task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVNetwork -network "yellow"
Wait-HPOVTaskComplete $task

</pre>
Remove the network specifed by name.  Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Net = Get-HPOVNetwork -name "yellow"
Remove-HPOVNetwork -network $net -confirm:$false

</pre>
Remove the network specifed by $net, and do not prompt for confirmation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVNetwork | Remove-HPOVNetwork
</pre>
Search for all networks and remove them from appliance.



### Related Links

* [Get-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetwork)
* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetwork)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetwork)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVNetwork
<p>
Delete network from appliance configuration.

### SYNTAX
<p>
<pre><code>Remove-HPOVNetwork [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Delete a network and its corresponding default connection type.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Forcefully remove the network object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name, -Network]

The network object(s) or name(s) to be deleted.

<table><tbody><tr><td>Aliases</td><td>uri, name, network, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Network Name or URI

 _**System.Management.Automation.PSCustomObject**_

 Network Resource Object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async Removal task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVNetwork -network "yellow"
Wait-HPOVTaskComplete $task

</pre>
Remove the network specifed by name.  Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Net = Get-HPOVNetwork -name "yellow"
Remove-HPOVNetwork -network $net -confirm:$false

</pre>
Remove the network specifed by $net, and do not prompt for confirmation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVNetwork | Remove-HPOVNetwork
</pre>
Search for all networks and remove them from appliance.



### Related Links

* [Get-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetwork)
* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetwork)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetwork)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVNetwork
<p>
Delete network from appliance configuration.

### SYNTAX
<p>
<pre><code>Remove-HPOVNetwork [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Force] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Delete a network and its corresponding default connection type.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Forcefully remove the network object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name, -Network]

The network object(s) or name(s) to be deleted.

<table><tbody><tr><td>Aliases</td><td>uri, name, network, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Network Name or URI

 _**System.Management.Automation.PSCustomObject**_

 Network Resource Object



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async Removal task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Remove-HPOVNetwork -network "yellow"
Wait-HPOVTaskComplete $task

</pre>
Remove the network specifed by name.  Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Net = Get-HPOVNetwork -name "yellow"
Remove-HPOVNetwork -network $net -confirm:$false

</pre>
Remove the network specifed by $net, and do not prompt for confirmation.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVNetwork | Remove-HPOVNetwork
</pre>
Search for all networks and remove them from appliance.



### Related Links

* [Get-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetwork)
* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetwork)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetwork](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetwork)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
