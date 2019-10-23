<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVSnmpReadCommunity
<p>
Set SNMP Read Community.

### SYNTAX
<p>
<pre><code>Set-HPOVSnmpReadCommunity [-Name] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Set a new SNMP Read Community value on the appliance.  Updating this value will cause the appliance to refresh the managed devices with the updated Read-Only SNMP Community string.  This does not update the SNMP trap destination(s) for Logical Interconnects or Logical Interconnect Groups.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the new SNMP Read-Only Community.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**None.**_

 

None



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVSnmpReadCommunity -name "MySNMPC0mmunity"
</pre>
Set the appliance SNMP Read Community string to the new value.



### Related Links

* [Get-HPOVSnmpReadCommunity](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSnmpReadCommunity)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVSnmpReadCommunity
<p>
Set SNMP Read Community.

### SYNTAX
<p>
<pre><code>Set-HPOVSnmpReadCommunity [-Name] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Set a new SNMP Read Community value on the appliance.  Updating this value will cause the appliance to refresh the managed devices with the updated Read-Only SNMP Community string.  This does not update the SNMP trap destination(s) for Logical Interconnects or Logical Interconnect Groups.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the new SNMP Read-Only Community.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**None.**_

 

None



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVSnmpReadCommunity -name "MySNMPC0mmunity"
</pre>
Set the appliance SNMP Read Community string to the new value.



### Related Links

* [Get-HPOVSnmpReadCommunity](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSnmpReadCommunity)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVSnmpReadCommunity
<p>
Set SNMP Read Community.

### SYNTAX
<p>
<pre><code>Set-HPOVSnmpReadCommunity [-Name] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Set a new SNMP Read Community value on the appliance.  Updating this value will cause the appliance to refresh the managed devices with the updated Read-Only SNMP Community string.  This does not update the SNMP trap destination(s) for Logical Interconnects or Logical Interconnect Groups.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the new SNMP Read-Only Community.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**None.**_

 

None



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVSnmpReadCommunity -name "MySNMPC0mmunity"
</pre>
Set the appliance SNMP Read Community string to the new value.



### Related Links

* [Get-HPOVSnmpReadCommunity](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVSnmpReadCommunity)


***
<div align=right><a href="#Top">Top</a></div>
