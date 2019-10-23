<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Disable-HPOVCertificateValidation
<p>
Disable appliance TLS/SSL certificate validation.

### SYNTAX
<p>
<pre><code>Disable-HPOVCertificateValidation[ [-ApplianceConnection] &lt;Array&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView performs certificate validation for all Transport Layer Security (TLS) communications between the appliance and external servers or devices. These checks guarantee confidentiality, integrity, and authentication with the remote end-point.

In production environments, Hewlett Packard Enterprise strongly recommends that certificate validation be enabled. In environments where security is not a concern, such as a testing environment, certificate validation can optionally be disabled.

If certificate validation is disabled, any sensitive data such as credentials are transmitted insecurely. Make sure to use only local user accounts and not enterprise directory-based accounts to avoid transmitting enterprise login credentials over the network when certificate validation is disabled.

NOTE: When upgrading from earlier releases, the certificates in use by the currently monitored or managed devices are imported into the HPE OneView trust store and alerts are generated for issues such as expired certificates. These automatically added certificates are either a device"s self-signed certificate or the leaf certificate for a certificate authority (CA) signed certificate. Using CA-signed certificates can simplify the device trust process.

Certificate checking is enabled by default, but some of the stricter validation checks are relaxed to maintain communications with all devices, even those with certificate issues. The relaxed checking includes: 

	* Not performing expiration checks for self-signed certificates 
	* For certificate authority (CA) signed certificates, relaxed certificate revocation list (CRL) checking. 

The relaxed checking gives the administrator time to address any expired certificates, to upload trusted CA root and intermediate certificates, and upload the appropriate CRLs. 

Hewlett Packard Enterprise strongly recommends that you enable strict certificate validation checks after completing an update as appropriate for your enterprise security policies. See Manage Certificates for additional information on certificate management. 

HPE OneView supports devices using self-signed certificates and devices using formal CA-signed certificates. CA-signed certificates offer benefits such as revocation checking and overall simplified management. 

HPE OneView enables users to import a CA CRL file and to perform the appropriate revocation checking on existing certificates in the trust store and for certificates received during communication with a managed device or external server.

WARNING: Modifying the appliance setting will require the appliance to be rebooted.

WARNING: If 2-factor authentication is configured, this policy cannot be disabled.

Required: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Override the confirmation prompt.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Appliance global security settings.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Disable-HPOVCertificateValidation
</pre>
Disable certificate validation on the appliance.



### Related Links

* [Enable-HPOVCertificateValidation](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVCertificateValidation)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Disable-HPOVCertificateValidation
<p>
Disable appliance TLS/SSL certificate validation.

### SYNTAX
<p>
<pre><code>Disable-HPOVCertificateValidation[ [-ApplianceConnection] &lt;Array&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView performs certificate validation for all Transport Layer Security (TLS) communications between the appliance and external servers or devices. These checks guarantee confidentiality, integrity, and authentication with the remote end-point.

In production environments, Hewlett Packard Enterprise strongly recommends that certificate validation be enabled. In environments where security is not a concern, such as a testing environment, certificate validation can optionally be disabled.

If certificate validation is disabled, any sensitive data such as credentials are transmitted insecurely. Make sure to use only local user accounts and not enterprise directory-based accounts to avoid transmitting enterprise login credentials over the network when certificate validation is disabled.

NOTE: When upgrading from earlier releases, the certificates in use by the currently monitored or managed devices are imported into the HPE OneView trust store and alerts are generated for issues such as expired certificates. These automatically added certificates are either a device"s self-signed certificate or the leaf certificate for a certificate authority (CA) signed certificate. Using CA-signed certificates can simplify the device trust process.

Certificate checking is enabled by default, but some of the stricter validation checks are relaxed to maintain communications with all devices, even those with certificate issues. The relaxed checking includes: 

	* Not performing expiration checks for self-signed certificates 
	* For certificate authority (CA) signed certificates, relaxed certificate revocation list (CRL) checking. 

The relaxed checking gives the administrator time to address any expired certificates, to upload trusted CA root and intermediate certificates, and upload the appropriate CRLs. 

Hewlett Packard Enterprise strongly recommends that you enable strict certificate validation checks after completing an update as appropriate for your enterprise security policies. See Manage Certificates for additional information on certificate management. 

HPE OneView supports devices using self-signed certificates and devices using formal CA-signed certificates. CA-signed certificates offer benefits such as revocation checking and overall simplified management. 

HPE OneView enables users to import a CA CRL file and to perform the appropriate revocation checking on existing certificates in the trust store and for certificates received during communication with a managed device or external server.

WARNING: Modifying the appliance setting will require the appliance to be rebooted.

WARNING: If 2-factor authentication is configured, this policy cannot be disabled.

Required: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Override the confirmation prompt.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Appliance global security settings.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Disable-HPOVCertificateValidation
</pre>
Disable certificate validation on the appliance.



### Related Links

* [Enable-HPOVCertificateValidation](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVCertificateValidation)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Disable-HPOVCertificateValidation
<p>
Disable appliance TLS/SSL certificate validation.

### SYNTAX
<p>
<pre><code>Disable-HPOVCertificateValidation[ [-ApplianceConnection] &lt;Array&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView performs certificate validation for all Transport Layer Security (TLS) communications between the appliance and external servers or devices. These checks guarantee confidentiality, integrity, and authentication with the remote end-point.

In production environments, Hewlett Packard Enterprise strongly recommends that certificate validation be enabled. In environments where security is not a concern, such as a testing environment, certificate validation can optionally be disabled.

If certificate validation is disabled, any sensitive data such as credentials are transmitted insecurely. Make sure to use only local user accounts and not enterprise directory-based accounts to avoid transmitting enterprise login credentials over the network when certificate validation is disabled.

NOTE: When upgrading from earlier releases, the certificates in use by the currently monitored or managed devices are imported into the HPE OneView trust store and alerts are generated for issues such as expired certificates. These automatically added certificates are either a device"s self-signed certificate or the leaf certificate for a certificate authority (CA) signed certificate. Using CA-signed certificates can simplify the device trust process.

Certificate checking is enabled by default, but some of the stricter validation checks are relaxed to maintain communications with all devices, even those with certificate issues. The relaxed checking includes: 

	* Not performing expiration checks for self-signed certificates 
	* For certificate authority (CA) signed certificates, relaxed certificate revocation list (CRL) checking. 

The relaxed checking gives the administrator time to address any expired certificates, to upload trusted CA root and intermediate certificates, and upload the appropriate CRLs. 

Hewlett Packard Enterprise strongly recommends that you enable strict certificate validation checks after completing an update as appropriate for your enterprise security policies. See Manage Certificates for additional information on certificate management. 

HPE OneView supports devices using self-signed certificates and devices using formal CA-signed certificates. CA-signed certificates offer benefits such as revocation checking and overall simplified management. 

HPE OneView enables users to import a CA CRL file and to perform the appropriate revocation checking on existing certificates in the trust store and for certificates received during communication with a managed device or external server.

WARNING: Modifying the appliance setting will require the appliance to be rebooted.

WARNING: If 2-factor authentication is configured, this policy cannot be disabled.

Required: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>
Override the confirmation prompt.

<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Appliance global security settings.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Disable-HPOVCertificateValidation
</pre>
Disable certificate validation on the appliance.



### Related Links

* [Enable-HPOVCertificateValidation](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVCertificateValidation)


***
<div align=right><a href="#Top">Top</a></div>
