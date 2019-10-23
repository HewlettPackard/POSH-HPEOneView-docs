<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVRemoteSupportPartner
<p>
Retrieve Remote Support Default Site.

### SYNTAX
<p>
<pre><code>New-HPOVRemoteSupportPartner [-Name] &lt;String&gt; [-Type] &lt;String&gt; [-PartnerId] &lt;Int&gt;[ [-Default] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to retrieve the configured default site.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Default &lt;SwitchParameter&gt;<p>
Use to specify if the partner should be the default Support or Reseller partner.  All supproted monitored resources by default will inherit from the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Supply the Partner Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PartnerId &lt;Int&gt;<p>
The HPE Authorized Support and/or Reseller Partner ID.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify if the authorized partner is a Reseller or Support.  If requiring a partner that is both Support and a Reseller, create it twice.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.RemoteSupport.Partner [System.Management.Automation.PSCustomObject]**_

 

Newly created Remote Support Partner.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVRemoteSupportPartner -Name "My Authorized Partner" -Type Reseller -PartnerId 123456
</pre>
Define a new authorized HPE Reseller partner.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVRemoteSupportPartner -Name "My Authorized Partner" -Type Support -PartnerId 123456 -Default
</pre>
Define a new authorized HPE Support partner, and make it the default appliance Support partner.



### Related Links

* [Get-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportPartner)
* [Remove-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportPartner)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVRemoteSupportPartner
<p>
Retrieve Remote Support Default Site.

### SYNTAX
<p>
<pre><code>New-HPOVRemoteSupportPartner [-Name] &lt;String&gt; [-Type] &lt;String&gt; [-PartnerId] &lt;Int&gt;[ [-Default] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to retrieve the configured default site.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Default &lt;SwitchParameter&gt;<p>
Use to specify if the partner should be the default Support or Reseller partner.  All supproted monitored resources by default will inherit from the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Supply the Partner Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PartnerId &lt;Int&gt;<p>
The HPE Authorized Support and/or Reseller Partner ID.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify if the authorized partner is a Reseller or Support.  If requiring a partner that is both Support and a Reseller, create it twice.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.RemoteSupport.Partner [System.Management.Automation.PSCustomObject]**_

 

Newly created Remote Support Partner.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVRemoteSupportPartner -Name "My Authorized Partner" -Type Reseller -PartnerId 123456
</pre>
Define a new authorized HPE Reseller partner.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVRemoteSupportPartner -Name "My Authorized Partner" -Type Support -PartnerId 123456 -Default
</pre>
Define a new authorized HPE Support partner, and make it the default appliance Support partner.



### Related Links

* [Get-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportPartner)
* [Remove-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportPartner)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVRemoteSupportPartner
<p>
Retrieve Remote Support Default Site.

### SYNTAX
<p>
<pre><code>New-HPOVRemoteSupportPartner [-Name] &lt;String&gt; [-Type] &lt;String&gt; [-PartnerId] &lt;Int&gt;[ [-Default] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to retrieve the configured default site.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Default &lt;SwitchParameter&gt;<p>
Use to specify if the partner should be the default Support or Reseller partner.  All supproted monitored resources by default will inherit from the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Supply the Partner Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PartnerId &lt;Int&gt;<p>
The HPE Authorized Support and/or Reseller Partner ID.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify if the authorized partner is a Reseller or Support.  If requiring a partner that is both Support and a Reseller, create it twice.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.RemoteSupport.Partner [System.Management.Automation.PSCustomObject]**_

 

Newly created Remote Support Partner.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVRemoteSupportPartner -Name "My Authorized Partner" -Type Reseller -PartnerId 123456
</pre>
Define a new authorized HPE Reseller partner.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVRemoteSupportPartner -Name "My Authorized Partner" -Type Support -PartnerId 123456 -Default
</pre>
Define a new authorized HPE Support partner, and make it the default appliance Support partner.



### Related Links

* [Get-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportPartner)
* [Remove-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportPartner)


***
<div align=right><a href="#Top">Top</a></div>
