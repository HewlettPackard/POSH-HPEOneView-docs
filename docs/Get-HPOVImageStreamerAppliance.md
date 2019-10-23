<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVImageStreamerAppliance
<p>
Retrieve HPE Synergy Image Streamer appliances.

### SYNTAX
<p>
<pre><code>Get-HPOVImageStreamerAppliance[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieve populated and discovered HPE Synergy Image Streamer appliances within the Synergy Management fabric.  Image Streamer appliances can be in either a Claimed or Unclaimed state.  Appliances will only belong in a single redundant H/A Pair, and all H/A pairs will participate within the same HPE Synergy OS Deployment Server.  Redundant H/A pairs will automatically be created during the Create Logical Enclosure task.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Image Streamer resource name.  Supported the * (asterisk) wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject [HPOneView.Appliance.ImageStreamerAppliance]**_

 

An HPE Synergy Image Streamer appliance object.

 _**System.Collections.ArrayList&lt;HPOneView.Appliance.ImageStreamerAppliance&gt;**_

 

A collection of HPE Synergy Image Streamer appliance objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVImageStreamerAppliance
</pre>
List all HPE Synergy Image Streamer appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVImageStreamerAppliance -Name "0000A66102, appliance 2"
</pre>
Retrieve the Image Streamer Appliance "0000A66102, appliance 2".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVImageStreamerAppliance
<p>
Retrieve HPE Synergy Image Streamer appliances.

### SYNTAX
<p>
<pre><code>Get-HPOVImageStreamerAppliance[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieve populated and discovered HPE Synergy Image Streamer appliances within the Synergy Management fabric.  Image Streamer appliances can be in either a Claimed or Unclaimed state.  Appliances will only belong in a single redundant H/A Pair, and all H/A pairs will participate within the same HPE Synergy OS Deployment Server.  Redundant H/A pairs will automatically be created during the Create Logical Enclosure task.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Image Streamer resource name.  Supported the * (asterisk) wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject [HPOneView.Appliance.ImageStreamerAppliance]**_

 

An HPE Synergy Image Streamer appliance object.

 _**System.Collections.ArrayList&lt;HPOneView.Appliance.ImageStreamerAppliance&gt;**_

 

A collection of HPE Synergy Image Streamer appliance objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVImageStreamerAppliance
</pre>
List all HPE Synergy Image Streamer appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVImageStreamerAppliance -Name "0000A66102, appliance 2"
</pre>
Retrieve the Image Streamer Appliance "0000A66102, appliance 2".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVImageStreamerAppliance
<p>
Retrieve HPE Synergy Image Streamer appliances.

### SYNTAX
<p>
<pre><code>Get-HPOVImageStreamerAppliance[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Retrieve populated and discovered HPE Synergy Image Streamer appliances within the Synergy Management fabric.  Image Streamer appliances can be in either a Claimed or Unclaimed state.  Appliances will only belong in a single redundant H/A Pair, and all H/A pairs will participate within the same HPE Synergy OS Deployment Server.  Redundant H/A pairs will automatically be created during the Create Logical Enclosure task.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Image Streamer resource name.  Supported the * (asterisk) wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject [HPOneView.Appliance.ImageStreamerAppliance]**_

 

An HPE Synergy Image Streamer appliance object.

 _**System.Collections.ArrayList&lt;HPOneView.Appliance.ImageStreamerAppliance&gt;**_

 

A collection of HPE Synergy Image Streamer appliance objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVImageStreamerAppliance
</pre>
List all HPE Synergy Image Streamer appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVImageStreamerAppliance -Name "0000A66102, appliance 2"
</pre>
Retrieve the Image Streamer Appliance "0000A66102, appliance 2".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
