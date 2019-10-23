<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVSnmpV3User
<p>
Create a new SNMPv3 user from appliance or Logical Interconnect/Switch resoure.

### SYNTAX
<p>
<pre><code>New-HPOVSnmpV3User [-Username] &lt;String&gt;[ [-SecurityLevel] &lt;String&gt;][ [-AuthProtocol] &lt;String&gt;][ [-AuthPassword] &lt;SecureString&gt;][ [-PrivProtocol] &lt;String&gt;][ [-PrivPassword] &lt;SecureString&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVSnmpV3User [-Username] &lt;String&gt; [-ApplianceSnmpUser] &lt;SwitchParameter&gt;[ [-SecurityLevel] &lt;String&gt;][ [-AuthProtocol] &lt;String&gt;][ [-AuthPassword] &lt;SecureString&gt;][ [-PrivProtocol] &lt;String&gt;][ [-PrivPassword] &lt;SecureString&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView can be used as a proxy to forward device traps from servers and enclosures (OA) to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations.

Appliance SNMP settings allow you to add destinations to which the traps need to be forwarded. You can configure each destination as an SNMPv1 or SNMPv3 destination, depending on whether the traps are sent in SNMPv1 or SNMPv3 formats. 

Additionally, if you have Gen6 or Gen7 servers being monitored by HPE OneView in your environment, you can configure the read community string that HPE OneView uses for monitoring these servers with SNMPv1. 

NOTE: To configure SNMP trap forwarding for network devices (interconnects and switches), use the New-HPOVSnmpV3User and include it within the New-HPOVSnmpSettings Cmdlet.

Privileges: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceSnmpUser &lt;SwitchParameter&gt;<p>
Use this to create an appliance SNMPv3 User.  Default is to create an HPOneView.Networking.SnmpV3User.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AuthPassword &lt;SecureString&gt;<p>
SNMpv3 Authentication password in SecureString format.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AuthProtocol &lt;String&gt;<p>
SNMPv3 Authentication protocol.  Supported values:

	* None
	* MD5
	* SHA
	* SHA1
	* SHA256
	* SHA384
	* SHA512


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrivPassword &lt;SecureString&gt;<p>
SNMpv3 Privacy password in SecureString format.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrivProtocol &lt;String&gt;<p>
SNMPv3 Privacy protocol.  Supported values:

	* none
	* des56
	* 3des
	* aes128
	* aes192
	* aes256"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecurityLevel &lt;String&gt;<p>
Specify the type of SNMPv3 security policy.  Supported values: 
	* None
	* AuthOnly
	* AuthAndPriv


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
SNMPv3 Username

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SnmpV3User**_

 

Appliance SNMPv3 user account created on the appliance.

 _**HPOneView.Networking.SnmpV3User**_

 

SNMPv3 user account for a networking resource.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Snmpv3Password = ConvertTo-SecureString "Myp@ssword" -AsPlainText -Force
New-HPOVSnmpV3User -ApplianceSnmpUser -Username MySNMPv3us3r -SecurityLevel AuthAndPriv -AuthProtocol SHA512 -AuthPassword AES192 -PrivProtocol $SnmpV3UserPrivProtocol -PrivPassword $Snmpv3Password
</pre>
Create a new SNMPv3 user for the appliance.



### Related Links

* [Get-HPOVSnmpV3User](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSnmpV3User)
* [Remove-HPOVSnmpV3User](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSnmpV3User)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVSnmpV3User
<p>
Create a new SNMPv3 user from appliance or Logical Interconnect/Switch resoure.

### SYNTAX
<p>
<pre><code>New-HPOVSnmpV3User [-Username] &lt;String&gt;[ [-SecurityLevel] &lt;String&gt;][ [-AuthProtocol] &lt;String&gt;][ [-AuthPassword] &lt;SecureString&gt;][ [-PrivProtocol] &lt;String&gt;][ [-PrivPassword] &lt;SecureString&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVSnmpV3User [-Username] &lt;String&gt; [-ApplianceSnmpUser] &lt;SwitchParameter&gt;[ [-SecurityLevel] &lt;String&gt;][ [-AuthProtocol] &lt;String&gt;][ [-AuthPassword] &lt;SecureString&gt;][ [-PrivProtocol] &lt;String&gt;][ [-PrivPassword] &lt;SecureString&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView can be used as a proxy to forward device traps from servers and enclosures (OA) to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations.

Appliance SNMP settings allow you to add destinations to which the traps need to be forwarded. You can configure each destination as an SNMPv1 or SNMPv3 destination, depending on whether the traps are sent in SNMPv1 or SNMPv3 formats. 

Additionally, if you have Gen6 or Gen7 servers being monitored by HPE OneView in your environment, you can configure the read community string that HPE OneView uses for monitoring these servers with SNMPv1. 

NOTE: To configure SNMP trap forwarding for network devices (interconnects and switches), use the New-HPOVSnmpV3User and include it within the New-HPOVSnmpSettings Cmdlet.

Privileges: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceSnmpUser &lt;SwitchParameter&gt;<p>
Use this to create an appliance SNMPv3 User.  Default is to create an HPOneView.Networking.SnmpV3User.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AuthPassword &lt;SecureString&gt;<p>
SNMpv3 Authentication password in SecureString format.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AuthProtocol &lt;String&gt;<p>
SNMPv3 Authentication protocol.  Supported values:

	* None
	* MD5
	* SHA
	* SHA1
	* SHA256
	* SHA384
	* SHA512


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrivPassword &lt;SecureString&gt;<p>
SNMpv3 Privacy password in SecureString format.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrivProtocol &lt;String&gt;<p>
SNMPv3 Privacy protocol.  Supported values:

	* none
	* des56
	* 3des
	* aes128
	* aes192
	* aes256"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecurityLevel &lt;String&gt;<p>
Specify the type of SNMPv3 security policy.  Supported values: 
	* None
	* AuthOnly
	* AuthAndPriv


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
SNMPv3 Username

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SnmpV3User**_

 

Appliance SNMPv3 user account created on the appliance.

 _**HPOneView.Networking.SnmpV3User**_

 

SNMPv3 user account for a networking resource.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Snmpv3Password = ConvertTo-SecureString "Myp@ssword" -AsPlainText -Force
New-HPOVSnmpV3User -ApplianceSnmpUser -Username MySNMPv3us3r -SecurityLevel AuthAndPriv -AuthProtocol SHA512 -AuthPassword AES192 -PrivProtocol $SnmpV3UserPrivProtocol -PrivPassword $Snmpv3Password
</pre>
Create a new SNMPv3 user for the appliance.



### Related Links

* [Get-HPOVSnmpV3User](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSnmpV3User)
* [Remove-HPOVSnmpV3User](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSnmpV3User)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVSnmpV3User
<p>
Create a new SNMPv3 user from appliance or Logical Interconnect/Switch resoure.

### SYNTAX
<p>
<pre><code>New-HPOVSnmpV3User [-Username] &lt;String&gt;[ [-SecurityLevel] &lt;String&gt;][ [-AuthProtocol] &lt;String&gt;][ [-AuthPassword] &lt;SecureString&gt;][ [-PrivProtocol] &lt;String&gt;][ [-PrivPassword] &lt;SecureString&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVSnmpV3User [-Username] &lt;String&gt; [-ApplianceSnmpUser] &lt;SwitchParameter&gt;[ [-SecurityLevel] &lt;String&gt;][ [-AuthProtocol] &lt;String&gt;][ [-AuthPassword] &lt;SecureString&gt;][ [-PrivProtocol] &lt;String&gt;][ [-PrivPassword] &lt;SecureString&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView can be used as a proxy to forward device traps from servers and enclosures (OA) to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations.

Appliance SNMP settings allow you to add destinations to which the traps need to be forwarded. You can configure each destination as an SNMPv1 or SNMPv3 destination, depending on whether the traps are sent in SNMPv1 or SNMPv3 formats. 

Additionally, if you have Gen6 or Gen7 servers being monitored by HPE OneView in your environment, you can configure the read community string that HPE OneView uses for monitoring these servers with SNMPv1. 

NOTE: To configure SNMP trap forwarding for network devices (interconnects and switches), use the New-HPOVSnmpV3User and include it within the New-HPOVSnmpSettings Cmdlet.

Privileges: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceSnmpUser &lt;SwitchParameter&gt;<p>
Use this to create an appliance SNMPv3 User.  Default is to create an HPOneView.Networking.SnmpV3User.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AuthPassword &lt;SecureString&gt;<p>
SNMpv3 Authentication password in SecureString format.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AuthProtocol &lt;String&gt;<p>
SNMPv3 Authentication protocol.  Supported values:

	* None
	* MD5
	* SHA
	* SHA1
	* SHA256
	* SHA384
	* SHA512


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrivPassword &lt;SecureString&gt;<p>
SNMpv3 Privacy password in SecureString format.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PrivProtocol &lt;String&gt;<p>
SNMPv3 Privacy protocol.  Supported values:

	* none
	* des56
	* 3des
	* aes128
	* aes192
	* aes256"

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SecurityLevel &lt;String&gt;<p>
Specify the type of SNMPv3 security policy.  Supported values: 
	* None
	* AuthOnly
	* AuthAndPriv


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
SNMPv3 Username

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SnmpV3User**_

 

Appliance SNMPv3 user account created on the appliance.

 _**HPOneView.Networking.SnmpV3User**_

 

SNMPv3 user account for a networking resource.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Snmpv3Password = ConvertTo-SecureString "Myp@ssword" -AsPlainText -Force
New-HPOVSnmpV3User -ApplianceSnmpUser -Username MySNMPv3us3r -SecurityLevel AuthAndPriv -AuthProtocol SHA512 -AuthPassword AES192 -PrivProtocol $SnmpV3UserPrivProtocol -PrivPassword $Snmpv3Password
</pre>
Create a new SNMPv3 user for the appliance.



### Related Links

* [Get-HPOVSnmpV3User](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSnmpV3User)
* [Remove-HPOVSnmpV3User](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVSnmpV3User)


***
<div align=right><a href="#Top">Top</a></div>
