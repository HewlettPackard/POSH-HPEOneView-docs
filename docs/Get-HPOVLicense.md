<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVLicense
<p>
Gets the installed licenses on the appliance.

### SYNTAX
<p>
<pre><code>Get-HPOVLicense [-Type] &lt;String&gt; [-State] &lt;String&gt;[ [-Summary] &lt;SwitchParameter&gt;][ [-Report] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will retrieve licenses installed on the appliance.  You can use this to get an inventory of what"s installed and what licenses are consumed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Report &lt;SwitchParameter&gt;<p>
PARAMETER IS BEING DEPRECATED.

Generate a report of installed or required licenses, their type and assigned Nodes.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -State &lt;String&gt;<p>
Specify the license state to retrieve.  Valid options are "Unlicensed" or "Permanent".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Summary &lt;SwitchParameter&gt;<p>
Display a condensed summary view of the installed or required licenses.  This does not return a License object that can be used with Remove-HPOVLicense.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify the type of License to retrieve.  Valid options are "HP_ONE_VIEW" or "HP_ONE_VIEW_WO_ILO".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.License**_

 

HPE OneView License



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLicense

Product   : HPE OneView Advanced
Type      : Permanent
Capacity  : 64
Allocated : 30
Available : 34
Nodes     : {Encl2, bay 7, Encl2, bay 4, Encl2, bay 13, Encl1, bay 8...}

</pre>
Retrieve all installed license objects on the connected appliance(s).



### Related Links

* [New-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLicense)
* [Remove-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLicense)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVLicense
<p>
Gets the installed licenses on the appliance.

### SYNTAX
<p>
<pre><code>Get-HPOVLicense [-Type] &lt;String&gt; [-State] &lt;String&gt;[ [-Summary] &lt;SwitchParameter&gt;][ [-Report] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will retrieve licenses installed on the appliance.  You can use this to get an inventory of what"s installed and what licenses are consumed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Report &lt;SwitchParameter&gt;<p>
PARAMETER IS BEING DEPRECATED.

Generate a report of installed or required licenses, their type and assigned Nodes.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -State &lt;String&gt;<p>
Specify the license state to retrieve.  Valid options are "Unlicensed" or "Permanent".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Summary &lt;SwitchParameter&gt;<p>
Display a condensed summary view of the installed or required licenses.  This does not return a License object that can be used with Remove-HPOVLicense.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify the type of License to retrieve.  Valid options are "HP_ONE_VIEW" or "HP_ONE_VIEW_WO_ILO".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.License**_

 

HPE OneView License



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLicense

Product   : HPE OneView Advanced
Type      : Permanent
Capacity  : 64
Allocated : 30
Available : 34
Nodes     : {Encl2, bay 7, Encl2, bay 4, Encl2, bay 13, Encl1, bay 8...}

</pre>
Retrieve all installed license objects on the connected appliance(s).



### Related Links

* [New-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLicense)
* [Remove-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLicense)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVLicense
<p>
Gets the installed licenses on the appliance.

### SYNTAX
<p>
<pre><code>Get-HPOVLicense [-Type] &lt;String&gt; [-State] &lt;String&gt;[ [-Summary] &lt;SwitchParameter&gt;][ [-Report] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will retrieve licenses installed on the appliance.  You can use this to get an inventory of what"s installed and what licenses are consumed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Report &lt;SwitchParameter&gt;<p>
PARAMETER IS BEING DEPRECATED.

Generate a report of installed or required licenses, their type and assigned Nodes.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -State &lt;String&gt;<p>
Specify the license state to retrieve.  Valid options are "Unlicensed" or "Permanent".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Summary &lt;SwitchParameter&gt;<p>
Display a condensed summary view of the installed or required licenses.  This does not return a License object that can be used with Remove-HPOVLicense.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify the type of License to retrieve.  Valid options are "HP_ONE_VIEW" or "HP_ONE_VIEW_WO_ILO".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.License**_

 

HPE OneView License



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLicense

Product   : HPE OneView Advanced
Type      : Permanent
Capacity  : 64
Allocated : 30
Available : 34
Nodes     : {Encl2, bay 7, Encl2, bay 4, Encl2, bay 13, Encl1, bay 8...}

</pre>
Retrieve all installed license objects on the connected appliance(s).



### Related Links

* [New-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLicense)
* [Remove-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLicense)


***
<div align=right><a href="#Top">Top</a></div>
