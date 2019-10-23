<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVQosTrafficClass
<p>
Create QoS Traffic Classifier Object

### SYNTAX
<p>
<pre><code>New-HPOVQosTrafficClass [-Name] &lt;String&gt; [-MaxBandwidth] &lt;Int32&gt; [-BandwidthShare] &lt;String&gt; [-EgressDot1pValue] &lt;Int32&gt; [-IngressDot1pClassMapping] &lt;Array&gt; [-IngressDscpClassMapping] &lt;Array&gt;[ [-RealTime] &lt;SwitchParameter&gt;][ [-Enabled] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET provides the capability to create a new QoS Traffic Classifier Object, which can then be added to either a Logical Interconnect Group, or Logica Interconnect resource.

Only non-FCoE Traffic Classifiers are allowed to be created.  When creating the "Best effort" Traffic Classifier, only the MaxBandwidth parameter is allowed to be modified.


### Parameters

-BandwidthShare &lt;String&gt;<p>
Minimum guaranteed bandwidth for the traffic class.  The % share and the max share for a real time class must be equal and not exceed 50%.
	 
Value between 1 and 100

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EgressDot1pValue &lt;Int32&gt;<p>
Specifies the dot1p priority value to remark for the egressing packets. This provides flexibility to control priority treatment for packets at the next hops based on the remarked dot1p value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enabled &lt;SwitchParameter&gt;<p>
Specify to Enable the traffic class. By default, the class is disabled, even though it is defined.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IngressDot1pClassMapping &lt;Array&gt;<p>
Specify an array of ingress Dot1p values, and to which traffic class it is currently mapped.  Allowed values:

	* 0
	* 1
	* 2
	* 3
	* 4
	* 5
	* 5
	* 6
	* 7

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IngressDscpClassMapping &lt;Array&gt;<p>
Specify an array of DSCP class mappings, per RFC 2475.  Allowed values:

	* DSCP 0, CS0
	* DSCP 10, AF11 
	* DSCP 12, AF12 
	* DSCP 14, AF13 
	* DSCP 8, CS1
	* DSCP 18, AF21
	* DSCP 20, AF22
	* DSCP 22, AF23
	* DSCP 26, AF31
	* DSCP 28, AF32
	* DSCP 30, AF33
	* DSCP 34, AF41
	* DSCP 36, AF42
	* DSCP 38, AF43
	* DSCP 16, CS2 
	* DSCP 24, CS3 
	* DSCP 32, CS4 
	* DSCP 46, EF
	* DSCP 40, CS5 
	* DSCP 48, CS6 
	* DSCP 56, CS7

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaxBandwidth &lt;Int32&gt;<p>
Maximum share the traffic class can use when other traffic classes are not using their guaranteed share.  The max share and the % share for a real time class must be equal and not exceed 50%. For other classes, the max share is greater than or equal to the % share.
 
Value between 1 and 100

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-ClassName]
Name of the QoS Classifier.  Value cannot be "FCoE lossless".  If value is "Best effort", only the MaxBandwidth Parameter is allowed to be modified.

<table><tbody><tr><td>Aliases</td><td>ClassName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RealTime &lt;SwitchParameter&gt;<p>
Specifies whether the traffic class is real time. Only 1 traffic class can be real time. Enabling real time for this class removes the real time flag for other classes.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.QosTrafficClassifier [System.Management.Automation.PSCustomObject]**_

 

QoS Traffic Classifier Object
 
 @{ 
 	qosTrafficClass = [PSCustomObject]@{
 
 		maxBandwidth     = 100;
 		bandwidthShare   = "0";
 		egressDot1pValue = 0;
 		realTime         = $false;
 		className        = "Class";
 		enabled          = $false;
 
     };
 					
 	qosClassificationMapping = [PSCustomObject]@{
 			
 		dot1pClassMapping = @();
 		dscpClassMapping  = @()
 			
 	}
 
 }



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Class1 = New-HPOVQosTrafficClass -Name Class1 -MaxBandwidth 50 -BandwidthShare 20 -ExgressDot1pValue 2 -IngressDot1pClassMapping 5,6 -EgressDscpClassMapping "DSCP 0, CS0","DSCP 10, AF11","DSCP 12, AF12","DSCP 14, AF13"  -Enabled
$Class2 = New-HPOVQosTrafficClass -Name Class2 -MaxBandwidth 10 -BandwidthShare 10 -ExgressDot1pValue 3 -IngressDot1pClassMapping 1 -EgressDscpClassMapping "DSCP 30, AF33","SCP 32, CS4" -Enabled
$TrafficClasses = $Class1,$Class2

