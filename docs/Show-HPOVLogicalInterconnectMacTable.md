<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Show-HPOVLogicalInterconnectMacTable
<p>
Show the MAC Table for Logical Interconnect resource(s).

### SYNTAX
<p>
<pre><code>Show-HPOVLogicalInterconnectMacTable [-InputObject] &lt;Object&gt; [-network] &lt;String&gt; [-Export] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVLogicalInterconnectMacTable [-InputObject] &lt;Object&gt; [-network] &lt;String&gt; [-Export] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVLogicalInterconnectMacTable [-InputObject] &lt;Object&gt; [-MacAddress] &lt;String&gt; [-Export] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help show the MAC Table of Logical Interconnect resources.  The REST API currently limits the first 100 MAC addresses from the MAC table, regardless of the number of MAC Addresses learned in the table.

Use the -Network parameter to specify the Network Name to display learned MAC Addresses.  You can export the results to a CSV file, by providing the full path and filename to export to, using the -ExportFile parameter.

To display the results in a formatted list, use the -List parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Aliases [-x, -exportFile]
Export to a CSV, provide the full path and filename.

<table><tbody><tr><td>Aliases</td><td>x, ExportFile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name, -li, -LogicalInterconnect]
The Name, URI, Logical Interconnect Resource or an array of either to display the MAC Address tables from.

<table><tbody><tr><td>Aliases</td><td>name, li, LogicalInterconnect</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MacAddress &lt;String&gt;<p>
Provide a MAC Address to locate in the MAC Table.

<table><tbody><tr><td>Aliases</td><td>mac</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -network &lt;String&gt;<p>
Provide the Network Name to filter the MAC Table results for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Collections.ArrayList**_

 An Array of Logical Interconnect resource URI"s, Names or Objects

 _**System.Management.Automation.PSCustomObject**_

 Logical Interconnect Resource Object



### Return Values

_**System.Collections.ArrayList**_

 

Collection of MAC Address Table entries



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Show-HPOVLogicalInterconnectMacTable
</pre>
Return as many MAC Addresses allowed by the API for all Logical Interconnect resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Show-HPOVLogicalInterconnectMacTable -network VLAN100
Enclosure Interconnect    Interface Address           Type    Network   VLAN
--------- ------------    --------- -------           ----    -------   ----
Encl1      interconnect 2 LAG 27    38:22:D6:35:5A:62 Learned VLAN100  30
Encl1      interconnect 1 LAG 26    38:22:D6:35:5A:62 Learned VLAN100  30
Encl1      interconnect 1 LAG 26    78:AC:C0:72:E5:D9 Learned VLAN100  30

</pre>
Display all available MAC Addresses learned in "VLAN100" network in all Logical Interconnect resources, and display in a formatted table.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Show-HPOVLogicalInterconnectMacTable -network VLAN100 -exportfile C:\reports\Encl1-LI_vlan100_mactable.csv
</pre>
Retrieve the available MAC Addresses learned in "VLAN100" network, and export to C:\reports\Encl1-LI_vlan100_mactable.csv



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Show-HPOVLogicalInterconnectMacTable
<p>
Show the MAC Table for Logical Interconnect resource(s).

### SYNTAX
<p>
<pre><code>Show-HPOVLogicalInterconnectMacTable [-InputObject] &lt;Object&gt; [-network] &lt;String&gt; [-Export] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVLogicalInterconnectMacTable [-InputObject] &lt;Object&gt; [-network] &lt;String&gt; [-Export] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVLogicalInterconnectMacTable [-InputObject] &lt;Object&gt; [-MacAddress] &lt;String&gt; [-Export] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help show the MAC Table of Logical Interconnect resources.  The REST API currently limits the first 100 MAC addresses from the MAC table, regardless of the number of MAC Addresses learned in the table.

Use the -Network parameter to specify the Network Name to display learned MAC Addresses.  You can export the results to a CSV file, by providing the full path and filename to export to, using the -ExportFile parameter.

To display the results in a formatted list, use the -List parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Aliases [-x, -exportFile]
Export to a CSV, provide the full path and filename.

<table><tbody><tr><td>Aliases</td><td>x, ExportFile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name, -li, -LogicalInterconnect]
The Name, URI, Logical Interconnect Resource or an array of either to display the MAC Address tables from.

<table><tbody><tr><td>Aliases</td><td>name, li, LogicalInterconnect</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MacAddress &lt;String&gt;<p>
Provide a MAC Address to locate in the MAC Table.

