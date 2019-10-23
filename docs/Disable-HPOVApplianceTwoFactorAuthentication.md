<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Disable-HPOVApplianceTwoFactorAuthentication
<p>
Disable appliance two-factor authentication settings.

### SYNTAX
<p>
<pre><code>Disable-HPOVApplianceTwoFactorAuthentication[ [-ApplianceConnection] &lt;Array&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to disable two-factor authentication on the appliance.

Enabling two-factor authentication allows you to use smart cards ï¿½ for example, Common Access Cards (CAC), or Personal Identity Verification (PIV) cards ï¿½ to authenticate within HPE OneView. The client certificate embedded in the smart card is presented to HPE OneView by the library. The client certificate must be signed by a root or intermediate Certificate Authority (CA) that has been previously imported into the HPE OneView appliance. The appliance authenticates the client certificate to validate that the user name specified in the certificate is that of a valid user recognized by the directory server configuration in HPE OneView.

When two-factor authentication is enabled, HPE OneView uses a Microsoft Active Directory service account set up and owned by the user to access an Active Directory entry for the user, rather than using an account associated with the user name received during first time login.

Use this Cmdlet to configure two factor authentication state of the connected appliance.  An Active Directory authentication directoyr must be configured, with a Service Account, and the root or issuing certificate authority Base64 certificate must be uploaded to appliance.

Required: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


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
Disable-HPOVApplianceTwoFactorAuthentication
</pre>
Disable two-factor authentication on the connected appliance.



### Related Links

* [Get-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTwoFactorAuthentication)
* [Set-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceTwoFactorAuthentication)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Disable-HPOVApplianceTwoFactorAuthentication
<p>
Disable appliance two-factor authentication settings.

### SYNTAX
<p>
<pre><code>Disable-HPOVApplianceTwoFactorAuthentication[ [-ApplianceConnection] &lt;Array&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to disable two-factor authentication on the appliance.

Enabling two-factor authentication allows you to use smart cards ï¿½ for example, Common Access Cards (CAC), or Personal Identity Verification (PIV) cards ï¿½ to authenticate within HPE OneView. The client certificate embedded in the smart card is presented to HPE OneView by the library. The client certificate must be signed by a root or intermediate Certificate Authority (CA) that has been previously imported into the HPE OneView appliance. The appliance authenticates the client certificate to validate that the user name specified in the certificate is that of a valid user recognized by the directory server configuration in HPE OneView.

When two-factor authentication is enabled, HPE OneView uses a Microsoft Active Directory service account set up and owned by the user to access an Active Directory entry for the user, rather than using an account associated with the user name received during first time login.

Use this Cmdlet to configure two factor authentication state of the connected appliance.  An Active Directory authentication directoyr must be configured, with a Service Account, and the root or issuing certificate authority Base64 certificate must be uploaded to appliance.

Required: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


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
Disable-HPOVApplianceTwoFactorAuthentication
</pre>
Disable two-factor authentication on the connected appliance.



### Related Links

* [Get-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTwoFactorAuthentication)
* [Set-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceTwoFactorAuthentication)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Disable-HPOVApplianceTwoFactorAuthentication
<p>
Disable appliance two-factor authentication settings.

### SYNTAX
<p>
<pre><code>Disable-HPOVApplianceTwoFactorAuthentication[ [-ApplianceConnection] &lt;Array&gt;][ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to disable two-factor authentication on the appliance.

Enabling two-factor authentication allows you to use smart cards ï¿½ for example, Common Access Cards (CAC), or Personal Identity Verification (PIV) cards ï¿½ to authenticate within HPE OneView. The client certificate embedded in the smart card is presented to HPE OneView by the library. The client certificate must be signed by a root or intermediate Certificate Authority (CA) that has been previously imported into the HPE OneView appliance. The appliance authenticates the client certificate to validate that the user name specified in the certificate is that of a valid user recognized by the directory server configuration in HPE OneView.

When two-factor authentication is enabled, HPE OneView uses a Microsoft Active Directory service account set up and owned by the user to access an Active Directory entry for the user, rather than using an account associated with the user name received during first time login.

Use this Cmdlet to configure two factor authentication state of the connected appliance.  An Active Directory authentication directoyr must be configured, with a Service Account, and the root or issuing certificate authority Base64 certificate must be uploaded to appliance.

Required: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


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
Disable-HPOVApplianceTwoFactorAuthentication
</pre>
Disable two-factor authentication on the connected appliance.



### Related Links

* [Get-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTwoFactorAuthentication)
* [Set-HPOVApplianceTwoFactorAuthentication](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceTwoFactorAuthentication)


***
<div align=right><a href="#Top">Top</a></div>
