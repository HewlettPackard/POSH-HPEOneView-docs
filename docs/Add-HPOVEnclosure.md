<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Add-HPOVEnclosure
<p>
Import an enclosure.

### SYNTAX
<p>
<pre><code>Add-HPOVEnclosure [-Hostname] &lt;String&gt; [-EnclosureGroup] &lt;Object&gt; [-Username] &lt;String&gt; [-Password] &lt;Object&gt; [-LicensingIntent] &lt;String&gt; [-Baseline] &lt;Object&gt;[ [-ForceInstallFirmware] &lt;SwitchParameter&gt;][ [-Scope] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVEnclosure [-Hostname] &lt;String&gt; [-EnclosureGroup] &lt;Object&gt;[ [-Credential] &lt;PSCredential&gt;] [-LicensingIntent] &lt;String&gt; [-Baseline] &lt;Object&gt;[ [-ForceInstallFirmware] &lt;SwitchParameter&gt;][ [-Scope] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVEnclosure [-Hostname] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-Monitored] &lt;SwitchParameter&gt;][ [-Scope] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVEnclosure [-Hostname] &lt;String&gt; [-Username] &lt;String&gt; [-Password] &lt;Object&gt;[ [-Monitored] &lt;SwitchParameter&gt;][ [-Scope] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will import an enclosure for HPE OneView management.  The Onboard Administrator needs to have at least an IP Address for each OA module, and a valid Administrator account.  An Enclosure Group must also be created.
	
Add-HPOVEnclosure will attempt a connection to the XML Reply interface to examine if an existing VC Domain is present.  If so, you are prompted if you wish to continue and force import the enclosure.  FORCE IMPORT OF AN ENCLOSURE WILL DELETE ANY EXISTING VC DOMAIN CONFIGURATION, AND NOT PERFORM ANY VC DOMAIN CONFIGURATION MIGRATION.  PLEASE BACKUP YOUR VC DOMAIN IF YOU WISH TO RESTORE TO ITS ORIGINAL CONFIGURATION.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Baseline &lt;Object&gt;<p>
Aliases [-fwIso, -fwBaselineIsoFilename]

Baseline File Name, Name, URI or Object.

Examples:

$FileName = "bp-hp-service-pack-for-proliant-oneview-2014-11-30-05.iso"
$Name = "HP Service Pack For ProLiant  OneView 2014 11 13"

<table><tbody><tr><td>Aliases</td><td>fwIso, fwBaselineIsoFilename</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
When attempting to add a Server to the appliance, the appliance will validate the target Server is not already claimed.  If it is, this parameter is used when the server has been claimed by another appliance to bypass the confirmation prompt, and force add the server resource.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Aliases [-eg, -enclGroupName]

Enclosure Group Name to associate with the enclosure to import.

<table><tbody><tr><td>Aliases</td><td>eg, EnclGroupName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ForceInstallFirmware &lt;SwitchParameter&gt;<p>
Aliases [-forceFw, -forceInstall]

 Force the installation of the provided Firmware Baseline.

<table><tbody><tr><td>Aliases</td><td>forceFw, forceInstall</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Aliases [-oa]

IP Address, Hostname or FQDN of the Primary C7000 Onboard Administrator (OA).

<table><tbody><tr><td>Aliases</td><td>oa</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LicensingIntent &lt;String&gt;<p>
Aliases [-license, -l]

Specifies whether the intent is to apply either OneView or OneView w/o iLO licenses to the servers in the enclosure being imported.

Accepted values are

	* OneView
	* OneViewNoiLO

<table><tbody><tr><td>Aliases</td><td>license, l</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>OneView</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Monitored &lt;SwitchParameter&gt;<p>
Add the specified enclosure for monitor only management.  You can view hardware for inventory and status information only.  Omitting this parameter, you can apply configurations, deploy server profiles, monitor operation status, collect statistics, and alert users to specific conditions.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p, -pw]

Administrator Account password of the OA specified.  Value can be [String] or [SecureString].

<table><tbody><tr><td>Aliases</td><td>p, pw</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Array&gt;<p>
Provide an array of <HPOneView.Appliance.ScopeResource> Scope resource(s) to initially add.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u, -user]

