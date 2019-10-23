<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVServerProfileConnectionList
<p>
Retrieve Server Profile Connections

### SYNTAX
<p>
<pre><code>Get-HPOVServerProfileConnectionList [-Name] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a formatted list of server profile connection IDs, include hardware address, device mapping, and boot settings.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the server profile resource to be returned.  All server profile resources will be returned if name is omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Collections.ArrayList**_

 

Formatted table of Server Profile Connections



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfileConnectionList "test"
serverProfile   portId    cid networkType macAddress        wwpn             boot      arrayTarget lun
-------------   --------  --- ----------- ----------        ----             ----      ----------- ---                     
test            Flb 1:1-a   1 Ethernet    36:37:6B:90:00:08 1000378079e00011 Primary                  
test            Flb 1:1-b   2 Ethernet    36:37:6B:90:00:06 1000378079e0000d Secondary                
</pre>
List Server Profile connections for Test.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVServerProfileConnectionList
<p>
Retrieve Server Profile Connections

### SYNTAX
<p>
<pre><code>Get-HPOVServerProfileConnectionList [-Name] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a formatted list of server profile connection IDs, include hardware address, device mapping, and boot settings.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the server profile resource to be returned.  All server profile resources will be returned if name is omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Collections.ArrayList**_

 

Formatted table of Server Profile Connections



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfileConnectionList "test"
serverProfile   portId    cid networkType macAddress        wwpn             boot      arrayTarget lun
-------------   --------  --- ----------- ----------        ----             ----      ----------- ---                     
test            Flb 1:1-a   1 Ethernet    36:37:6B:90:00:08 1000378079e00011 Primary                  
test            Flb 1:1-b   2 Ethernet    36:37:6B:90:00:06 1000378079e0000d Secondary                
</pre>
List Server Profile connections for Test.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVServerProfileConnectionList
<p>
Retrieve Server Profile Connections

### SYNTAX
<p>
<pre><code>Get-HPOVServerProfileConnectionList [-Name] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a formatted list of server profile connection IDs, include hardware address, device mapping, and boot settings.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the server profile resource to be returned.  All server profile resources will be returned if name is omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Collections.ArrayList**_

 

Formatted table of Server Profile Connections



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfileConnectionList "test"
serverProfile   portId    cid networkType macAddress        wwpn             boot      arrayTarget lun
-------------   --------  --- ----------- ----------        ----             ----      ----------- ---                     
test            Flb 1:1-a   1 Ethernet    36:37:6B:90:00:08 1000378079e00011 Primary                  
test            Flb 1:1-b   2 Ethernet    36:37:6B:90:00:06 1000378079e0000d Secondary                
</pre>
List Server Profile connections for Test.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
