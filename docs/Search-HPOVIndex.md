<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Search-HPOVIndex
<p>
Search the resource index.

### SYNTAX
<p>
<pre><code>Search-HPOVIndex [-Search] &lt;String&gt; [-Category] &lt;String&gt; [-Count] &lt;Int32&gt; [-Start] &lt;Int32&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Search the resource index for any objects that match the specified search string or category


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Category &lt;String&gt;<p>
The resource category to be matched, if specified.  Valid resource categories are:

	* domains
	* users
	* racks
	* enclosure-groups
	* enclosures
	* uplink-sets
	* logical-interconnect-groups
	* logical-interconnects
	* interconnect-types
	* interconnects
	* networks
	* firmware-drivers
	* server-hardware-types
	* server-hardware
	* server-profiles
	* alerts
	* storage-volumes
	* storage-systems

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;Int32&gt;<p>
The maximum number of resource index entries to be returned.  Defaults to 50.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>50</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Search &lt;String&gt;<p>
The search query, text to be found in the index.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;Int32&gt;<p>
The index of the first resource index to be returned, defaults to 0.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**System.Collections.ArrayList**_

 

The matching index entries



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Search-HPOVIndex "Profile1"
</pre>
Return all the index entries which include this string.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Search-HPOVIndex -categroy uplink-sets
</pre>
Search for all Uplink Set resources.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Search-HPOVIndex
<p>
Search the resource index.

### SYNTAX
<p>
<pre><code>Search-HPOVIndex [-Search] &lt;String&gt; [-Category] &lt;String&gt; [-Count] &lt;Int32&gt; [-Start] &lt;Int32&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Search the resource index for any objects that match the specified search string or category


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Category &lt;String&gt;<p>
The resource category to be matched, if specified.  Valid resource categories are:

	* domains
	* users
	* racks
	* enclosure-groups
	* enclosures
	* uplink-sets
	* logical-interconnect-groups
	* logical-interconnects
	* interconnect-types
	* interconnects
	* networks
	* firmware-drivers
	* server-hardware-types
	* server-hardware
	* server-profiles
	* alerts
	* storage-volumes
	* storage-systems

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;Int32&gt;<p>
The maximum number of resource index entries to be returned.  Defaults to 50.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>50</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Search &lt;String&gt;<p>
The search query, text to be found in the index.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;Int32&gt;<p>
The index of the first resource index to be returned, defaults to 0.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**System.Collections.ArrayList**_

 

The matching index entries



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Search-HPOVIndex "Profile1"
</pre>
Return all the index entries which include this string.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Search-HPOVIndex -categroy uplink-sets
</pre>
Search for all Uplink Set resources.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Search-HPOVIndex
<p>
Search the resource index.

### SYNTAX
<p>
<pre><code>Search-HPOVIndex [-Search] &lt;String&gt; [-Category] &lt;String&gt; [-Count] &lt;Int32&gt; [-Start] &lt;Int32&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Search the resource index for any objects that match the specified search string or category


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Category &lt;String&gt;<p>
The resource category to be matched, if specified.  Valid resource categories are:

	* domains
	* users
	* racks
	* enclosure-groups
	* enclosures
	* uplink-sets
	* logical-interconnect-groups
	* logical-interconnects
	* interconnect-types
	* interconnects
	* networks
	* firmware-drivers
	* server-hardware-types
	* server-hardware
	* server-profiles
	* alerts
	* storage-volumes
	* storage-systems

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;Int32&gt;<p>
The maximum number of resource index entries to be returned.  Defaults to 50.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>50</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Search &lt;String&gt;<p>
The search query, text to be found in the index.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;Int32&gt;<p>
The index of the first resource index to be returned, defaults to 0.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**System.Collections.ArrayList**_

 

The matching index entries



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Search-HPOVIndex "Profile1"
</pre>
Return all the index entries which include this string.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Search-HPOVIndex -categroy uplink-sets
</pre>
Search for all Uplink Set resources.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
