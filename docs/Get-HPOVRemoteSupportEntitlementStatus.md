<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVRemoteSupportEntitlementStatus
<p>
Disable Remote Support for a supported resource.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupportEntitlementStatus [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will return the Remote Support entitlement status for a compute or enclosure resource.  If remote support has not been globally enabled and configured on the appliance, this Cmdlet will fail.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The compute or enclosure resource to enable Remote Support for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.



### Return Values

_**HPOneView.RemoteSupport.ContractAndWarrantyStatus**_

 

The object with the current contract and warranty status.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer -Name Prod* | Get-HPOVRemoteSupportEntitlementStatus
</pre>
Get the servers with their name matching "Prod" and get their Remote Support entitlement status.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Enclosure = Get-HPOVEnclousre -Name Enclosure-1A
Get-HPOVRemoteSupportEntitlementStatus -InputObject $Enclusre
</pre>
Get the specific enclosure reousrce and get Remote Support entitlement status.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVRemoteSupportEntitlementStatus
<p>
Disable Remote Support for a supported resource.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupportEntitlementStatus [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will return the Remote Support entitlement status for a compute or enclosure resource.  If remote support has not been globally enabled and configured on the appliance, this Cmdlet will fail.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The compute or enclosure resource to enable Remote Support for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.



### Return Values

_**HPOneView.RemoteSupport.ContractAndWarrantyStatus**_

 

The object with the current contract and warranty status.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer -Name Prod* | Get-HPOVRemoteSupportEntitlementStatus
</pre>
Get the servers with their name matching "Prod" and get their Remote Support entitlement status.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Enclosure = Get-HPOVEnclousre -Name Enclosure-1A
Get-HPOVRemoteSupportEntitlementStatus -InputObject $Enclusre
</pre>
Get the specific enclosure reousrce and get Remote Support entitlement status.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVRemoteSupportEntitlementStatus
<p>
Disable Remote Support for a supported resource.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupportEntitlementStatus [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will return the Remote Support entitlement status for a compute or enclosure resource.  If remote support has not been globally enabled and configured on the appliance, this Cmdlet will fail.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The compute or enclosure resource to enable Remote Support for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.



### Return Values

_**HPOneView.RemoteSupport.ContractAndWarrantyStatus**_

 

The object with the current contract and warranty status.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer -Name Prod* | Get-HPOVRemoteSupportEntitlementStatus
</pre>
Get the servers with their name matching "Prod" and get their Remote Support entitlement status.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Enclosure = Get-HPOVEnclousre -Name Enclosure-1A
Get-HPOVRemoteSupportEntitlementStatus -InputObject $Enclusre
</pre>
Get the specific enclosure reousrce and get Remote Support entitlement status.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
