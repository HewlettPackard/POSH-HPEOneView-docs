<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVServerHardwareType
<p>
Retrieve Server Hardware Type resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVServerHardwareType[ [-Name] &lt;String&gt;][ [-Model] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-exportFile] &lt;String&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of server hardware types.  This includes information about the type of server, adapter layout and features, and possible server BIOS settings.  This cmdlet is also used with the New-HPOVServerProfile cmdlet to retrieve the list of BIOS settings and adapters to configure.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Model &lt;String&gt;<p>
Filter based on Model name.  Supports wildcard search.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the server hardware type resource to be returned.  All server hardware type resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases [-x, -export]

The path where the resource will be exported to, in JSON text format.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.ServerHardwareType [System.Management.Automation.PSCustomObject]**_

 

Single Server Hardware type

 _**System.Collections.ArrayList**_

 

Multiple Server Hardware types



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$sht = Get-HPOVServerHardwareType
</pre>
Return all the server hardware types on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$shtBL460Gen81 = Get-HPOVServerHardwareType -name "BL460 Gen8 1"
</pre>
Return the "BL460 Gen8 1" server hardware type on the appliance.



### Related Links

* [Set-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerHardwareType)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVServerHardwareType
<p>
Retrieve Server Hardware Type resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVServerHardwareType[ [-Name] &lt;String&gt;][ [-Model] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-exportFile] &lt;String&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of server hardware types.  This includes information about the type of server, adapter layout and features, and possible server BIOS settings.  This cmdlet is also used with the New-HPOVServerProfile cmdlet to retrieve the list of BIOS settings and adapters to configure.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Model &lt;String&gt;<p>
Filter based on Model name.  Supports wildcard search.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the server hardware type resource to be returned.  All server hardware type resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases [-x, -export]

The path where the resource will be exported to, in JSON text format.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.ServerHardwareType [System.Management.Automation.PSCustomObject]**_

 

Single Server Hardware type

 _**System.Collections.ArrayList**_

 

Multiple Server Hardware types



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$sht = Get-HPOVServerHardwareType
</pre>
Return all the server hardware types on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$shtBL460Gen81 = Get-HPOVServerHardwareType -name "BL460 Gen8 1"
</pre>
Return the "BL460 Gen8 1" server hardware type on the appliance.



### Related Links

* [Set-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerHardwareType)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVServerHardwareType
<p>
Retrieve Server Hardware Type resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVServerHardwareType[ [-Name] &lt;String&gt;][ [-Model] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-exportFile] &lt;String&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of server hardware types.  This includes information about the type of server, adapter layout and features, and possible server BIOS settings.  This cmdlet is also used with the New-HPOVServerProfile cmdlet to retrieve the list of BIOS settings and adapters to configure.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Model &lt;String&gt;<p>
Filter based on Model name.  Supports wildcard search.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the server hardware type resource to be returned.  All server hardware type resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases [-x, -export]

The path where the resource will be exported to, in JSON text format.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.ServerHardwareType [System.Management.Automation.PSCustomObject]**_

 

Single Server Hardware type

 _**System.Collections.ArrayList**_

 

Multiple Server Hardware types



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$sht = Get-HPOVServerHardwareType
</pre>
Return all the server hardware types on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$shtBL460Gen81 = Get-HPOVServerHardwareType -name "BL460 Gen8 1"
</pre>
Return the "BL460 Gen8 1" server hardware type on the appliance.



### Related Links

* [Set-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerHardwareType)


***
<div align=right><a href="#Top">Top</a></div>
