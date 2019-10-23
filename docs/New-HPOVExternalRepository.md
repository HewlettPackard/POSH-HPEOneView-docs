<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVExternalRepository
<p>
Create a new external baseline repository.

### SYNTAX
<p>
<pre><code>New-HPOVExternalRepository [-Name] &lt;String&gt; [-Hostname] &lt;String&gt; [-Directory] &lt;String&gt;[ [-Username] &lt;String&gt;][ [-Password] &lt;SecureString&gt;][ [-Http] &lt;SwitchParameter&gt;][ [-Certificate] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVExternalRepository [-Name] &lt;String&gt; [-Hostname] &lt;String&gt; [-Directory] &lt;String&gt; [-Credential] &lt;String&gt;[ [-Http] &lt;SwitchParameter&gt;][ [-Certificate] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A firmware repository enables you to store firmware bundles and deploy them across your environment.  An externally managed HTTP/HTTPS web server can be added to the appliance as a repository. It is a user-maintained HTTP/HTTPS web server. You can upload firmware bundles in a specific directory and then register the HTTP/HTTPS server with HPE OneView. This functionality is supported for Linux and Windows systems.

The recommended types of external web servers to use with the repository follow:

	* Apache
	* Internet Information Services (IIS)

NOTE: Only one external repository can be added.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Certificate &lt;String&gt;<p>
The Base64 Certificate of the target web server.  Must be specified if the -HTTP parameter is not used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;String&gt;<p>
Provide a PSCredential object if the target web server requires authentication.  By default, HTTPS will be used and basic authentication is used to communicate with the target web server.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Directory &lt;String&gt;<p>
Specify the parent virtual directory where the baseline components will be kept.  Baseline components can be nested within sub directories.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Specify IPv4 Address or FQDN of the target web server.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Http &lt;SwitchParameter&gt;<p>
Use to override the default HTTPS protocol used to communicate with the target web server.  If this parameter is not used, you must specify the Base64 Certificate of the target web server.  If you use this parameter, all authentication requests will be sent as clear text.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Provide a name for the repository.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Provide the password of the username using a SecureString.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Provide the username to authenticate to the target web server with if required.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task for the caller to monitor.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple async task resource objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Params = @{

	Name        = "MyRepoName";
	Hostname    = "webserver.domain.local";
	Directory   = "OneViewRepo";
	Credential  = (Get-PSCredential -Username "DomainName\MyUser");
	Certificate = (Get-Content -Path C:\Directory\Base64.cer -Raw)

}
New-HPOVExternalRepository @Params
</pre>
Create an external repository using a PSCredential object.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVExternalRepository -Name MyRepoName -Hostname webserver.domain.local -Directory OneViewRepo -Http
</pre>
Configure an external repository using anonymous authentication, and HTTP protocol.



### Related Links

* [Remove-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVExternalRepository)
* [Set-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVExternalRepository)
* [Update-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVExternalRepository)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVExternalRepository
<p>
Create a new external baseline repository.

### SYNTAX
<p>
<pre><code>New-HPOVExternalRepository [-Name] &lt;String&gt; [-Hostname] &lt;String&gt; [-Directory] &lt;String&gt;[ [-Username] &lt;String&gt;][ [-Password] &lt;SecureString&gt;][ [-Http] &lt;SwitchParameter&gt;][ [-Certificate] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVExternalRepository [-Name] &lt;String&gt; [-Hostname] &lt;String&gt; [-Directory] &lt;String&gt; [-Credential] &lt;String&gt;[ [-Http] &lt;SwitchParameter&gt;][ [-Certificate] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A firmware repository enables you to store firmware bundles and deploy them across your environment.  An externally managed HTTP/HTTPS web server can be added to the appliance as a repository. It is a user-maintained HTTP/HTTPS web server. You can upload firmware bundles in a specific directory and then register the HTTP/HTTPS server with HPE OneView. This functionality is supported for Linux and Windows systems.

The recommended types of external web servers to use with the repository follow:

	* Apache
	* Internet Information Services (IIS)

NOTE: Only one external repository can be added.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Certificate &lt;String&gt;<p>
The Base64 Certificate of the target web server.  Must be specified if the -HTTP parameter is not used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;String&gt;<p>
Provide a PSCredential object if the target web server requires authentication.  By default, HTTPS will be used and basic authentication is used to communicate with the target web server.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Directory &lt;String&gt;<p>
Specify the parent virtual directory where the baseline components will be kept.  Baseline components can be nested within sub directories.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Specify IPv4 Address or FQDN of the target web server.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Http &lt;SwitchParameter&gt;<p>
Use to override the default HTTPS protocol used to communicate with the target web server.  If this parameter is not used, you must specify the Base64 Certificate of the target web server.  If you use this parameter, all authentication requests will be sent as clear text.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Provide a name for the repository.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Provide the password of the username using a SecureString.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Provide the username to authenticate to the target web server with if required.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task for the caller to monitor.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple async task resource objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Params = @{

	Name        = "MyRepoName";
	Hostname    = "webserver.domain.local";
	Directory   = "OneViewRepo";
	Credential  = (Get-PSCredential -Username "DomainName\MyUser");
	Certificate = (Get-Content -Path C:\Directory\Base64.cer -Raw)

}
New-HPOVExternalRepository @Params
</pre>
Create an external repository using a PSCredential object.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVExternalRepository -Name MyRepoName -Hostname webserver.domain.local -Directory OneViewRepo -Http
</pre>
Configure an external repository using anonymous authentication, and HTTP protocol.



### Related Links

* [Remove-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVExternalRepository)
* [Set-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVExternalRepository)
* [Update-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVExternalRepository)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVExternalRepository
<p>
Create a new external baseline repository.

### SYNTAX
<p>
<pre><code>New-HPOVExternalRepository [-Name] &lt;String&gt; [-Hostname] &lt;String&gt; [-Directory] &lt;String&gt;[ [-Username] &lt;String&gt;][ [-Password] &lt;SecureString&gt;][ [-Http] &lt;SwitchParameter&gt;][ [-Certificate] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVExternalRepository [-Name] &lt;String&gt; [-Hostname] &lt;String&gt; [-Directory] &lt;String&gt; [-Credential] &lt;String&gt;[ [-Http] &lt;SwitchParameter&gt;][ [-Certificate] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A firmware repository enables you to store firmware bundles and deploy them across your environment.  An externally managed HTTP/HTTPS web server can be added to the appliance as a repository. It is a user-maintained HTTP/HTTPS web server. You can upload firmware bundles in a specific directory and then register the HTTP/HTTPS server with HPE OneView. This functionality is supported for Linux and Windows systems.

The recommended types of external web servers to use with the repository follow:

	* Apache
	* Internet Information Services (IIS)

NOTE: Only one external repository can be added.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Certificate &lt;String&gt;<p>
The Base64 Certificate of the target web server.  Must be specified if the -HTTP parameter is not used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;String&gt;<p>
Provide a PSCredential object if the target web server requires authentication.  By default, HTTPS will be used and basic authentication is used to communicate with the target web server.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Directory &lt;String&gt;<p>
Specify the parent virtual directory where the baseline components will be kept.  Baseline components can be nested within sub directories.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
Specify IPv4 Address or FQDN of the target web server.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Http &lt;SwitchParameter&gt;<p>
Use to override the default HTTPS protocol used to communicate with the target web server.  If this parameter is not used, you must specify the Base64 Certificate of the target web server.  If you use this parameter, all authentication requests will be sent as clear text.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Provide a name for the repository.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Provide the password of the username using a SecureString.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Provide the username to authenticate to the target web server with if required.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task for the caller to monitor.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple async task resource objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$Params = @{

	Name        = "MyRepoName";
	Hostname    = "webserver.domain.local";
	Directory   = "OneViewRepo";
	Credential  = (Get-PSCredential -Username "DomainName\MyUser");
	Certificate = (Get-Content -Path C:\Directory\Base64.cer -Raw)

}
New-HPOVExternalRepository @Params
</pre>
Create an external repository using a PSCredential object.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVExternalRepository -Name MyRepoName -Hostname webserver.domain.local -Directory OneViewRepo -Http
</pre>
Configure an external repository using anonymous authentication, and HTTP protocol.



### Related Links

* [Remove-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVExternalRepository)
* [Set-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVExternalRepository)
* [Update-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVExternalRepository)


***
<div align=right><a href="#Top">Top</a></div>
