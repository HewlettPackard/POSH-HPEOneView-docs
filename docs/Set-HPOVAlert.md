<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVAlert
<p>
Change status of an alert.

### SYNTAX
<p>
<pre><code>Set-HPOVAlert [-InputObject] &lt;Object&gt; [-AssignToUser] &lt;String&gt;[ [-Notes] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVAlert [-InputObject] &lt;Object&gt;[ [-Active] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVAlert [-InputObject] &lt;Object&gt;[ [-Cleared] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Alerts can be in one of two administratively controlled states: Active or Cleared.  This Cmdlet allows the administrator to change the status of an alert to either Active or Cleared.

In order for an Administrator to change the status of an Alert, the Administrator must be assigned to the respective resource role (Network, Server, Storage, or Infrastructure.)


### Parameters

-Active &lt;SwitchParameter&gt;<p>
Change the alert to "Active" status.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AssignToUser &lt;String&gt;<p>
The users name in String value to assign the alert to.  The user name does not require, nor is mapped to, a local user account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>tfalserue</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Cleared &lt;SwitchParameter&gt;<p>
Change the alert to "Cleared" status.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The alert to be cleared.  Can be URI or resource object.

<table><tbody><tr><td>Aliases</td><td>alertUri, Alert</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Notes &lt;String&gt;<p>
Notes of the action for the alert.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Alert URI

 _**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

 Alert resource object (i.e. Get-HPOVAlert)



### Return Values

_**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

 

The updated alert



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVAlert -InputObject $Alert -Cleared
</pre>
Clears the alert.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAlert -AlertState Active | Set-HPOVAlert -Cleared
</pre>
Get all alerts in an "Active" state, and set their state to "Cleared".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVServer -name "Encl1, bay 1*" | Get-HPOVAlert -State active | Set-HPOVAlert -Cleared
</pre>
Get aassociated alerts to the servers in an "Active" state, and set their state to "Cleared".



### Related Links

* [Clear-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Clear-HPOVAlert)
* [Get-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAlert)
* [Remove-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAlert)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVAlert
<p>
Change status of an alert.

### SYNTAX
<p>
<pre><code>Set-HPOVAlert [-InputObject] &lt;Object&gt; [-AssignToUser] &lt;String&gt; [-Notes] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVAlert [-InputObject] &lt;Object&gt;[ [-Active] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVAlert [-InputObject] &lt;Object&gt;[ [-Cleared] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Alerts can be in one of two administratively controlled states: Active or Cleared.  This Cmdlet allows the administrator to change the status of an alert to either Active or Cleared.

In order for an Administrator to change the status of an Alert, the Administrator must be assigned to the respective resource role (Network, Server, Storage, or Infrastructure.)


### Parameters

-Active &lt;SwitchParameter&gt;<p>
Change the alert to "Active" status.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AssignToUser &lt;String&gt;<p>
The users name in String value to assign the alert to.  The user name does not require, nor is mapped to, a local user account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Cleared &lt;SwitchParameter&gt;<p>
Change the alert to "Cleared" status.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The alert to be cleared.  Can be URI or resource object.

<table><tbody><tr><td>Aliases</td><td>alertUri, Alert</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Notes &lt;String&gt;<p>
Notes of the action for the alert.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Alert URI

 _**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

 Alert resource object (i.e. Get-HPOVAlert)



### Return Values

_**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

 

The updated alert



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVAlert -InputObject $Alert -Cleared
</pre>
Clears the alert.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAlert -AlertState Active | Set-HPOVAlert -Cleared
</pre>
Get all alerts in an "Active" state, and set their state to "Cleared".



### Related Links

* [Clear-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Clear-HPOVAlert)
* [Get-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAlert)
* [Remove-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAlert)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVAlert
<p>
Change status of an alert.

### SYNTAX
<p>
<pre><code>Set-HPOVAlert [-InputObject] &lt;Object&gt; [-AssignToUser] &lt;String&gt; [-Notes] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVAlert [-InputObject] &lt;Object&gt;[ [-Active] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVAlert [-InputObject] &lt;Object&gt;[ [-Cleared] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Alerts can be in one of two administratively controlled states: Active or Cleared.  This Cmdlet allows the administrator to change the status of an alert to either Active or Cleared.

In order for an Administrator to change the status of an Alert, the Administrator must be assigned to the respective resource role (Network, Server, Storage, or Infrastructure.)


### Parameters

-Active &lt;SwitchParameter&gt;<p>
Change the alert to "Active" status.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AssignToUser &lt;String&gt;<p>
The users name in String value to assign the alert to.  The user name does not require, nor is mapped to, a local user account.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Cleared &lt;SwitchParameter&gt;<p>
Change the alert to "Cleared" status.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The alert to be cleared.  Can be URI or resource object.

<table><tbody><tr><td>Aliases</td><td>alertUri, Alert</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Notes &lt;String&gt;<p>
Notes of the action for the alert.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Alert URI

 _**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

 Alert resource object (i.e. Get-HPOVAlert)



### Return Values

_**HPOneView.Alert [System.Management.Automation.PSCustomObject]**_

 

The updated alert



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVAlert -InputObject $Alert -Cleared
</pre>
Clears the alert.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVAlert -AlertState Active | Set-HPOVAlert -Cleared
</pre>
Get all alerts in an "Active" state, and set their state to "Cleared".



### Related Links

* [Clear-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Clear-HPOVAlert)
* [Get-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAlert)
* [Remove-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAlert)


***
<div align=right><a href="#Top">Top</a></div>
