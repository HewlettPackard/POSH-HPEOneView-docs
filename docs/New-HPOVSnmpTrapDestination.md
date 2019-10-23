<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVSnmpTrapDestination
<p>
Create SNMP Trap Destination Object

### SYNTAX
<p>
<pre><code>New-HPOVSnmpTrapDestination [-Destination] &lt;String&gt; [-Community] &lt;String&gt;[ [-Port] &lt;Int&gt;] [-SnmpFormat] &lt;String&gt; [-TrapSeverities] &lt;Array&gt; [-VCMTrapCategories] &lt;Array&gt; [-EnetTrapCategories] &lt;Array&gt; [-FCTrapCategories] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVSnmpTrapDestination [-Destination] &lt;String&gt; [-SnmpV3User] &lt;HPOneView.Appliance.SnmpV3User&gt;[ [-Port] &lt;Int&gt;] [-SnmpFormat] &lt;String&gt;[ [-NotificationType] &lt;String&gt;] [-EngineID] &lt;String&gt; [-TrapSeverities] &lt;Array&gt; [-VCMTrapCategories] &lt;Array&gt; [-EnetTrapCategories] &lt;Array&gt; [-FCTrapCategories] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper Cmdlet provides the capability to create a new SNMP Trap Destination object.  The object can then be used with New-HPOVSnmpConfiguration to create a new SNMP Configuration for a Logical Interconnect Group or Logical Interconnect resource.


### Parameters

-Community &lt;String&gt;<p>
The SNMP Trap Community String to set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>public</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Destination &lt;String&gt;<p>
The SNMP destination IP Address or FQDN.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnetTrapCategories &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of SNMP Trap Severities to generate Traps for.  Allowed values:

	* Other
	* PortStatus
	* PortThresholds

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EngineID &lt;String&gt;<p>
The EngineId of remote SNMPv3 user.  Only applicable when configuring an SNMPv3 object for the appliance, not logical interconnect groups or logical interconnects.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FCTrapCategories &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of SNMP Trap Severities to generate Traps for.  Allowed values:

	* Other
	* PortStatus

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NotificationType &lt;String&gt;<p>
Indicates whether the trap should be inform message or not.  Allowed values:

	* Inform
	* Trap

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Trap</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int&gt;<p>
Provide the alternate SNMP trap reciever port.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpFormat &lt;String&gt;<p>
SNMP Format type.  Allowed values:

	* SNMPv1
	* SNMPv2
	* SNMPv3

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SNMPv1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3User &lt;HPOneView.Appliance.SnmpV3User&gt;<p>
A valid SNMPv3 user from New-HPOVSnmpV3User.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrapSeverities &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of SNMP Trap Severities to generate Traps for.  Allowed values:

	* Critical
	* Info
	* Major
	* Minor
	* Normal
	* Unknown
	* Warning

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCMTrapCategories &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of VCM Trap Categories.  Allowed values:

	* Legacy

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Networking.SnmpTrapDestination [System.Management.Automation.PSCustomObject]**_

 

SNMP Trap desitnation object for an SNMP Configuration Object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Dest1 = New-HPOVSnmpTrapDestination -Destination mysnmpserver.domain.local -Community MyR3adcommun1ty -SnmpFormat SNMPv1 -TrapSeverities critical,warning $Dest2 = New-HPOVSnmpTrapDestination 10.44.120.9 MyR3adcommun1ty SNMPv1 critical,warning legacy "Other","PortStatus","PortThresholds" "Other","PortStatus" $SnmpConfig = New-HPOVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22 -TrapDestinations $Dest1,$Dest2 New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -SNMP $SnmpConfig

</pre>
Create a new SNMP Configuration object, with the specified Trap Destinations, and use the created object to add to a new Logical Interconnect Group.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
# Create SNMPv3 user account for appliance. $SNMPv3User = New-HPOVSnmpv3User -Username snmpv3user -SecurityLevel None -ApplianceSnmpUser $Dest1 = New-HPOVSnmpTrapDestination -Destination mysnmpserver.domain.local -Community MyR3adcommun1ty -SnmpFormat SNMPv1 -TrapSeverities critical,warning $Dest2 = New-HPOVSnmpTrapDestination 10.44.120.9 MyR3adcommun1ty SNMPv1 critical,warning legacy "Other","PortStatus","PortThresholds" "Other","PortStatus" $SnmpConfig = New-HPOVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22 -TrapDestinations $Dest1,$Dest2 New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -SNMP $SnmpConfig

