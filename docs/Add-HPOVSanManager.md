<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Add-HPOVSanManager
<p>
Add a supported SAN Manager

### SYNTAX
<p>
<pre><code>Add-HPOVSanManager [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVSanManager [-Type] &lt;String&gt; [-Hostname] &lt;String&gt;[ [-Port] &lt;Int32&gt;] [-Username] &lt;String&gt; [-Password] &lt;Object&gt;[ [-Credential] &lt;PSCredential&gt;][ [-UseSsl] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVSanManager [-Type] &lt;String&gt; [-Hostname] &lt;String&gt; [-SnmpUserName] &lt;String&gt;[ [-Port] &lt;Int32&gt;] [-SnmpAuthLevel] &lt;String&gt; [-SnmpAuthProtocol] &lt;String&gt; [-SnmpAuthPassword] &lt;Object&gt; [-SnmpPrivProtocol] &lt;String&gt; [-SnmpPrivPassword] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Add a new SAN Manager to the appliance.  SAN Managers are hardware or software systems that manage SANs. The SAN Managers resource enables you to bring SAN management systems and the SANs they manage under management of the appliance. You can associate the managed SANs to Fibre Channel networks on the appliance when creating a (New-HPOVNetwork) or updating an existing (Set-HPOVNetwork) Fibre Channel Network Resource. This enables the appliance to automate zoning to make the SANs visible to server profiles. Zoning defines connections between Fibre Channel endpoints. Zones are a group of endpoints that can communicate with each other. Open SANs allow communication between all endpoints.

Supported SAN Managers are:

	* Brocade SAN Network Advisor
	* HPE Networking 5900CP  (FC or FCoE)
	* HPE Networking 5900AF (FC-only)
	* Cisco Nexus (FC or FCoE)
	* Cisco MDS (FC-only)
	
Please see the HPE OneView Support Matrix for supported versions.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;PSCredential&gt;<p>
Use this parameter if you want to provide a PSCredential object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
FQDN or IP Address of the SAN Manager

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Password used to authenticate and manage the SAN Manager.  This is only applicable for BNA SAN Manager.  Can be either String or System.Security.SecureString type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int32&gt;<p>
TCP Port of the SAN Manager.  The default port for Brocade Network Advisor is "5989".  The default port for HPN 5900CP is "161".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthLevel &lt;String&gt;<p>
The SNMPv3 Authentication Level.  Allowed values are:

	* None - No Security is required, only the SNMPv3 UserName is provided.
	* AuthOnly - SNMPv3 Authentication Encryption Security Level only. Must also provide -SnmpAuthProtocol and -SnmpAuthPassword parameters.
	* AuthAndPriv - SNMPv3 Authentication Encryption Security and Privacy Levels. Must also provide -SnmpAuthProtocol, -SnmpAuthPassword, -SnmpPrivProtocol and -SnmpPrivPassword parameters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>None</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthPassword &lt;Object&gt;<p>
SNMPv3 UserName Password.  Can be either String or System.Security.SecureString type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthProtocol &lt;String&gt;<p>
SNMPv3 Password Encryption Protocol. Allowed values are:

	* SHA
	* MD5

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivPassword &lt;Object&gt;<p>
SNMPv3 Privacy Encryption Password.  Can be either String or System.Security.SecureString type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivProtocol &lt;String&gt;<p>
SNMPv3 Privacy Protocol.  Allowed values are:

	* AES
	* DES

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpUserName &lt;String&gt;<p>
The SNMPv3 Community User Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
SAN Manager type to add.  Accepted values are:

	* bna or Brocade Network Advisor
	* HP (HPN 5900CP or HPN 5900AF)
	* Cisco

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UseSsl &lt;SwitchParameter&gt;<p>
Use to enable SSL communication with the SAN Manager (specifically for the BNA SAN Manager type.)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Username used to authenticate and manage the SAN Manager.  This is only applicable for BNA SAN Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Add-HPOVSanManager -type BNA -hostname BNA.contoso.com -username Administrator -password password -usessl
Wait-HPOVTaskComplete $task
                        
</pre>
Add a new Brocade Network Advisor SAN Manager.



### Related Links

* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager)
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager)
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager)
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Add-HPOVSanManager
<p>
Add a supported SAN Manager

