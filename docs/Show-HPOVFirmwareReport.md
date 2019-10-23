<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Show-HPOVFirmwareReport
<p>
Generate firmware report

### SYNTAX
<p>
<pre><code>Show-HPOVFirmwareReport [-InputObject] &lt;Object&gt; [-Baseline] &lt;Object&gt; [-Location] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Export] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Generate firmware report


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Baseline &lt;Object&gt;<p>
Resource Object or Name of the Firmware Baseline to report against what is installed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;SwitchParameter&gt;<p>
Indicate to export the report to a CSV file.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The managed resource object to generate the report for.  Allowed resource object types are:

	* EG (Enclosure Group)
	* Enclosure
	* Server
	* Interconnect

By specifying an Enclosure Group, all associated Enclosures will be included in the report.

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
File system location where to save the exported report to.

Default: Current Working Directory

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(get-location).Path</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.EnclosureGroup or HPOneView.Enclosure or HPOneView.ServerHardware or HPOneView.Networking.Interconnect**_

 HPE OneView Managed Resource object



### Return Values

_**System.Object**_

 

Firmware report



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEnclosureGroup "Production EG" | Show-HPOVFirmwareReport</pre>
Display a firmware report of all associated enclosures to "Production EG" Enclosure Group currently managed by the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Baseline = Get-HPOVBaseline -SppName "Production EG"
Get-HPOVEnclosureGroup "Production EG" | Show-HPOVFirmwareReport -Baseline $Baseline</pre>
Display a firmware report of the "Production EG" resource, and components (servers, interconnects and Onboard Administrators) currently managed by the appliance, and compare to the provided Baseline.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Show-HPOVFirmwareReport
<p>
Generate firmware report

### SYNTAX
<p>
<pre><code>Show-HPOVFirmwareReport [-InputObject] &lt;Object&gt; [-Baseline] &lt;Object&gt; [-Location] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Export] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Generate firmware report


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Baseline &lt;Object&gt;<p>
Resource Object or Name of the Firmware Baseline to report against what is installed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;SwitchParameter&gt;<p>
Indicate to export the report to a CSV file.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The managed resource object to generate the report for.  Allowed resource object types are:

	* EG (Enclosure Group)
	* Enclosure
	* Server
	* Interconnect

By specifying an Enclosure Group, all associated Enclosures will be included in the report.

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
File system location where to save the exported report to.

Default: Current Working Directory

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(get-location).Path</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.EnclosureGroup or HPOneView.Enclosure or HPOneView.ServerHardware or HPOneView.Networking.Interconnect**_

 HPE OneView Managed Resource object



### Return Values

_**System.Object**_

 

Firmware report



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEnclosureGroup "Production EG" | Show-HPOVFirmwareReport</pre>
Display a firmware report of all associated enclosures to "Production EG" Enclosure Group currently managed by the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Baseline = Get-HPOVBaseline -SppName "Production EG"
Get-HPOVEnclosureGroup "Production EG" | Show-HPOVFirmwareReport -Baseline $Baseline</pre>
Display a firmware report of the "Production EG" resource, and components (servers, interconnects and Onboard Administrators) currently managed by the appliance, and compare to the provided Baseline.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Show-HPOVFirmwareReport
<p>
Generate firmware report

### SYNTAX
<p>
<pre><code>Show-HPOVFirmwareReport [-InputObject] &lt;Object&gt; [-Baseline] &lt;Object&gt; [-Location] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Export] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Generate firmware report


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Baseline &lt;Object&gt;<p>
Resource Object or Name of the Firmware Baseline to report against what is installed.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;SwitchParameter&gt;<p>
Indicate to export the report to a CSV file.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The managed resource object to generate the report for.  Allowed resource object types are:

	* EG (Enclosure Group)
	* Enclosure
	* Server
	* Interconnect

By specifying an Enclosure Group, all associated Enclosures will be included in the report.

<table><tbody><tr><td>Aliases</td><td>Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
File system location where to save the exported report to.

Default: Current Working Directory

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(get-location).Path</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.EnclosureGroup or HPOneView.Enclosure or HPOneView.ServerHardware or HPOneView.Networking.Interconnect**_

 HPE OneView Managed Resource object



### Return Values

_**System.Object**_

 

Firmware report



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEnclosureGroup "Production EG" | Show-HPOVFirmwareReport</pre>
Display a firmware report of all associated enclosures to "Production EG" Enclosure Group currently managed by the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Baseline = Get-HPOVBaseline -SppName "Production EG"
Get-HPOVEnclosureGroup "Production EG" | Show-HPOVFirmwareReport -Baseline $Baseline</pre>
Display a firmware report of the "Production EG" resource, and components (servers, interconnects and Onboard Administrators) currently managed by the appliance, and compare to the provided Baseline.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