<table><tbody><tr><td>Aliases</td><td>mac</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -network &lt;String&gt;<p>
Provide the Network Name to filter the MAC Table results for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Collections.ArrayList**_

 An Array of Logical Interconnect resource URI"s, Names or Objects

 _**System.Management.Automation.PSCustomObject**_

 Logical Interconnect Resource Object



### Return Values

_**System.Collections.ArrayList**_

 

Collection of MAC Address Table entries



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Show-HPOVLogicalInterconnectMacTable
</pre>
Return as many MAC Addresses allowed by the API for all Logical Interconnect resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Show-HPOVLogicalInterconnectMacTable -network VLAN100
Enclosure Interconnect    Interface Address           Type    Network   VLAN
--------- ------------    --------- -------           ----    -------   ----
Encl1      interconnect 2 LAG 27    38:22:D6:35:5A:62 Learned VLAN100  30
Encl1      interconnect 1 LAG 26    38:22:D6:35:5A:62 Learned VLAN100  30
Encl1      interconnect 1 LAG 26    78:AC:C0:72:E5:D9 Learned VLAN100  30

</pre>
Display all available MAC Addresses learned in "VLAN100" network in all Logical Interconnect resources, and display in a formatted table.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Show-HPOVLogicalInterconnectMacTable -network VLAN100 -exportfile C:\reports\Encl1-LI_vlan100_mactable.csv
</pre>
Retrieve the available MAC Addresses learned in "VLAN100" network, and export to C:\reports\Encl1-LI_vlan100_mactable.csv



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Show-HPOVLogicalInterconnectMacTable
<p>
Show the MAC Table for Logical Interconnect resource(s).

### SYNTAX
<p>
<pre><code>Show-HPOVLogicalInterconnectMacTable [-InputObject] &lt;Object&gt; [-network] &lt;String&gt; [-Export] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVLogicalInterconnectMacTable [-InputObject] &lt;Object&gt; [-network] &lt;String&gt; [-Export] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Show-HPOVLogicalInterconnectMacTable [-InputObject] &lt;Object&gt; [-MacAddress] &lt;String&gt; [-Export] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will help show the MAC Table of Logical Interconnect resources.  The REST API currently limits the first 100 MAC addresses from the MAC table, regardless of the number of MAC Addresses learned in the table.

Use the -Network parameter to specify the Network Name to display learned MAC Addresses.  You can export the results to a CSV file, by providing the full path and filename to export to, using the -ExportFile parameter.

To display the results in a formatted list, use the -List parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Aliases [-x, -exportFile]
Export to a CSV, provide the full path and filename.

<table><tbody><tr><td>Aliases</td><td>x, ExportFile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-name, -li, -LogicalInterconnect]
The Name, URI, Logical Interconnect Resource or an array of either to display the MAC Address tables from.

<table><tbody><tr><td>Aliases</td><td>name, li, LogicalInterconnect</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MacAddress &lt;String&gt;<p>
Provide a MAC Address to locate in the MAC Table.

<table><tbody><tr><td>Aliases</td><td>mac</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -network &lt;String&gt;<p>
Provide the Network Name to filter the MAC Table results for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Collections.ArrayList**_

 An Array of Logical Interconnect resource URI"s, Names or Objects

 _**System.Management.Automation.PSCustomObject**_

 Logical Interconnect Resource Object



### Return Values

_**System.Collections.ArrayList**_

 

Collection of MAC Address Table entries



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Show-HPOVLogicalInterconnectMacTable
</pre>
Return as many MAC Addresses allowed by the API for all Logical Interconnect resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Show-HPOVLogicalInterconnectMacTable -network VLAN100
Enclosure Interconnect    Interface Address           Type    Network   VLAN
--------- ------------    --------- -------           ----    -------   ----
Encl1      interconnect 2 LAG 27    38:22:D6:35:5A:62 Learned VLAN100  30
Encl1      interconnect 1 LAG 26    38:22:D6:35:5A:62 Learned VLAN100  30
Encl1      interconnect 1 LAG 26    78:AC:C0:72:E5:D9 Learned VLAN100  30

</pre>
Display all available MAC Addresses learned in "VLAN100" network in all Logical Interconnect resources, and display in a formatted table.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Show-HPOVLogicalInterconnectMacTable -network VLAN100 -exportfile C:\reports\Encl1-LI_vlan100_mactable.csv
</pre>
Retrieve the available MAC Addresses learned in "VLAN100" network, and export to C:\reports\Encl1-LI_vlan100_mactable.csv



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