</pre>
Create new traffic class objects "Class1" and "Class2", creating a new collection $TrafficClasses.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVQosTrafficClass
<p>
Create QoS Traffic Classifier Object

### SYNTAX
<p>
<pre><code>New-HPOVQosTrafficClass [-Name] &lt;String&gt; [-MaxBandwidth] &lt;Int32&gt; [-BandwidthShare] &lt;String&gt; [-EgressDot1pValue] &lt;Int32&gt; [-IngressDot1pClassMapping] &lt;Array&gt; [-IngressDscpClassMapping] &lt;Array&gt;[ [-RealTime] &lt;SwitchParameter&gt;][ [-Enabled] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET provides the capability to create a new QoS Traffic Classifier Object, which can then be added to either a Logical Interconnect Group, or Logica Interconnect resource.

Only non-FCoE Traffic Classifiers are allowed to be created.  When creating the "Best effort" Traffic Classifier, only the MaxBandwidth parameter is allowed to be modified.


### Parameters

-BandwidthShare &lt;String&gt;<p>
Minimum guaranteed bandwidth for the traffic class.  The % share and the max share for a real time class must be equal and not exceed 50%.
	 
Value between 1 and 100

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EgressDot1pValue &lt;Int32&gt;<p>
Specifies the dot1p priority value to remark for the egressing packets. This provides flexibility to control priority treatment for packets at the next hops based on the remarked dot1p value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enabled &lt;SwitchParameter&gt;<p>
Specify to Enable the traffic class. By default, the class is disabled, even though it is defined.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IngressDot1pClassMapping &lt;Array&gt;<p>
Specify an array of ingress Dot1p values, and to which traffic class it is currently mapped.  Allowed values:

	* 0
	* 1
	* 2
	* 3
	* 4
	* 5
	* 5
	* 6
	* 7

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IngressDscpClassMapping &lt;Array&gt;<p>
Specify an array of DSCP class mappings, per RFC 2475.  Allowed values:

	* DSCP 0, CS0
	* DSCP 10, AF11 
	* DSCP 12, AF12 
	* DSCP 14, AF13 
	* DSCP 8, CS1
	* DSCP 18, AF21
	* DSCP 20, AF22
	* DSCP 22, AF23
	* DSCP 26, AF31
	* DSCP 28, AF32
	* DSCP 30, AF33
	* DSCP 34, AF41
	* DSCP 36, AF42
	* DSCP 38, AF43
	* DSCP 16, CS2 
	* DSCP 24, CS3 
	* DSCP 32, CS4 
	* DSCP 46, EF
	* DSCP 40, CS5 
	* DSCP 48, CS6 
	* DSCP 56, CS7

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaxBandwidth &lt;Int32&gt;<p>
Maximum share the traffic class can use when other traffic classes are not using their guaranteed share.  The max share and the % share for a real time class must be equal and not exceed 50%. For other classes, the max share is greater than or equal to the % share.
 
Value between 1 and 100

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-ClassName]
Name of the QoS Classifier.  Value cannot be "FCoE lossless".  If value is "Best effort", only the MaxBandwidth Parameter is allowed to be modified.

<table><tbody><tr><td>Aliases</td><td>ClassName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RealTime &lt;SwitchParameter&gt;<p>
Specifies whether the traffic class is real time. Only 1 traffic class can be real time. Enabling real time for this class removes the real time flag for other classes.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.QosTrafficClassifier [System.Management.Automation.PSCustomObject]**_

 

QoS Traffic Classifier Object
 
 @{ 
 	qosTrafficClass = [PSCustomObject]@{
 
 		maxBandwidth     = 100;
 		bandwidthShare   = "0";
 		egressDot1pValue = 0;
 		realTime         = $false;
 		className        = "Class";
 		enabled          = $false;
 
     };
 					
 	qosClassificationMapping = [PSCustomObject]@{
 			
 		dot1pClassMapping = @();
 		dscpClassMapping  = @()
 			
 	}
 
 }



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Class1 = New-HPOVQosTrafficClass -Name Class1 -MaxBandwidth 50 -BandwidthShare 20 -ExgressDot1pValue 2 -IngressDot1pClassMapping 5,6 -EgressDscpClassMapping "DSCP 0, CS0","DSCP 10, AF11","DSCP 12, AF12","DSCP 14, AF13"  -Enabled
$Class2 = New-HPOVQosTrafficClass -Name Class2 -MaxBandwidth 10 -BandwidthShare 10 -ExgressDot1pValue 3 -IngressDot1pClassMapping 1 -EgressDscpClassMapping "DSCP 30, AF33","SCP 32, CS4" -Enabled
$TrafficClasses = $Class1,$Class2

</pre>
Create new traffic class objects "Class1" and "Class2", creating a new collection $TrafficClasses.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVQosTrafficClass
<p>
Create QoS Traffic Classifier Object

