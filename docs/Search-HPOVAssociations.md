<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Search-HPOVAssociations
<p>
Search the association index.

### SYNTAX
<p>
<pre><code>Search-HPOVAssociations [-AssociationName] &lt;String&gt; [-Parent] &lt;Object&gt; [-Child] &lt;Object&gt; [-Count] &lt;Int32&gt; [-Start] &lt;Int32&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Search the association index for any associations that match the specified name or uri.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AssociationName &lt;String&gt;<p>
The association name to be matched, if specified.  Valid association names are 

	* BLADE_TO_PROFILE
	* PROFILE_TO_SERVER_HARDWARE_TYPE
	* RACK_TO_PHYSICAL_DEVICE
	* BLADE_TO_INTERCONNECT
	* ENCLOSURE_GROUP_TO_ENCLOSURE
	* ENCLOSURE_GROUP_TO_LOGICAL_INTERCONNECT_GROUP
	* ENCLOSURE_TO_BLADE
	* ENCLOSURE_TO_SWITCH
	* LOGICAL_SWITCH_TO_LOGICAL_UPLINK
	* SWITCH_TO_LOGICAL_SWITCH
	* SERVER_PROFILES_TO_FC_NETWORKS
	* SERVER_PROFILES_TO_NETWORKS
	* STORAGE_SYSTEM_TO_STORAGE_POOL
	* FC_NETWORK_TO_STORAGE_SYSTEM
	* STORAGE_POOL_TO_VOLUME
	* STORAGE_POOL_TO_VOLUME_TEMPLATE

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Child &lt;Object&gt;<p>
Aliases [-EndObjUri]

The uri of an object which is the end of an association

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;Int32&gt;<p>
The maximum number of association index entries to be returned.  Defaults to 50.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>50</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Parent &lt;Object&gt;<p>
Aliases [-StartObjUri]

The uri of an object which is the start of an association

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;Int32&gt;<p>
The index of the first association index to be returned, defaults to 0.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Resource Object to find associated resources



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Single association index entry

 _**System.Collections.ArrayList**_

 

Multiple association index entries 
 The matching index entries



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Search-HPOVAssociations BLADE_TO_PROFILE -endObjUri /rest/server-profiles/1ab4c031-a631-4288-9e7d-3cfca24d30cf
</pre>
Return any BLADE_TO_PROFILE associations that have an end object with the specified uri



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Search-HPOVAssociations
<p>
Search the association index.

### SYNTAX
<p>
<pre><code>Search-HPOVAssociations [-AssociationName] &lt;String&gt; [-Parent] &lt;Object&gt; [-Child] &lt;Object&gt; [-Count] &lt;Int32&gt; [-Start] &lt;Int32&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Search the association index for any associations that match the specified name or uri.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AssociationName &lt;String&gt;<p>
The association name to be matched, if specified.  Valid association names are 

	* BLADE_TO_PROFILE
	* PROFILE_TO_SERVER_HARDWARE_TYPE
	* RACK_TO_PHYSICAL_DEVICE
	* BLADE_TO_INTERCONNECT
	* ENCLOSURE_GROUP_TO_ENCLOSURE
	* ENCLOSURE_GROUP_TO_LOGICAL_INTERCONNECT_GROUP
	* ENCLOSURE_TO_BLADE
	* ENCLOSURE_TO_SWITCH
	* LOGICAL_SWITCH_TO_LOGICAL_UPLINK
	* SWITCH_TO_LOGICAL_SWITCH
	* SERVER_PROFILES_TO_FC_NETWORKS
	* SERVER_PROFILES_TO_NETWORKS
	* STORAGE_SYSTEM_TO_STORAGE_POOL
	* FC_NETWORK_TO_STORAGE_SYSTEM
	* STORAGE_POOL_TO_VOLUME
	* STORAGE_POOL_TO_VOLUME_TEMPLATE

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Child &lt;Object&gt;<p>
Aliases [-EndObjUri]

The uri of an object which is the end of an association

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;Int32&gt;<p>
The maximum number of association index entries to be returned.  Defaults to 50.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>50</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Parent &lt;Object&gt;<p>
Aliases [-StartObjUri]

The uri of an object which is the start of an association

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;Int32&gt;<p>
The index of the first association index to be returned, defaults to 0.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Resource Object to find associated resources



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Single association index entry

 _**System.Collections.ArrayList**_

 

Multiple association index entries 
 The matching index entries



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Search-HPOVAssociations BLADE_TO_PROFILE -endObjUri /rest/server-profiles/1ab4c031-a631-4288-9e7d-3cfca24d30cf
</pre>
Return any BLADE_TO_PROFILE associations that have an end object with the specified uri



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Search-HPOVAssociations
<p>
Search the association index.

### SYNTAX
<p>
<pre><code>Search-HPOVAssociations [-AssociationName] &lt;String&gt; [-Parent] &lt;Object&gt; [-Child] &lt;Object&gt; [-Count] &lt;Int32&gt; [-Start] &lt;Int32&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Search the association index for any associations that match the specified name or uri.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AssociationName &lt;String&gt;<p>
The association name to be matched, if specified.  Valid association names are 

	* BLADE_TO_PROFILE
	* PROFILE_TO_SERVER_HARDWARE_TYPE
	* RACK_TO_PHYSICAL_DEVICE
	* BLADE_TO_INTERCONNECT
	* ENCLOSURE_GROUP_TO_ENCLOSURE
	* ENCLOSURE_GROUP_TO_LOGICAL_INTERCONNECT_GROUP
	* ENCLOSURE_TO_BLADE
	* ENCLOSURE_TO_SWITCH
	* LOGICAL_SWITCH_TO_LOGICAL_UPLINK
	* SWITCH_TO_LOGICAL_SWITCH
	* SERVER_PROFILES_TO_FC_NETWORKS
	* SERVER_PROFILES_TO_NETWORKS
	* STORAGE_SYSTEM_TO_STORAGE_POOL
	* FC_NETWORK_TO_STORAGE_SYSTEM
	* STORAGE_POOL_TO_VOLUME
	* STORAGE_POOL_TO_VOLUME_TEMPLATE

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Child &lt;Object&gt;<p>
Aliases [-EndObjUri]

The uri of an object which is the end of an association

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;Int32&gt;<p>
The maximum number of association index entries to be returned.  Defaults to 50.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>50</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Parent &lt;Object&gt;<p>
Aliases [-StartObjUri]

The uri of an object which is the start of an association

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;Int32&gt;<p>
The index of the first association index to be returned, defaults to 0.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_

 Resource Object to find associated resources



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Single association index entry

 _**System.Collections.ArrayList**_

 

Multiple association index entries 
 The matching index entries



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Search-HPOVAssociations BLADE_TO_PROFILE -endObjUri /rest/server-profiles/1ab4c031-a631-4288-9e7d-3cfca24d30cf
</pre>
Return any BLADE_TO_PROFILE associations that have an end object with the specified uri



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
