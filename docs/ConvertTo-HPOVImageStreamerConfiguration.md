<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## ConvertTo-HPOVImageStreamerConfiguration
<p>
Convert Logical Enclosure to support HPE Image Streamer.

### SYNTAX
<p>
<pre><code>ConvertTo-HPOVImageStreamerConfiguration [-InputObject] &lt;Object&gt; [-UplinkSetName] &lt;Name&gt; [-DeploymentNetwork] &lt;Object&gt;[ [-UplinkPorts] &lt;Array&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Convert Logical Enclosure and associated Enclosure Group and Logical Interconnect Group to support Internal Image Streamer configuration.  HPE Synergy Virtual Connect Logical Interconnect Group must reside in Bays 3 and 6 in order to be reconfigured.

When using this Cmdlet, a service outage will ocurr, as the Logical Enclosure will need to be recreated.  This means Server Profiles will be unassigned, Logical Enclosure removed then recreated, and then Server Profiles reassigned to their original location.  If the Logical Enclousre contains HPE Synergy SAS Logical Interconnects, data loss may ocurr, as the Server Profiles may not be assigned in the right order, which would cause disk selection to assign different physical disks.  Please make sure all data is backed up prior to migration.  By Default, the Cmdlet will not migrate a Logical Enclosure if SAS Logical Interconnects are found.  To override, use the -IgnoreSasLogicalInterconnects switch, which again may cause loss of data.

Any associated Enclosure Groups with the Virtual Connect Ethernet Logical Interconnec Group will also be modified.  If this is not intended, you should first remove the Logical Interconnect Group from the Enclosure Group before executing this Cmdlet.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DeploymentNetwork &lt;Object&gt;<p>
Provide the Deployment Network object.  Must be associated with a valid IPv4 Subnet that is within the same subnet as the Composer.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Provide the Logical Enclosure resource object or name that will be recreated.

<table><tbody><tr><td>Aliases</td><td>EnclosureGroup, EG</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UplinkPorts &lt;Array&gt;<p>
Specify 4 redundant Uplink Ports.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@("Enclosure1:Bay3:Q1.1","Enclosure1:Bay3:Q2.1","Enclosure2:Bay6:Q1.1","Enclosure2:Bay6:Q2.1")</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UplinkSetName &lt;Name&gt;<p>
The Uplink Set Name to be added.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]**_

 HPE Synergy Logical Enclosure to convert.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

If the Logical Enclosure cannot be removed or re-created, as PSCustomObject with original Server Profile location is provided.  Object properties are Name, ProfileUri, ServerSerialNumber.

 _**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task for each Server Profile that will be re-assigned for the caller to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LE = Get-HPOVLogicalEnclosure -Name MyLE1 -ErrorAction Stop
$UplinkPorts = @("Enclosure1:Bay3:Q3.1","Enclosure1:Bay3:Q4.1","Enclosure2:Bay6:Q3.1","Enclosure2:Bay6:Q4.1")
$UplinkSetName = "ImageStreamer UplinkSet"
$DeploymentNetwork = Get-HPOVNetwork -Name "ImageStreamer Deployment" -ErrorAction Stop
ConvertTo-HPOVImageStreamerConfiguration -InputObject $le -UplinkSetName $UplinkSetName -UplinkPorts $UplinkPorts -DeploymentNetwork $DeploymentNetwork -IgnoreSasLogicalInterconnects</pre>
Convert the MyLE1 Logical Enclosure to support Image Streamer, specifying uplink ports, OS Deployment Network and to ignore found SAS Logical Interconnects if found.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## ConvertTo-HPOVImageStreamerConfiguration
<p>
Convert Logical Enclosure to support HPE Image Streamer.

### SYNTAX
<p>
<pre><code>ConvertTo-HPOVImageStreamerConfiguration [-InputObject] &lt;Object&gt; [-UplinkSetName] &lt;Name&gt; [-DeploymentNetwork] &lt;Object&gt;[ [-UplinkPorts] &lt;Array&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Convert Logical Enclosure and associated Enclosure Group and Logical Interconnect Group to support Internal Image Streamer configuration.  HPE Synergy Virtual Connect Logical Interconnect Group must reside in Bays 3 and 6 in order to be reconfigured.

When using this Cmdlet, a service outage will ocurr, as the Logical Enclosure will need to be recreated.  This means Server Profiles will be unassigned, Logical Enclosure removed then recreated, and then Server Profiles reassigned to their original location.  If the Logical Enclousre contains HPE Synergy SAS Logical Interconnects, data loss may ocurr, as the Server Profiles may not be assigned in the right order, which would cause disk selection to assign different physical disks.  Please make sure all data is backed up prior to migration.  By Default, the Cmdlet will not migrate a Logical Enclosure if SAS Logical Interconnects are found.  To override, use the -IgnoreSasLogicalInterconnects switch, which again may cause loss of data.

Any associated Enclosure Groups with the Virtual Connect Ethernet Logical Interconnec Group will also be modified.  If this is not intended, you should first remove the Logical Interconnect Group from the Enclosure Group before executing this Cmdlet.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DeploymentNetwork &lt;Object&gt;<p>
Provide the Deployment Network object.  Must be associated with a valid IPv4 Subnet that is within the same subnet as the Composer.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Provide the Logical Enclosure resource object or name that will be recreated.

<table><tbody><tr><td>Aliases</td><td>EnclosureGroup, EG</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UplinkPorts &lt;Array&gt;<p>
Specify 4 redundant Uplink Ports.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@("Enclosure1:Bay3:Q1.1","Enclosure1:Bay3:Q2.1","Enclosure2:Bay6:Q1.1","Enclosure2:Bay6:Q2.1")</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UplinkSetName &lt;Name&gt;<p>
The Uplink Set Name to be added.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]**_

 HPE Synergy Logical Enclosure to convert.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

