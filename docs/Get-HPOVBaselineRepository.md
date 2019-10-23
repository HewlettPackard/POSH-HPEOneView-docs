<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVBaselineRepository
<p>
Retrieve available baseline repository information.

### SYNTAX
<p>
<pre><code>Get-HPOVBaselineRepository[ [-Name] &lt;String&gt;][ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will return all configured baseline repositoryies by default.  Only a single External Repository can be defined per appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Return the repository with the name or matching name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify "Internal" or "External" to filter the repository type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.BaselineRepository [System.Management.Automation.PSCustomObject]**_

 

Either and Internal or External repository object

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.BaselineRepository&gt;**_

 

Multiple resource objects

 _**The configured baseline repositories are returned if no parameters are provided.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Repositories = Get-HPOVBaselineRepository
</pre>
Retrieves all repository objects from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVBaselineRepository -Type External
</pre>
Retrieves only the configured external repository on the appliance.



### Related Links

* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVBaselineRepository
<p>
Retrieve available baseline repository information.

### SYNTAX
<p>
<pre><code>Get-HPOVBaselineRepository[ [-Name] &lt;String&gt;][ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will return all configured baseline repositoryies by default.  Only a single External Repository can be defined per appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Return the repository with the name or matching name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify "Internal" or "External" to filter the repository type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.BaselineRepository [System.Management.Automation.PSCustomObject]**_

 

Either and Internal or External repository object

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.BaselineRepository&gt;**_

 

Multiple resource objects

 _**The configured baseline repositories are returned if no parameters are provided.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Repositories = Get-HPOVBaselineRepository
</pre>
Retrieves all repository objects from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVBaselineRepository -Type External
</pre>
Retrieves only the configured external repository on the appliance.



### Related Links

* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVBaselineRepository
<p>
Retrieve available baseline repository information.

### SYNTAX
<p>
<pre><code>Get-HPOVBaselineRepository[ [-Name] &lt;String&gt;][ [-Type] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will return all configured baseline repositoryies by default.  Only a single External Repository can be defined per appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Return the repository with the name or matching name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;String&gt;<p>
Specify "Internal" or "External" to filter the repository type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.BaselineRepository [System.Management.Automation.PSCustomObject]**_

 

Either and Internal or External repository object

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.BaselineRepository&gt;**_

 

Multiple resource objects

 _**The configured baseline repositories are returned if no parameters are provided.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Repositories = Get-HPOVBaselineRepository
</pre>
Retrieves all repository objects from the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVBaselineRepository -Type External
</pre>
Retrieves only the configured external repository on the appliance.



### Related Links

* [Show-HPOVBaselineRepositorySize](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVBaselineRepositorySize)


***
<div align=right><a href="#Top">Top</a></div>
