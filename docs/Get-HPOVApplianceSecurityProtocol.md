<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVApplianceSecurityProtocol
<p>
Get appliance supported security protocols and cyphers.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceSecurityProtocol[ [-TlsVersion] &lt;String[]&gt;][ [-SecurityMode] &lt;String[]&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Get the appliance available security protocols, and their active state. By default the appliance current security mode will return the available security protocols and their configuration state. Use the -SecurityMode parameter to specify one or more modes. Use the -TlsVersion to specifify one or more security protocols to return.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecurityMode &lt;String[]&gt;<p>
Specify the Security Mode to return supported security protocols and encryption cyphers. By default, will return the current appliance security mode. Allowed values:

	* Legacy
	* FIPS
	*CNSA

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TlsVersion &lt;String[]&gt;<p>
Filter for specific TLS version(s). By default, will return all TLS Versions. Allowed values:

	* TLSv1
	 TLSv1.1
	TLSv1.2

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SecurityProtocol**_

 

Available appliance security protocol, mode enabled and associated encryption cyphers.n



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceSecurityProtocol
</pre>
Get the appliance FIPS security mode and associated security protocols.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVApplianceSecurityProtocol -SecurityMode FIPS, CNSA -TlsVersion TLSv1.1, TLSv1.2
</pre>
Get the appliance FIPS security mode and TLSv1.1 and TLSv1.2 security protocols.



### Related Links

* [Set-HPOVApplianceSecurityProtocol](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceSecurityProtocol)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVApplianceSecurityProtocol
<p>
Get appliance supported security protocols and cyphers.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceSecurityProtocol[ [-TlsVersion] &lt;String[]&gt;][ [-SecurityMode] &lt;String[]&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Get the appliance available security protocols, and their active state. By default the appliance current security mode will return the available security protocols and their configuration state. Use the -SecurityMode parameter to specify one or more modes. Use the -TlsVersion to specifify one or more security protocols to return.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecurityMode &lt;String[]&gt;<p>
Specify the Security Mode to return supported security protocols and encryption cyphers. By default, will return the current appliance security mode. Allowed values:

	* Legacy
	* FIPS
	*CNSA

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TlsVersion &lt;String[]&gt;<p>
Filter for specific TLS version(s). By default, will return all TLS Versions. Allowed values:

	* TLSv1
	 TLSv1.1
	TLSv1.2

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SecurityProtocol**_

 

Available appliance security protocol, mode enabled and associated encryption cyphers.n



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceSecurityProtocol
</pre>
Get the appliance FIPS security mode and associated security protocols.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVApplianceSecurityProtocol -SecurityMode FIPS, CNSA -TlsVersion TLSv1.1, TLSv1.2
</pre>
Get the appliance FIPS security mode and TLSv1.1 and TLSv1.2 security protocols.



### Related Links

* [Set-HPOVApplianceSecurityProtocol](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceSecurityProtocol)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVApplianceSecurityProtocol
<p>
Get appliance supported security protocols and cyphers.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceSecurityProtocol[ [-TlsVersion] &lt;String[]&gt;][ [-SecurityMode] &lt;String[]&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Get the appliance available security protocols, and their active state. By default the appliance current security mode will return the available security protocols and their configuration state. Use the -SecurityMode parameter to specify one or more modes. Use the -TlsVersion to specifify one or more security protocols to return.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecurityMode &lt;String[]&gt;<p>
Specify the Security Mode to return supported security protocols and encryption cyphers. By default, will return the current appliance security mode. Allowed values:

	* Legacy
	* FIPS
	*CNSA

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TlsVersion &lt;String[]&gt;<p>
Filter for specific TLS version(s). By default, will return all TLS Versions. Allowed values:

	* TLSv1
	 TLSv1.1
	TLSv1.2

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SecurityProtocol**_

 

Available appliance security protocol, mode enabled and associated encryption cyphers.n



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceSecurityProtocol
</pre>
Get the appliance FIPS security mode and associated security protocols.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVApplianceSecurityProtocol -SecurityMode FIPS, CNSA -TlsVersion TLSv1.1, TLSv1.2
</pre>
Get the appliance FIPS security mode and TLSv1.1 and TLSv1.2 security protocols.



### Related Links

* [Set-HPOVApplianceSecurityProtocol](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceSecurityProtocol)


***
<div align=right><a href="#Top">Top</a></div>
