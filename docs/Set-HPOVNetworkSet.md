<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVNetworkSet
<p>
Modify an existing network set.

### SYNTAX
<p>
<pre><code>Set-HPOVNetworkSet [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Networks] &lt;Object[]&gt;][ [-AddNetwork] &lt;Object[]&gt;][ [-RemoveNetwork] &lt;Object&gt;][ [-UntaggedNetwork] &lt;Object&gt;][ [-TypicalBandwidth] &lt;Int32&gt;][ [-MaximumBandwidth] &lt;Int32&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Modify a network set and/or its connection information.


### Parameters

-AddNetwork &lt;Object[]&gt;<p>
Specify 1 or more network resources to add to the specified network set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>8</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-NetworkSet, -netSet]
The Network Set resource object or name to be modified.

<table><tbody><tr><td>Aliases</td><td>NetSet, NetworkSet</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaximumBandwidth &lt;Int32&gt;<p>
The updated MAximum bandwidth, in Mbps.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>7</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The updated name value of the Network Set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Networks &lt;Object[]&gt;<p>
An array containing the updated list of networks.  May contain Network objects, names or URI"s.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RemoveNetwork &lt;Object&gt;<p>
Specify 1 or more network resources to remove from the specified network set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TypicalBandwidth &lt;Int32&gt;<p>
The updated Typical or Preferred bandwidth, in Mbps.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>6</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UntaggedNetwork &lt;Object&gt;<p>
Aliases [-untagged, -native, -untaggedNetworkUri]
The Name or URI of the Untaggged, or Native Network for the Network Set.

<table><tbody><tr><td>Aliases</td><td>untagged, native, untaggedNetworkUri</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.NetworkSet [System.Management.Automation.PSCustomObject]**_

 Single Network Set resource



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Update Network Set resource task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$netset = Get-HPOVNetworkSet -Name "Set-1"
$netset.maximumBandwidth = 5000
$netset.typicalBandwidth = 3000
Set-HPOVNetworkSet $netset

</pre>
Modify "Set-1" to be maximum bandwidth of 5000.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVNetworkSet -Name NetSet-1 | Set-HPOVNetworkSet -name NewNetSet-1 -networks @(bluenet,rednet,greennet) -untagged bluenet
</pre>
Update "NetSet-1" with a new name, adjust the networks, and set "bluenet" as the Untagged Network.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$NetworkToAdd = Get-HPOVNetwork -Name "Prod 442 VLAN"
Get-HPOVNetworkSet -Name NetSet-1 | Set-HPOVNetworkSet -AddNetwork $NetworkToAdd
</pre>
Add the specified network to the existing network set.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$NetworksToRemove = Get-HPOVNetwork -Name "Dev 45*"
Get-HPOVNetworkSet -Name NetSet-2 | Set-HPOVNetworkSet -RemoveNetwork $NetworksToRemove
</pre>
Remove the specified networks from the existing network set.



### Related Links

* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVNetworkSet
<p>
Modify an existing network set.

### SYNTAX
<p>
<pre><code>Set-HPOVNetworkSet [-InputObject] &lt;Object&gt;[ [-Name] &lt;String&gt;][ [-Networks] &lt;Object[]&gt;][ [-AddNetwork] &lt;Object[]&gt;][ [-RemoveNetwork] &lt;Object&gt;][ [-UntaggedNetwork] &lt;Object&gt;][ [-TypicalBandwidth] &lt;Int32&gt;][ [-MaximumBandwidth] &lt;Int32&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Modify a network set and/or its connection information.


### Parameters

-AddNetwork &lt;Object[]&gt;<p>
Specify 1 or more network resources to add to the specified network set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>8</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-NetworkSet, -netSet]
The Network Set resource object or name to be modified.