</pre>
Create a new SNMP Configuration object, with the specified Trap Destinations, and use the created object to add to a new Logical Interconnect Group.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVSnmpTrapDestination
<p>
Create SNMP Trap Destination Object

### SYNTAX
<p>
<pre><code>New-HPOVSnmpTrapDestination [-Destination] &lt;String&gt; [-Community] &lt;String&gt;[ [-Port] &lt;Int&gt;] [-SnmpFormat] &lt;String&gt; [-TrapSeverities] &lt;Array&gt; [-VCMTrapCategories] &lt;Array&gt; [-EnetTrapCategories] &lt;Array&gt; [-FCTrapCategories] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVSnmpTrapDestination [-Destination] &lt;String&gt; [-SnmpV3User] &lt;HPOneView.Appliance.SnmpV3User&gt;[ [-Port] &lt;Int&gt;] [-SnmpFormat] &lt;String&gt;[ [-NotificationType] &lt;String&gt;] [-EngineID] &lt;String&gt; [-TrapSeverities] &lt;Array&gt; [-VCMTrapCategories] &lt;Array&gt; [-EnetTrapCategories] &lt;Array&gt; [-FCTrapCategories] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper Cmdlet provides the capability to create a new SNMP Trap Destination object.  The object can then be used with New-HPOVSnmpConfiguration to create a new SNMP Configuration for a Logical Interconnect Group or Logical Interconnect resource.


### Parameters

-Community &lt;String&gt;<p>
The SNMP Trap Community String to set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>public</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Destination &lt;String&gt;<p>
The SNMP destination IP Address or FQDN.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnetTrapCategories &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of SNMP Trap Severities to generate Traps for.  Allowed values:

	* Other
	* PortStatus
	* PortThresholds

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EngineID &lt;String&gt;<p>
The EngineId of remote SNMPv3 user.  Only applicable when configuring an SNMPv3 object for the appliance, not logical interconnect groups or logical interconnects.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FCTrapCategories &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of SNMP Trap Severities to generate Traps for.  Allowed values:

	* Other
	* PortStatus

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NotificationType &lt;String&gt;<p>
Indicates whether the trap should be inform message or not.  Allowed values:

	* Inform
	* Trap

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Trap</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int&gt;<p>
Provide the alternate SNMP trap reciever port.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpFormat &lt;String&gt;<p>
SNMP Format type.  Allowed values:

	* SNMPv1
	* SNMPv2
	* SNMPv3

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SNMPv1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3User &lt;HPOneView.Appliance.SnmpV3User&gt;<p>
A valid SNMPv3 user from New-HPOVSnmpV3User.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrapSeverities &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of SNMP Trap Severities to generate Traps for.  Allowed values:

	* Critical
	* Info
	* Major
	* Minor
	* Normal
	* Unknown
	* Warning

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCMTrapCategories &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of VCM Trap Categories.  Allowed values:

	* Legacy

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Networking.SnmpTrapDestination [System.Management.Automation.PSCustomObject]**_

 

SNMP Trap desitnation object for an SNMP Configuration Object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Dest1 = New-HPOVSnmpTrapDestination -Destination mysnmpserver.domain.local -Community MyR3adcommun1ty -SnmpFormat SNMPv1 -TrapSeverities critical,warning $Dest2 = New-HPOVSnmpTrapDestination 10.44.120.9 MyR3adcommun1ty SNMPv1 critical,warning legacy "Other","PortStatus","PortThresholds" "Other","PortStatus" $SnmpConfig = New-HPOVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22 -TrapDestinations $Dest1,$Dest2 New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -SNMP $SnmpConfig

</pre>
Create a new SNMP Configuration object, with the specified Trap Destinations, and use the created object to add to a new Logical Interconnect Group.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
# Create SNMPv3 user account for appliance. $SNMPv3User = New-HPOVSnmpv3User -Username snmpv3user -SecurityLevel None -ApplianceSnmpUser $Dest1 = New-HPOVSnmpTrapDestination -Destination mysnmpserver.domain.local -Community MyR3adcommun1ty -SnmpFormat SNMPv1 -TrapSeverities critical,warning $Dest2 = New-HPOVSnmpTrapDestination 10.44.120.9 MyR3adcommun1ty SNMPv1 critical,warning legacy "Other","PortStatus","PortThresholds" "Other","PortStatus" $SnmpConfig = New-HPOVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22 -TrapDestinations $Dest1,$Dest2 New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -SNMP $SnmpConfig

