<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVEulaStatus
<p>
Retrieve EULA status.

### SYNTAX
<p>
<pre><code>Get-HPOVEulaStatus [-Appliance] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Determine if the EULA for the specified appliance needs to be accepted.  This is typically called during First Time Setup of the appliance.

This Cmdlet supports an unauthenticated request.  If attempting to get the EULA status of an appliance not yet configured, provide the IP Address or FQDN of the appliance.  A temporary ApplianceConnection will be created then removed in the ${Global:ConnectedSessions} tracker.


### Parameters

-Appliance &lt;Object&gt;<p>
The FQDN, IP Address or HPOneView.Appliance.Connection of an HPE OneView appliance must be provided.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.EulaStatus**_

 

Object that returns the Appliance Name and if the EULA has been accepted with a boolean "Accepted" property.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEulaStatus -Appliance myappliance.domain.com

Appliance              Accepted
---------              --------
myappliance.domain.com    False</pre>
Get the EULA status from myappliance.domain.com


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Connection = Connect-HPOVMgmt -Appliance myappliance.domain.com -Username Administrator -Password MyPassw0rd
Get-HPOVEulaStatus -Appliance $Connection

Appliance              Accepted
---------              --------
myappliance.domain.com    False</pre>
COnnecto to an appliance, then get the EULA status from myappliance.domain.com



### Related Links

* [Set-HPOVEulaStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEulaStatus)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVEulaStatus
<p>
Retrieve EULA status.

### SYNTAX
<p>
<pre><code>Get-HPOVEulaStatus [-Appliance] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Determine if the EULA for the specified appliance needs to be accepted.  This is typically called during First Time Setup of the appliance.

This Cmdlet supports an unauthenticated request.  If attempting to get the EULA status of an appliance not yet configured, provide the IP Address or FQDN of the appliance.  A temporary ApplianceConnection will be created then removed in the ${Global:ConnectedSessions} tracker.


### Parameters

-Appliance &lt;Object&gt;<p>
The FQDN, IP Address or HPOneView.Appliance.Connection of an HPE OneView appliance must be provided.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.EulaStatus**_

 

Object that returns the Appliance Name and if the EULA has been accepted with a boolean "Accepted" property.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEulaStatus -Appliance myappliance.domain.com

Appliance              Accepted
---------              --------
myappliance.domain.com    False</pre>
Get the EULA status from myappliance.domain.com


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Connection = Connect-HPOVMgmt -Appliance myappliance.domain.com -Username Administrator -Password MyPassw0rd
Get-HPOVEulaStatus -Appliance $Connection

Appliance              Accepted
---------              --------
myappliance.domain.com    False</pre>
COnnecto to an appliance, then get the EULA status from myappliance.domain.com



### Related Links

* [Set-HPOVEulaStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEulaStatus)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVEulaStatus
<p>
Retrieve EULA status.

### SYNTAX
<p>
<pre><code>Get-HPOVEulaStatus [-Appliance] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Determine if the EULA for the specified appliance needs to be accepted.  This is typically called during First Time Setup of the appliance.

This Cmdlet supports an unauthenticated request.  If attempting to get the EULA status of an appliance not yet configured, provide the IP Address or FQDN of the appliance.  A temporary ApplianceConnection will be created then removed in the ${Global:ConnectedSessions} tracker.


### Parameters

-Appliance &lt;Object&gt;<p>
The FQDN, IP Address or HPOneView.Appliance.Connection of an HPE OneView appliance must be provided.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.EulaStatus**_

 

Object that returns the Appliance Name and if the EULA has been accepted with a boolean "Accepted" property.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEulaStatus -Appliance myappliance.domain.com

Appliance              Accepted
---------              --------
myappliance.domain.com    False</pre>
Get the EULA status from myappliance.domain.com


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Connection = Connect-HPOVMgmt -Appliance myappliance.domain.com -Username Administrator -Password MyPassw0rd
Get-HPOVEulaStatus -Appliance $Connection

Appliance              Accepted
---------              --------
myappliance.domain.com    False</pre>
COnnecto to an appliance, then get the EULA status from myappliance.domain.com



### Related Links

* [Set-HPOVEulaStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEulaStatus)


***
<div align=right><a href="#Top">Top</a></div>
