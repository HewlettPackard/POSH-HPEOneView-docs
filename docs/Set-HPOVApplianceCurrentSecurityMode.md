<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVApplianceCurrentSecurityMode
<p>
Change the appliance current security mode.

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceCurrentSecurityMode [-SecurityMode] &lt;HPOVApplianceAvailableSecurityMode&gt;[ [-ApplianceConnection] &lt;Array&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to change the current security mode (Legacy, FIPS or CNSA) of the appliance. Before modifying the appliance security mode, a compatibility report should be run using the Show-HPOVApplianceSecurityModeCompatibilityReport. When changing active security mode will require an immediate appliance reboot.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecurityMode &lt;HPOVApplianceAvailableSecurityMode&gt;<p>
Specify the Security Mode to change the appliance to by using Get-HPOVApplianceAvailableSecurityMode.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.SecurityMode**_

 The specified applinace security mode from Get-HPOVApplianceAvailableSecurityMode.



### Return Values

_**HPOneView.Appliance.SecurityMode**_

 

After appliance reboots, the appliance current security mode is returned.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceAvailableSecurityMode -ModeName CNSA | Set-HPOVApplianceCurrentSecurityMode
</pre>
Put the appliance into CNSA mode. After confirmation prompt, appliance will immediately reboot.



### Related Links

* [Get-HPOVApplianceCurrentSecurityMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceCurrentSecurityMode)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVApplianceCurrentSecurityMode
<p>
Change the appliance current security mode.

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceCurrentSecurityMode [-SecurityMode] &lt;HPOVApplianceAvailableSecurityMode&gt;[ [-ApplianceConnection] &lt;Array&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to change the current security mode (Legacy, FIPS or CNSA) of the appliance. Before modifying the appliance security mode, a compatibility report should be run using the Show-HPOVApplianceSecurityModeCompatibilityReport. When changing active security mode will require an immediate appliance reboot.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecurityMode &lt;HPOVApplianceAvailableSecurityMode&gt;<p>
Specify the Security Mode to change the appliance to by using Get-HPOVApplianceAvailableSecurityMode.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.SecurityMode**_

 The specified applinace security mode from Get-HPOVApplianceAvailableSecurityMode.



### Return Values

_**HPOneView.Appliance.SecurityMode**_

 

After appliance reboots, the appliance current security mode is returned.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceAvailableSecurityMode -ModeName CNSA | Set-HPOVApplianceCurrentSecurityMode
</pre>
Put the appliance into CNSA mode. After confirmation prompt, appliance will immediately reboot.



### Related Links

* [Get-HPOVApplianceCurrentSecurityMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceCurrentSecurityMode)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVApplianceCurrentSecurityMode
<p>
Change the appliance current security mode.

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceCurrentSecurityMode [-SecurityMode] &lt;HPOVApplianceAvailableSecurityMode&gt;[ [-ApplianceConnection] &lt;Array&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to change the current security mode (Legacy, FIPS or CNSA) of the appliance. Before modifying the appliance security mode, a compatibility report should be run using the Show-HPOVApplianceSecurityModeCompatibilityReport. When changing active security mode will require an immediate appliance reboot.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecurityMode &lt;HPOVApplianceAvailableSecurityMode&gt;<p>
Specify the Security Mode to change the appliance to by using Get-HPOVApplianceAvailableSecurityMode.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.SecurityMode**_

 The specified applinace security mode from Get-HPOVApplianceAvailableSecurityMode.



### Return Values

_**HPOneView.Appliance.SecurityMode**_

 

After appliance reboots, the appliance current security mode is returned.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceAvailableSecurityMode -ModeName CNSA | Set-HPOVApplianceCurrentSecurityMode
</pre>
Put the appliance into CNSA mode. After confirmation prompt, appliance will immediately reboot.



### Related Links

* [Get-HPOVApplianceCurrentSecurityMode](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceCurrentSecurityMode)


***
<div align=right><a href="#Top">Top</a></div>
