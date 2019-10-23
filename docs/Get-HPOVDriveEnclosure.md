<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVDriveEnclosure
<p>
List Synergy DAS Enclosures.

### SYNTAX
<p>
<pre><code>Get-HPOVDriveEnclosure[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will help display the avialable Synergy DAS Enclosures, and their associated inventory data.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Synergy DAS enclosure.  Omitt to return all devices.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Storage.DriveEnclosure [System.Management.Automation.PSCustomObject]**_

 

Single resource object.

 _**System.Collections.ArrayList &lt;HPOneView.Storage.DriveEnclosure&gt;**_

 

Multiple resource objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVDriveEnclosure
Appliance Name              State Status    Serial Number Drive Bays I/O Adapters
--------- ----              ----- ------    ------------- ---------- ------------
appliance 0000A66101, bay 1 On    Monitored SN123100      40/40      2
appliance 0000A66102, bay 1 On    Monitored SN123101      40/40      2
appliance 0000A66103, bay 1 On    Monitored SN123102      40/40      2

</pre>
Get all available Synergy Drive Enclosures.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVDriveEnclosure
<p>
List Synergy DAS Enclosures.

### SYNTAX
<p>
<pre><code>Get-HPOVDriveEnclosure[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will help display the avialable Synergy DAS Enclosures, and their associated inventory data.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Synergy DAS enclosure.  Omitt to return all devices.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Storage.DriveEnclosure [System.Management.Automation.PSCustomObject]**_

 

Single resource object.

 _**System.Collections.ArrayList &lt;HPOneView.Storage.DriveEnclosure&gt;**_

 

Multiple resource objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVDriveEnclosure
Appliance Name              State Status    Serial Number Drive Bays I/O Adapters
--------- ----              ----- ------    ------------- ---------- ------------
appliance 0000A66101, bay 1 On    Monitored SN123100      40/40      2
appliance 0000A66102, bay 1 On    Monitored SN123101      40/40      2
appliance 0000A66103, bay 1 On    Monitored SN123102      40/40      2

</pre>
Get all available Synergy Drive Enclosures.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVDriveEnclosure
<p>
List Synergy DAS Enclosures.

### SYNTAX
<p>
<pre><code>Get-HPOVDriveEnclosure[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will help display the avialable Synergy DAS Enclosures, and their associated inventory data.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Synergy DAS enclosure.  Omitt to return all devices.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Storage.DriveEnclosure [System.Management.Automation.PSCustomObject]**_

 

Single resource object.

 _**System.Collections.ArrayList &lt;HPOneView.Storage.DriveEnclosure&gt;**_

 

Multiple resource objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVDriveEnclosure
Appliance Name              State Status    Serial Number Drive Bays I/O Adapters
--------- ----              ----- ------    ------------- ---------- ------------
appliance 0000A66101, bay 1 On    Monitored SN123100      40/40      2
appliance 0000A66102, bay 1 On    Monitored SN123101      40/40      2
appliance 0000A66103, bay 1 On    Monitored SN123102      40/40      2

</pre>
Get all available Synergy Drive Enclosures.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