<table><tbody><tr><td>Aliases</td><td>NetSet, NetworkSet</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaximumBandwidth &lt;Int32&gt;<p>
The updated MAximum bandwidth, in Mbps.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>7</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The updated name value of the Network Set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Networks &lt;Object[]&gt;<p>
An array containing the updated list of networks.  May contain Network objects, names or URI"s.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RemoveNetwork &lt;Object&gt;<p>
Specify 1 or more network resources to remove from the specified network set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TypicalBandwidth &lt;Int32&gt;<p>
The updated Typical or Preferred bandwidth, in Mbps.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>6</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UntaggedNetwork &lt;Object&gt;<p>
Aliases [-untagged, -native, -untaggedNetworkUri]
The Name or URI of the Untaggged, or Native Network for the Network Set.

<table><tbody><tr><td>Aliases</td><td>untagged, native, untaggedNetworkUri</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.NetworkSet [System.Management.Automation.PSCustomObject]**_

 Single Network Set resource



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Update Network Set resource task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$netset = Get-HPOVNetworkSet -Name "Set-1"
$netset.maximumBandwidth = 5000
$netset.typicalBandwidth = 3000
Set-HPOVNetworkSet $netset

</pre>
Modify "Set-1" to be maximum bandwidth of 5000.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVNetworkSet -Name NetSet-1 | Set-HPOVNetworkSet -name NewNetSet-1 -networks @(bluenet,rednet,greennet) -untagged bluenet
</pre>
Update "NetSet-1" with a new name, adjust the networks, and set "bluenet" as the Untagged Network.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$NetworkToAdd = Get-HPOVNetwork -Name "Prod 442 VLAN"
Get-HPOVNetworkSet -Name NetSet-1 | Set-HPOVNetworkSet -AddNetwork $NetworkToAdd
</pre>
Add the specified network to the existing network set.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$NetworksToRemove = Get-HPOVNetwork -Name "Dev 45*"
Get-HPOVNetworkSet -Name NetSet-2 | Set-HPOVNetworkSet -RemoveNetwork $NetworksToRemove
</pre>
Remove the specified networks from the existing network set.



### Related Links

* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVNetworkSet
<p>
Modify an existing network set.

### SYNTAX
<p>
<pre><code>Set-HPOVNetworkSet [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Networks] &lt;Object&gt;[ [-AddNetwork] &lt;Object[]&gt;][ [-RemoveNetwork] &lt;Object&gt;] [-UntaggedNetwork] &lt;Object&gt; [-TypicalBandwidth] &lt;Int32&gt; [-MaximumBandwidth] &lt;Int32&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Modify a network set and/or its connection information.


### Parameters

-AddNetwork &lt;Object[]&gt;<p>
Specify 1 or more network resources to add to the specified network set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>8</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-NetworkSet, -netSet]
The Network Set resource object or name to be modified.

<table><tbody><tr><td>Aliases</td><td>NetSet, NetworkSet</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaximumBandwidth &lt;Int32&gt;<p>
The updated MAximum bandwidth, in Mbps.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>7</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The updated name value of the Network Set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Networks &lt;Object&gt;<p>
An array containing the updated list of networks.  May contain Network Names or URI"s.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RemoveNetwork &lt;Object&gt;<p>
Specify 1 or more network resources to remove from the specified network set.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TypicalBandwidth &lt;Int32&gt;<p>
The updated Typical or Preferred bandwidth, in Mbps.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>6</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UntaggedNetwork &lt;Object&gt;<p>
Aliases [-untagged, -native, -untaggedNetworkUri]
The Name or URI of the Untaggged, or Native Network for the Network Set.

<table><tbody><tr><td>Aliases</td><td>untagged, native, untaggedNetworkUri</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>5</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Networking.NetworkSet [System.Management.Automation.PSCustomObject]**_

 Single Network Set resource



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Update Network Set resource task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$netset = Get-HPOVNetworkSet "Set-1"
$netset.maximumBandwidth = 5000
$netset.typicalBandwidth = 3000
Set-HPOVNetworkSet $netset

</pre>
Modify "Set-1" to be maximum bandwidth of 5000.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVNetworkSet NetSet-1 | Set-HPOVNetworkSet -name NewNetSet-1 -networks @(bluenet,rednet,greennet) -untagged bluenet
</pre>
Update "NetSet-1" with a new name, adjust the networks, and set "bluenet" as the Untagged Network.



### Related Links

* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)
* [New-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVNetworkSet)
* [Remove-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
