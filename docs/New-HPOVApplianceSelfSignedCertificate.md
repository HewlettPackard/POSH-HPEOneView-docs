<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVApplianceSelfSignedCertificate
<p>
Create a new appliance Self-Signed Certificate.

### SYNTAX
<p>
<pre><code>New-HPOVApplianceSelfSignedCertificate [-Country] &lt;String&gt; [-State] &lt;String&gt; [-Organization] &lt;String&gt; [-CommonName] &lt;String&gt; [-City] &lt;String&gt; [-OrganizationalUnit] &lt;String&gt; [-AlternativeName] &lt;String&gt; [-ContactName] &lt;String&gt; [-Email] &lt;String&gt; [-Surname] &lt;String&gt; [-GivenName] &lt;String&gt; [-Initials] &lt;String&gt; [-DNQualifier] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use thid CMDLET to create or recreate a Self-Signed Certificate for the appliance.


### Parameters

-AlternativeName &lt;String&gt;<p>
Aliases [-SAN]
An optional entry containing additional names that apply to the owner of the certificate, possibly including additional e-mail addresses, DNS names, IP addresses and other identifiers. 

Example: "hpov.example.com,hpov,192.168.1.1"

<table><tbody><tr><td>Aliases</td><td>SAN</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -City &lt;String&gt;<p>
Aliases [-L, -Locality]
The city or locality is a required entry, can contain up to 128 characters.

<table><tbody><tr><td>Aliases</td><td>L, Locality</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CommonName &lt;String&gt;<p>
Aliases [-CN]
The common name is a required entry, and can be FQDN/hostname or IPv4/IPv6 address. 

Example: "hpov.example.com"

<table><tbody><tr><td>Aliases</td><td>CN</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ContactName &lt;String&gt;<p>
Aliases [-Contact]
The name of the contact person, may not exceed 64 characters.

<table><tbody><tr><td>Aliases</td><td>Contact</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Country &lt;String&gt;<p>
Aliases [-C]
The country code in either Full English or ISO3166-2 two-character format, is a required entry and must contain only two letters.

<table><tbody><tr><td>Aliases</td><td>C</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DNQualifier &lt;String&gt;<p>
The distinguished name qualifier, which further identifies the certificate recipient, which may not exceed 128 characters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Email &lt;String&gt;<p>
The contact person"s email address, which may not exceed 128 characters and is of the format name@domain.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -GivenName &lt;String&gt;<p>
Aliases [-Giv]
The contact person"s first name, which may not exceed 64 characters.

<table><tbody><tr><td>Aliases</td><td>Giv</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Initials &lt;String&gt;<p>
The contact person"s initials, which may not exceed 20 characters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Organization &lt;String&gt;<p>
Aliases [-O]
The organization name is a required entry, can contain up to 64 characters.

<table><tbody><tr><td>Aliases</td><td>O</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OrganizationalUnit &lt;String&gt;<p>
Aliases [-OU]
The entry for the organizational unit name, may not exceed 64 characters.

<table><tbody><tr><td>Aliases</td><td>OU</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -State &lt;String&gt;<p>
Aliases [-ST, -Province]
The state or province is a required entry, can contain up to 128 characters.

<table><tbody><tr><td>Aliases</td><td>ST, Province</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Surname &lt;String&gt;<p>
Aliases [-Sur]
The contact person"s family name, which may not exceed 64 characters.

<table><tbody><tr><td>Aliases</td><td>Sur</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Object that contains the "base64data" property of the certificate



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$CSR = @{
>> 	Country = "US";
>>  State = "California";
>>  City = "Palo Alto";
>>  Organization = "Hewlett-Packard";
>>  CommonName = "hpov.example.com";
>>  AlternativeName = "hpov.example.com,192.168.1.1,hpov"
>> }
>>
New-HPOVApplianceSelfSignedCertificate @CSR -ApplianceConnection Appliance.domain.com

</pre>
Generate Self-Signed Certificate for the appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVApplianceSelfSignedCertificate
<p>
Create a new appliance Self-Signed Certificate.

### SYNTAX
<p>
<pre><code>New-HPOVApplianceSelfSignedCertificate [-Country] &lt;String&gt; [-State] &lt;String&gt; [-Organization] &lt;String&gt; [-CommonName] &lt;String&gt; [-City] &lt;String&gt; [-OrganizationalUnit] &lt;String&gt; [-AlternativeName] &lt;String&gt; [-ContactName] &lt;String&gt; [-Email] &lt;String&gt; [-Surname] &lt;String&gt; [-GivenName] &lt;String&gt; [-Initials] &lt;String&gt; [-DNQualifier] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use thid CMDLET to create or recreate a Self-Signed Certificate for the appliance.


### Parameters

-AlternativeName &lt;String&gt;<p>
Aliases [-SAN]
An optional entry containing additional names that apply to the owner of the certificate, possibly including additional e-mail addresses, DNS names, IP addresses and other identifiers. 

Example: "hpov.example.com,hpov,192.168.1.1"

<table><tbody><tr><td>Aliases</td><td>SAN</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -City &lt;String&gt;<p>
Aliases [-L, -Locality]
The city or locality is a required entry, can contain up to 128 characters.

<table><tbody><tr><td>Aliases</td><td>L, Locality</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CommonName &lt;String&gt;<p>
Aliases [-CN]
The common name is a required entry, and can be FQDN/hostname or IPv4/IPv6 address. 

Example: "hpov.example.com"

<table><tbody><tr><td>Aliases</td><td>CN</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ContactName &lt;String&gt;<p>
Aliases [-Contact]
The name of the contact person, may not exceed 64 characters.

<table><tbody><tr><td>Aliases</td><td>Contact</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Country &lt;String&gt;<p>
Aliases [-C]
The country code in either Full English or ISO3166-2 two-character format, is a required entry and must contain only two letters.

