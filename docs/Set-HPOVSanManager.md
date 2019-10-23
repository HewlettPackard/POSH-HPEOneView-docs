<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVSanManager
<p>
Update SAN Manager configuration

### SYNTAX
<p>
<pre><code>Set-HPOVSanManager [-InputObject] &lt;Object&gt; [-Username] &lt;String&gt; [-Password] &lt;Object&gt;[ [-Hostname] &lt;String&gt;][ [-Port] &lt;Int32&gt;][ [-EnableSsl] &lt;SwitchParameter&gt;][ [-DisableSsl] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVSanManager [-InputObject] &lt;Object&gt; [-Username] &lt;String&gt; [-Password] &lt;Object&gt;[ [-Hostname] &lt;String&gt;][ [-Port] &lt;Int32&gt;][ [-SnmpUserName] &lt;String&gt;][ [-SnmpAuthLevel] &lt;String&gt;][ [-SnmpAuthProtocol] &lt;String&gt;][ [-SnmpAuthPassword] &lt;Object&gt;][ [-SnmpPrivProtocol] &lt;String&gt;][ [-SnmpPrivPassword] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Updates an existing SAN Manager configuration.  Can update the hostname/IP Address and credentials.  At least one optional parameter must be provided.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisableSsl &lt;SwitchParameter&gt;<p>
Enable Secure WBEM communications to Brocade SAN Network Advisor.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableSsl &lt;SwitchParameter&gt;<p>
Enable Secure WBEM communications to Brocade SAN Network Advisor.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Updated Hostname or IP Address of the SAN Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name]
Resource Object (from Get-HPOVSanManager) or Name of the SAN Manager to update.  If specifying a resource Name, the ApplianceConnection parameter is required.

<table><tbody><tr><td>Aliases</td><td>name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Updated Password used to authenticate and manage the SAN Manager.  Can either be a String or SecureString value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int32&gt;<p>
Updated TCP Port of the SAN Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthLevel &lt;String&gt;<p>
The SNMPv3 Authentication Level.  Allowed values are:

	* None - No Security is required, only the SNMPv3 UserName is provided.
	* AuthOnly - SNMPv3 Authentication Encryption Security Level only. Must also provide -SnmpAuthProtocol and -SnmpAuthPassword parameters.
	* AuthAndPriv - SNMPv3 Authentication Encryption Security and Privacy Levels. Must also provide -SnmpAuthProtocol, -SnmpAuthPassword, -SnmpPrivProtocol and -SnmpPrivPassword parameters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>None</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthPassword &lt;Object&gt;<p>
SNMPv3 UserName Password.  Can either be a String or SecureString value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthProtocol &lt;String&gt;<p>
SNMPv3 Password Encryption Protocol. Allowed values are:

	* SHA
	* MD5

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivPassword &lt;Object&gt;<p>
SNMPv3 Privacy Encryption Password.  Can either be a String or SecureString value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivProtocol &lt;String&gt;<p>
SNMPv3 Privacy Protocol.  Allowed values are:

	* AES
	* DES

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpUserName &lt;String&gt;<p>
The SNMPv3 Community User Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Updated Username used to authenticate and manage the SAN Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

 SAN Manager resource from Get-HPOVSanManager



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Update async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Get-HPOVSanManager bna.domain.com -ApplianceConnection hpov.domain.com | Set-HPOVSanManager -hostname bna.newdomain.com | Wait-HPOVTaskComplete
</pre>
Get the SAN Manager using Get-HPOVSanManager, and pipling the resource in order to update the hostname value.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$task = Set-HPOVSanManager -name BNA.contoso.com -hostname bna.newdomain.com -ApplianceConnection hpov.domain.com | Wait-HPOVTaskComplete
</pre>
Update the existing Brocade Network Advisor SAN Manager"s hostname with the new value.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$task = Set-HPOVSanManager -name BNA.contoso.com -username newadmin -password updatedpassword -ApplianceConnection hpov.domain.com | Wait-HPOVTaskComplete
</pre>
Update the existing Brocade Network Advisor SAN Manager"s username and password.



### Related Links

* [Add-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVSanManager)
* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager)
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager)
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVSanManager
<p>
Update SAN Manager configuration

