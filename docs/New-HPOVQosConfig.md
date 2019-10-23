<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVQosConfig
<p>
Create QoS Configuration Object

### SYNTAX
<p>
<pre><code>New-HPOVQosConfig [-ConfigType] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVQosConfig [-ConfigType] &lt;String&gt; [-UplinkClassificationType] &lt;String&gt; [-DownlinkClassificationType] &lt;String&gt; [-TrafficClassifiers] &lt;ArrayList&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET provides the capability to create a new Logical Interconnect Group or Logical Interconnect QoS Configuration object.  TrafficClassifiers are created using the New-HPOVQosTrafficClass helper CMDLET.


### Parameters

-ConfigType &lt;String&gt;<p>
The QOS Configuration Type.  Allowed values are:

	* Passthrough (Default) - All ingress packets are not classified at egress. FCoE packets having a separate PG (Priority Group) are processed at ingress. There are no traffic classes, maps, or rules applied. Passthrough mode is equivalent to no QoS (QoS disabled).
	* CustomNoFCoE          - Enables QoS and allows a customized configuration without FCoE. The configuration defines one system class (Best Effort). You can configure up to seven additional classes for non-FCoE Ethernet traffic.
	* CustomWithFCoE        - Enables QoS and allows a customized configuration that includes FCoE class. The configuration defines two default system classes, Best Effort and FCoE Lossless. FCoE Lossless class cannot be edited by the user and is pre-configured for 50% bandwidth of the port. You can also configure up to six additional classes for non-FCoE Ethernet traffic.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Passthrough</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DownlinkClassificationType &lt;String&gt;<p>
Configure the Downlink QOS Marking classification type.

	* DOT1P
	* DSCP
	* DOT1P_AND_DSCP (Default)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>DOT1P_AND_DSCP</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrafficClassifiers &lt;ArrayList&gt;<p>
A collection of traffic classes created using the New-HPOVQosTrafficClass.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UplinkClassificationType &lt;String&gt;<p>
Configure the Uplink QOS Marking classification type.

	* DOT1P (Default)
	* DSCP
	* DOT1P_AND_DSCP

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>DOT1P</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.QosConfiguration [System.Management.Automation.PSCustomObject]**_

 

QoS Configuration object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$QosConfig = New-HPOVQosConfig CustomWithFCoE DSCP DOT1P_AND_DSCP $TrafficClassifiers
New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -enableIgmpSnooping $True -igmpIdleTimeoutInterval 300 -LoopProtect $True -QosConfig $QosConfig

</pre>
Create a new QOS Configuration object,and use the created object to add to a new Logical Interconnect Group.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVQosConfig
<p>
Create QoS Configuration Object

### SYNTAX
<p>
<pre><code>New-HPOVQosConfig [-ConfigType] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVQosConfig [-ConfigType] &lt;String&gt; [-UplinkClassificationType] &lt;String&gt; [-DownlinkClassificationType] &lt;String&gt; [-TrafficClassifiers] &lt;ArrayList&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET provides the capability to create a new Logical Interconnect Group or Logical Interconnect QoS Configuration object.  TrafficClassifiers are created using the New-HPOVQosTrafficClass helper CMDLET.


### Parameters

-ConfigType &lt;String&gt;<p>
The QOS Configuration Type.  Allowed values are:

	* Passthrough (Default) - All ingress packets are not classified at egress. FCoE packets having a separate PG (Priority Group) are processed at ingress. There are no traffic classes, maps, or rules applied. Passthrough mode is equivalent to no QoS (QoS disabled).
	* CustomNoFCoE          - Enables QoS and allows a customized configuration without FCoE. The configuration defines one system class (Best Effort). You can configure up to seven additional classes for non-FCoE Ethernet traffic.
	* CustomWithFCoE        - Enables QoS and allows a customized configuration that includes FCoE class. The configuration defines two default system classes, Best Effort and FCoE Lossless. FCoE Lossless class cannot be edited by the user and is pre-configured for 50% bandwidth of the port. You can also configure up to six additional classes for non-FCoE Ethernet traffic.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Passthrough</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DownlinkClassificationType &lt;String&gt;<p>
