<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVSnmpConfiguration
<p>
Create SNMP LIG Configuration Object

### SYNTAX
<p>
<pre><code>New-HPOVSnmpConfiguration [-ReadCommunity] &lt;String&gt; [-SnmpV1] &lt;bool&gt; [-SnmpV3] &lt;bool&gt; [-Contact] &lt;String&gt; [-AccessList] &lt;Array&gt; [-TrapDestinations] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVSnmpConfiguration [-ReadCommunity] &lt;String&gt; [-SnmpV3] &lt;bool&gt; [-SnmpV3Users] &lt;SnmpV3User[]&gt; [-SnmpV1] &lt;bool&gt; [-Contact] &lt;String&gt; [-AccessList] &lt;Array&gt; [-TrapDestinations] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper Cmdlet provides the capability to create a new SNMP Configuration object for a Logical Interconnect Group or Logical Interconnect resources.


### Parameters

-AccessList &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of IP Addresses or Subnets.  You must include the Subnet Mask Bit value.  E.g. 10.44.120.9/32 or 172.20.148.0/22

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Contact &lt;String&gt;<p>
SNMP Contact Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ReadCommunity &lt;String&gt;<p>
The SNMP Read Community String to set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV1 &lt;bool&gt;<p>
Specify if SNMPv1 should be enabled.  Can be disabled when SNMPv3 is enabled.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3 &lt;bool&gt;<p>
Specify if SNMPv3 should be enabled.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3Users &lt;SnmpV3User[]&gt;<p>
Collection of SNMPv3 users to configure within the SNMP configuration object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrapDestinations &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of SNMMP Trap Destinations.  Use New-HPOVTrapDestination Cmdlet to create the object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Networking.SnmpConfiguration [System.Management.Automation.PSCustomObject]**_

 

SNMP Configuration object for a Logical Interconnect Group or Logical Interconnect resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$SnmpConfig = New-HPOVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22 New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -enableIgmpSnooping $True -igmpIdleTimeoutInterval 300 -LoopProtect $True -QosConfig $QosConfig
</pre>
Create a new QOS Configuration object,and use the created object to add to a new Logical Interconnect Group.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVSnmpConfiguration
<p>
Create SNMP LIG Configuration Object

### SYNTAX
<p>
<pre><code>New-HPOVSnmpConfiguration [-ReadCommunity] &lt;String&gt; [-SnmpV1] &lt;bool&gt; [-SnmpV3] &lt;bool&gt; [-Contact] &lt;String&gt; [-AccessList] &lt;Array&gt; [-TrapDestinations] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVSnmpConfiguration [-ReadCommunity] &lt;String&gt; [-SnmpV3] &lt;bool&gt; [-SnmpV3Users] &lt;SnmpV3User[]&gt; [-SnmpV1] &lt;bool&gt; [-Contact] &lt;String&gt; [-AccessList] &lt;Array&gt; [-TrapDestinations] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper Cmdlet provides the capability to create a new SNMP Configuration object for a Logical Interconnect Group or Logical Interconnect resources.


### Parameters

-AccessList &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of IP Addresses or Subnets.  You must include the Subnet Mask Bit value.  E.g. 10.44.120.9/32 or 172.20.148.0/22

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Contact &lt;String&gt;<p>
SNMP Contact Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ReadCommunity &lt;String&gt;<p>
The SNMP Read Community String to set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV1 &lt;bool&gt;<p>
Specify if SNMPv1 should be enabled.  Can be disabled when SNMPv3 is enabled.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3 &lt;bool&gt;<p>
Specify if SNMPv3 should be enabled.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3Users &lt;SnmpV3User[]&gt;<p>
Collection of SNMPv3 users to configure within the SNMP configuration object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrapDestinations &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of SNMMP Trap Destinations.  Use New-HPOVTrapDestination Cmdlet to create the object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Networking.SnmpConfiguration [System.Management.Automation.PSCustomObject]**_

 

SNMP Configuration object for a Logical Interconnect Group or Logical Interconnect resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$SnmpConfig = New-HPOVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22 New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -enableIgmpSnooping $True -igmpIdleTimeoutInterval 300 -LoopProtect $True -QosConfig $QosConfig
</pre>
Create a new QOS Configuration object,and use the created object to add to a new Logical Interconnect Group.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVSnmpConfiguration
<p>
Create SNMP LIG Configuration Object

### SYNTAX
<p>
<pre><code>New-HPOVSnmpConfiguration [-ReadCommunity] &lt;String&gt; [-SnmpV1] &lt;bool&gt; [-SnmpV3] &lt;bool&gt; [-Contact] &lt;String&gt; [-AccessList] &lt;Array&gt; [-TrapDestinations] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVSnmpConfiguration [-ReadCommunity] &lt;String&gt; [-SnmpV3] &lt;bool&gt; [-SnmpV3Users] &lt;SnmpV3User[]&gt; [-SnmpV1] &lt;bool&gt; [-Contact] &lt;String&gt; [-AccessList] &lt;Array&gt; [-TrapDestinations] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper Cmdlet provides the capability to create a new SNMP Configuration object for a Logical Interconnect Group or Logical Interconnect resources.


### Parameters

-AccessList &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of IP Addresses or Subnets.  You must include the Subnet Mask Bit value.  E.g. 10.44.120.9/32 or 172.20.148.0/22

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Contact &lt;String&gt;<p>
SNMP Contact Name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ReadCommunity &lt;String&gt;<p>
The SNMP Read Community String to set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV1 &lt;bool&gt;<p>
Specify if SNMPv1 should be enabled.  Can be disabled when SNMPv3 is enabled.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3 &lt;bool&gt;<p>
Specify if SNMPv3 should be enabled.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SnmpV3Users &lt;SnmpV3User[]&gt;<p>
Collection of SNMPv3 users to configure within the SNMP configuration object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrapDestinations &lt;Array&gt;<p>
A collection [System.Collections.ArrayList ] of SNMMP Trap Destinations.  Use New-HPOVTrapDestination Cmdlet to create the object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Networking.SnmpConfiguration [System.Management.Automation.PSCustomObject]**_

 

SNMP Configuration object for a Logical Interconnect Group or Logical Interconnect resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$SnmpConfig = New-HPOVSnmpConfiguration -ReadCommunity MyR3adC0mmun1ty -AccessList "10.44.120.9/32","172.20.148.0/22 New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -enableIgmpSnooping $True -igmpIdleTimeoutInterval 300 -LoopProtect $True -QosConfig $QosConfig
</pre>
Create a new QOS Configuration object,and use the created object to add to a new Logical Interconnect Group.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