### SYNTAX
<p>
<pre><code>Set-HPOVSanManager [-InputObject] &lt;Object&gt; [-Username] &lt;String&gt; [-Password] &lt;Object&gt;[ [-Hostname] &lt;String&gt;][ [-Port] &lt;Int32&gt;][ [-EnableSsl] &lt;SwitchParameter&gt;][ [-DisableSsl] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVSanManager [-InputObject] &lt;Object&gt; [-Username] &lt;String&gt; [-Password] &lt;Object&gt;[ [-Hostname] &lt;String&gt;][ [-Port] &lt;Int32&gt;][ [-SnmpUserName] &lt;String&gt;][ [-SnmpAuthLevel] &lt;String&gt;][ [-SnmpAuthProtocol] &lt;String&gt;][ [-SnmpAuthPassword] &lt;Object&gt;][ [-SnmpPrivProtocol] &lt;String&gt;][ [-SnmpPrivPassword] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Updates an existing SAN Manager configuration.  Can update the hostname/IP Address and credentials.  At least one optional parameter must be provided.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisableSsl &lt;SwitchParameter&gt;<p>
Enable Secure WBEM communications to Brocade SAN Network Advisor.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableSsl &lt;SwitchParameter&gt;<p>
Enable Secure WBEM communications to Brocade SAN Network Advisor.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Updated Hostname or IP Address of the SAN Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name]
Resource Object (from Get-HPOVSanManager) or Name of the SAN Manager to update.  If specifying a resource Name, the ApplianceConnection parameter is required.

<table><tbody><tr><td>Aliases</td><td>name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Updated Password used to authenticate and manage the SAN Manager.  Can either be a String or SecureString value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int32&gt;<p>
Updated TCP Port of the SAN Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthLevel &lt;String&gt;<p>
The SNMPv3 Authentication Level.  Allowed values are:

	* None - No Security is required, only the SNMPv3 UserName is provided.
	* AuthOnly - SNMPv3 Authentication Encryption Security Level only. Must also provide -SnmpAuthProtocol and -SnmpAuthPassword parameters.
	* AuthAndPriv - SNMPv3 Authentication Encryption Security and Privacy Levels. Must also provide -SnmpAuthProtocol, -SnmpAuthPassword, -SnmpPrivProtocol and -SnmpPrivPassword parameters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>None</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthPassword &lt;Object&gt;<p>
SNMPv3 UserName Password.  Can either be a String or SecureString value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthProtocol &lt;String&gt;<p>
SNMPv3 Password Encryption Protocol. Allowed values are:

	* SHA
	* MD5

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivPassword &lt;Object&gt;<p>
SNMPv3 Privacy Encryption Password.  Can either be a String or SecureString value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivProtocol &lt;String&gt;<p>
SNMPv3 Privacy Protocol.  Allowed values are:

	* AES
	* DES

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpUserName &lt;String&gt;<p>
The SNMPv3 Community User Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Updated Username used to authenticate and manage the SAN Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

 SAN Manager resource from Get-HPOVSanManager



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Update async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Get-HPOVSanManager bna.domain.com -ApplianceConnection hpov.domain.com | Set-HPOVSanManager -hostname bna.newdomain.com | Wait-HPOVTaskComplete
</pre>
Get the SAN Manager using Get-HPOVSanManager, and pipling the resource in order to update the hostname value.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$task = Set-HPOVSanManager -name BNA.contoso.com -hostname bna.newdomain.com -ApplianceConnection hpov.domain.com | Wait-HPOVTaskComplete
</pre>
Update the existing Brocade Network Advisor SAN Manager"s hostname with the new value.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$task = Set-HPOVSanManager -name BNA.contoso.com -username newadmin -password updatedpassword -ApplianceConnection hpov.domain.com | Wait-HPOVTaskComplete
</pre>
Update the existing Brocade Network Advisor SAN Manager"s username and password.



### Related Links

* [Add-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVSanManager)
* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager)
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager)
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVSanManager
<p>
Update SAN Manager configuration