Configure the Downlink QOS Marking classification type.

	* DOT1P
	* DSCP
	* DOT1P_AND_DSCP (Default)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>DOT1P_AND_DSCP</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrafficClassifiers &lt;ArrayList&gt;<p>
A collection of traffic classes created using the New-HPOVQosTrafficClass.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UplinkClassificationType &lt;String&gt;<p>
Configure the Uplink QOS Marking classification type.

	* DOT1P (Default)
	* DSCP
	* DOT1P_AND_DSCP

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>DOT1P</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.QosConfiguration [System.Management.Automation.PSCustomObject]**_

 

QoS Configuration object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$QosConfig = New-HPOVQosConfig CustomWithFCoE DSCP DOT1P_AND_DSCP $TrafficClassifiers
New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -enableIgmpSnooping $True -igmpIdleTimeoutInterval 300 -LoopProtect $True -QosConfig $QosConfig

</pre>
Create a new QOS Configuration object,and use the created object to add to a new Logical Interconnect Group.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVQosConfig
<p>
Create QoS Configuration Object

### SYNTAX
<p>
<pre><code>New-HPOVQosConfig [-ConfigType] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVQosConfig [-ConfigType] &lt;String&gt; [-UplinkClassificationType] &lt;String&gt; [-DownlinkClassificationType] &lt;String&gt; [-TrafficClassifiers] &lt;ArrayList&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET provides the capability to create a new Logical Interconnect Group or Logical Interconnect QoS Configuration object.  TrafficClassifiers are created using the New-HPOVQosTrafficClass helper CMDLET.


### Parameters

-ConfigType &lt;String&gt;<p>
The QOS Configuration Type.  Allowed values are:

	* Passthrough (Default) - All ingress packets are not classified at egress. FCoE packets having a separate PG (Priority Group) are processed at ingress. There are no traffic classes, maps, or rules applied. Passthrough mode is equivalent to no QoS (QoS disabled).
	* CustomNoFCoE          - Enables QoS and allows a customized configuration without FCoE. The configuration defines one system class (Best Effort). You can configure up to seven additional classes for non-FCoE Ethernet traffic.
	* CustomWithFCoE        - Enables QoS and allows a customized configuration that includes FCoE class. The configuration defines two default system classes, Best Effort and FCoE Lossless. FCoE Lossless class cannot be edited by the user and is pre-configured for 50% bandwidth of the port. You can also configure up to six additional classes for non-FCoE Ethernet traffic.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Passthrough</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DownlinkClassificationType &lt;String&gt;<p>
Configure the Downlink QOS Marking classification type.

	* DOT1P
	* DSCP
	* DOT1P_AND_DSCP (Default)

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>DOT1P_AND_DSCP</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TrafficClassifiers &lt;ArrayList&gt;<p>
A collection of traffic classes created using the New-HPOVQosTrafficClass.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@()</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UplinkClassificationType &lt;String&gt;<p>
Configure the Uplink QOS Marking classification type.

	* DOT1P (Default)
	* DSCP
	* DOT1P_AND_DSCP

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>DOT1P</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.QosConfiguration [System.Management.Automation.PSCustomObject]**_

 

QoS Configuration object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$QosConfig = New-HPOVQosConfig CustomWithFCoE DSCP DOT1P_AND_DSCP $TrafficClassifiers
New-HPOVLogicalInterconnectGroup -LIGName "Flex10/10D and FlexFabric Production 1" -bays @{1 = "Flex1010D";2 = "Flex1010D";3 = "FlexFabric";4 = "FlexFabric"} -enableIgmpSnooping $True -igmpIdleTimeoutInterval 300 -LoopProtect $True -QosConfig $QosConfig

</pre>
Create a new QOS Configuration object,and use the created object to add to a new Logical Interconnect Group.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
