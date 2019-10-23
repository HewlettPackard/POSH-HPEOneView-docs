<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVSanZone
<p>
View Managed SAN Zones.

### SYNTAX
<p>
<pre><code>Get-HPOVSanZone[ [-ManagedSan] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will dispay the Managed SAN Zone details, which include Zone Name, state, status, Managed SAN and Alias members with their WWN(s).  By default, all SAN Zones will be returned.  You can filter the results based on Managed SAN resource.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ManagedSan &lt;Object&gt;<p>
The Managed SAN Resource Object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneview.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

 Managed SAN resource from Get-HPOVManagedSan



### Return Values

_**HPOneView.Storage.ManagedSan.Zone [System.Management.Automation.PSCustomObject]**_

 

Managed SAN Zone resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSanZone
Appliance SAN    Name       State   Status Members
--------- ---    ----       -----   ------ -------
appliance SAN1_1 dummy_zone Managed OK
appliance SAN1_0 dummy_zone Managed OK
appliance SAN1_1 Node_1_8   Managed OK     {Target_ThreePAR72004506_0_2_2, Initiator_Node_1_8, Target_ThreePAR72004506_1_2_2}
appliance SAN1_0 Node_1_7   Managed OK     {Initiator_Node_1_7, Target_ThreePAR72004506_0_2_1, Target_ThreePAR72004506_1_2_1}

</pre>
Return all SAN Zones from the appliance(s).


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVManagedSan SAN1_0 | Get-HPOVSanZone
Appliance SAN    Name       State   Status Members
--------- ---    ----       -----   ------ -------
appliance SAN1_0 dummy_zone Managed OK
appliance SAN1_0 Node_1_7   Managed OK     {Initiator_Node_1_7, Target_ThreePAR72004506_0_2_1, Target_ThreePAR72004506_1_2_1}

</pre>
Return the specific SAN Zone for the specified Managed SAN resource from the appliance.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVManagedSan SAN1_0 | Get-HPOVSanZone
$Zones = Get-HPOVManagedSan SAN1_0 | Get-HPOVSanZone
$Zones | ? Name -eq "Node_1_7"

Appliance SAN    Name     State   Status Members
--------- ---    ----     -----   ------ -------
hpov-tot2 SAN1_0 Node_1_7 Managed OK     {Initiator_Node_1_7, Target_ThreePAR72004506_0_2_1, Target_ThreePAR72004506_1_2_1}

($Zones | ? Name -eq "Node_1_7").members

Name                          WWN
----                          ---
Initiator_Node_1_7            {10:00:F6:9F:5F:70:00:00}
Target_ThreePAR72004506_0_2_1 {20:00:00:02:AC:00:08:DE}
Target_ThreePAR72004506_1_2_1 {20:00:00:02:AC:00:08:E2}

</pre>
Get the Zone information from the specific Managed SAN, then display the associated aliases including their WWNs.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVSanZone
<p>
View Managed SAN Zones.

### SYNTAX
<p>
<pre><code>Get-HPOVSanZone[ [-ManagedSan] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will dispay the Managed SAN Zone details, which include Zone Name, state, status, Managed SAN and Alias members with their WWN(s).  By default, all SAN Zones will be returned.  You can filter the results based on Managed SAN resource.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ManagedSan &lt;Object&gt;<p>
The Managed SAN Resource Object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneview.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

 Managed SAN resource from Get-HPOVManagedSan



### Return Values

_**HPOneView.Storage.ManagedSan.Zone [System.Management.Automation.PSCustomObject]**_

 

Managed SAN Zone resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSanZone
Appliance SAN    Name       State   Status Members
--------- ---    ----       -----   ------ -------
appliance SAN1_1 dummy_zone Managed OK
appliance SAN1_0 dummy_zone Managed OK
appliance SAN1_1 Node_1_8   Managed OK     {Target_ThreePAR72004506_0_2_2, Initiator_Node_1_8, Target_ThreePAR72004506_1_2_2}
appliance SAN1_0 Node_1_7   Managed OK     {Initiator_Node_1_7, Target_ThreePAR72004506_0_2_1, Target_ThreePAR72004506_1_2_1}

</pre>
Return all SAN Zones from the appliance(s).


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVManagedSan SAN1_0 | Get-HPOVSanZone
Appliance SAN    Name       State   Status Members
--------- ---    ----       -----   ------ -------
appliance SAN1_0 dummy_zone Managed OK
appliance SAN1_0 Node_1_7   Managed OK     {Initiator_Node_1_7, Target_ThreePAR72004506_0_2_1, Target_ThreePAR72004506_1_2_1}

</pre>
Return the specific SAN Zone for the specified Managed SAN resource from the appliance.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVManagedSan SAN1_0 | Get-HPOVSanZone
$Zones = Get-HPOVManagedSan SAN1_0 | Get-HPOVSanZone
$Zones | ? Name -eq "Node_1_7"

Appliance SAN    Name     State   Status Members
--------- ---    ----     -----   ------ -------
hpov-tot2 SAN1_0 Node_1_7 Managed OK     {Initiator_Node_1_7, Target_ThreePAR72004506_0_2_1, Target_ThreePAR72004506_1_2_1}

($Zones | ? Name -eq "Node_1_7").members

Name                          WWN
----                          ---
Initiator_Node_1_7            {10:00:F6:9F:5F:70:00:00}
Target_ThreePAR72004506_0_2_1 {20:00:00:02:AC:00:08:DE}
Target_ThreePAR72004506_1_2_1 {20:00:00:02:AC:00:08:E2}

</pre>
Get the Zone information from the specific Managed SAN, then display the associated aliases including their WWNs.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVSanZone
<p>
View Managed SAN Zones.

### SYNTAX
<p>
<pre><code>Get-HPOVSanZone[ [-ManagedSan] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will dispay the Managed SAN Zone details, which include Zone Name, state, status, Managed SAN and Alias members with their WWN(s).  By default, all SAN Zones will be returned.  You can filter the results based on Managed SAN resource.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ManagedSan &lt;Object&gt;<p>
The Managed SAN Resource Object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneview.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

 Managed SAN resource from Get-HPOVManagedSan



### Return Values

_**HPOneView.Storage.ManagedSan.Zone [System.Management.Automation.PSCustomObject]**_

 

Managed SAN Zone resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSanZone
Appliance SAN    Name       State   Status Members
--------- ---    ----       -----   ------ -------
appliance SAN1_1 dummy_zone Managed OK
appliance SAN1_0 dummy_zone Managed OK
appliance SAN1_1 Node_1_8   Managed OK     {Target_ThreePAR72004506_0_2_2, Initiator_Node_1_8, Target_ThreePAR72004506_1_2_2}
appliance SAN1_0 Node_1_7   Managed OK     {Initiator_Node_1_7, Target_ThreePAR72004506_0_2_1, Target_ThreePAR72004506_1_2_1}

</pre>
Return all SAN Zones from the appliance(s).


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVManagedSan SAN1_0 | Get-HPOVSanZone
Appliance SAN    Name       State   Status Members
--------- ---    ----       -----   ------ -------
appliance SAN1_0 dummy_zone Managed OK
appliance SAN1_0 Node_1_7   Managed OK     {Initiator_Node_1_7, Target_ThreePAR72004506_0_2_1, Target_ThreePAR72004506_1_2_1}

</pre>
Return the specific SAN Zone for the specified Managed SAN resource from the appliance.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVManagedSan SAN1_0 | Get-HPOVSanZone
$Zones = Get-HPOVManagedSan SAN1_0 | Get-HPOVSanZone
$Zones | ? Name -eq "Node_1_7"

Appliance SAN    Name     State   Status Members
--------- ---    ----     -----   ------ -------
hpov-tot2 SAN1_0 Node_1_7 Managed OK     {Initiator_Node_1_7, Target_ThreePAR72004506_0_2_1, Target_ThreePAR72004506_1_2_1}

($Zones | ? Name -eq "Node_1_7").members

Name                          WWN
----                          ---
Initiator_Node_1_7            {10:00:F6:9F:5F:70:00:00}
Target_ThreePAR72004506_0_2_1 {20:00:00:02:AC:00:08:DE}
Target_ThreePAR72004506_1_2_1 {20:00:00:02:AC:00:08:E2}

</pre>
Get the Zone information from the specific Managed SAN, then display the associated aliases including their WWNs.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
