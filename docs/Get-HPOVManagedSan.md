<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVManagedSan
<p>
Retrieve Managed SAN resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVManagedSan [-Name] &lt;String&gt;[ [-Label] &lt;String&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to display or list the available Managed SAN resources in the appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-Fabric]
Managed SAN Name to retrieve.

<table><tbody><tr><td>Aliases</td><td>Fabric</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

 

Single Resource

 _**System.Collections.ArrayList**_

 

Multiple Resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVManagedSan
Name     State Status Network              Zoned Automated Zoning
----     ----- ------ -------              ----- ----------------
Fabric A Ready OK     BNA Managed Fabric A Zoned             True
</pre>
Return all managed SAN resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVManagedSan "Fabric A"
</pre>
Show the "Fabric A" Managed SAN resource object.



### Related Links

* [Set-HPOVManagedSan](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVManagedSan)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVManagedSan
<p>
Retrieve Managed SAN resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVManagedSan [-Name] &lt;String&gt;[ [-Label] &lt;String&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to display or list the available Managed SAN resources in the appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-Fabric]
Managed SAN Name to retrieve.

<table><tbody><tr><td>Aliases</td><td>Fabric</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

 

Single Resource

 _**System.Collections.ArrayList**_

 

Multiple Resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVManagedSan
Name     State Status Network              Zoned Automated Zoning
----     ----- ------ -------              ----- ----------------
Fabric A Ready OK     BNA Managed Fabric A Zoned             True
</pre>
Return all managed SAN resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVManagedSan "Fabric A"
</pre>
Show the "Fabric A" Managed SAN resource object.



### Related Links

* [Set-HPOVManagedSan](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVManagedSan)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVManagedSan
<p>
Retrieve Managed SAN resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVManagedSan [-Name] &lt;String&gt;[ [-Label] &lt;String&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to display or list the available Managed SAN resources in the appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-Fabric]
Managed SAN Name to retrieve.

<table><tbody><tr><td>Aliases</td><td>Fabric</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Storage.ManagedSan [System.Management.Automation.PSCustomObject]**_

 

Single Resource

 _**System.Collections.ArrayList**_

 

Multiple Resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVManagedSan
Name     State Status Network              Zoned Automated Zoning
----     ----- ------ -------              ----- ----------------
Fabric A Ready OK     BNA Managed Fabric A Zoned             True
</pre>
Return all managed SAN resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVManagedSan "Fabric A"
</pre>
Show the "Fabric A" Managed SAN resource object.



### Related Links

* [Set-HPOVManagedSan](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVManagedSan)


***
<div align=right><a href="#Top">Top</a></div>
