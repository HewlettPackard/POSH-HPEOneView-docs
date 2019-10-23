<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVEnclosureGroup
<p>
Retrieve Enclosure Group resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVEnclosureGroup[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-exportFile] &lt;String&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of Enclosure Group resources, or a single Enclosure Group with the specified name.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>${Global:ConnectedSessions}</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Enclosure Group resource to be returned.  All enclosure group resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases [-x, -export]
Full path and file name to save the output of Get-HPOVEnclosureGroup

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 

Single Enclosure Group

 _**System.Collections.ArrayList**_

 

The matching enclosure group resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$enclosures = Get-HPOVEnclosureGroup
</pre>
Return all the enclosure groups managed by this appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$enclosure = Get-HPOVEnclosureGroup "A"
</pre>
Return the enclosure group resource with name "A".



### Related Links

* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVEnclosureGroup
<p>
Retrieve Enclosure Group resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVEnclosureGroup[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-exportFile] &lt;String&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of Enclosure Group resources, or a single Enclosure Group with the specified name.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>${Global:ConnectedSessions}</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Enclosure Group resource to be returned.  All enclosure group resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases [-x, -export]
Full path and file name to save the output of Get-HPOVEnclosureGroup

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 

Single Enclosure Group

 _**System.Collections.ArrayList**_

 

The matching enclosure group resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$enclosures = Get-HPOVEnclosureGroup
</pre>
Return all the enclosure groups managed by this appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$enclosure = Get-HPOVEnclosureGroup "A"
</pre>
Return the enclosure group resource with name "A".



### Related Links

* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVEnclosureGroup
<p>
Retrieve Enclosure Group resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVEnclosureGroup[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-exportFile] &lt;String&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of Enclosure Group resources, or a single Enclosure Group with the specified name.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>${Global:ConnectedSessions}</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Enclosure Group resource to be returned.  All enclosure group resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases [-x, -export]
Full path and file name to save the output of Get-HPOVEnclosureGroup

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.EnclosureGroup [System.Management.Automation.PSCustomObject]**_

 

Single Enclosure Group

 _**System.Collections.ArrayList**_

 

The matching enclosure group resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$enclosures = Get-HPOVEnclosureGroup
</pre>
Return all the enclosure groups managed by this appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$enclosure = Get-HPOVEnclosureGroup "A"
</pre>
Return the enclosure group resource with name "A".



### Related Links

* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)


***
<div align=right><a href="#Top">Top</a></div>
