<a name="top"></a>
 <h4><a href="#2.00">Library Version 2.00</a></h4>
 <a name="2.00"></a>

### <u>HPE OneView 2.00 Library</u>

## Show-HPOVUtilization
<p>
Report server hardware Utilization.

### SYNTAX
<p>
<pre><code>Show-HPOVUtilization [-Resource] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to retrieve the utilization stats of a Server Hardware resource.  Collecting server utilization data requires an iLO Advanced license to be present on the managed server resource.  HPE OneView collects the following utilization data:

* CPU
* Power
* Thermal


### Parameters

-Resource &lt;Object&gt;<p>
The managed resource Object to generate the report for.  Accepted object types are:

* Server Hardware
* Server Profile

E.g. Get-HPOVServer 'Enclosure 1, Bay 1' | Show-HPOVFirmwareReport

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Firmware Baseline Object

 _**System.Management.Automation.PSCustomObject**_

 Resource object to generate Firmware Report for.
 
 E.g. Get-HPOVEnclosureGroup 'My EG1' | Show-HPOVFirmwareReport



### Return Values

_**System.Collection.ArrayList&lt;HPOneView.FirmwareReport&gt;**_

 

Firmware report.

 _**CSV File**_

 

When using the Export paramter, a CSV file is created.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:\> Get-HPOVEnclosureGroup 'Production EG' | Show-HPOVFirmwareReport
</pre>
Display a firmware report of all associated Logical Enclosures/Enclosures to 'Production EG' Enclosure Group currently managed by the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
PS C:\> Get-HPOVEnclosure Encl1 | Show-HPOVFirmwareReport
</pre>
Display a firmware report of the 'Encl1' Enclosure resource, and components (servers, interconnects and Onboard Administrators) currently managed by the appliance.



### Related Links

* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVInterconnect](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVInterconnect)
* [Get-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServer)


***
<div align=right><a href="#Top">Top</a></div>
