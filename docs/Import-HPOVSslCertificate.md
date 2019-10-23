<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Import-HPOVSslCertificate
<p>
Import an appliance SSL Certificate.

### SYNTAX
<p>
<pre><code>Import-HPOVSslCertificate [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
By default, the HPE OneView appliance creates a self-signed SSL Certificate for its WebUI.  There might be a desire to trust the certificate, in case the SHA-1 hash becomes invalid (either due to a certificate change or man-in-the-middle attack) and the caller would like to be notified.  This cmdlet will assist in retrieving and storing the appliance self-generated SSL Certificate into the current users Trusted Root Certification Authorities store.

Please note that the Subject Alternate Name (SAN) must match that of the Appliance hostname you use to connect to your appliance.  If it does not, an SSL conenction failure will ocurr.  When creating a CSR on the appliance, make sure to include the additional FQDN and IP address(es) in the Alternative Name field.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>${Global:ConnectedSessions}</td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Connection**_

 HPE OneView Appliance Connection object



### Return Values

_**None.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Connection = Connect-HPOVMgmt Myappliance.domain.com Administrator MyP@ssword
Import-HPOVSslCertificate

</pre>
Import the SSL certificate from the specific appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Connect-HPOVMgmt Myappliance.domain.com Administrator MyP@ssword
Connect-HPOVMgmt Myappliance2.domain.com Administrator MyP@ssword
$ConnectedSessions | Import-HPOVSslCertificate 

</pre>
Import the SSL Certificate from all connected sessions.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Import-HPOVSslCertificate
<p>
Import an appliance SSL Certificate.

### SYNTAX
<p>
<pre><code>Import-HPOVSslCertificate [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
By default, the HPE OneView appliance creates a self-signed SSL Certificate for its WebUI.  There might be a desire to trust the certificate, in case the SHA-1 hash becomes invalid (either due to a certificate change or man-in-the-middle attack) and the caller would like to be notified.  This cmdlet will assist in retrieving and storing the appliance self-generated SSL Certificate into the current users Trusted Root Certification Authorities store.

Please note that the Subject Alternate Name (SAN) must match that of the Appliance hostname you use to connect to your appliance.  If it does not, an SSL conenction failure will ocurr.  When creating a CSR on the appliance, make sure to include the additional FQDN and IP address(es) in the Alternative Name field.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>${Global:ConnectedSessions}</td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Connection**_

 HPE OneView Appliance Connection object



### Return Values

_**None.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Connection = Connect-HPOVMgmt Myappliance.domain.com Administrator MyP@ssword
Import-HPOVSslCertificate

</pre>
Import the SSL certificate from the specific appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Connect-HPOVMgmt Myappliance.domain.com Administrator MyP@ssword
Connect-HPOVMgmt Myappliance2.domain.com Administrator MyP@ssword
$ConnectedSessions | Import-HPOVSslCertificate 

</pre>
Import the SSL Certificate from all connected sessions.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Import-HPOVSslCertificate
<p>
Import an appliance SSL Certificate.

### SYNTAX
<p>
<pre><code>Import-HPOVSslCertificate [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
By default, the HPE OneView appliance creates a self-signed SSL Certificate for its WebUI.  There might be a desire to trust the certificate, in case the SHA-1 hash becomes invalid (either due to a certificate change or man-in-the-middle attack) and the caller would like to be notified.  This cmdlet will assist in retrieving and storing the appliance self-generated SSL Certificate into the current users Trusted Root Certification Authorities store.

Please note that the Subject Alternate Name (SAN) must match that of the Appliance hostname you use to connect to your appliance.  If it does not, an SSL conenction failure will ocurr.  When creating a CSR on the appliance, make sure to include the additional FQDN and IP address(es) in the Alternative Name field.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>${Global:ConnectedSessions}</td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.Connection**_

 HPE OneView Appliance Connection object



### Return Values

_**None.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Connection = Connect-HPOVMgmt Myappliance.domain.com Administrator MyP@ssword
Import-HPOVSslCertificate

</pre>
Import the SSL certificate from the specific appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Connect-HPOVMgmt Myappliance.domain.com Administrator MyP@ssword
Connect-HPOVMgmt Myappliance2.domain.com Administrator MyP@ssword
$ConnectedSessions | Import-HPOVSslCertificate 

</pre>
Import the SSL Certificate from all connected sessions.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