### SYNTAX
<p>
<pre><code>Add-HPOVSanManager [-Type] &lt;String&gt; [-Hostname] &lt;String&gt; [-Username] &lt;String&gt; [-Password] &lt;Object&gt;[ [-Port] &lt;Int32&gt;][ [-UseSsl] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVSanManager [-Type] &lt;String&gt; [-Hostname] &lt;String&gt; [-SnmpUserName] &lt;String&gt;[ [-Port] &lt;Int32&gt;] [-SnmpAuthLevel] &lt;String&gt; [-SnmpAuthProtocol] &lt;String&gt; [-SnmpAuthPassword] &lt;Object&gt; [-SnmpPrivProtocol] &lt;String&gt; [-SnmpPrivPassword] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Add a new SAN Manager to the appliance.  SAN Managers are hardware or software systems that manage SANs. The SAN Managers resource enables you to bring SAN management systems and the SANs they manage under management of the appliance. You can associate the managed SANs to Fibre Channel networks on the appliance when creating a (New-HPOVNetwork) or updating an existing (Set-HPOVNetwork) Fibre Channel Network Resource. This enables the appliance to automate zoning to make the SANs visible to server profiles. Zoning defines connections between Fibre Channel endpoints. Zones are a group of endpoints that can communicate with each other. Open SANs allow communication between all endpoints.

Supported SAN Managers are:

	* Brocade SAN Network Advisor
	* HPE Networking 5900CP  (FC or FCoE)
	* HPE Networking 5900AF (FC-only)
	* Cisco Nexus (FC or FCoE)
	* Cisco MDS (FC-only)
	
Please see the HPE OneView Support Matrix for supported versions.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
FQDN or IP Address of the SAN Manager

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Password used to authenticate and manage the SAN Manager.  This is only applicable for BNA SAN Manager.  Can be either String or System.Security.SecureString type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int32&gt;<p>
TCP Port of the SAN Manager.  The default port for Brocade Network Advisor is "5989".  The default port for HPN 5900CP is "161".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthLevel &lt;String&gt;<p>
The SNMPv3 Authentication Level.  Allowed values are:

	* None - No Security is required, only the SNMPv3 UserName is provided.
	* AuthOnly - SNMPv3 Authentication Encryption Security Level only. Must also provide -SnmpAuthProtocol and -SnmpAuthPassword parameters.
	* AuthAndPriv - SNMPv3 Authentication Encryption Security and Privacy Levels. Must also provide -SnmpAuthProtocol, -SnmpAuthPassword, -SnmpPrivProtocol and -SnmpPrivPassword parameters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>None</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthPassword &lt;Object&gt;<p>
SNMPv3 UserName Password.  Can be either String or System.Security.SecureString type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthProtocol &lt;String&gt;<p>
SNMPv3 Password Encryption Protocol. Allowed values are:

	* SHA
	* MD5

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivPassword &lt;Object&gt;<p>
SNMPv3 Privacy Encryption Password.  Can be either String or System.Security.SecureString type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivProtocol &lt;String&gt;<p>
SNMPv3 Privacy Protocol.  Allowed values are:

	* AES
	* DES

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpUserName &lt;String&gt;<p>
The SNMPv3 Community User Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
SAN Manager type to add.  Accepted values are:

	* bna or Brocade Network Advisor
	* HP (HPN 5900CP or HPN 5900AF)
	* Cisco

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UseSsl &lt;SwitchParameter&gt;<p>
Use to enable SSL communication with the SAN Manager (specifically for the BNA SAN Manager type.)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Username used to authenticate and manage the SAN Manager.  This is only applicable for BNA SAN Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Add-HPOVSanManager -type BNA -hostname BNA.contoso.com -username Administrator -password password -usessl
Wait-HPOVTaskComplete $task
                        
</pre>
Add a new Brocade Network Advisor SAN Manager.



### Related Links

* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager)
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager)
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager)
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Add-HPOVSanManager
<p>
Add a supported SAN Manager

