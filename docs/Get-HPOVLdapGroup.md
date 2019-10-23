<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVLdapGroup
<p>
List Directory Group role assignment.

### SYNTAX
<p>
<pre><code>Get-HPOVLdapGroup [-Name] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLdapGroup [-Export] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display the configured directory groups on the appliance, and display their assigned role(s).  The default display will include the URI of each configured group. Use the Report switch to display only the Directory Group Name, Login Domain and assigned role(s).


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Export JSON content to file

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-group, -GroupName]
Configured Directory Group Name. If omitted, all configured Directory Groups will be displayed.

<table><tbody><tr><td>Aliases</td><td>group, GroupName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AuthDirectoryGroupRoleMapping [System.Management.Automation.PSCustomObject]**_

 

Configured Directory Group role mapping

 _**System.Collections.ArrayList**_

 

Multiple configured Directory Group role mappings



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLdapGroup
Name                              Directory                               Roles
----                              ---------                               -----
My Directory Group1               domain1                                 {Storage administrator}
My Directory Group2               domain1                                 {Network administrator} 

</pre>
Get list of configured Directory Groups.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLdapGroup -Group "My Directory Group1"
Name                              Directory                               Roles
----                              ---------                               -----
My Directory Group1               domain1                                 {Storage administrator}

</pre>
Display My Directroy Group1 and the assigned roles


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVLdapGroup -export C:\dir\directorygroups.json
</pre>
Export configured Directory Groups to c:\dir\directorygroups.json



### Related Links

* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup)
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup)
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole)
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVLdapGroup
<p>
List Directory Group role assignment.

### SYNTAX
<p>
<pre><code>Get-HPOVLdapGroup [-Name] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLdapGroup [-Export] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display the configured directory groups on the appliance, and display their assigned role(s).  The default display will include the URI of each configured group. Use the Report switch to display only the Directory Group Name, Login Domain and assigned role(s).


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Export JSON content to file

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-group, -GroupName]
Configured Directory Group Name. If omitted, all configured Directory Groups will be displayed.

<table><tbody><tr><td>Aliases</td><td>group, GroupName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AuthDirectoryGroupRoleMapping [System.Management.Automation.PSCustomObject]**_

 

Configured Directory Group role mapping

 _**System.Collections.ArrayList**_

 

Multiple configured Directory Group role mappings



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLdapGroup
Name                              Directory                               Roles
----                              ---------                               -----
My Directory Group1               domain1                                 {Storage administrator}
My Directory Group2               domain1                                 {Network administrator} 

</pre>
Get list of configured Directory Groups.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLdapGroup -Group "My Directory Group1"
Name                              Directory                               Roles
----                              ---------                               -----
My Directory Group1               domain1                                 {Storage administrator}

</pre>
Display My Directroy Group1 and the assigned roles


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVLdapGroup -export C:\dir\directorygroups.json
</pre>
Export configured Directory Groups to c:\dir\directorygroups.json



### Related Links

* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup)
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup)
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole)
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVLdapGroup
<p>
List Directory Group role assignment.

### SYNTAX
<p>
<pre><code>Get-HPOVLdapGroup [-Name] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLdapGroup [-Export] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display the configured directory groups on the appliance, and display their assigned role(s).  The default display will include the URI of each configured group. Use the Report switch to display only the Directory Group Name, Login Domain and assigned role(s).


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Export JSON content to file

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-group, -GroupName]
Configured Directory Group Name. If omitted, all configured Directory Groups will be displayed.

<table><tbody><tr><td>Aliases</td><td>group, GroupName</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AuthDirectoryGroupRoleMapping [System.Management.Automation.PSCustomObject]**_

 

Configured Directory Group role mapping

 _**System.Collections.ArrayList**_

 

Multiple configured Directory Group role mappings



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLdapGroup
Name                              Directory                               Roles
----                              ---------                               -----
My Directory Group1               domain1                                 {Storage administrator}
My Directory Group2               domain1                                 {Network administrator} 

</pre>
Get list of configured Directory Groups.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLdapGroup -Group "My Directory Group1"
Name                              Directory                               Roles
----                              ---------                               -----
My Directory Group1               domain1                                 {Storage administrator}

</pre>
Display My Directroy Group1 and the assigned roles


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVLdapGroup -export C:\dir\directorygroups.json
</pre>
Export configured Directory Groups to c:\dir\directorygroups.json



### Related Links

* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup)
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup)
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole)
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups)


***
<div align=right><a href="#Top">Top</a></div>
