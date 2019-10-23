<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Show-HPOVSanEndpoint
<p>
View Managed SAN FC Endpoints.

### SYNTAX
<p>
<pre><code>Show-HPOVSanEndpoint [-SAN] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVSanEndpoint [-WWN] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will dispay the Managed SAN endpoints, or FC addresses, their node information, and Zone Name.  By default, all SAN endpoints will be returned.  You can filter the results based on Managed SAN resource or WWN address.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SAN &lt;Object&gt;<p>
The Managed SAN Resource Object or Name.  Cannot be combined with the WWN parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WWN &lt;String&gt;<p>
The WWN of the node you are looking for.  Cannot be combined with the SAN parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneview.Storage.ManagedSan**_

 Managed SAN resource from Get-HPOVManagedSan



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Show-HPOVSanEndpoint
Appliance WWN                     Port Type Online SAN Name Zone Name
--------- ---                     --------- ------ -------- ---------
hpov-tot2 10:00:F6:9F:5F:70:00:02 N_Port    False  SAN1_1   Node_1_8
hpov-tot2 20:00:00:02:AC:00:08:DF N_Port    True   SAN1_1   Node_1_8
hpov-tot2 20:00:00:02:AC:00:08:E3 N_Port    True   SAN1_1   Node_1_8
hpov-tot2 10:00:F6:9F:5F:70:00:00 N_Port    False  SAN1_0   Node_1_7
hpov-tot2 20:00:00:02:AC:00:08:E2 N_Port    True   SAN1_0   Node_1_7
hpov-tot2 20:00:00:02:AC:00:08:DE N_Port    True   SAN1_0   Node_1_7
hpov-tot2 AA:AA:AA:AA:AA:AA:AA:AA N_Port    False  SAN1_0   dummy_zone
hpov-tot2 20:00:00:02:AC:00:09:03 N_Port    True   SAN1_0
hpov-tot2 00:00:4A:2B:21:E0:00:1B N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:04 N_Port    True   SAN1_1
hpov-tot2 00:00:4A:2B:21:E0:00:14 N_Port    True   SAN1_0
hpov-tot2 00:00:4A:2B:21:E0:00:0D N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:00 N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:08:FF N_Port    True   SAN1_0
hpov-tot2 00:00:4A:2B:21:E0:00:06 N_Port    True   SAN1_0

</pre>
Return all SAN Endpoints from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVManagedSan SAN1_1 | Show-HPOVSanEndpoint
Appliance WWN                     Port Type Online SAN Name Zone Name
--------- ---                     --------- ------ -------- ---------
hpov-tot2 20:00:00:02:AC:00:08:E3 N_Port    True   SAN1_1   Node_1_8
hpov-tot2 10:00:F6:9F:5F:70:00:02 N_Port    False  SAN1_1   Node_1_8
hpov-tot2 20:00:00:02:AC:00:08:DF N_Port    True   SAN1_1   Node_1_8
hpov-tot2 00:00:4A:2B:21:E0:00:1B N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:04 N_Port    True   SAN1_1
hpov-tot2 00:00:4A:2B:21:E0:00:0D N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:00 N_Port    True   SAN1_1

</pre>
Return all SAN Endpoints for the specified Managed SAN resource from the appliance.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Show-HPOVSanEndpoint -WWN 10:00:F6:9F:5F:70:00:02
Appliance WWN                     Port Type Online SAN Name Zone Name
--------- ---                     --------- ------ -------- ---------
hpov-tot2 10:00:F6:9F:5F:70:00:02 N_Port    False  SAN1_1   Node_1_8

</pre>
Return the specific SAN Endpoint from the appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Show-HPOVSanEndpoint
<p>
View Managed SAN FC Endpoints.

### SYNTAX
<p>
<pre><code>Show-HPOVSanEndpoint [-SAN] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVSanEndpoint [-WWN] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will dispay the Managed SAN endpoints, or FC addresses, their node information, and Zone Name.  By default, all SAN endpoints will be returned.  You can filter the results based on Managed SAN resource or WWN address.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SAN &lt;Object&gt;<p>
The Managed SAN Resource Object or Name.  Cannot be combined with the WWN parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WWN &lt;String&gt;<p>
The WWN of the node you are looking for.  Cannot be combined with the SAN parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneview.Storage.ManagedSan**_

 Managed SAN resource from Get-HPOVManagedSan



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Show-HPOVSanEndpoint
Appliance WWN                     Port Type Online SAN Name Zone Name
--------- ---                     --------- ------ -------- ---------
hpov-tot2 10:00:F6:9F:5F:70:00:02 N_Port    False  SAN1_1   Node_1_8
hpov-tot2 20:00:00:02:AC:00:08:DF N_Port    True   SAN1_1   Node_1_8
hpov-tot2 20:00:00:02:AC:00:08:E3 N_Port    True   SAN1_1   Node_1_8
hpov-tot2 10:00:F6:9F:5F:70:00:00 N_Port    False  SAN1_0   Node_1_7
hpov-tot2 20:00:00:02:AC:00:08:E2 N_Port    True   SAN1_0   Node_1_7
hpov-tot2 20:00:00:02:AC:00:08:DE N_Port    True   SAN1_0   Node_1_7
hpov-tot2 AA:AA:AA:AA:AA:AA:AA:AA N_Port    False  SAN1_0   dummy_zone
hpov-tot2 20:00:00:02:AC:00:09:03 N_Port    True   SAN1_0
hpov-tot2 00:00:4A:2B:21:E0:00:1B N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:04 N_Port    True   SAN1_1
hpov-tot2 00:00:4A:2B:21:E0:00:14 N_Port    True   SAN1_0
hpov-tot2 00:00:4A:2B:21:E0:00:0D N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:00 N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:08:FF N_Port    True   SAN1_0
hpov-tot2 00:00:4A:2B:21:E0:00:06 N_Port    True   SAN1_0