### SYNTAX
<p>
<pre><code>Add-HPOVSanManager [-Type] &lt;String&gt; [-Hostname] &lt;String&gt; [-Username] &lt;String&gt; [-Password] &lt;Object&gt;[ [-Port] &lt;Int32&gt;][ [-UseSsl] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Add-HPOVSanManager [-Type] &lt;String&gt; [-Hostname] &lt;String&gt; [-SnmpUserName] &lt;String&gt;[ [-Port] &lt;Int32&gt;] [-SnmpAuthLevel] &lt;String&gt; [-SnmpAuthProtocol] &lt;String&gt; [-SnmpAuthPassword] &lt;Object&gt; [-SnmpPrivProtocol] &lt;String&gt; [-SnmpPrivPassword] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Add a new SAN Manager to the appliance.  SAN Managers are hardware or software systems that manage SANs. The SAN Managers resource enables you to bring SAN management systems and the SANs they manage under management of the appliance. You can associate the managed SANs to Fibre Channel networks on the appliance when creating a (New-HPOVNetwork) or updating an existing (Set-HPOVNetwork) Fibre Channel Network Resource. This enables the appliance to automate zoning to make the SANs visible to server profiles. Zoning defines connections between Fibre Channel endpoints. Zones are a group of endpoints that can communicate with each other. Open SANs allow communication between all endpoints.

Supported SAN Managers are:

	* Brocade SAN Network Advisor
	* HPE Networking 5900CP  (FC or FCoE)
	* HPE Networking 5900AF (FC-only)
	* Cisco Nexus (FC or FCoE)
	* Cisco MDS (FC-only)
	
Please see the HPE OneView Support Matrix for supported versions.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
FQDN or IP Address of the SAN Manager

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;Object&gt;<p>
Password used to authenticate and manage the SAN Manager.  This is only applicable for BNA SAN Manager.  Can be either String or System.Security.SecureString type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int32&gt;<p>
TCP Port of the SAN Manager.  The default port for Brocade Network Advisor is "5989".  The default port for HPN 5900CP is "161".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthLevel &lt;String&gt;<p>
The SNMPv3 Authentication Level.  Allowed values are:

	* None - No Security is required, only the SNMPv3 UserName is provided.
	* AuthOnly - SNMPv3 Authentication Encryption Security Level only. Must also provide -SnmpAuthProtocol and -SnmpAuthPassword parameters.
	* AuthAndPriv - SNMPv3 Authentication Encryption Security and Privacy Levels. Must also provide -SnmpAuthProtocol, -SnmpAuthPassword, -SnmpPrivProtocol and -SnmpPrivPassword parameters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>None</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthPassword &lt;Object&gt;<p>
SNMPv3 UserName Password.  Can be either String or System.Security.SecureString type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpAuthProtocol &lt;String&gt;<p>
SNMPv3 Password Encryption Protocol. Allowed values are:

	* SHA
	* MD5

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivPassword &lt;Object&gt;<p>
SNMPv3 Privacy Encryption Password.  Can be either String or System.Security.SecureString type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpPrivProtocol &lt;String&gt;<p>
SNMPv3 Privacy Protocol.  Allowed values are:

	* AES
	* DES

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpUserName &lt;String&gt;<p>
The SNMPv3 Community User Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
SAN Manager type to add.  Accepted values are:

	* bna or Brocade Network Advisor
	* HP (HPN 5900CP or HPN 5900AF)
	* Cisco

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UseSsl &lt;SwitchParameter&gt;<p>
Use to enable SSL communication with the SAN Manager (specifically for the BNA SAN Manager type.)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Username used to authenticate and manage the SAN Manager.  This is only applicable for BNA SAN Manager.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$task = Add-HPOVSanManager -type BNA -hostname BNA.contoso.com -username Administrator -password password -usessl
Wait-HPOVTaskComplete $task
                        
</pre>
Add a new Brocade Network Advisor SAN Manager.



### Related Links

* [Get-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSanManager)
* [Remove-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSanManager)
* [Set-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVSanManager)
* [Update-HPOVSanManager](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVSanManager)


***
<div align=right><a href="#Top">Top</a></div>
