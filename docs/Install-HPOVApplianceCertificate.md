<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Install-HPOVApplianceCertificate
<p>
Install signed private key.

### SYNTAX
<p>
<pre><code>Install-HPOVApplianceCertificate [-Path] &lt;System.IO.FileInfo&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
After using New-HPOVApplianceCSR to generate a Certificate Signing Request (CSR), this CMDLET will install the CA signed and approved SSL private key to the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify the HPOneView.Appliance.Connection object or Name property value.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Path &lt;System.IO.FileInfo&gt;<p>
Aliases [-PrivateKey, -Certificate]
The private key certificate for the appliance. The source CER file can be passed to the cmdlet via pipeline or this parameter.

<table><tbody><tr><td>Aliases</td><td>PrivateKey, Certificate</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.IO.FileInfo**_

 Certificate file path



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task resource object to monitor committing certificate, and deploying HPE SSO certificate update to managed/monitored devices



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Task = C:\dir\hpov.cer | Install-HPOVApplianceCertificate

</pre>
Read the signed SSL certificate private key and install it on the appliance, and wait for the task to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$cert = Get-ChildItem C:\dir\hpov.cer 
$TaskToMonitor = Install-HPOVApplianceCertificate -Path $Cert -Async
C:\> $TaskToMonitor | Wait-HPOVTaskComplete
</pre>
Read the signed SSL certificate private key and install it on the appliance, and wait for the task to complete.



### Related Links

* [Get-HPOVApplianceCertificateStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceCertificateStatus)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Install-HPOVApplianceCertificate
<p>
Install signed private key.

### SYNTAX
<p>
<pre><code>Install-HPOVApplianceCertificate [-Path] &lt;System.IO.FileInfo&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
After using New-HPOVApplianceCSR to generate a Certificate Signing Request (CSR), this CMDLET will install the CA signed and approved SSL private key to the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify the HPOneView.Appliance.Connection object or Name property value.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Path &lt;System.IO.FileInfo&gt;<p>
Aliases [-PrivateKey, -Certificate]
The private key certificate for the appliance. The source CER file can be passed to the cmdlet via pipeline or this parameter.

<table><tbody><tr><td>Aliases</td><td>PrivateKey, Certificate</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.IO.FileInfo**_

 Certificate file path



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task resource object to monitor committing certificate, and deploying HPE SSO certificate update to managed/monitored devices



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Task = C:\dir\hpov.cer | Install-HPOVApplianceCertificate

</pre>
Read the signed SSL certificate private key and install it on the appliance, and wait for the task to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$cert = Get-ChildItem C:\dir\hpov.cer 
$TaskToMonitor = Install-HPOVApplianceCertificate -Path $Cert -Async
C:\> $TaskToMonitor | Wait-HPOVTaskComplete
</pre>
Read the signed SSL certificate private key and install it on the appliance, and wait for the task to complete.



### Related Links

* [Get-HPOVApplianceCertificateStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceCertificateStatus)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Install-HPOVApplianceCertificate
<p>
Install signed private key.

### SYNTAX
<p>
<pre><code>Install-HPOVApplianceCertificate [-Path] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
After using New-HPOVApplianceCSR to generate a Certificate Signing Request (CSR), this CMDLET will install the CA signed and approved SSL private key to the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify the HPOneView.Appliance.Connection object or Name property value.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Path &lt;Object&gt;<p>
Aliases [-PrivateKey, -Certificate]
The private key certificate for the appliance. Use Get-Content (GC) to read the source CER file and pass to the cmdlet via pipeline or this parameter.

<table><tbody><tr><td>Aliases</td><td>PrivateKey, Certificate</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 Certificate file read by Get-Content -Raw

 _**System.IO.FileInfo**_

 Certificate file path

 _**System.Collections.ArrayList**_

 Certificate file read by Get-Content



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task resource object to monitor committing certificate, and deploying HPE SSO certificate update to managed/monitored devices



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Task = Get-Content C:\dir\hpov.cer -Raw | Install-HPOVApplianceCertificate

</pre>
Read the signed SSL certificate private key and install it on the appliance, and wait for the task to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$cert = Get-Content C:\dir\hpov.cer -Raw 
$TaskToMonitor = Install-HPOVApplianceCertificate -Path $Cert -Async
C:\> $TaskToMonitor | Wait-HPOVTaskComplete
</pre>
Read the signed SSL certificate private key and install it on the appliance, and wait for the task to complete.



### Related Links

* [Get-HPOVApplianceCertificateStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceCertificateStatus)


***
<div align=right><a href="#Top">Top</a></div>
