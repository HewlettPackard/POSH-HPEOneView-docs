<a name="top"></a>
 <h4><a href="#1.20">Library Version 1.20</a></h4>
 <a name="1.20"></a>

### <u>HPE OneView 1.20 Library</u>

## Show-HPOVSSLCertificate
<p>
Display appliance SSL Certificate if untrusted.

### SYNTAX
<p>
<pre><code>Show-HPOVSSLCertificate[ [-Appliance] &lt;Appliance&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet displays the HP OneView SSL Certificate if it is untrusted.  Could also be used to verify certificate, as cert object is stored, which is stored in the [bool]PKI.Web.WebSSL.CertificateIsValid property.


### Parameters

-Appliance &lt;Appliance&gt;<p>
Used to specify the applinace to connect to, if an existing connection isn't established from the Connect-HPOVMgmt cmdlet.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>$script:HPOneViewAppliance</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_
 


### Return Values

_**PKI.HPOneView.Certificate**_
 
If Certificate is untrusted, the cert object will be displayed to the user.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:\> Show-HPOVSslCertificate
</pre>
Show the appliance SSL Certificate status if untrusted.



### Related Links

* [Import-HPOVSslCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Import-HPOVSslCertificate)
* [New-HPOVApplianceCsr](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceCsr)
* [Install-HPOVApplianceCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Install-HPOVApplianceCertificate)
* [New-HPOVApplianceSelfSignedCertificate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVApplianceSelfSignedCertificate)
* [Get-HPOVSslCertificateStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSslCertificateStatus)


***
<div align=right><a href="#Top">Top</a></div>
