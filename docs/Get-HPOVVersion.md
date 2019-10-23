<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVVersion
<p>
Display library component versions.

### SYNTAX
<p>
<pre><code>Get-HPOVVersion[ [-ApplianceVer] &lt;SwitchParameter&gt;][ [-CheckOnline] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVVersion[ [-CheckOnline] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Display either the HPE OneView PowerShell library or appliance version.  Displaying the Appliance version will provide the Major, Minor, full version, and X-API Version information.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>${Global:ConnectedSessions}</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceVer &lt;SwitchParameter&gt;<p>
Include the appliance version.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CheckOnline &lt;SwitchParameter&gt;<p>
Check the GitHub repository for an updated version of the library.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The HPE OneView PowerShell Library or Appliance version information



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVVersion
</pre>
Get the HPE OneView PowerShell library version


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVVersion -ApplianceVer
PowerShell Library Version : 1.20.208.0
Library Path               : C:\Users\user\Documents\WindowsPowerShell\Modules\HPOneView.120
Appliance Major Version    : 1
Appliance Minor Version    : 20
Appliance Version Info     : 1.20.05-0201918
Appliance X-API Version    : 120

</pre>
Get the HPE OneView PowerShell library, Appliance and X-API version information


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVVersion -CheckOnline
PowerShell Library Version : 1.20.166.0
Library Path               : C:\Users\user\Documents\WindowsPowerShell\Modules\hponeview.120


Please Confirm
You currently have v1.20.166.0 installed.  The HPE OneView PowerShell Library v1.20.208.0 was found that is newer.  Do
you want to download the current version of the HPE OneView POSH Library (will open your web browser for you to
download)?
[Y] Yes  [N] No  [?] Help (default is "Y"):

</pre>
Display the installed library version, and check for availability of an updated version online. If an updated version is found, the CMDLET will prompt if the user would like to download it now. If so, browser window will be opened to current version to download.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVVersion
<p>
Display library component versions.

### SYNTAX
<p>
<pre><code>Get-HPOVVersion[ [-ApplianceVer] &lt;SwitchParameter&gt;][ [-CheckOnline] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVVersion[ [-CheckOnline] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Display either the HPE OneView PowerShell library or appliance version.  Displaying the Appliance version will provide the Major, Minor, full version, and X-API Version information.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>${Global:ConnectedSessions}</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceVer &lt;SwitchParameter&gt;<p>
Include the appliance version.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CheckOnline &lt;SwitchParameter&gt;<p>
Check the GitHub repository for an updated version of the library.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The HPE OneView PowerShell Library or Appliance version information



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVVersion
</pre>
Get the HPE OneView PowerShell library version


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVVersion -ApplianceVer
PowerShell Library Version : 1.20.208.0
Library Path               : C:\Users\user\Documents\WindowsPowerShell\Modules\HPOneView.120
Appliance Major Version    : 1
Appliance Minor Version    : 20
Appliance Version Info     : 1.20.05-0201918
Appliance X-API Version    : 120

</pre>
Get the HPE OneView PowerShell library, Appliance and X-API version information


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVVersion -CheckOnline
PowerShell Library Version : 1.20.166.0
Library Path               : C:\Users\user\Documents\WindowsPowerShell\Modules\hponeview.120


Please Confirm
You currently have v1.20.166.0 installed.  The HPE OneView PowerShell Library v1.20.208.0 was found that is newer.  Do
you want to download the current version of the HPE OneView POSH Library (will open your web browser for you to
download)?
[Y] Yes  [N] No  [?] Help (default is "Y"):

</pre>
Display the installed library version, and check for availability of an updated version online. If an updated version is found, the CMDLET will prompt if the user would like to download it now. If so, browser window will be opened to current version to download.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVVersion
<p>
Display library component versions.

### SYNTAX
<p>
<pre><code>Get-HPOVVersion[ [-ApplianceVer] &lt;SwitchParameter&gt;][ [-CheckOnline] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVVersion[ [-CheckOnline] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Display either the HPE OneView PowerShell library or appliance version.  Displaying the Appliance version will provide the Major, Minor, full version, and X-API Version information.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>${Global:ConnectedSessions}</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceVer &lt;SwitchParameter&gt;<p>
Include the appliance version.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -CheckOnline &lt;SwitchParameter&gt;<p>
Check the GitHub repository for an updated version of the library.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The HPE OneView PowerShell Library or Appliance version information



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVVersion
</pre>
Get the HPE OneView PowerShell library version


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVVersion -ApplianceVer
PowerShell Library Version : 1.20.208.0
Library Path               : C:\Users\user\Documents\WindowsPowerShell\Modules\HPOneView.120
Appliance Major Version    : 1
Appliance Minor Version    : 20
Appliance Version Info     : 1.20.05-0201918
Appliance X-API Version    : 120

</pre>
Get the HPE OneView PowerShell library, Appliance and X-API version information


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVVersion -CheckOnline
PowerShell Library Version : 1.20.166.0
Library Path               : C:\Users\user\Documents\WindowsPowerShell\Modules\hponeview.120


Please Confirm
You currently have v1.20.166.0 installed.  The HPE OneView PowerShell Library v1.20.208.0 was found that is newer.  Do
you want to download the current version of the HPE OneView POSH Library (will open your web browser for you to
download)?
[Y] Yes  [N] No  [?] Help (default is "Y"):

</pre>
Display the installed library version, and check for availability of an updated version online. If an updated version is found, the CMDLET will prompt if the user would like to download it now. If so, browser window will be opened to current version to download.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
