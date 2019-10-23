<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Add-HPOVApplianceTrustedCertificate
<p>
Add X.509 SSL certificates to appliance trusted store.

### SYNTAX
<p>
<pre><code>Add-HPOVApplianceTrustedCertificate [-Path] &lt;System.IO.FileInfo&gt; [-CertObject] &lt;Object&gt;[ [-ComputerName] &lt;String&gt;][ [-Port] &lt;Int&gt;][ [-AliasName] &lt;String&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will allow the Infrastructure Administrator to add X.509 compliant SSL certificates to the appliance trusted store.


### Parameters

-AliasName &lt;String&gt;<p>
Specify an alias name of the certificate stored on the appliance.  By default, the Subject name will be used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection objects or Name property values.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CertObject &lt;Object&gt;<p>
Specify the public Base64 X.509 certificate of the remote endpoint to add to the appliances internal trust store.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ComputerName &lt;String&gt;<p>
The remote endpoint Computer Name or IP Address.  This should match either the X.509 Subject or Subject Alternative Name fields with in the cert object.  If omitting the -CertObject parameter, the Cmdlet will initiate a TCP connection in order to retrieve the certificate.  Use the -Port parameter to specify the correct TCP port the SSL/TLS service is listening on.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Use to force add an untrusted (self-signed or a certificate authority certificate has not been added to the appliance) certificate into the appliances trust store.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Path &lt;System.IO.FileInfo&gt;<p>
The filesystem object of the X.509 public SSL certificate to add.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int&gt;<p>
Specify the TCP port where the TLS/SSL service is bound and listening on.  Use with the -ComputerName parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.IO.FileInfo**_

 The filesystem object of the X.509 public SSL certificate to add.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-ChildItem C:\Path\srv1-pub.cer | Add-HPOVApplianceTrustedCertificate
</pre>
Add the provided offline certificate to the appliance trust store.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Add-HPOVApplianceTrustedCertificate -ComputerName $RemoteBackupHostname -Port 443 -AliasName backupserver -Async -Outvariable Task
</pre>
Use the Cmdlet to add the remote certificate to the appliance trust store without waiting for the task to complete.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Add-HPOVApplianceTrustedCertificate -ComputerName server1-ilo.domain.com -AliasName server1iLo -force
</pre>
Use the Cmdlet to add the self-signed iLO certificate to the appliance.



### Related Links

* [Get-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrustedCertificate)
* [Remove-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrustedCertificate)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Add-HPOVApplianceTrustedCertificate
<p>
Add X.509 SSL certificates to appliance trusted store.

### SYNTAX
<p>
<pre><code>Add-HPOVApplianceTrustedCertificate [-Path] &lt;System.IO.FileInfo&gt; [-CertObject] &lt;Object&gt;[ [-ComputerName] &lt;String&gt;][ [-Port] &lt;Int&gt;][ [-AliasName] &lt;String&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will allow the Infrastructure Administrator to add X.509 compliant SSL certificates to the appliance trusted store.


### Parameters

-AliasName &lt;String&gt;<p>
Specify an alias name of the certificate stored on the appliance.  By default, the Subject name will be used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection objects or Name property values.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CertObject &lt;Object&gt;<p>
Specify the public Base64 X.509 certificate of the remote endpoint to add to the appliances internal trust store.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ComputerName &lt;String&gt;<p>
The remote endpoint Computer Name or IP Address.  This should match either the X.509 Subject or Subject Alternative Name fields with in the cert object.  If omitting the -CertObject parameter, the Cmdlet will initiate a TCP connection in order to retrieve the certificate.  Use the -Port parameter to specify the correct TCP port the SSL/TLS service is listening on.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Use to force add an untrusted (self-signed or a certificate authority certificate has not been added to the appliance) certificate into the appliances trust store.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Path &lt;System.IO.FileInfo&gt;<p>
The filesystem object of the X.509 public SSL certificate to add.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int&gt;<p>
Specify the TCP port where the TLS/SSL service is bound and listening on.  Use with the -ComputerName parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.IO.FileInfo**_

 The filesystem object of the X.509 public SSL certificate to add.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-ChildItem C:\Path\srv1-pub.cer | Add-HPOVApplianceTrustedCertificate
</pre>
Add the provided offline certificate to the appliance trust store.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Add-HPOVApplianceTrustedCertificate -ComputerName $RemoteBackupHostname -Port 443 -AliasName backupserver -Async -Outvariable Task
</pre>
Use the Cmdlet to add the remote certificate to the appliance trust store without waiting for the task to complete.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Add-HPOVApplianceTrustedCertificate -ComputerName server1-ilo.domain.com -AliasName server1iLo -force
</pre>
Use the Cmdlet to add the self-signed iLO certificate to the appliance.



### Related Links

* [Get-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrustedCertificate)
* [Remove-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrustedCertificate)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Add-HPOVApplianceTrustedCertificate
<p>
Add X.509 SSL certificates to appliance trusted store.

### SYNTAX
<p>
<pre><code>Add-HPOVApplianceTrustedCertificate [-Path] &lt;System.IO.FileInfo&gt; [-CertObject] &lt;Object&gt;[ [-ComputerName] &lt;String&gt;][ [-Port] &lt;Int&gt;][ [-AliasName] &lt;String&gt;][ [-Force] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will allow the Infrastructure Administrator to add X.509 compliant SSL certificates to the appliance trusted store.


### Parameters

-AliasName &lt;String&gt;<p>
Specify an alias name of the certificate stored on the appliance.  By default, the Subject name will be used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection objects or Name property values.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CertObject &lt;Object&gt;<p>
Specify the public Base64 X.509 certificate of the remote endpoint to add to the appliances internal trust store.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ComputerName &lt;String&gt;<p>
The remote endpoint Computer Name or IP Address.  This should match either the X.509 Subject or Subject Alternative Name fields with in the cert object.  If omitting the -CertObject parameter, the Cmdlet will initiate a TCP connection in order to retrieve the certificate.  Use the -Port parameter to specify the correct TCP port the SSL/TLS service is listening on.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Force &lt;SwitchParameter&gt;<p>
Use to force add an untrusted (self-signed or a certificate authority certificate has not been added to the appliance) certificate into the appliances trust store.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Path &lt;System.IO.FileInfo&gt;<p>
The filesystem object of the X.509 public SSL certificate to add.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int&gt;<p>
Specify the TCP port where the TLS/SSL service is bound and listening on.  Use with the -ComputerName parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.IO.FileInfo**_

 The filesystem object of the X.509 public SSL certificate to add.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-ChildItem C:\Path\srv1-pub.cer | Add-HPOVApplianceTrustedCertificate
</pre>
Add the provided offline certificate to the appliance trust store.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Add-HPOVApplianceTrustedCertificate -ComputerName $RemoteBackupHostname -Port 443 -AliasName backupserver -Async -Outvariable Task
</pre>
Use the Cmdlet to add the remote certificate to the appliance trust store without waiting for the task to complete.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Add-HPOVApplianceTrustedCertificate -ComputerName server1-ilo.domain.com -AliasName server1iLo -force
</pre>
Use the Cmdlet to add the self-signed iLO certificate to the appliance.



### Related Links

* [Get-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrustedCertificate)
* [Remove-HPOVApplianceTrustedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrustedCertificate)


***
<div align=right><a href="#Top">Top</a></div>
