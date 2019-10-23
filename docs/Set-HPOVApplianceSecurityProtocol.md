<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVApplianceSecurityProtocol
<p>
Change the appliance current security protocols. 

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceSecurityProtocol [-EnableTlsVersion] &lt;String[]&gt;[ [-ApplianceConnection] &lt;Array&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to change the enabled security protocol(s) on the appliance. Before modifying the security protocols, a compatibility report should be run using the Show-HPOVApplianceSecurityModeCompatibilityReport.

 ****NOTE**** When changing active security protocols will require an immediate appliance reboot. ****NOTE**** 

Not all devices that HPE OneView manages or monitors support these stronger cryptography modes. Some examples are:

	* ProLiant Gen 6 systems have iLO versions that only support TLS 1.0. These servers are not supported when the appliance is in the FIPS or CNSA modes.
	* Gen7 systems have iLO versions that only support TLS 1.0 and 1.1. These servers are not supported when the appliance is in the CNSA mode.
	* ProLiant Gen8 systems have iLO versions that support TLS 1.1 and 1.2, and are compatible with both FIPS and CNSA modes.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableTlsVersion &lt;String[]&gt;<p>
Specify 1 or more security protocols to enable. Allowed values:

	* TLSv1
	* TLSv1.1
	* TLSv1.2

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SecurityProtocol**_

 

After appliance reboots, the updated security protocol configuration is returned.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVApplianceSecurityProtocol -EnableTlsVersion Tlsv1.2</pre>
Set the appliance to only enable TLSv1.2. After confirmation prompt, appliance will immediately reboot.



### Related Links

* [Get-HPOVApplianceSecurityProtocol](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSecurityProtocol)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVApplianceSecurityProtocol
<p>
Change the appliance current security protocols. 

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceSecurityProtocol [-EnableTlsVersion] &lt;String[]&gt;[ [-ApplianceConnection] &lt;Array&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to change the enabled security protocol(s) on the appliance. Before modifying the security protocols, a compatibility report should be run using the Show-HPOVApplianceSecurityModeCompatibilityReport.

 ****NOTE**** When changing active security protocols will require an immediate appliance reboot. ****NOTE**** 

Not all devices that HPE OneView manages or monitors support these stronger cryptography modes. Some examples are:

	* ProLiant Gen 6 systems have iLO versions that only support TLS 1.0. These servers are not supported when the appliance is in the FIPS or CNSA modes.
	* Gen7 systems have iLO versions that only support TLS 1.0 and 1.1. These servers are not supported when the appliance is in the CNSA mode.
	* ProLiant Gen8 systems have iLO versions that support TLS 1.1 and 1.2, and are compatible with both FIPS and CNSA modes.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableTlsVersion &lt;String[]&gt;<p>
Specify 1 or more security protocols to enable. Allowed values:

	* TLSv1
	* TLSv1.1
	* TLSv1.2

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SecurityProtocol**_

 

After appliance reboots, the updated security protocol configuration is returned.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVApplianceSecurityProtocol -EnableTlsVersion Tlsv1.2</pre>
Set the appliance to only enable TLSv1.2. After confirmation prompt, appliance will immediately reboot.



### Related Links

* [Get-HPOVApplianceSecurityProtocol](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSecurityProtocol)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVApplianceSecurityProtocol
<p>
Change the appliance current security protocols. 

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceSecurityProtocol [-EnableTlsVersion] &lt;String[]&gt;[ [-ApplianceConnection] &lt;Array&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to change the enabled security protocol(s) on the appliance. Before modifying the security protocols, a compatibility report should be run using the Show-HPOVApplianceSecurityModeCompatibilityReport.

 ****NOTE**** When changing active security protocols will require an immediate appliance reboot. ****NOTE**** 

Not all devices that HPE OneView manages or monitors support these stronger cryptography modes. Some examples are:

	* ProLiant Gen 6 systems have iLO versions that only support TLS 1.0. These servers are not supported when the appliance is in the FIPS or CNSA modes.
	* Gen7 systems have iLO versions that only support TLS 1.0 and 1.1. These servers are not supported when the appliance is in the CNSA mode.
	* ProLiant Gen8 systems have iLO versions that support TLS 1.1 and 1.2, and are compatible with both FIPS and CNSA modes.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableTlsVersion &lt;String[]&gt;<p>
Specify 1 or more security protocols to enable. Allowed values:

	* TLSv1
	* TLSv1.1
	* TLSv1.2

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SecurityProtocol**_

 

After appliance reboots, the updated security protocol configuration is returned.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVApplianceSecurityProtocol -EnableTlsVersion Tlsv1.2</pre>
Set the appliance to only enable TLSv1.2. After confirmation prompt, appliance will immediately reboot.



### Related Links

* [Get-HPOVApplianceSecurityProtocol](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceSecurityProtocol)


***
<div align=right><a href="#Top">Top</a></div>
