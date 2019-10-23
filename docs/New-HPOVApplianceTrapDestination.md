<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVApplianceTrapDestination
<p>
Create a new appliance SNMP trap destiation.

### SYNTAX
<p>
<pre><code>New-HPOVApplianceTrapDestination [-Destination] &lt;String&gt; [-CommunityString] &lt;String&gt;[ [-Port] &lt;int&gt;][ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVApplianceTrapDestination [-Destination] &lt;String&gt; [-SnmpV3User] &lt;HPOneView.Appliance.SnmpV3User&gt;[ [-Port] &lt;int&gt;][ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView can be used as a proxy to forward device traps from servers and enclosures (OA) to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations.

Appliance SNMP settings allow you to add destinations to which the traps need to be forwarded. You can configure each destination as an SNMPv1 or SNMPv3 destination, depending on whether the traps are sent in SNMPv1 or SNMPv3 formats. 

Additionally, if you have Gen6 or Gen7 servers being monitored by HPE OneView in your environment, you can configure the read community string that HPE OneView uses for monitoring these servers with SNMPv1. 

Privileges: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CommunityString &lt;String&gt;<p>
SNMPv1 trap community string.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Destination &lt;String&gt;<p>
IP Address or Hostname of the target SNMP trap reciever.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;int&gt;<p>
Specify the alternate SNMP destination port.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>161</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3User &lt;HPOneView.Appliance.SnmpV3User&gt;<p>
The defined SNMPv3 user created on the appliance with Get-HPOVSnmpV3User.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
SNMP version type.  Allowed values:

	* SNMPv1
	* SNMPv3

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SNMPv1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SnmpV1TrapDestination**_

 

The configured SNMPv1 Trap Destination on the appliance.

 _**HPOneView.Appliance.SnmpV3TrapDestination**_

 

The configured SNMPv3 Trap Destination on the appliance.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVApplianceTrapDestination -Destination $SnmpV1TrapDestinationAddress -Type SNMPv1 -Port $SnmpV1TrapDestinationPort -CommunityString $SnmpV1Community
</pre>
Create a new SNMPv1 trap destination on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$SnmpV3Password = ConvertTo-SecureString -String $CommonPassword -AsPlainText -Force
$Snmpv3User = New-HPOVSnmpV3User -ApplianceSnmpUser -Username Tr@pUser -SecurityLevel AuthAndPriv -AuthProtocol SHA512 -AuthPassword $SnmpV3Password -PrivProtocol AES192 -PrivPassword $SnmpV3Password
New-HPOVApplianceTrapDestination -Type SnmpV3 -SnmpV3User $CreatedSnmpSnmpv3UserV3User -Destination monitor1.contoso.com</pre>
Define a new SNMPv3 user, and associate it with the new SNMPv3 trap destination on the appliance.



### Related Links

* [Get-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrapDestination)
* [Remove-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrapDestination)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVApplianceTrapDestination
<p>
Create a new appliance SNMP trap destiation.

### SYNTAX
<p>
<pre><code>New-HPOVApplianceTrapDestination [-Destination] &lt;String&gt; [-CommunityString] &lt;String&gt;[ [-Port] &lt;int&gt;][ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVApplianceTrapDestination [-Destination] &lt;String&gt; [-SnmpV3User] &lt;HPOneView.Appliance.SnmpV3User&gt;[ [-Port] &lt;int&gt;][ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView can be used as a proxy to forward device traps from servers and enclosures (OA) to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations.

Appliance SNMP settings allow you to add destinations to which the traps need to be forwarded. You can configure each destination as an SNMPv1 or SNMPv3 destination, depending on whether the traps are sent in SNMPv1 or SNMPv3 formats. 

Additionally, if you have Gen6 or Gen7 servers being monitored by HPE OneView in your environment, you can configure the read community string that HPE OneView uses for monitoring these servers with SNMPv1. 

Privileges: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CommunityString &lt;String&gt;<p>
SNMPv1 trap community string.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Destination &lt;String&gt;<p>
IP Address or Hostname of the target SNMP trap reciever.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;int&gt;<p>
Specify the alternate SNMP destination port.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>161</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3User &lt;HPOneView.Appliance.SnmpV3User&gt;<p>
The defined SNMPv3 user created on the appliance with Get-HPOVSnmpV3User.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
SNMP version type.  Allowed values:

	* SNMPv1
	* SNMPv3

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SNMPv1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SnmpV1TrapDestination**_

 

The configured SNMPv1 Trap Destination on the appliance.

 _**HPOneView.Appliance.SnmpV3TrapDestination**_

 

The configured SNMPv3 Trap Destination on the appliance.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVApplianceTrapDestination -Destination $SnmpV1TrapDestinationAddress -Type SNMPv1 -Port $SnmpV1TrapDestinationPort -CommunityString $SnmpV1Community
</pre>
Create a new SNMPv1 trap destination on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$SnmpV3Password = ConvertTo-SecureString -String $CommonPassword -AsPlainText -Force
$Snmpv3User = New-HPOVSnmpV3User -ApplianceSnmpUser -Username Tr@pUser -SecurityLevel AuthAndPriv -AuthProtocol SHA512 -AuthPassword $SnmpV3Password -PrivProtocol AES192 -PrivPassword $SnmpV3Password
New-HPOVApplianceTrapDestination -Type SnmpV3 -SnmpV3User $CreatedSnmpSnmpv3UserV3User -Destination monitor1.contoso.com</pre>
Define a new SNMPv3 user, and associate it with the new SNMPv3 trap destination on the appliance.



### Related Links

* [Get-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrapDestination)
* [Remove-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrapDestination)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVApplianceTrapDestination
<p>
Create a new appliance SNMP trap destiation.

### SYNTAX
<p>
<pre><code>New-HPOVApplianceTrapDestination [-Destination] &lt;String&gt; [-CommunityString] &lt;String&gt;[ [-Port] &lt;int&gt;][ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVApplianceTrapDestination [-Destination] &lt;String&gt; [-SnmpV3User] &lt;HPOneView.Appliance.SnmpV3User&gt;[ [-Port] &lt;int&gt;][ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView can be used as a proxy to forward device traps from servers and enclosures (OA) to other SNMP-enabled applications on the network. HPE OneView can forward traps, as SNMPv3 or SNMPv1 traps, to configured destinations.

Appliance SNMP settings allow you to add destinations to which the traps need to be forwarded. You can configure each destination as an SNMPv1 or SNMPv3 destination, depending on whether the traps are sent in SNMPv1 or SNMPv3 formats. 

Additionally, if you have Gen6 or Gen7 servers being monitored by HPE OneView in your environment, you can configure the read community string that HPE OneView uses for monitoring these servers with SNMPv1. 

Privileges: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CommunityString &lt;String&gt;<p>
SNMPv1 trap community string.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Destination &lt;String&gt;<p>
IP Address or Hostname of the target SNMP trap reciever.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;int&gt;<p>
Specify the alternate SNMP destination port.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>161</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3User &lt;HPOneView.Appliance.SnmpV3User&gt;<p>
The defined SNMPv3 user created on the appliance with Get-HPOVSnmpV3User.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
SNMP version type.  Allowed values:

	* SNMPv1
	* SNMPv3

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SNMPv1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.SnmpV1TrapDestination**_

 

The configured SNMPv1 Trap Destination on the appliance.

 _**HPOneView.Appliance.SnmpV3TrapDestination**_

 

The configured SNMPv3 Trap Destination on the appliance.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVApplianceTrapDestination -Destination $SnmpV1TrapDestinationAddress -Type SNMPv1 -Port $SnmpV1TrapDestinationPort -CommunityString $SnmpV1Community
</pre>
Create a new SNMPv1 trap destination on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$SnmpV3Password = ConvertTo-SecureString -String $CommonPassword -AsPlainText -Force
$Snmpv3User = New-HPOVSnmpV3User -ApplianceSnmpUser -Username Tr@pUser -SecurityLevel AuthAndPriv -AuthProtocol SHA512 -AuthPassword $SnmpV3Password -PrivProtocol AES192 -PrivPassword $SnmpV3Password
New-HPOVApplianceTrapDestination -Type SnmpV3 -SnmpV3User $CreatedSnmpSnmpv3UserV3User -Destination monitor1.contoso.com</pre>
Define a new SNMPv3 user, and associate it with the new SNMPv3 trap destination on the appliance.



### Related Links

* [Get-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceTrapDestination)
* [Remove-HPOVApplianceTrapDestination](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVApplianceTrapDestination)


***
<div align=right><a href="#Top">Top</a></div>
