<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Update-HPOVEnclosure
<p>
Update or Refresh an enclosure.

### SYNTAX
<p>
<pre><code>Update-HPOVEnclosure[ [-Refresh] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt; [-Hostname] &lt;String&gt; [-Username] &lt;String&gt; [-Password] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVEnclosure[ [-Reapply] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will update or refresh an enclosure.  An Enclosure Refresh will instruct HPE OneView to go inventory the enclosure and update any missing management configurations.

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

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
When an Enclosure is in an Error state where the Primary Onboard Administrator IP Address changed, or the HPE OneView managed configuration is no longer present, you will need to provide the IP Address or FQDN of one of the Onboard Administrators in the target enclosure.  You will be prompted for this value if needed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Enclosure]
Provide the Enclosure name or Object, or [System.Collections.ArrayList] of names or Objects to refresh/update.

<table><tbody><tr><td>Aliases</td><td>Enclosure</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
Provide the password of the Onboard Administrator administrator account to re-apply the configuration if the enclosure is in an error state and the HPE OneView managed configuration is no longer present.  You will be prompted for this value if needed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reapply &lt;SwitchParameter&gt;<p>
Reapply the Enclosure Configuration.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Refresh &lt;SwitchParameter&gt;<p>
Refresh the enclosure to fix configuration issues.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Provide the Username of an Onboard Administrator administrator account to re-apply the configuration if the enclosure is in an error state and the HPE OneView managed configuration is no longer present.  You will be prompted for this value if needed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Single Enclosure resource

 _**System.Collections.ArrayList**_

 Multiple Enclosure resources



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring the enclosure import process



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEnclosure | Update-HPOVEnclosure -Refresh
</pre>
Refresh all available enclosures, from all connected sessions.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVEnclosure -Name Enclosure1 | Update-HPOVEnclosure -Refresh
</pre>
Refresh "Enclosure1" enclosure.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$TaskResourceToMonitor = Get-HPOVEnclosure -Name Enclosure1 | Update-HPOVEnclosure -Refresh -Hostname UpdatedOAFQDN.domain.local -Username Administrator -Password MyOAPassw0rd -Async
</pre>
Refresh "Enclosure1" enclosure, supplying the updated OA FQDN and administrator credentials



### Related Links

* [Add-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVEnclosure)
* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosure)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosure)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Update-HPOVEnclosure
<p>
Update or Refresh an enclosure.

### SYNTAX
<p>
<pre><code>Update-HPOVEnclosure[ [-Refresh] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt; [-Hostname] &lt;String&gt; [-Username] &lt;String&gt; [-Password] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVEnclosure[ [-Reapply] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will update or refresh an enclosure.  An Enclosure Refresh will instruct HPE OneView to go inventory the enclosure and update any missing management configurations.

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

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
When an Enclosure is in an Error state where the Primary Onboard Administrator IP Address changed, or the HPE OneView managed configuration is no longer present, you will need to provide the IP Address or FQDN of one of the Onboard Administrators in the target enclosure.  You will be prompted for this value if needed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Enclosure]
Provide the Enclosure name or Object, or [System.Collections.ArrayList] of names or Objects to refresh/update.

<table><tbody><tr><td>Aliases</td><td>Enclosure</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
Provide the password of the Onboard Administrator administrator account to re-apply the configuration if the enclosure is in an error state and the HPE OneView managed configuration is no longer present.  You will be prompted for this value if needed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reapply &lt;SwitchParameter&gt;<p>
Reapply the Enclosure Configuration.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Refresh &lt;SwitchParameter&gt;<p>
Refresh the enclosure to fix configuration issues.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Provide the Username of an Onboard Administrator administrator account to re-apply the configuration if the enclosure is in an error state and the HPE OneView managed configuration is no longer present.  You will be prompted for this value if needed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Single Enclosure resource

 _**System.Collections.ArrayList**_

 Multiple Enclosure resources



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring the enclosure import process



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEnclosure | Update-HPOVEnclosure -Refresh
</pre>
Refresh all available enclosures, from all connected sessions.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVEnclosure -Name Enclosure1 | Update-HPOVEnclosure -Refresh
</pre>
Refresh "Enclosure1" enclosure.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$TaskResourceToMonitor = Get-HPOVEnclosure -Name Enclosure1 | Update-HPOVEnclosure -Refresh -Hostname UpdatedOAFQDN.domain.local -Username Administrator -Password MyOAPassw0rd -Async
</pre>
Refresh "Enclosure1" enclosure, supplying the updated OA FQDN and administrator credentials



### Related Links

* [Add-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVEnclosure)
* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosure)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosure)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Update-HPOVEnclosure
<p>
Update or Refresh an enclosure.

### SYNTAX
<p>
<pre><code>Update-HPOVEnclosure[ [-Refresh] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt; [-Hostname] &lt;String&gt; [-Username] &lt;String&gt; [-Password] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVEnclosure[ [-Reapply] &lt;SwitchParameter&gt;] [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Array&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will update or refresh an enclosure.  An Enclosure Refresh will instruct HPE OneView to go inventory the enclosure and update any missing management configurations.

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

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
When an Enclosure is in an Error state where the Primary Onboard Administrator IP Address changed, or the HPE OneView managed configuration is no longer present, you will need to provide the IP Address or FQDN of one of the Onboard Administrators in the target enclosure.  You will be prompted for this value if needed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Enclosure]
Provide the Enclosure name or Object, or [System.Collections.ArrayList] of names or Objects to refresh/update.

<table><tbody><tr><td>Aliases</td><td>Enclosure</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
Provide the password of the Onboard Administrator administrator account to re-apply the configuration if the enclosure is in an error state and the HPE OneView managed configuration is no longer present.  You will be prompted for this value if needed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Reapply &lt;SwitchParameter&gt;<p>
Reapply the Enclosure Configuration.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Refresh &lt;SwitchParameter&gt;<p>
Refresh the enclosure to fix configuration issues.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Provide the Username of an Onboard Administrator administrator account to re-apply the configuration if the enclosure is in an error state and the HPE OneView managed configuration is no longer present.  You will be prompted for this value if needed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Single Enclosure resource

 _**System.Collections.ArrayList**_

 Multiple Enclosure resources



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring the enclosure import process



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEnclosure | Update-HPOVEnclosure -Refresh
</pre>
Refresh all available enclosures, from all connected sessions.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVEnclosure -Name Enclosure1 | Update-HPOVEnclosure -Refresh
</pre>
Refresh "Enclosure1" enclosure.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$TaskResourceToMonitor = Get-HPOVEnclosure -Name Enclosure1 | Update-HPOVEnclosure -Refresh -Hostname UpdatedOAFQDN.domain.local -Username Administrator -Password MyOAPassw0rd -Async
</pre>
Refresh "Enclosure1" enclosure, supplying the updated OA FQDN and administrator credentials



### Related Links

* [Add-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVEnclosure)
* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosure)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosure)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
