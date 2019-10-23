<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVScmbCertificates
<p>
Get State Change Message Bus certificates.

### SYNTAX
<p>
<pre><code>Get-HPOVScmbCertificates [-Location] &lt;String&gt;[ [-InstallApplianceRootCA] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVScmbCertificates [-Password] &lt;SecureString&gt; [-Location] &lt;String&gt;[ [-ConvertToPFx] &lt;SwitchParameter&gt;][ [-InstallApplianceRootCA] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieve and store the certificates necessary to register with the State Change Message Bus.  The SCMB only supports a single read-only "account".


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConvertToPFx &lt;SwitchParameter&gt;<p>
Aliases [-pfx]		
Convert rabbitmq_readonly client certificate to PFX format for .Net consumption.

<table><tbody><tr><td>Aliases</td><td>pfx</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InstallApplianceRootCA &lt;SwitchParameter&gt;<p>
hoose to install the appliance root certificate to the current users Trusted Root Authorities store.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
Aliases [-Save]
Directory to store the SSL certificates.  If the directory doesn"t exist, it will be created.

<table><tbody><tr><td>Aliases</td><td>save</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>($pwd).path</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Password that will be used to encrypt the PFX client certificate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**SecureString**_

 Password for PFX file



### Return Values

_**3 files will be created:**_

 

* {ApplianceConnection_Name}_ca.cer - Appliance internal Root Certificate Authority
 * {ApplianceConnection_Name}_cert.cer - Appliance managed rabbitmq_readonly user Public Key
 * {ApplianceConnection_Name}_privateKey.key - Appliance managed rabbitmq_readonly user Client Certificate

 _**Pkcs12/PFX certificate file**_

 

If ConvertToPfX is used, the Pkcs12/PFX compliant certificate file is created, {ApplianceConnection_Name}_privateKey.pfx



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVScmbCertificates
</pre>
Get the HPE OneView appliance SCMB SSL certificates, and save them in the current directory.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
read-host "Password" -AsSecureString | Get-HPOVScmbCertificates -Location C:\scmbcerts -ExportToPfx
</pre>
Prompt for secure password input and pipe the value to Get-HPOVScmbCertificates to convert the cert.pem to PFX format with the pipeline secure password.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVScmbCertificates
<p>
Get State Change Message Bus certificates.

### SYNTAX
<p>
<pre><code>Get-HPOVScmbCertificates [-Location] &lt;String&gt;[ [-InstallApplianceRootCA] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVScmbCertificates [-Password] &lt;SecureString&gt; [-Location] &lt;String&gt;[ [-ConvertToPFx] &lt;SwitchParameter&gt;][ [-InstallApplianceRootCA] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieve and store the certificates necessary to register with the State Change Message Bus.  The SCMB only supports a single read-only "account".


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConvertToPFx &lt;SwitchParameter&gt;<p>
Aliases [-pfx]		
Convert rabbitmq_readonly client certificate to PFX format for .Net consumption.

<table><tbody><tr><td>Aliases</td><td>pfx</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InstallApplianceRootCA &lt;SwitchParameter&gt;<p>
hoose to install the appliance root certificate to the current users Trusted Root Authorities store.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
Aliases [-Save]
Directory to store the SSL certificates.  If the directory doesn"t exist, it will be created.

<table><tbody><tr><td>Aliases</td><td>save</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>($pwd).path</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Password that will be used to encrypt the PFX client certificate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**SecureString**_

 Password for PFX file



### Return Values

_**3 files will be created:**_

 

* {ApplianceConnection_Name}_ca.cer - Appliance internal Root Certificate Authority
 * {ApplianceConnection_Name}_cert.cer - Appliance managed rabbitmq_readonly user Public Key
 * {ApplianceConnection_Name}_privateKey.key - Appliance managed rabbitmq_readonly user Client Certificate

 _**Pkcs12/PFX certificate file**_

 

If ConvertToPfX is used, the Pkcs12/PFX compliant certificate file is created, {ApplianceConnection_Name}_privateKey.pfx



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVScmbCertificates
</pre>
Get the HPE OneView appliance SCMB SSL certificates, and save them in the current directory.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
read-host "Password" -AsSecureString | Get-HPOVScmbCertificates -Location C:\scmbcerts -ExportToPfx
</pre>
Prompt for secure password input and pipe the value to Get-HPOVScmbCertificates to convert the cert.pem to PFX format with the pipeline secure password.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVScmbCertificates
<p>
Get State Change Message Bus certificates.

### SYNTAX
<p>
<pre><code>Get-HPOVScmbCertificates [-Location] &lt;String&gt;[ [-InstallApplianceRootCA] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVScmbCertificates [-Password] &lt;SecureString&gt; [-Location] &lt;String&gt;[ [-ConvertToPFx] &lt;SwitchParameter&gt;][ [-InstallApplianceRootCA] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieve and store the certificates necessary to register with the State Change Message Bus.  The SCMB only supports a single read-only "account".


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConvertToPFx &lt;SwitchParameter&gt;<p>
Aliases [-pfx]		
Convert rabbitmq_readonly client certificate to PFX format for .Net consumption.

<table><tbody><tr><td>Aliases</td><td>pfx</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InstallApplianceRootCA &lt;SwitchParameter&gt;<p>
hoose to install the appliance root certificate to the current users Trusted Root Authorities store.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
Aliases [-Save]
Directory to store the SSL certificates.  If the directory doesn"t exist, it will be created.

<table><tbody><tr><td>Aliases</td><td>save</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>($pwd).path</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Password that will be used to encrypt the PFX client certificate.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**SecureString**_

 Password for PFX file



### Return Values

_**3 files will be created:**_

 

* {ApplianceConnection_Name}_ca.cer - Appliance internal Root Certificate Authority
 * {ApplianceConnection_Name}_cert.cer - Appliance managed rabbitmq_readonly user Public Key
 * {ApplianceConnection_Name}_privateKey.key - Appliance managed rabbitmq_readonly user Client Certificate

 _**Pkcs12/PFX certificate file**_

 

If ConvertToPfX is used, the Pkcs12/PFX compliant certificate file is created, {ApplianceConnection_Name}_privateKey.pfx



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVScmbCertificates
</pre>
Get the HPE OneView appliance SCMB SSL certificates, and save them in the current directory.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
read-host "Password" -AsSecureString | Get-HPOVScmbCertificates -Location C:\scmbcerts -ExportToPfx
</pre>
Prompt for secure password input and pipe the value to Get-HPOVScmbCertificates to convert the cert.pem to PFX format with the pipeline secure password.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