</pre>
Create a new SNMP Configuration object, with the specified Trap Destinations, and use the created object to add to a new Logical Interconnect Group.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVSnmpTrapDestination
<p>
Create SNMP Trap Destination Object

### SYNTAX
<p>
<pre><code>New-HPOVSnmpTrapDestination [-Destination] &lt;String&gt; [-Community] &lt;String&gt;[ [-Port] &lt;Int&gt;] [-SnmpFormat] &lt;String&gt; [-TrapSeverities] &lt;Array&gt; [-VCMTrapCategories] &lt;Array&gt; [-EnetTrapCategories] &lt;Array&gt; [-FCTrapCategories] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVSnmpTrapDestination [-Destination] &lt;String&gt; [-SnmpV3User] &lt;HPOneView.Appliance.SnmpV3User&gt;[ [-Port] &lt;Int&gt;] [-SnmpFormat] &lt;String&gt;[ [-NotificationType] &lt;String&gt;] [-EngineID] &lt;String&gt; [-TrapSeverities] &lt;Array&gt; [-VCMTrapCategories] &lt;Array&gt; [-EnetTrapCategories] &lt;Array&gt; [-FCTrapCategories] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper Cmdlet provides the capability to create a new SNMP Trap Destination object.  The object can then be used with New-HPOVSnmpConfiguration to create a new SNMP Configuration for a Logical Interconnect Group or Logical Interconnect resource.


### Parameters

-Community &lt;String&gt;<p>
The SNMP Trap Community String to set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>public</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Destination &lt;String&gt;<p>
The SNMP destination IP Address or FQDN.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EnetTrapCategories &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of SNMP Trap Severities to generate Traps for.  Allowed values:

	* Other
	* PortStatus
	* PortThresholds

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EngineID &lt;String&gt;<p>
The EngineId of remote SNMPv3 user.  Only applicable when configuring an SNMPv3 object for the appliance, not logical interconnect groups or logical interconnects.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FCTrapCategories &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of SNMP Trap Severities to generate Traps for.  Allowed values:

	* Other
	* PortStatus

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NotificationType &lt;String&gt;<p>
Indicates whether the trap should be inform message or not.  Allowed values:

	* Inform
	* Trap

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Trap</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Port &lt;Int&gt;<p>
Provide the alternate SNMP trap reciever port.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpFormat &lt;String&gt;<p>
SNMP Format type.  Allowed values:

	* SNMPv1
	* SNMPv2
	* SNMPv3

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SNMPv1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3User &lt;HPOneView.Appliance.SnmpV3User&gt;<p>
A valid SNMPv3 user from New-HPOVSnmpV3User.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrapSeverities &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of SNMP Trap Severities to generate Traps for.  Allowed values:

	* Critical
	* Info
	* Major
	* Minor
	* Normal
	* Unknown
	* Warning

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -VCMTrapCategories &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of VCM Trap Categories.  Allowed values:

	* Legacy

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Networking.SnmpTrapDestination [System.Management.Automation.PSCustomObject]**_

 

SNMP Trap desitnation object for an SNMP Configuration Object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Dest1 = New-HPOVSnmpTrapDestination -Destination mysnmpserver.domain.local -Community MyR3adcommun1ty -SnmpFormat SNMPv1 -TrapSeverities critical,warning $Dest2 = New-HPOVSnmpTrapDestination 10.44.120.9 MyR3adcommun1ty SNMPv1 critical,warning legacy "Other","PortStatus","PortThresholds" "Other","PortStatus" $SnmpConfig = New-HPOVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22 -TrapDestinations $Dest1,$Dest2 New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -SNMP $SnmpConfig

</pre>
Create a new SNMP Configuration object, with the specified Trap Destinations, and use the created object to add to a new Logical Interconnect Group.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
# Create SNMPv3 user account for appliance. $SNMPv3User = New-HPOVSnmpv3User -Username snmpv3user -SecurityLevel None -ApplianceSnmpUser $Dest1 = New-HPOVSnmpTrapDestination -Destination mysnmpserver.domain.local -Community MyR3adcommun1ty -SnmpFormat SNMPv1 -TrapSeverities critical,warning $Dest2 = New-HPOVSnmpTrapDestination 10.44.120.9 MyR3adcommun1ty SNMPv1 critical,warning legacy "Other","PortStatus","PortThresholds" "Other","PortStatus" $SnmpConfig = New-HPOVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22 -TrapDestinations $Dest1,$Dest2 New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -SNMP $SnmpConfig

</pre>
Create a new SNMP Configuration object, with the specified Trap Destinations, and use the created object to add to a new Logical Interconnect Group.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
