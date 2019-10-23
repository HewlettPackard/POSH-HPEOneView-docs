<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVLdap
<p>
List Global Authentication Directory settings.

### SYNTAX
<p>
<pre><code>Get-HPOVLdap[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLdap[ [-Export] &lt;SwitchParameter&gt;] [-Save] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display the global authentication directory settings configured on the appliance.  It will show if local logins are enabled, default authentication directory name, and configured authentication directory names.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;SwitchParameter&gt;<p>
Aliases [-x]
Export the configured directories to individual files.

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Save &lt;String&gt;<p>
Aliases [-location]
Directory where the exported configured directories will be saved to.  A filename of "{appliance_name}_globalSettings.json" will be created.

<table><tbody><tr><td>Aliases</td><td>location</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AuthGlobalDirectoryConfiguration [System.Management.Automation.PSCustomObject]**_

 

Global Authentication Settings object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLdap
Allow Local Login Default Directory Configured Directories
----------------- ----------------- ----------------------
True              domain1           {domain1, domain2}
True              domain2           {domain1, domain2}

</pre>
View the Global Authentication Directory configuration for all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLdap -export -save c:\directory
</pre>
Export the Global Authentication Directory configuration settings.



### Related Links

* [Add-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVLdapServer)
* [Disable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLdapLocalLogin)
* [Enable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLdapLocalLogin)
* [Get-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapDirectory)
* [Get-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapGroup)
* [New-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapDirectory)
* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup)
* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer)
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory)
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup)
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer)
* [Set-HPOVLdapDefaultDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapDefaultDirectory)
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole)
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVLdap
<p>
List Global Authentication Directory settings.

### SYNTAX
<p>
<pre><code>Get-HPOVLdap[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLdap[ [-Export] &lt;SwitchParameter&gt;] [-Save] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display the global authentication directory settings configured on the appliance.  It will show if local logins are enabled, default authentication directory name, and configured authentication directory names.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;SwitchParameter&gt;<p>
Aliases [-x]
Export the configured directories to individual files.

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Save &lt;String&gt;<p>
Aliases [-location]
Directory where the exported configured directories will be saved to.  A filename of "{appliance_name}_globalSettings.json" will be created.

<table><tbody><tr><td>Aliases</td><td>location</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AuthGlobalDirectoryConfiguration [System.Management.Automation.PSCustomObject]**_

 

Global Authentication Settings object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLdap
Allow Local Login Default Directory Configured Directories
----------------- ----------------- ----------------------
True              domain1           {domain1, domain2}
True              domain2           {domain1, domain2}

</pre>
View the Global Authentication Directory configuration for all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLdap -export -save c:\directory
</pre>
Export the Global Authentication Directory configuration settings.



### Related Links

* [Add-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVLdapServer)
* [Disable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLdapLocalLogin)
* [Enable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLdapLocalLogin)
* [Get-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapDirectory)
* [Get-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapGroup)
* [New-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapDirectory)
* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup)
* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer)
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory)
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup)
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer)
* [Set-HPOVLdapDefaultDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapDefaultDirectory)
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole)
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVLdap
<p>
List Global Authentication Directory settings.

### SYNTAX
<p>
<pre><code>Get-HPOVLdap[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLdap[ [-Export] &lt;SwitchParameter&gt;] [-Save] &lt;String&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display the global authentication directory settings configured on the appliance.  It will show if local logins are enabled, default authentication directory name, and configured authentication directory names.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;SwitchParameter&gt;<p>
Aliases [-x]
Export the configured directories to individual files.

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Save &lt;String&gt;<p>
Aliases [-location]
Directory where the exported configured directories will be saved to.  A filename of "{appliance_name}_globalSettings.json" will be created.

<table><tbody><tr><td>Aliases</td><td>location</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AuthGlobalDirectoryConfiguration [System.Management.Automation.PSCustomObject]**_

 

Global Authentication Settings object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLdap
Allow Local Login Default Directory Configured Directories
----------------- ----------------- ----------------------
True              domain1           {domain1, domain2}
True              domain2           {domain1, domain2}

</pre>
View the Global Authentication Directory configuration for all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLdap -export -save c:\directory
</pre>
Export the Global Authentication Directory configuration settings.



### Related Links

* [Add-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVLdapServer)
* [Disable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVLdapLocalLogin)
* [Enable-HPOVLdapLocalLogin](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVLdapLocalLogin)
* [Get-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapDirectory)
* [Get-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLdapGroup)
* [New-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapDirectory)
* [New-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapGroup)
* [New-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapServer)
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory)
* [Remove-HPOVLdapGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapGroup)
* [Remove-HPOVLdapServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapServer)
* [Set-HPOVLdapDefaultDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapDefaultDirectory)
* [Set-HPOVLdapGroupRole](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVLdapGroupRole)
* [Show-HPOVLdapGroups](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVLdapGroups)


***
<div align=right><a href="#Top">Top</a></div>