If the Logical Enclosure cannot be removed or re-created, as PSCustomObject with original Server Profile location is provided.  Object properties are Name, ProfileUri, ServerSerialNumber.

 _**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task for each Server Profile that will be re-assigned for the caller to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LE = Get-HPOVLogicalEnclosure -Name MyLE1 -ErrorAction Stop
$UplinkPorts = @("Enclosure1:Bay3:Q3.1","Enclosure1:Bay3:Q4.1","Enclosure2:Bay6:Q3.1","Enclosure2:Bay6:Q4.1")
$UplinkSetName = "ImageStreamer UplinkSet"
$DeploymentNetwork = Get-HPOVNetwork -Name "ImageStreamer Deployment" -ErrorAction Stop
ConvertTo-HPOVImageStreamerConfiguration -InputObject $le -UplinkSetName $UplinkSetName -UplinkPorts $UplinkPorts -DeploymentNetwork $DeploymentNetwork -IgnoreSasLogicalInterconnects</pre>
Convert the MyLE1 Logical Enclosure to support Image Streamer, specifying uplink ports, OS Deployment Network and to ignore found SAS Logical Interconnects if found.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## ConvertTo-HPOVImageStreamerConfiguration
<p>
Convert Logical Enclosure to support HPE Image Streamer.

### SYNTAX
<p>
<pre><code>ConvertTo-HPOVImageStreamerConfiguration [-InputObject] &lt;Object&gt; [-UplinkSetName] &lt;Name&gt; [-DeploymentNetwork] &lt;Object&gt;[ [-UplinkPorts] &lt;Array&gt;][ [-ApplianceConnection] &lt;Object&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Convert Logical Enclosure and associated Enclosure Group and Logical Interconnect Group to support Internal Image Streamer configuration.  HPE Synergy Virtual Connect Logical Interconnect Group must reside in Bays 3 and 6 in order to be reconfigured.

When using this Cmdlet, a service outage will ocurr, as the Logical Enclosure will need to be recreated.  This means Server Profiles will be unassigned, Logical Enclosure removed then recreated, and then Server Profiles reassigned to their original location.  If the Logical Enclousre contains HPE Synergy SAS Logical Interconnects, data loss may ocurr, as the Server Profiles may not be assigned in the right order, which would cause disk selection to assign different physical disks.  Please make sure all data is backed up prior to migration.  By Default, the Cmdlet will not migrate a Logical Enclosure if SAS Logical Interconnects are found.  To override, use the -IgnoreSasLogicalInterconnects switch, which again may cause loss of data.

Any associated Enclosure Groups with the Virtual Connect Ethernet Logical Interconnec Group will also be modified.  If this is not intended, you should first remove the Logical Interconnect Group from the Enclosure Group before executing this Cmdlet.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DeploymentNetwork &lt;Object&gt;<p>
Provide the Deployment Network object.  Must be associated with a valid IPv4 Subnet that is within the same subnet as the Composer.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Provide the Logical Enclosure resource object or name that will be recreated.

<table><tbody><tr><td>Aliases</td><td>EnclosureGroup, EG</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UplinkPorts &lt;Array&gt;<p>
Specify 4 redundant Uplink Ports.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>@("Enclosure1:Bay3:Q1.1","Enclosure1:Bay3:Q2.1","Enclosure2:Bay6:Q1.1","Enclosure2:Bay6:Q2.1")</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UplinkSetName &lt;Name&gt;<p>
The Uplink Set Name to be added.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.LogicalEnclosure [System.Management.Automation.PSCustomObject]**_

 HPE Synergy Logical Enclosure to convert.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

If the Logical Enclosure cannot be removed or re-created, as PSCustomObject with original Server Profile location is provided.  Object properties are Name, ProfileUri, ServerSerialNumber.

 _**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task for each Server Profile that will be re-assigned for the caller to monitor.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LE = Get-HPOVLogicalEnclosure -Name MyLE1 -ErrorAction Stop
$UplinkPorts = @("Enclosure1:Bay3:Q3.1","Enclosure1:Bay3:Q4.1","Enclosure2:Bay6:Q3.1","Enclosure2:Bay6:Q4.1")
$UplinkSetName = "ImageStreamer UplinkSet"
$DeploymentNetwork = Get-HPOVNetwork -Name "ImageStreamer Deployment" -ErrorAction Stop
ConvertTo-HPOVImageStreamerConfiguration -InputObject $le -UplinkSetName $UplinkSetName -UplinkPorts $UplinkPorts -DeploymentNetwork $DeploymentNetwork -IgnoreSasLogicalInterconnects</pre>
Convert the MyLE1 Logical Enclosure to support Image Streamer, specifying uplink ports, OS Deployment Network and to ignore found SAS Logical Interconnects if found.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
