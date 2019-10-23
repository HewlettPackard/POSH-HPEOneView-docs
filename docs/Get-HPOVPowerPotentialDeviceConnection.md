<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVPowerPotentialDeviceConnection
<p>
Retrieve Power Device (mPDU/Rack PDU) Potentail Connections

### SYNTAX
<p>
<pre><code>Get-HPOVPowerPotentialDeviceConnection [-PowerDevice] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of potential managed and unmanaged device power connections for the provided power device resoruce.  The returned value(s) will include the potential power connections that can be manually associated when not using iPDU devices.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerDevice &lt;Object&gt;<p>
Aliases [-uri, -name]
The name of the power device resource.  Can provide Name, URI or Object.

<table><tbody><tr><td>Aliases</td><td>uri, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Potential managed/unmanaged device Power Delivery Device connection object



### Return Values

_**System.Collections.ArrayList**_

 

Collection of matching potential power device connection objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVPowerDevice "iPDU_A" | Get-HPOVPowerPotentialDeviceConnection
</pre>
Return the potential power device connections for the "iPDU_A" power delivery device.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVPowerPotentialDeviceConnection "iPDU_A"
</pre>
Return the potential power device connections for the "iPDU_A" power delivery device.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVPowerPotentialDeviceConnection
<p>
Retrieve Power Device (mPDU/Rack PDU) Potentail Connections

### SYNTAX
<p>
<pre><code>Get-HPOVPowerPotentialDeviceConnection [-PowerDevice] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of potential managed and unmanaged device power connections for the provided power device resoruce.  The returned value(s) will include the potential power connections that can be manually associated when not using iPDU devices.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerDevice &lt;Object&gt;<p>
Aliases [-uri, -name]
The name of the power device resource.  Can provide Name, URI or Object.

<table><tbody><tr><td>Aliases</td><td>uri, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Potential managed/unmanaged device Power Delivery Device connection object



### Return Values

_**System.Collections.ArrayList**_

 

Collection of matching potential power device connection objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVPowerDevice "iPDU_A" | Get-HPOVPowerPotentialDeviceConnection
</pre>
Return the potential power device connections for the "iPDU_A" power delivery device.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVPowerPotentialDeviceConnection "iPDU_A"
</pre>
Return the potential power device connections for the "iPDU_A" power delivery device.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVPowerPotentialDeviceConnection
<p>
Retrieve Power Device (mPDU/Rack PDU) Potentail Connections

### SYNTAX
<p>
<pre><code>Get-HPOVPowerPotentialDeviceConnection [-PowerDevice] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of potential managed and unmanaged device power connections for the provided power device resoruce.  The returned value(s) will include the potential power connections that can be manually associated when not using iPDU devices.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PowerDevice &lt;Object&gt;<p>
Aliases [-uri, -name]
The name of the power device resource.  Can provide Name, URI or Object.

<table><tbody><tr><td>Aliases</td><td>uri, name</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Potential managed/unmanaged device Power Delivery Device connection object



### Return Values

_**System.Collections.ArrayList**_

 

Collection of matching potential power device connection objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVPowerDevice "iPDU_A" | Get-HPOVPowerPotentialDeviceConnection
</pre>
Return the potential power device connections for the "iPDU_A" power delivery device.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVPowerPotentialDeviceConnection "iPDU_A"
</pre>
Return the potential power device connections for the "iPDU_A" power delivery device.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