### SYNTAX
<p>
<pre><code>Set-HPOVSanManager [-InputObject] &lt;Object&gt; [-Username] &lt;String&gt; [-Password] &lt;Object&gt;[ [-Hostname] &lt;String&gt;][ [-Port] &lt;Int32&gt;][ [-EnableSsl] &lt;SwitchParameter&gt;][ [-DisableSsl] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVSanManager [-InputObject] &lt;Object&gt; [-Username] &lt;String&gt; [-Password] &lt;Object&gt;[ [-Hostname] &lt;String&gt;][ [-Port] &lt;Int32&gt;][ [-SnmpUserName] &lt;String&gt;][ [-SnmpAuthLevel] &lt;String&gt;][ [-SnmpAuthProtocol] &lt;String&gt;][ [-SnmpAuthPassword] &lt;Object&gt;][ [-SnmpPrivProtocol] &lt;String&gt;][ [-SnmpPrivPassword] &lt;Object&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Updates an existing SAN Manager configuration.  Can update the hostname/IP Address and credentials.  At least one optional parameter must be provided.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisableSsl &lt;SwitchParameter&gt;<p>
Enable Secure WBEM communications to Brocade SAN Network Advisor.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnableSsl &lt;SwitchParameter&gt;<p>
Enable Secure WBEM communications to Brocade SAN Network Advisor.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Updated Hostname or IP Address of the SAN Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name]
Resource Object (from Get-HPOVSanManager) or Name of the SAN Manager to update.  If specifying a resource Name, the ApplianceConnection parameter is required.

<table><tbody><tr><td>Aliases</td><td>name, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Updated Password used to authenticate and manage the SAN Manager.  Can either be a String or SecureString value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int32&gt;<p>
Updated TCP Port of the SAN Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthLevel &lt;String&gt;<p>
The SNMPv3 Authentication Level.  Allowed values are:

	* None - No Security is required, only the SNMPv3 UserName is provided.
	* AuthOnly - SNMPv3 Authentication Encryption Security Level only. Must also provide -SnmpAuthProtocol and -SnmpAuthPassword parameters.
	* AuthAndPriv - SNMPv3 Authentication Encryption Security and Privacy Levels. Must also provide -SnmpAuthProtocol, -SnmpAuthPassword, -SnmpPrivProtocol and -SnmpPrivPassword parameters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>None</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthPassword &lt;Object&gt;<p>
SNMPv3 UserName Password.  Can either be a String or SecureString value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthProtocol &lt;String&gt;<p>
SNMPv3 Password Encryption Protocol. Allowed values are:

	* SHA
	* MD5

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivPassword &lt;Object&gt;<p>
SNMPv3 Privacy Encryption Password.  Can either be a String or SecureString value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivProtocol &lt;String&gt;<p>
SNMPv3 Privacy Protocol.  Allowed values are:

	* AES
	* DES

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpUserName &lt;String&gt;<p>
The SNMPv3 Community User Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Updated Username used to authenticate and manage the SAN Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.SanManager [System.Management.Automation.PSCustomObject]**_

 SAN Manager resource from Get-HPOVSanManager



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Update async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Get-HPOVSanManager bna.domain.com -ApplianceConnection hpov.domain.com | Set-HPOVSanManager -hostname bna.newdomain.com | Wait-HPOVTaskComplete
</pre>
Get the SAN Manager using Get-HPOVSanManager, and pipling the resource in order to update the hostname value.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$task = Set-HPOVSanManager -name BNA.contoso.com -hostname bna.newdomain.com -ApplianceConnection hpov.domain.com | Wait-HPOVTaskComplete
</pre>
Update the existing Brocade Network Advisor SAN Manager"s hostname with the new value.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$task = Set-HPOVSanManager -name BNA.contoso.com -username newadmin -password updatedpassword -ApplianceConnection hpov.domain.com | Wait-HPOVTaskComplete
</pre>
Update the existing Brocade Network Advisor SAN Manager"s username and password.



### Related Links

* [Add-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVSanManager)
* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager)
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager)
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