<table><tbody><tr><td>Aliases</td><td>C</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DNQualifier &lt;String&gt;<p>
The distinguished name qualifier, which further identifies the certificate recipient, which may not exceed 128 characters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Email &lt;String&gt;<p>
The contact person"s email address, which may not exceed 128 characters and is of the format name@domain.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -GivenName &lt;String&gt;<p>
Aliases [-Giv]
The contact person"s first name, which may not exceed 64 characters.

<table><tbody><tr><td>Aliases</td><td>Giv</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Initials &lt;String&gt;<p>
The contact person"s initials, which may not exceed 20 characters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Organization &lt;String&gt;<p>
Aliases [-O]
The organization name is a required entry, can contain up to 64 characters.

<table><tbody><tr><td>Aliases</td><td>O</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OrganizationalUnit &lt;String&gt;<p>
Aliases [-OU]
The entry for the organizational unit name, may not exceed 64 characters.

<table><tbody><tr><td>Aliases</td><td>OU</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -State &lt;String&gt;<p>
Aliases [-ST, -Province]
The state or province is a required entry, can contain up to 128 characters.

<table><tbody><tr><td>Aliases</td><td>ST, Province</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Surname &lt;String&gt;<p>
Aliases [-Sur]
The contact person"s family name, which may not exceed 64 characters.

<table><tbody><tr><td>Aliases</td><td>Sur</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Object that contains the "base64data" property of the certificate



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$CSR = @{
>> 	Country = "US";
>>  State = "California";
>>  City = "Palo Alto";
>>  Organization = "Hewlett-Packard";
>>  CommonName = "hpov.example.com";
>>  AlternativeName = "hpov.example.com,192.168.1.1,hpov"
>> }
>>
New-HPOVApplianceSelfSignedCertificate @CSR -ApplianceConnection Appliance.domain.com

</pre>
Generate Self-Signed Certificate for the appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVApplianceSelfSignedCertificate
<p>
Create a new appliance Self-Signed Certificate.

### SYNTAX
<p>
<pre><code>New-HPOVApplianceSelfSignedCertificate [-Country] &lt;String&gt; [-State] &lt;String&gt; [-Organization] &lt;String&gt; [-CommonName] &lt;String&gt; [-City] &lt;String&gt; [-OrganizationalUnit] &lt;String&gt; [-AlternativeName] &lt;String&gt; [-ContactName] &lt;String&gt; [-Email] &lt;String&gt; [-Surname] &lt;String&gt; [-GivenName] &lt;String&gt; [-Initials] &lt;String&gt; [-DNQualifier] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use thid CMDLET to create or recreate a Self-Signed Certificate for the appliance.


### Parameters

-AlternativeName &lt;String&gt;<p>
Aliases [-SAN]
An optional entry containing additional names that apply to the owner of the certificate, possibly including additional e-mail addresses, DNS names, IP addresses and other identifiers. 

Example: "hpov.example.com,hpov,192.168.1.1"

<table><tbody><tr><td>Aliases</td><td>SAN</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -City &lt;String&gt;<p>
Aliases [-L, -Locality]
The city or locality is a required entry, can contain up to 128 characters.

<table><tbody><tr><td>Aliases</td><td>L, Locality</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CommonName &lt;String&gt;<p>
Aliases [-CN]
The common name is a required entry, and can be FQDN/hostname or IPv4/IPv6 address. 

Example: "hpov.example.com"

<table><tbody><tr><td>Aliases</td><td>CN</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ContactName &lt;String&gt;<p>
Aliases [-Contact]
The name of the contact person, may not exceed 64 characters.

<table><tbody><tr><td>Aliases</td><td>Contact</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Country &lt;String&gt;<p>
Aliases [-C]
The country code in either Full English or ISO3166-2 two-character format, is a required entry and must contain only two letters.

<table><tbody><tr><td>Aliases</td><td>C</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DNQualifier &lt;String&gt;<p>
The distinguished name qualifier, which further identifies the certificate recipient, which may not exceed 128 characters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Email &lt;String&gt;<p>
The contact person"s email address, which may not exceed 128 characters and is of the format name@domain.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -GivenName &lt;String&gt;<p>
Aliases [-Giv]
The contact person"s first name, which may not exceed 64 characters.

<table><tbody><tr><td>Aliases</td><td>Giv</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Initials &lt;String&gt;<p>
The contact person"s initials, which may not exceed 20 characters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Organization &lt;String&gt;<p>
Aliases [-O]
The organization name is a required entry, can contain up to 64 characters.

<table><tbody><tr><td>Aliases</td><td>O</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OrganizationalUnit &lt;String&gt;<p>
Aliases [-OU]
The entry for the organizational unit name, may not exceed 64 characters.

<table><tbody><tr><td>Aliases</td><td>OU</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -State &lt;String&gt;<p>
Aliases [-ST, -Province]
The state or province is a required entry, can contain up to 128 characters.

<table><tbody><tr><td>Aliases</td><td>ST, Province</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Surname &lt;String&gt;<p>
Aliases [-Sur]
The contact person"s family name, which may not exceed 64 characters.

<table><tbody><tr><td>Aliases</td><td>Sur</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Object that contains the "base64data" property of the certificate



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$CSR = @{
>> 	Country = "US";
>>  State = "California";
>>  City = "Palo Alto";
>>  Organization = "Hewlett-Packard";
>>  CommonName = "hpov.example.com";
>>  AlternativeName = "hpov.example.com,192.168.1.1,hpov"
>> }
>>
New-HPOVApplianceSelfSignedCertificate @CSR -ApplianceConnection Appliance.domain.com

</pre>
Generate Self-Signed Certificate for the appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
