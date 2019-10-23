<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVNetworkSet
<p>
Create a new Network Set.

### SYNTAX
<p>
<pre><code>New-HPOVNetworkSet [-Name] &lt;String&gt; [-Networks] &lt;Object&gt; [-UntaggedNetwork] &lt;Object&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Create a new Network Set and connection type resource.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaximumBandwidth &lt;Int32&gt;<p>
Optional maximum amount of bandwidth to assign, specified in Mbps.  Default value is 10000.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>10000</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the new Network Set resource to be created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Networks &lt;Object&gt;<p>
Aliases [-networkUris]
Ethernet Network Name(s), URI(")s or Resource Object(s).

<table><tbody><tr><td>Aliases</td><td>networkUris</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TypicalBandwidth &lt;Int32&gt;<p>
Optional preferred amount of bandwidth to assign, specified in Mbps.  Default value is 2500.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>2500</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UntaggedNetwork &lt;Object&gt;<p>
Aliases [-untagged, -native, -untaggedNetworkUri]
Network (from the above list) to be considered the "native" network in this set.  Traffic on this network will leave the Virtual Connect downlink port untagged.  When untagged traffic is received on this port, it will be mapped to this network.

<table><tbody><tr><td>Aliases</td><td>untagged, native, untaggedNetworkUri</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Collections.ArrayList**_

 

If bandwidth settings are specified, the newly created Network Set resource is returned

 _**System.Management.Automation.PSCustomObject**_

 

If no bandwidth settings specified, an async task object is returned



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVNetworkSet -name "Production Networks" -untaggedNetwork yellow -networks blue, green, yellow
</pre>
Create a new Network Set called "Production Networks", adding Ethernet Networks "blue", "green", and "yellow", on all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$networks = "blue","green","yellow" | % { Get-HPOVNetwork $_ -type Ethernet }
New-HPOVNetworkSet -name "Production Networks" -Networks $networks -UntaggedNetwork $networks[1]

</pre>
Get Ethernet Networks "blue", "green", and "yellow", then create a new Network Set, with "Green" as the UntaggedNetowrk for the specified appliance connection.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
New-HPOVNetworkSet -name "Production Networks" -untaggedNetwork yellow -networks blue, green, yellow -TypicalBandwidth 1000 -MaximumBandwidth 5000
</pre>
Create a new Network Set called "Production Networks", adding Ethernet Networks "blue", "green", and "yellow", setting the Typical and Maximum Bandwidth.



### Related Links

* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVNetworkSet
<p>
Create a new Network Set.

### SYNTAX
<p>
<pre><code>New-HPOVNetworkSet [-Name] &lt;String&gt; [-Networks] &lt;Object&gt; [-UntaggedNetwork] &lt;Object&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Create a new Network Set and connection type resource.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaximumBandwidth &lt;Int32&gt;<p>
Optional maximum amount of bandwidth to assign, specified in Mbps.  Default value is 10000.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>10000</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the new Network Set resource to be created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Networks &lt;Object&gt;<p>
Aliases [-networkUris]
Ethernet Network Name(s), URI(")s or Resource Object(s).

<table><tbody><tr><td>Aliases</td><td>networkUris</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TypicalBandwidth &lt;Int32&gt;<p>
Optional preferred amount of bandwidth to assign, specified in Mbps.  Default value is 2500.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>2500</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UntaggedNetwork &lt;Object&gt;<p>
Aliases [-untagged, -native, -untaggedNetworkUri]
Network (from the above list) to be considered the "native" network in this set.  Traffic on this network will leave the Virtual Connect downlink port untagged.  When untagged traffic is received on this port, it will be mapped to this network.

<table><tbody><tr><td>Aliases</td><td>untagged, native, untaggedNetworkUri</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Collections.ArrayList**_

 

If bandwidth settings are specified, the newly created Network Set resource is returned

 _**System.Management.Automation.PSCustomObject**_

 

If no bandwidth settings specified, an async task object is returned



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVNetworkSet -name "Production Networks" -untaggedNetwork yellow -networks blue, green, yellow
</pre>
Create a new Network Set called "Production Networks", adding Ethernet Networks "blue", "green", and "yellow", on all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$networks = "blue","green","yellow" | % { Get-HPOVNetwork $_ -type Ethernet }
New-HPOVNetworkSet -name "Production Networks" -Networks $networks -UntaggedNetwork $networks[1]

</pre>
Get Ethernet Networks "blue", "green", and "yellow", then create a new Network Set, with "Green" as the UntaggedNetowrk for the specified appliance connection.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
New-HPOVNetworkSet -name "Production Networks" -untaggedNetwork yellow -networks blue, green, yellow -TypicalBandwidth 1000 -MaximumBandwidth 5000
</pre>
Create a new Network Set called "Production Networks", adding Ethernet Networks "blue", "green", and "yellow", setting the Typical and Maximum Bandwidth.



### Related Links

* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVNetworkSet
<p>
Create a new Network Set.

### SYNTAX
<p>
<pre><code>New-HPOVNetworkSet [-Name] &lt;String&gt; [-Networks] &lt;Object&gt; [-UntaggedNetwork] &lt;Object&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Create a new Network Set and connection type resource.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaximumBandwidth &lt;Int32&gt;<p>
Optional maximum amount of bandwidth to assign, specified in Mbps.  Default value is 10000.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td>10000</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the new Network Set resource to be created.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Networks &lt;Object&gt;<p>
Aliases [-networkUris]
Ethernet Network Name(s), URI(")s or Resource Object(s).

<table><tbody><tr><td>Aliases</td><td>networkUris</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TypicalBandwidth &lt;Int32&gt;<p>
Optional preferred amount of bandwidth to assign, specified in Mbps.  Default value is 2500.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>2500</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UntaggedNetwork &lt;Object&gt;<p>
Aliases [-untagged, -native, -untaggedNetworkUri]
Network (from the above list) to be considered the "native" network in this set.  Traffic on this network will leave the Virtual Connect downlink port untagged.  When untagged traffic is received on this port, it will be mapped to this network.

<table><tbody><tr><td>Aliases</td><td>untagged, native, untaggedNetworkUri</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Collections.ArrayList**_

 

If bandwidth settings are specified, the newly created Network Set resource is returned

 _**System.Management.Automation.PSCustomObject**_

 

If no bandwidth settings specified, an async task object is returned



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVNetworkSet -name "Production Networks" -untaggedNetwork yellow -networks blue, green, yellow
</pre>
Create a new Network Set called "Production Networks", adding Ethernet Networks "blue", "green", and "yellow", on all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$networks = "blue","green","yellow" | % { Get-HPOVNetwork $_ -type Ethernet }
New-HPOVNetworkSet -name "Production Networks" -Networks $networks -UntaggedNetwork $networks[1]

</pre>
Get Ethernet Networks "blue", "green", and "yellow", then create a new Network Set, with "Green" as the UntaggedNetowrk for the specified appliance connection.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
New-HPOVNetworkSet -name "Production Networks" -untaggedNetwork yellow -networks blue, green, yellow -TypicalBandwidth 1000 -MaximumBandwidth 5000
</pre>
Create a new Network Set called "Production Networks", adding Ethernet Networks "blue", "green", and "yellow", setting the Typical and Maximum Bandwidth.



### Related Links

* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)
* [Set-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