### SYNTAX
<p>
<pre><code>New-HPOVQosTrafficClass [-Name] &lt;String&gt; [-MaxBandwidth] &lt;Int32&gt; [-BandwidthShare] &lt;String&gt; [-EgressDot1pValue] &lt;Int32&gt; [-IngressDot1pClassMapping] &lt;Array&gt; [-IngressDscpClassMapping] &lt;Array&gt;[ [-RealTime] &lt;SwitchParameter&gt;][ [-Enabled] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET provides the capability to create a new QoS Traffic Classifier Object, which can then be added to either a Logical Interconnect Group, or Logica Interconnect resource.

Only non-FCoE Traffic Classifiers are allowed to be created.  When creating the "Best effort" Traffic Classifier, only the MaxBandwidth parameter is allowed to be modified.


### Parameters

-BandwidthShare &lt;String&gt;<p>
Minimum guaranteed bandwidth for the traffic class.  The % share and the max share for a real time class must be equal and not exceed 50%.
	 
Value between 1 and 100

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EgressDot1pValue &lt;Int32&gt;<p>
Specifies the dot1p priority value to remark for the egressing packets. This provides flexibility to control priority treatment for packets at the next hops based on the remarked dot1p value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enabled &lt;SwitchParameter&gt;<p>
Specify to Enable the traffic class. By default, the class is disabled, even though it is defined.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IngressDot1pClassMapping &lt;Array&gt;<p>
Specify an array of ingress Dot1p values, and to which traffic class it is currently mapped.  Allowed values:

	* 0
	* 1
	* 2
	* 3
	* 4
	* 5
	* 5
	* 6
	* 7

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IngressDscpClassMapping &lt;Array&gt;<p>
Specify an array of DSCP class mappings, per RFC 2475.  Allowed values:

	* DSCP 0, CS0
	* DSCP 10, AF11 
	* DSCP 12, AF12 
	* DSCP 14, AF13 
	* DSCP 8, CS1
	* DSCP 18, AF21
	* DSCP 20, AF22
	* DSCP 22, AF23
	* DSCP 26, AF31
	* DSCP 28, AF32
	* DSCP 30, AF33
	* DSCP 34, AF41
	* DSCP 36, AF42
	* DSCP 38, AF43
	* DSCP 16, CS2 
	* DSCP 24, CS3 
	* DSCP 32, CS4 
	* DSCP 46, EF
	* DSCP 40, CS5 
	* DSCP 48, CS6 
	* DSCP 56, CS7

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaxBandwidth &lt;Int32&gt;<p>
Maximum share the traffic class can use when other traffic classes are not using their guaranteed share.  The max share and the % share for a real time class must be equal and not exceed 50%. For other classes, the max share is greater than or equal to the % share.
 
Value between 1 and 100

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-ClassName]
Name of the QoS Classifier.  Value cannot be "FCoE lossless".  If value is "Best effort", only the MaxBandwidth Parameter is allowed to be modified.

<table><tbody><tr><td>Aliases</td><td>ClassName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RealTime &lt;SwitchParameter&gt;<p>
Specifies whether the traffic class is real time. Only 1 traffic class can be real time. Enabling real time for this class removes the real time flag for other classes.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Networking.QosTrafficClassifier [System.Management.Automation.PSCustomObject]**_

 

QoS Traffic Classifier Object
 
 @{ 
 	qosTrafficClass = [PSCustomObject]@{
 
 		maxBandwidth     = 100;
 		bandwidthShare   = "0";
 		egressDot1pValue = 0;
 		realTime         = $false;
 		className        = "Class";
 		enabled          = $false;
 
     };
 					
 	qosClassificationMapping = [PSCustomObject]@{
 			
 		dot1pClassMapping = @();
 		dscpClassMapping  = @()
 			
 	}
 
 }



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Class1 = New-HPOVQosTrafficClass -Name Class1 -MaxBandwidth 50 -BandwidthShare 20 -ExgressDot1pValue 2 -IngressDot1pClassMapping 5,6 -EgressDscpClassMapping "DSCP 0, CS0","DSCP 10, AF11","DSCP 12, AF12","DSCP 14, AF13"  -Enabled
$Class2 = New-HPOVQosTrafficClass -Name Class2 -MaxBandwidth 10 -BandwidthShare 10 -ExgressDot1pValue 3 -IngressDot1pClassMapping 1 -EgressDscpClassMapping "DSCP 30, AF33","SCP 32, CS4" -Enabled
$TrafficClasses = $Class1,$Class2

</pre>
Create new traffic class objects "Class1" and "Class2", creating a new collection $TrafficClasses.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
