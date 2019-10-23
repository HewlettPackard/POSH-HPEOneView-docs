<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Add-HPOVResourceToRack
<p>
Add supported resource to rack.

### SYNTAX
<p>
<pre><code>Add-HPOVResourceToRack [-InputObject] &lt;Object&gt; [-Rack] &lt;Object&gt; [-ULocation] &lt;Int32&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Add a supported resource to a rack resource object.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The suppported resource object from.
Supported resource objects are:
	*Enclosures
	*Servers
	*Unmanaged Devices

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Rack &lt;Object&gt;<p>
The Rack object from Get-HPOVRack.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ULocation &lt;Int32&gt;<p>
The rack unit location where the resource is located.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

 Rack resource object from Get-HPOVRack.



### Return Values

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

 

Updated DataCenter object with the newly added Rack resource in the contents property.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Rack = Get-HPOVRack -Name MyRack221 -ErrorAction Stop
$Servers = Get-HPOVServers -Name Prod221* -ErrorAction Stop
$_U = 1
ForEach ($Server in $Servers) {
	Add-HPOVResourceToRack -InputObject $Server -Rack $Rack -ULocation $_U
	$_U += $Server.formFactor.Replace("U",$null)
}</pre>
Add "Prod221" (DL) servers to "MyRack221" rack object, starting at Rack U 1, and increasing the location based on the form factor of the DL servers.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Rack = Get-HPOVRack -Name MyRack222 -ErrorAction Stop
$Enclosures = Get-HPOVEnclosures -Name Encl-Prod* -ErrorAction Stop | ? rackName -eq $Rack.name
$_U = 1
ForEach ($Enclosure in $Enclosures) {
	Add-HPOVResourceToRack -InputObject $Enclosure -Rack $Rack -ULocation $_U
	$_U += 10
}</pre>
Add Enclosures which the Onboard Administrators report are in "MyRack222", and add them to "MyRack222" rack object, starting at Rack U 1, and increasing the location by 10U.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Add-HPOVResourceToRack
<p>
Add supported resource to rack.

### SYNTAX
<p>
<pre><code>Add-HPOVResourceToRack [-InputObject] &lt;Object&gt; [-Rack] &lt;Object&gt; [-ULocation] &lt;Int32&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Add a supported resource to a rack resource object.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The suppported resource object from.
Supported resource objects are:
	*Enclosures
	*Servers
	*Unmanaged Devices

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Rack &lt;Object&gt;<p>
The Rack object from Get-HPOVRack.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ULocation &lt;Int32&gt;<p>
The rack unit location where the resource is located.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

 Rack resource object from Get-HPOVRack.



### Return Values

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

 

Updated DataCenter object with the newly added Rack resource in the contents property.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Rack = Get-HPOVRack -Name MyRack221 -ErrorAction Stop
$Servers = Get-HPOVServers -Name Prod221* -ErrorAction Stop
$_U = 1
ForEach ($Server in $Servers) {
	Add-HPOVResourceToRack -InputObject $Server -Rack $Rack -ULocation $_U
	$_U += $Server.formFactor.Replace("U",$null)
}</pre>
Add "Prod221" (DL) servers to "MyRack221" rack object, starting at Rack U 1, and increasing the location based on the form factor of the DL servers.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Rack = Get-HPOVRack -Name MyRack222 -ErrorAction Stop
$Enclosures = Get-HPOVEnclosures -Name Encl-Prod* -ErrorAction Stop | ? rackName -eq $Rack.name
$_U = 1
ForEach ($Enclosure in $Enclosures) {
	Add-HPOVResourceToRack -InputObject $Enclosure -Rack $Rack -ULocation $_U
	$_U += 10
}</pre>
Add Enclosures which the Onboard Administrators report are in "MyRack222", and add them to "MyRack222" rack object, starting at Rack U 1, and increasing the location by 10U.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Add-HPOVResourceToRack
<p>
Add supported resource to rack.

### SYNTAX
<p>
<pre><code>Add-HPOVResourceToRack [-InputObject] &lt;Object&gt; [-Rack] &lt;Object&gt; [-ULocation] &lt;Int32&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Add a supported resource to a rack resource object.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The suppported resource object from.
Supported resource objects are:
	*Enclosures
	*Servers
	*Unmanaged Devices

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Rack &lt;Object&gt;<p>
The Rack object from Get-HPOVRack.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ULocation &lt;Int32&gt;<p>
The rack unit location where the resource is located.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

 Rack resource object from Get-HPOVRack.



### Return Values

_**HPOneView.Facilities.Rack [System.Management.Automation.PSCustomObject]**_

 

Updated DataCenter object with the newly added Rack resource in the contents property.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Rack = Get-HPOVRack -Name MyRack221 -ErrorAction Stop
$Servers = Get-HPOVServers -Name Prod221* -ErrorAction Stop
$_U = 1
ForEach ($Server in $Servers) {
	Add-HPOVResourceToRack -InputObject $Server -Rack $Rack -ULocation $_U
	$_U += $Server.formFactor.Replace("U",$null)
}</pre>
Add "Prod221" (DL) servers to "MyRack221" rack object, starting at Rack U 1, and increasing the location based on the form factor of the DL servers.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Rack = Get-HPOVRack -Name MyRack222 -ErrorAction Stop
$Enclosures = Get-HPOVEnclosures -Name Encl-Prod* -ErrorAction Stop | ? rackName -eq $Rack.name
$_U = 1
ForEach ($Enclosure in $Enclosures) {
	Add-HPOVResourceToRack -InputObject $Enclosure -Rack $Rack -ULocation $_U
	$_U += 10
}</pre>
Add Enclosures which the Onboard Administrators report are in "MyRack222", and add them to "MyRack222" rack object, starting at Rack U 1, and increasing the location by 10U.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