Administrator account of the target OA.  Can be either an OA Local Administrator or Active Directory (AD) account if the OA is configured for AD authentication.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 Enclosure Group Resource that will be used to set the Enlosure policy.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring the enclosure import process.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVEnclosure -oa "192.168.1.1" -enclGroupName EG1 -user admin -pass hpinvent -license OneView
</pre>
Add a new enclosure to the appliance, using the EG1 Enclosure Group.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Add-HPOVEnclosure -oa "192.168.1.1" -enclGroupName EG1 -user admin -pass hpinvent -license OneView -confirm:$false
Add a new enclosure to the appliance, using the EG1 Enclosure Group, and force add the target enclosure.
</pre>
THIS IS A DISTRUCTIVE PROCESS IF AN EXISTING VC DOMAIN EXISTS.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Add-HPOVEnclosure -oa "192.168.1.1" -user admin -pass hpinvent -monitored
</pre>
Add a new enclosure to the appliance for monitoring only.



### Related Links

* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosure)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosure)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)
* [Update-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVEnclosure)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Add-HPOVEnclosure
<p>
Import an enclosure.

### SYNTAX
<p>
<pre><code>Add-HPOVEnclosure [-Hostname] &lt;String&gt; [-EnclosureGroup] &lt;Object&gt; [-Username] &lt;String&gt; [-Password] &lt;Object&gt; [-LicensingIntent] &lt;String&gt; [-Baseline] &lt;Object&gt;[ [-ForceInstallFirmware] &lt;SwitchParameter&gt;][ [-Scope] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVEnclosure [-Hostname] &lt;String&gt; [-EnclosureGroup] &lt;Object&gt;[ [-Credential] &lt;PSCredential&gt;] [-LicensingIntent] &lt;String&gt; [-Baseline] &lt;Object&gt;[ [-ForceInstallFirmware] &lt;SwitchParameter&gt;][ [-Scope] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVEnclosure [-Hostname] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-Monitored] &lt;SwitchParameter&gt;][ [-Scope] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVEnclosure [-Hostname] &lt;String&gt; [-Username] &lt;String&gt; [-Password] &lt;Object&gt;[ [-Monitored] &lt;SwitchParameter&gt;][ [-Scope] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will import an enclosure for HPE OneView management.  The Onboard Administrator needs to have at least an IP Address for each OA module, and a valid Administrator account.  An Enclosure Group must also be created.
	
Add-HPOVEnclosure will attempt a connection to the XML Reply interface to examine if an existing VC Domain is present.  If so, you are prompted if you wish to continue and force import the enclosure.  FORCE IMPORT OF AN ENCLOSURE WILL DELETE ANY EXISTING VC DOMAIN CONFIGURATION, AND NOT PERFORM ANY VC DOMAIN CONFIGURATION MIGRATION.  PLEASE BACKUP YOUR VC DOMAIN IF YOU WISH TO RESTORE TO ITS ORIGINAL CONFIGURATION.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Baseline &lt;Object&gt;<p>
Aliases [-fwIso, -fwBaselineIsoFilename]

Baseline File Name, Name, URI or Object.

Examples:

$FileName = "bp-hp-service-pack-for-proliant-oneview-2014-11-30-05.iso"
$Name = "HP Service Pack For ProLiant  OneView 2014 11 13"

<table><tbody><tr><td>Aliases</td><td>fwIso, fwBaselineIsoFilename</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
When attempting to add a Server to the appliance, the appliance will validate the target Server is not already claimed.  If it is, this parameter is used when the server has been claimed by another appliance to bypass the confirmation prompt, and force add the server resource.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Aliases [-eg, -enclGroupName]

Enclosure Group Name to associate with the enclosure to import.

<table><tbody><tr><td>Aliases</td><td>eg, EnclGroupName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ForceInstallFirmware &lt;SwitchParameter&gt;<p>
Aliases [-forceFw, -forceInstall]

 Force the installation of the provided Firmware Baseline.

<table><tbody><tr><td>Aliases</td><td>forceFw, forceInstall</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Aliases [-oa]

IP Address, Hostname or FQDN of the Primary C7000 Onboard Administrator (OA).

<table><tbody><tr><td>Aliases</td><td>oa</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LicensingIntent &lt;String&gt;<p>
Aliases [-license, -l]

Specifies whether the intent is to apply either OneView or OneView w/o iLO licenses to the servers in the enclosure being imported.

Accepted values are

	* OneView
	* OneViewNoiLO

<table><tbody><tr><td>Aliases</td><td>license, l</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>OneView</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Monitored &lt;SwitchParameter&gt;<p>
Add the specified enclosure for monitor only management.  You can view hardware for inventory and status information only.  Omitting this parameter, you can apply configurations, deploy server profiles, monitor operation status, collect statistics, and alert users to specific conditions.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p, -pw]

Administrator Account password of the OA specified.  Value can be [String] or [SecureString].

<table><tbody><tr><td>Aliases</td><td>p, pw</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Array&gt;<p>
Provide an array of <HPOneView.Appliance.ScopeResource> Scope resource(s) to initially add.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u, -user]

