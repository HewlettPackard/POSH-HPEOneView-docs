<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Add-HPOVRackToDataCenter
<p>
Add rack resource to DataCenter.

### SYNTAX
<p>
<pre><code>Add-HPOVRackToDataCenter [-InputObject] &lt;Object&gt; [-DataCenter] &lt;Object&gt;[ [-X] &lt;Int32&gt;][ [-Y] &lt;Int32&gt;][ [-Millimeters] &lt;SwitchParameter&gt;][ [-Rotate] &lt;Int&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Add a rack resource to a defined DataCenter object.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DataCenter &lt;Object&gt;<p>
The DataCenter object from Get-HPOVDataCenter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Rack object from Get-HPOVRack.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Millimeters &lt;SwitchParameter&gt;<p>
If X and/or Y are in Millimeters, you must include this parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Rotate &lt;Int&gt;<p>
Specify the degree rotation of the rack.
Allowed range 0 to 360

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -X &lt;Int32&gt;<p>
The X coordinate in the DC.  Value can be in US Feet or Millimeters.  If specying Millimeters, you need to include the -Millimeters switch parameter.  Feet will be converted to Millimeters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Y &lt;Int32&gt;<p>
The Y coordinate in the DC.  Value can be in US Feet or Millimeters.  If specying Millimeters, you need to include the -Millimeters switch parameter.  Feet will be converted to Millimeters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

 Rack resource object from Get-HPOVRack.



### Return Values

_**HPOneView.Facilities.DataCenter [System.Management.Automation.PSCustomObject]**_

 

Updated DataCenter object with the newly added Rack resource in the contents property.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$DC = Get-HPOVDataCenter -Name Houston_DC1 -ErrorAction Stop
$X = 10
$Y = 12
Get-HPOVRack -Name MyRack -ErrorAction Stop | Add-HPOVRackToDataCenter -DataCenter $DC -X $X -Y $Y</pre>
Add "MyRack" to "Houston_DC1" datacenter object, located at 10",12".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Add-HPOVRackToDataCenter
<p>
Add rack resource to DataCenter.

### SYNTAX
<p>
<pre><code>Add-HPOVRackToDataCenter [-InputObject] &lt;Object&gt; [-DataCenter] &lt;Object&gt;[ [-X] &lt;Int32&gt;][ [-Y] &lt;Int32&gt;][ [-Millimeters] &lt;SwitchParameter&gt;][ [-Rotate] &lt;Int&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Add a rack resource to a defined DataCenter object.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DataCenter &lt;Object&gt;<p>
The DataCenter object from Get-HPOVDataCenter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Rack object from Get-HPOVRack.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Millimeters &lt;SwitchParameter&gt;<p>
If X and/or Y are in Millimeters, you must include this parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Rotate &lt;Int&gt;<p>
Specify the degree rotation of the rack.
Allowed range 0 to 360

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -X &lt;Int32&gt;<p>
The X coordinate in the DC.  Value can be in US Feet or Millimeters.  If specying Millimeters, you need to include the -Millimeters switch parameter.  Feet will be converted to Millimeters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Y &lt;Int32&gt;<p>
The Y coordinate in the DC.  Value can be in US Feet or Millimeters.  If specying Millimeters, you need to include the -Millimeters switch parameter.  Feet will be converted to Millimeters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

 Rack resource object from Get-HPOVRack.



### Return Values

_**HPOneView.Facilities.DataCenter [System.Management.Automation.PSCustomObject]**_

 

Updated DataCenter object with the newly added Rack resource in the contents property.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$DC = Get-HPOVDataCenter -Name Houston_DC1 -ErrorAction Stop
$X = 10
$Y = 12
Get-HPOVRack -Name MyRack -ErrorAction Stop | Add-HPOVRackToDataCenter -DataCenter $DC -X $X -Y $Y</pre>
Add "MyRack" to "Houston_DC1" datacenter object, located at 10",12".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Add-HPOVRackToDataCenter
<p>
Add rack resource to DataCenter.

### SYNTAX
<p>
<pre><code>Add-HPOVRackToDataCenter [-InputObject] &lt;Object&gt; [-DataCenter] &lt;Object&gt;[ [-X] &lt;Int32&gt;][ [-Y] &lt;Int32&gt;][ [-Millimeters] &lt;SwitchParameter&gt;][ [-Rotate] &lt;Int&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Add a rack resource to a defined DataCenter object.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DataCenter &lt;Object&gt;<p>
The DataCenter object from Get-HPOVDataCenter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Rack object from Get-HPOVRack.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Millimeters &lt;SwitchParameter&gt;<p>
If X and/or Y are in Millimeters, you must include this parameter.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Rotate &lt;Int&gt;<p>
Specify the degree rotation of the rack.
Allowed range 0 to 360

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -X &lt;Int32&gt;<p>
The X coordinate in the DC.  Value can be in US Feet or Millimeters.  If specying Millimeters, you need to include the -Millimeters switch parameter.  Feet will be converted to Millimeters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Y &lt;Int32&gt;<p>
The Y coordinate in the DC.  Value can be in US Feet or Millimeters.  If specying Millimeters, you need to include the -Millimeters switch parameter.  Feet will be converted to Millimeters.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

 Rack resource object from Get-HPOVRack.



### Return Values

_**HPOneView.Facilities.DataCenter [System.Management.Automation.PSCustomObject]**_

 

Updated DataCenter object with the newly added Rack resource in the contents property.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$DC = Get-HPOVDataCenter -Name Houston_DC1 -ErrorAction Stop
$X = 10
$Y = 12
Get-HPOVRack -Name MyRack -ErrorAction Stop | Add-HPOVRackToDataCenter -DataCenter $DC -X $X -Y $Y</pre>
Add "MyRack" to "Houston_DC1" datacenter object, located at 10",12".



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
