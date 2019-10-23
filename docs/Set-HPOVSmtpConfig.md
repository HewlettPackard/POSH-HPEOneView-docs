<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVSmtpConfig
<p>
Configure appliance SMTP Reporting settings.

### SYNTAX
<p>
<pre><code>Set-HPOVSmtpConfig[ [-SenderEmailAddress] &lt;String&gt;][ [-Server] &lt;String&gt;] [-Port] &lt;Int32&gt;[ [-ConnectionSecurity] &lt;&gt;] [-Password] &lt;String&gt;[ [-AlertEmailEnabled] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVSmtpConfig [-AlertEmailDisabled] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet configures the SMTP settings for the appliance.  SMTP settings include deining the Sender EMAIL Address, SMTP relay server address, SMTP relay server TCP port, optional password, and if SMTP alerting is enabled or disabled.

Currently, HPE OneView does not support Secure SMTP, even though the TCP Port can be modified.  Using the SmtpPort parameter is to specify an alternate TCP Port than the default TCP/25.


### Parameters

-AlertEmailDisabled &lt;SwitchParameter&gt;<p>
Disable SMTP Email Alerting.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AlertEmailEnabled &lt;SwitchParameter&gt;<p>
Enable SMTP Email Alerting

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConnectionSecurity &lt;&gt;<p>
Use to specify if the target SMTP server requires TLS security/authentication.  Supported values:

	* None
	* TLS
	* StartTls

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>None</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
Provide an SMTP Password to authenticate to the SMTP Server.  This password will be sent in clear text to the SMTP server.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>fasle</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int32&gt;<p>
Aliases [-SmtpPort]
Provide an alternate TCP port number than the default SMTP port value 25/TCP.

<table><tbody><tr><td>Aliases</td><td>SmtpPort</td></tr><tr><td>Required?</td><td>fasle</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>25</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SenderEmailAddress &lt;String&gt;<p>
Specify the Sender Email Address for the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Server &lt;String&gt;<p>
Aliases [-SmtpServer]
Specify the SMTP Relay Server if DNS does not contain a valid DNS MX record for the sender email address domain name.

<table><tbody><tr><td>Aliases</td><td>SmtpServer</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The finished Task object that includes the task result



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVSMTPConfig -SenderEmailAddress hpov-alerts@contoso.com -alertEmailEnabled
</pre>
Set the appliance"s SMTP Sender Email Address to "hpov-alerts@contoso.com" and enable SMTP Email Alerting.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVSMTPConfig -SenderEmailAddress hpov-alerts@contoso.com -alertEmailEnabled
</pre>
Set the appliance"s SMTP Sender Email Address to "hpov-alerts@contoso.com" and enable SMTP Email Alerting.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Set-HPOVSMTPConfig -SenderEmailAddress hpov-alerts@contoso.com -AlertEmailEnabled -ConnectionSecurity StartTls
</pre>
Set the appliance"s SMTP Sender Email Address to "hpov-alerts@contoso.com", enabling SMTP Email Alerting and specifying StartTls connection security.



### Related Links

* [Get-HPOVSMTPConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSMTPConfig)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVSmtpConfig
<p>
Configure appliance SMTP Reporting settings.

### SYNTAX
<p>
<pre><code>Set-HPOVSmtpConfig[ [-SenderEmailAddress] &lt;String&gt;][ [-Server] &lt;String&gt;] [-Port] &lt;Int32&gt;[ [-ConnectionSecurity] &lt;&gt;] [-Password] &lt;String&gt;[ [-AlertEmailEnabled] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVSmtpConfig [-AlertEmailDisabled] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet configures the SMTP settings for the appliance.  SMTP settings include deining the Sender EMAIL Address, SMTP relay server address, SMTP relay server TCP port, optional password, and if SMTP alerting is enabled or disabled.

Currently, HPE OneView does not support Secure SMTP, even though the TCP Port can be modified.  Using the SmtpPort parameter is to specify an alternate TCP Port than the default TCP/25.


### Parameters

-AlertEmailDisabled &lt;SwitchParameter&gt;<p>
Disable SMTP Email Alerting.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AlertEmailEnabled &lt;SwitchParameter&gt;<p>
Enable SMTP Email Alerting

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConnectionSecurity &lt;&gt;<p>
Use to specify if the target SMTP server requires TLS security/authentication.  Supported values:

	* None
	* TLS
	* StartTls

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>None</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
Provide an SMTP Password to authenticate to the SMTP Server.  This password will be sent in clear text to the SMTP server.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>fasle</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int32&gt;<p>
Aliases [-SmtpPort]
Provide an alternate TCP port number than the default SMTP port value 25/TCP.

<table><tbody><tr><td>Aliases</td><td>SmtpPort</td></tr><tr><td>Required?</td><td>fasle</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>25</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SenderEmailAddress &lt;String&gt;<p>
Specify the Sender Email Address for the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Server &lt;String&gt;<p>
Aliases [-SmtpServer]
Specify the SMTP Relay Server if DNS does not contain a valid DNS MX record for the sender email address domain name.

<table><tbody><tr><td>Aliases</td><td>SmtpServer</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The finished Task object that includes the task result



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVSMTPConfig -SenderEmailAddress hpov-alerts@contoso.com -alertEmailEnabled
</pre>
Set the appliance"s SMTP Sender Email Address to "hpov-alerts@contoso.com" and enable SMTP Email Alerting.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVSMTPConfig -SenderEmailAddress hpov-alerts@contoso.com -alertEmailEnabled
</pre>
Set the appliance"s SMTP Sender Email Address to "hpov-alerts@contoso.com" and enable SMTP Email Alerting.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Set-HPOVSMTPConfig -SenderEmailAddress hpov-alerts@contoso.com -AlertEmailEnabled -ConnectionSecurity StartTls
</pre>
Set the appliance"s SMTP Sender Email Address to "hpov-alerts@contoso.com", enabling SMTP Email Alerting and specifying StartTls connection security.



### Related Links

* [Get-HPOVSMTPConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSMTPConfig)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVSmtpConfig
<p>
Configure appliance SMTP Reporting settings.

### SYNTAX
<p>
<pre><code>Set-HPOVSmtpConfig[ [-SenderEmailAddress] &lt;String&gt;][ [-Server] &lt;String&gt;] [-Port] &lt;Int32&gt;[ [-ConnectionSecurity] &lt;&gt;] [-Password] &lt;String&gt;[ [-AlertEmailEnabled] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVSmtpConfig [-AlertEmailDisabled] &lt;SwitchParameter&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet configures the SMTP settings for the appliance.  SMTP settings include deining the Sender EMAIL Address, SMTP relay server address, SMTP relay server TCP port, optional password, and if SMTP alerting is enabled or disabled.

Currently, HPE OneView does not support Secure SMTP, even though the TCP Port can be modified.  Using the SmtpPort parameter is to specify an alternate TCP Port than the default TCP/25.


### Parameters

-AlertEmailDisabled &lt;SwitchParameter&gt;<p>
Disable SMTP Email Alerting.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AlertEmailEnabled &lt;SwitchParameter&gt;<p>
Enable SMTP Email Alerting

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ConnectionSecurity &lt;&gt;<p>
Use to specify if the target SMTP server requires TLS security/authentication.  Supported values:

	* None
	* TLS
	* StartTls

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>None</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;String&gt;<p>
Provide an SMTP Password to authenticate to the SMTP Server.  This password will be sent in clear text to the SMTP server.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>fasle</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int32&gt;<p>
Aliases [-SmtpPort]
Provide an alternate TCP port number than the default SMTP port value 25/TCP.

<table><tbody><tr><td>Aliases</td><td>SmtpPort</td></tr><tr><td>Required?</td><td>fasle</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>25</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SenderEmailAddress &lt;String&gt;<p>
Specify the Sender Email Address for the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Server &lt;String&gt;<p>
Aliases [-SmtpServer]
Specify the SMTP Relay Server if DNS does not contain a valid DNS MX record for the sender email address domain name.

<table><tbody><tr><td>Aliases</td><td>SmtpServer</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The finished Task object that includes the task result



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVSMTPConfig -SenderEmailAddress hpov-alerts@contoso.com -alertEmailEnabled
</pre>
Set the appliance"s SMTP Sender Email Address to "hpov-alerts@contoso.com" and enable SMTP Email Alerting.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVSMTPConfig -SenderEmailAddress hpov-alerts@contoso.com -alertEmailEnabled
</pre>
Set the appliance"s SMTP Sender Email Address to "hpov-alerts@contoso.com" and enable SMTP Email Alerting.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Set-HPOVSMTPConfig -SenderEmailAddress hpov-alerts@contoso.com -AlertEmailEnabled -ConnectionSecurity StartTls
</pre>
Set the appliance"s SMTP Sender Email Address to "hpov-alerts@contoso.com", enabling SMTP Email Alerting and specifying StartTls connection security.



### Related Links

* [Get-HPOVSMTPConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSMTPConfig)


***
<div align=right><a href="#Top">Top</a></div>
