<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Update-HPOVApplianceTrustedAuthorityCrl
<p>
Update appliance certificate authority revocation list.

### SYNTAX
<p>
<pre><code>Update-HPOVApplianceTrustedAuthorityCrl [-InputObject] &lt;HPOneView.Appliance.TrustedCertificateAuthority[]&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVApplianceTrustedAuthorityCrl [-InputObject] &lt;HPOneView.Appliance.TrustedCertificateAuthority[]&gt; [-Path] &lt;FileInfo&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView enables users to import a CA CRL file and to perform the appropriate revocation checking on existing certificates in the trust store and for certificates received during communication with a managed device or external server.  Certificate revocation checks are enabled by default. However, if a matching CRL has not been imported for a CA-issued certificate, or if a CRL has expired, the appliance bypasses the revocation check for the associated certificate when performing an HTTPS connection. If you want to restrict (or relax) revocation checking, use the options below on the edit screen.

The Cmdlet will attempt to download the CRL from the HTTP location specified within the TrustedCertificateAuthority object.  You can manually download the updated CRL and use the -Path paramter to specify the offline CRL.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Appliance.TrustedCertificateAuthority[]&gt;<p>
HPOneView.Appliance.TrustedCertificateAuthority resource from Get-HPOVApplianceTrustedCertificate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Path &lt;FileInfo&gt;<p>
Path to manually downloaded CRL.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TrustedCertificateAuthority**_

 resource from Get-HPOVApplianceTrustedCertificate.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceTrustedCertificate -Name "VeriSign Class 3 Public Primary Certification Authority - G5" | Update-HPOVApplianceTrustedAuthorityCrl</pre>
Update the built-in certificate authority resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
# Download CA CRL for offline use
$CA = Get-HPOVApplianceTrustedCertificate -CertificateAuthoritiesOnly -Name "DigiCert Global CA G2"
Invoke-WebRequest -Uri $CA.CRLInfo.EndPointList[0] -OutFile C:\Directory\CA-updated.crl

# Copy offline CRL to other PC
Get-HPOVApplianceTrustedCertificate -CertificateAuthoritiesOnly -Name "DigiCert Global CA G2" | Update-HPOVApplianceTrustedAuthorityCrl -Path C:\Directory\CA-updated.crl</pre>
Update the built-in certificate authority resource.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Update-HPOVApplianceTrustedAuthorityCrl
<p>
Update appliance certificate authority revocation list.

### SYNTAX
<p>
<pre><code>Update-HPOVApplianceTrustedAuthorityCrl [-InputObject] &lt;HPOneView.Appliance.TrustedCertificateAuthority[]&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVApplianceTrustedAuthorityCrl [-InputObject] &lt;HPOneView.Appliance.TrustedCertificateAuthority[]&gt; [-Path] &lt;FileInfo&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView enables users to import a CA CRL file and to perform the appropriate revocation checking on existing certificates in the trust store and for certificates received during communication with a managed device or external server.  Certificate revocation checks are enabled by default. However, if a matching CRL has not been imported for a CA-issued certificate, or if a CRL has expired, the appliance bypasses the revocation check for the associated certificate when performing an HTTPS connection. If you want to restrict (or relax) revocation checking, use the options below on the edit screen.

The Cmdlet will attempt to download the CRL from the HTTP location specified within the TrustedCertificateAuthority object.  You can manually download the updated CRL and use the -Path paramter to specify the offline CRL.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Appliance.TrustedCertificateAuthority[]&gt;<p>
HPOneView.Appliance.TrustedCertificateAuthority resource from Get-HPOVApplianceTrustedCertificate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Path &lt;FileInfo&gt;<p>
Path to manually downloaded CRL.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TrustedCertificateAuthority**_

 resource from Get-HPOVApplianceTrustedCertificate.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for configuring port monitoring on the requested logical intercinnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceTrustedCertificate -Name "VeriSign Class 3 Public Primary Certification Authority - G5" | Update-HPOVApplianceTrustedAuthorityCrl</pre>
Update the built-in certificate authority resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
# Download CA CRL for offline use
$CA = Get-HPOVApplianceTrustedCertificate -CertificateAuthoritiesOnly -Name "DigiCert Global CA G2"
Invoke-WebRequest -Uri $CA.CRLInfo.EndPointList[0] -OutFile C:\Directory\CA-updated.crl

# Copy offline CRL to other PC
Get-HPOVApplianceTrustedCertificate -CertificateAuthoritiesOnly -Name "DigiCert Global CA G2" | Update-HPOVApplianceTrustedAuthorityCrl -Path C:\Directory\CA-updated.crl</pre>
Update the built-in certificate authority resource.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Update-HPOVApplianceTrustedAuthorityCrl
<p>
Update appliance certificate authority revocation list.

### SYNTAX
<p>
<pre><code>Update-HPOVApplianceTrustedAuthorityCrl [-InputObject] &lt;HPOneView.Appliance.TrustedCertificateAuthority[]&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Update-HPOVApplianceTrustedAuthorityCrl [-InputObject] &lt;HPOneView.Appliance.TrustedCertificateAuthority[]&gt; [-Path] &lt;FileInfo&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView enables users to import a CA CRL file and to perform the appropriate revocation checking on existing certificates in the trust store and for certificates received during communication with a managed device or external server.  Certificate revocation checks are enabled by default. However, if a matching CRL has not been imported for a CA-issued certificate, or if a CRL has expired, the appliance bypasses the revocation check for the associated certificate when performing an HTTPS connection. If you want to restrict (or relax) revocation checking, use the options below on the edit screen.

The Cmdlet will attempt to download the CRL from the HTTP location specified within the TrustedCertificateAuthority object.  You can manually download the updated CRL and use the -Path paramter to specify the offline CRL.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Appliance.TrustedCertificateAuthority[]&gt;<p>
HPOneView.Appliance.TrustedCertificateAuthority resource from Get-HPOVApplianceTrustedCertificate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Path &lt;FileInfo&gt;<p>
Path to manually downloaded CRL.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.TrustedCertificateAuthority**_

 resource from Get-HPOVApplianceTrustedCertificate.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceTrustedCertificate -Name "VeriSign Class 3 Public Primary Certification Authority - G5" | Update-HPOVApplianceTrustedAuthorityCrl</pre>
Update the built-in certificate authority resource.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
# Download CA CRL for offline use
$CA = Get-HPOVApplianceTrustedCertificate -CertificateAuthoritiesOnly -Name "DigiCert Global CA G2"
Invoke-WebRequest -Uri $CA.CRLInfo.EndPointList[0] -OutFile C:\Directory\CA-updated.crl

# Copy offline CRL to other PC
Get-HPOVApplianceTrustedCertificate -CertificateAuthoritiesOnly -Name "DigiCert Global CA G2" | Update-HPOVApplianceTrustedAuthorityCrl -Path C:\Directory\CA-updated.crl</pre>
Update the built-in certificate authority resource.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
