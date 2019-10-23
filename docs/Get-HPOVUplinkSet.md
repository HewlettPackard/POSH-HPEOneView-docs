<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVUplinkSet
<p>
Retreive Uplink Set resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVUplinkSet [-Name] &lt;String&gt; [-LogicalInterconnect] &lt;Object&gt;[ [-Report] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-ExportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVUplinkSet [-LogicalInterconnect] &lt;Object&gt; [-Type] &lt;String&gt;[ [-Report] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-ExportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will retrieve the list of all Uplink Sets or specific by the name.  The cmdlet will only display provisioned Uplink Sets that are members of a Logical Interconnect resource.  To view Uplink Sets of a Logical Interconnect Group, use the Get-HPOVLogicalInterconnectGroup CMDLET.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ExportFile &lt;String&gt;<p>
Export the found Uplink Set resource objects to JSON files in the specified directory.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalInterconnect &lt;Object&gt;<p>
Aliases [-LiName]
Name of the Logical Interconnect to show associated Uplink Set.

<table><tbody><tr><td>Aliases</td><td>liname</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of Uplink Set

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Report &lt;SwitchParameter&gt;<p>
Generate a report of the defined Uplink Sets.  Includes Uplink Set type, networks, redundancy report, and assigned uplink ports.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify the Uplink Set Type to display.  Will display all Uplink Sets of the type provided.  Allowed values:

	* Ethernet
	* FibreChannel

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Single Uplink Set

 _**System.Collections.ArrayList**_

 

Multiple Uplink Sets

 _**Collection of Uplink Sets**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$UplinkSets = Get-HPOVUplinkSet
</pre>
Get list of all Uplink Sets.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVUplinkSet -name "Production Networks"
</pre>
Get the "Production Networks" Uplink Set(s).


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVUplinkSet -name "Production Networks" -report
</pre>
Get the "Production Networks" Uplink Set(s), and generate a report.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVUplinkSet -name "Production Networks" -liname "Encl1-LI" -report
</pre>
Get the "Production Networks" Uplink Set that is associated with "Encl1-LI" Logical Interconnect and generate a report.



### Related Links

* [New-HPOVUplinkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUplinkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVUplinkSet
<p>
Retreive Uplink Set resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVUplinkSet [-Name] &lt;String&gt; [-LogicalInterconnect] &lt;Object&gt;[ [-Report] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-ExportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVUplinkSet [-LogicalInterconnect] &lt;Object&gt; [-Type] &lt;String&gt;[ [-Report] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-ExportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will retrieve the list of all Uplink Sets or specific by the name.  The cmdlet will only display provisioned Uplink Sets that are members of a Logical Interconnect resource.  To view Uplink Sets of a Logical Interconnect Group, use the Get-HPOVLogicalInterconnectGroup CMDLET.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ExportFile &lt;String&gt;<p>
Export the found Uplink Set resource objects to JSON files in the specified directory.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalInterconnect &lt;Object&gt;<p>
Aliases [-LiName]
Name of the Logical Interconnect to show associated Uplink Set.

<table><tbody><tr><td>Aliases</td><td>liname</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of Uplink Set

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Report &lt;SwitchParameter&gt;<p>
Generate a report of the defined Uplink Sets.  Includes Uplink Set type, networks, redundancy report, and assigned uplink ports.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify the Uplink Set Type to display.  Will display all Uplink Sets of the type provided.  Allowed values:

	* Ethernet
	* FibreChannel

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Single Uplink Set

 _**System.Collections.ArrayList**_

 

Multiple Uplink Sets

 _**Collection of Uplink Sets**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$UplinkSets = Get-HPOVUplinkSet
</pre>
Get list of all Uplink Sets.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVUplinkSet -name "Production Networks"
</pre>
Get the "Production Networks" Uplink Set(s).


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVUplinkSet -name "Production Networks" -report
</pre>
Get the "Production Networks" Uplink Set(s), and generate a report.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVUplinkSet -name "Production Networks" -liname "Encl1-LI" -report
</pre>
Get the "Production Networks" Uplink Set that is associated with "Encl1-LI" Logical Interconnect and generate a report.



### Related Links

* [New-HPOVUplinkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUplinkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVUplinkSet
<p>
Retreive Uplink Set resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVUplinkSet [-Name] &lt;String&gt; [-LogicalInterconnect] &lt;Object&gt;[ [-Report] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-ExportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVUplinkSet [-LogicalInterconnect] &lt;Object&gt; [-Type] &lt;String&gt;[ [-Report] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [-ExportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will retrieve the list of all Uplink Sets or specific by the name.  The cmdlet will only display provisioned Uplink Sets that are members of a Logical Interconnect resource.  To view Uplink Sets of a Logical Interconnect Group, use the Get-HPOVLogicalInterconnectGroup CMDLET.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ExportFile &lt;String&gt;<p>
Export the found Uplink Set resource objects to JSON files in the specified directory.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalInterconnect &lt;Object&gt;<p>
Aliases [-LiName]
Name of the Logical Interconnect to show associated Uplink Set.

<table><tbody><tr><td>Aliases</td><td>liname</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of Uplink Set

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Report &lt;SwitchParameter&gt;<p>
Generate a report of the defined Uplink Sets.  Includes Uplink Set type, networks, redundancy report, and assigned uplink ports.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify the Uplink Set Type to display.  Will display all Uplink Sets of the type provided.  Allowed values:

	* Ethernet
	* FibreChannel

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Single Uplink Set

 _**System.Collections.ArrayList**_

 

Multiple Uplink Sets

 _**Collection of Uplink Sets**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$UplinkSets = Get-HPOVUplinkSet
</pre>
Get list of all Uplink Sets.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVUplinkSet -name "Production Networks"
</pre>
Get the "Production Networks" Uplink Set(s).


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVUplinkSet -name "Production Networks" -report
</pre>
Get the "Production Networks" Uplink Set(s), and generate a report.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVUplinkSet -name "Production Networks" -liname "Encl1-LI" -report
</pre>
Get the "Production Networks" Uplink Set that is associated with "Encl1-LI" Logical Interconnect and generate a report.



### Related Links

* [New-HPOVUplinkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUplinkSet)


***
<div align=right><a href="#Top">Top</a></div>