Administrator account of the target OA.  Can be either an OA Local Administrator or Active Directory (AD) account if the OA is configured for AD authentication.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 Enclosure Group Resource that will be used to set the Enlosure policy.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring the enclosure import process.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVEnclosure -oa "192.168.1.1" -enclGroupName EG1 -user admin -pass hpinvent -license OneView
</pre>
Add a new enclosure to the appliance, using the EG1 Enclosure Group.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Add-HPOVEnclosure -oa "192.168.1.1" -enclGroupName EG1 -user admin -pass hpinvent -license OneView -confirm:$false
Add a new enclosure to the appliance, using the EG1 Enclosure Group, and force add the target enclosure.
</pre>
THIS IS A DISTRUCTIVE PROCESS IF AN EXISTING VC DOMAIN EXISTS.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Add-HPOVEnclosure -oa "192.168.1.1" -user admin -pass hpinvent -monitored
</pre>
Add a new enclosure to the appliance for monitoring only.



### Related Links

* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosure)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosure)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)
* [Update-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVEnclosure)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Add-HPOVEnclosure
<p>
Import an enclosure.

### SYNTAX
<p>
<pre><code>Add-HPOVEnclosure [-Hostname] &lt;String&gt; [-EnclosureGroup] &lt;Object&gt; [-Username] &lt;String&gt; [-Password] &lt;Object&gt; [-LicensingIntent] &lt;String&gt; [-Baseline] &lt;Object&gt;[ [-ForceInstallFirmware] &lt;SwitchParameter&gt;][ [-Scope] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVEnclosure [-Hostname] &lt;String&gt; [-EnclosureGroup] &lt;Object&gt;[ [-Credential] &lt;PSCredential&gt;] [-LicensingIntent] &lt;String&gt; [-Baseline] &lt;Object&gt;[ [-ForceInstallFirmware] &lt;SwitchParameter&gt;][ [-Scope] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVEnclosure [-Hostname] &lt;String&gt;[ [-Credential] &lt;PSCredential&gt;][ [-Monitored] &lt;SwitchParameter&gt;][ [-Scope] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVEnclosure [-Hostname] &lt;String&gt; [-Username] &lt;String&gt; [-Password] &lt;Object&gt;[ [-Monitored] &lt;SwitchParameter&gt;][ [-Scope] &lt;Array&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt;[ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will import an enclosure for HPE OneView management.  The Onboard Administrator needs to have at least an IP Address for each OA module, and a valid Administrator account.  An Enclosure Group must also be created.
	
Add-HPOVEnclosure will attempt a connection to the XML Reply interface to examine if an existing VC Domain is present.  If so, you are prompted if you wish to continue and force import the enclosure.  FORCE IMPORT OF AN ENCLOSURE WILL DELETE ANY EXISTING VC DOMAIN CONFIGURATION, AND NOT PERFORM ANY VC DOMAIN CONFIGURATION MIGRATION.  PLEASE BACKUP YOUR VC DOMAIN IF YOU WISH TO RESTORE TO ITS ORIGINAL CONFIGURATION.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Baseline &lt;Object&gt;<p>
Aliases [-fwIso, -fwBaselineIsoFilename]

Baseline File Name, Name, URI or Object.

Examples:

$FileName = "bp-hp-service-pack-for-proliant-oneview-2014-11-30-05.iso"
$Name = "HP Service Pack For ProLiant  OneView 2014 11 13"

<table><tbody><tr><td>Aliases</td><td>fwIso, fwBaselineIsoFilename</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
When attempting to add a Server to the appliance, the appliance will validate the target Server is not already claimed.  If it is, this parameter is used when the server has been claimed by another appliance to bypass the confirmation prompt, and force add the server resource.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object instead.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnclosureGroup &lt;Object&gt;<p>
Aliases [-eg, -enclGroupName]

Enclosure Group Name to associate with the enclosure to import.

<table><tbody><tr><td>Aliases</td><td>eg, EnclGroupName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ForceInstallFirmware &lt;SwitchParameter&gt;<p>
Aliases [-forceFw, -forceInstall]

 Force the installation of the provided Firmware Baseline.

<table><tbody><tr><td>Aliases</td><td>forceFw, forceInstall</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Aliases [-oa]

IP Address, Hostname or FQDN of the Primary C7000 Onboard Administrator (OA).

<table><tbody><tr><td>Aliases</td><td>oa</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LicensingIntent &lt;String&gt;<p>
Aliases [-license, -l]

Specifies whether the intent is to apply either OneView or OneView w/o iLO licenses to the servers in the enclosure being imported.

Accepted values are

	* OneView
	* OneViewNoiLO

<table><tbody><tr><td>Aliases</td><td>license, l</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>OneView</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Monitored &lt;SwitchParameter&gt;<p>
Add the specified enclosure for monitor only management.  You can view hardware for inventory and status information only.  Omitting this parameter, you can apply configurations, deploy server profiles, monitor operation status, collect statistics, and alert users to specific conditions.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Aliases [-p, -pw]

Administrator Account password of the OA specified.  Value can be [String] or [SecureString].

<table><tbody><tr><td>Aliases</td><td>p, pw</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Array&gt;<p>
Provide an array of <HPOneView.Appliance.ScopeResource> Scope resource(s) to initially add.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Aliases [-u, -user]

Administrator account of the target OA.  Can be either an OA Local Administrator or Active Directory (AD) account if the OA is configured for AD authentication.

<table><tbody><tr><td>Aliases</td><td>u, user</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 Enclosure Group Resource that will be used to set the Enlosure policy.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring the enclosure import process.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Add-HPOVEnclosure -oa "192.168.1.1" -enclGroupName EG1 -user admin -pass hpinvent -license OneView
</pre>
Add a new enclosure to the appliance, using the EG1 Enclosure Group.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Add-HPOVEnclosure -oa "192.168.1.1" -enclGroupName EG1 -user admin -pass hpinvent -license OneView -confirm:$false
Add a new enclosure to the appliance, using the EG1 Enclosure Group, and force add the target enclosure.
</pre>
THIS IS A DISTRUCTIVE PROCESS IF AN EXISTING VC DOMAIN EXISTS.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Add-HPOVEnclosure -oa "192.168.1.1" -user admin -pass hpinvent -monitored
</pre>
Add a new enclosure to the appliance for monitoring only.



### Related Links

* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosure)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosure)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)
* [Update-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVEnclosure)


***
<div align=right><a href="#Top">Top</a></div>