</pre>
Return all SAN Endpoints from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVManagedSan SAN1_1 | Show-HPOVSanEndpoint
Appliance WWN                     Port Type Online SAN Name Zone Name
--------- ---                     --------- ------ -------- ---------
hpov-tot2 20:00:00:02:AC:00:08:E3 N_Port    True   SAN1_1   Node_1_8
hpov-tot2 10:00:F6:9F:5F:70:00:02 N_Port    False  SAN1_1   Node_1_8
hpov-tot2 20:00:00:02:AC:00:08:DF N_Port    True   SAN1_1   Node_1_8
hpov-tot2 00:00:4A:2B:21:E0:00:1B N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:04 N_Port    True   SAN1_1
hpov-tot2 00:00:4A:2B:21:E0:00:0D N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:00 N_Port    True   SAN1_1

</pre>
Return all SAN Endpoints for the specified Managed SAN resource from the appliance.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Show-HPOVSanEndpoint -WWN 10:00:F6:9F:5F:70:00:02
Appliance WWN                     Port Type Online SAN Name Zone Name
--------- ---                     --------- ------ -------- ---------
hpov-tot2 10:00:F6:9F:5F:70:00:02 N_Port    False  SAN1_1   Node_1_8

</pre>
Return the specific SAN Endpoint from the appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Show-HPOVSanEndpoint
<p>
View Managed SAN FC Endpoints.

### SYNTAX
<p>
<pre><code>Show-HPOVSanEndpoint [-SAN] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVSanEndpoint [-WWN] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will dispay the Managed SAN endpoints, or FC addresses, their node information, and Zone Name.  By default, all SAN endpoints will be returned.  You can filter the results based on Managed SAN resource or WWN address.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SAN &lt;Object&gt;<p>
The Managed SAN Resource Object or Name.  Cannot be combined with the WWN parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WWN &lt;String&gt;<p>
The WWN of the node you are looking for.  Cannot be combined with the SAN parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneview.Storage.ManagedSan**_

 Managed SAN resource from Get-HPOVManagedSan



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Show-HPOVSanEndpoint
Appliance WWN                     Port Type Online SAN Name Zone Name
--------- ---                     --------- ------ -------- ---------
hpov-tot2 10:00:F6:9F:5F:70:00:02 N_Port    False  SAN1_1   Node_1_8
hpov-tot2 20:00:00:02:AC:00:08:DF N_Port    True   SAN1_1   Node_1_8
hpov-tot2 20:00:00:02:AC:00:08:E3 N_Port    True   SAN1_1   Node_1_8
hpov-tot2 10:00:F6:9F:5F:70:00:00 N_Port    False  SAN1_0   Node_1_7
hpov-tot2 20:00:00:02:AC:00:08:E2 N_Port    True   SAN1_0   Node_1_7
hpov-tot2 20:00:00:02:AC:00:08:DE N_Port    True   SAN1_0   Node_1_7
hpov-tot2 AA:AA:AA:AA:AA:AA:AA:AA N_Port    False  SAN1_0   dummy_zone
hpov-tot2 20:00:00:02:AC:00:09:03 N_Port    True   SAN1_0
hpov-tot2 00:00:4A:2B:21:E0:00:1B N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:04 N_Port    True   SAN1_1
hpov-tot2 00:00:4A:2B:21:E0:00:14 N_Port    True   SAN1_0
hpov-tot2 00:00:4A:2B:21:E0:00:0D N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:00 N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:08:FF N_Port    True   SAN1_0
hpov-tot2 00:00:4A:2B:21:E0:00:06 N_Port    True   SAN1_0

</pre>
Return all SAN Endpoints from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVManagedSan SAN1_1 | Show-HPOVSanEndpoint
Appliance WWN                     Port Type Online SAN Name Zone Name
--------- ---                     --------- ------ -------- ---------
hpov-tot2 20:00:00:02:AC:00:08:E3 N_Port    True   SAN1_1   Node_1_8
hpov-tot2 10:00:F6:9F:5F:70:00:02 N_Port    False  SAN1_1   Node_1_8
hpov-tot2 20:00:00:02:AC:00:08:DF N_Port    True   SAN1_1   Node_1_8
hpov-tot2 00:00:4A:2B:21:E0:00:1B N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:04 N_Port    True   SAN1_1
hpov-tot2 00:00:4A:2B:21:E0:00:0D N_Port    True   SAN1_1
hpov-tot2 20:00:00:02:AC:00:09:00 N_Port    True   SAN1_1

</pre>
Return all SAN Endpoints for the specified Managed SAN resource from the appliance.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Show-HPOVSanEndpoint -WWN 10:00:F6:9F:5F:70:00:02
Appliance WWN                     Port Type Online SAN Name Zone Name
--------- ---                     --------- ------ -------- ---------
hpov-tot2 10:00:F6:9F:5F:70:00:02 N_Port    False  SAN1_1   Node_1_8

</pre>
Return the specific SAN Endpoint from the appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
