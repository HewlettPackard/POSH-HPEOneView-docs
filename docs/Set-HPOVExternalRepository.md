<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVExternalRepository
<p>
Modify an existing external baseline repository.

### SYNTAX
<p>
<pre><code>Set-HPOVExternalRepository [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt;[ [-Username] &lt;String&gt;][ [-Password] &lt;SecureString&gt;][ [-Certificate] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVExternalRepository [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Credential] &lt;String&gt;[ [-Certificate] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVExternalRepository[ [-ApplianceConnection] &lt;Array&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A firmware repository enables you to store firmware bundles and deploy them across your environment.  An externally managed HTTP/HTTPS web server can be added to the appliance as a repository. It is a user-maintained HTTP/HTTPS web server. You can upload firmware bundles in a specific directory and then register the HTTP/HTTPS server with HPE OneView. This functionality is supported for Linux and Windows systems.

The recommended types of external web servers to use with the repository follow:

	* Apache
	* Internet Information Services (IIS)

NOTE: Only one external repository can be added.

This Cmdlet supports modifying an existing external repository.  Use this Cmdlet to modify the Name, authentication credentials and/or HTTP SSL certificate.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Certificate &lt;String&gt;<p>
The Base64 Certificate of the target web server.  Must be specified if the -HTTP parameter is not used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;String&gt;<p>
Provide a PSCredential object if the target web server requires authentication.  By default, HTTPS will be used and basic authentication is used to communicate with the target web server.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Provide the external repository object to modify.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Update the configured repository with the new name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Provide the password of the username using a SecureString.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Provide the username to authenticate to the target web server with if required.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.BaselineRepository [System.Management.Automation.PSCustomObject]**_

 The external repository object from Get-HPOVBaselineRepository



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task for the caller to monitor.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple async task resource objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVBaselineRepository -Name MyRepoName -ErrorAction Stop | Set-HPOVExternalRepository -Name UpdatedRepoName
</pre>
Modify an existing external repository with a new name.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVBaselineRepository -Name MyRepoName MyRepoName -ErrorAction Stop | Set-HPOVExternalRepository -Credential (Get-PSCredential -Username "Domain\MyUpdatedAccountName")
</pre>
Modify an existing repository with new credentials.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$UpdatedSslCertificate = Get-Content C:\Dir\UpdatedCert.cer -raw
Get-HPOVBaselineRepository -Name MyRepoName -ErrorAction Stop | Set-HPOVExternalRepository -Certificate $UpdatedSslCertificate
</pre>
Modify an existing repository with new Base64 SSL public certificate.



### Related Links

* [New-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVExternalRepository)
* [Remove-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVExternalRepository)
* [Update-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVExternalRepository)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVExternalRepository
<p>
Modify an existing external baseline repository.

### SYNTAX
<p>
<pre><code>Set-HPOVExternalRepository [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt;[ [-Username] &lt;String&gt;][ [-Password] &lt;SecureString&gt;][ [-Certificate] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVExternalRepository [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Credential] &lt;String&gt;[ [-Certificate] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVExternalRepository[ [-ApplianceConnection] &lt;Array&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A firmware repository enables you to store firmware bundles and deploy them across your environment.  An externally managed HTTP/HTTPS web server can be added to the appliance as a repository. It is a user-maintained HTTP/HTTPS web server. You can upload firmware bundles in a specific directory and then register the HTTP/HTTPS server with HPE OneView. This functionality is supported for Linux and Windows systems.

The recommended types of external web servers to use with the repository follow:

	* Apache
	* Internet Information Services (IIS)

NOTE: Only one external repository can be added.

This Cmdlet supports modifying an existing external repository.  Use this Cmdlet to modify the Name, authentication credentials and/or HTTP SSL certificate.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Certificate &lt;String&gt;<p>
The Base64 Certificate of the target web server.  Must be specified if the -HTTP parameter is not used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;String&gt;<p>
Provide a PSCredential object if the target web server requires authentication.  By default, HTTPS will be used and basic authentication is used to communicate with the target web server.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Provide the external repository object to modify.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Update the configured repository with the new name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Provide the password of the username using a SecureString.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Provide the username to authenticate to the target web server with if required.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.BaselineRepository [System.Management.Automation.PSCustomObject]**_

 The external repository object from Get-HPOVBaselineRepository



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task for the caller to monitor.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple async task resource objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVBaselineRepository -Name MyRepoName -ErrorAction Stop | Set-HPOVExternalRepository -Name UpdatedRepoName
</pre>
Modify an existing external repository with a new name.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVBaselineRepository -Name MyRepoName MyRepoName -ErrorAction Stop | Set-HPOVExternalRepository -Credential (Get-PSCredential -Username "Domain\MyUpdatedAccountName")
</pre>
Modify an existing repository with new credentials.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$UpdatedSslCertificate = Get-Content C:\Dir\UpdatedCert.cer -raw
Get-HPOVBaselineRepository -Name MyRepoName -ErrorAction Stop | Set-HPOVExternalRepository -Certificate $UpdatedSslCertificate
</pre>
Modify an existing repository with new Base64 SSL public certificate.



### Related Links

* [New-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVExternalRepository)
* [Remove-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVExternalRepository)
* [Update-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVExternalRepository)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVExternalRepository
<p>
Modify an existing external baseline repository.

### SYNTAX
<p>
<pre><code>Set-HPOVExternalRepository [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt;[ [-Username] &lt;String&gt;][ [-Password] &lt;SecureString&gt;][ [-Certificate] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVExternalRepository [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Credential] &lt;String&gt;[ [-Certificate] &lt;String&gt;][ [-Async] &lt;SwitchParameter&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVExternalRepository[ [-ApplianceConnection] &lt;Array&gt;] [-WhatIf] &lt;&gt; [-Confirm] &lt;&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
A firmware repository enables you to store firmware bundles and deploy them across your environment.  An externally managed HTTP/HTTPS web server can be added to the appliance as a repository. It is a user-maintained HTTP/HTTPS web server. You can upload firmware bundles in a specific directory and then register the HTTP/HTTPS server with HPE OneView. This functionality is supported for Linux and Windows systems.

The recommended types of external web servers to use with the repository follow:

	* Apache
	* Internet Information Services (IIS)

NOTE: Only one external repository can be added.

This Cmdlet supports modifying an existing external repository.  Use this Cmdlet to modify the Name, authentication credentials and/or HTTP SSL certificate.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Certificate &lt;String&gt;<p>
The Base64 Certificate of the target web server.  Must be specified if the -HTTP parameter is not used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Credential &lt;String&gt;<p>
Provide a PSCredential object if the target web server requires authentication.  By default, HTTPS will be used and basic authentication is used to communicate with the target web server.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Provide the external repository object to modify.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Update the configured repository with the new name.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
Provide the password of the username using a SecureString.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
Provide the username to authenticate to the target web server with if required.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td></td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.BaselineRepository [System.Management.Automation.PSCustomObject]**_

 The external repository object from Get-HPOVBaselineRepository



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The async task for the caller to monitor.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple async task resource objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVBaselineRepository -Name MyRepoName -ErrorAction Stop | Set-HPOVExternalRepository -Name UpdatedRepoName
</pre>
Modify an existing external repository with a new name.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVBaselineRepository -Name MyRepoName MyRepoName -ErrorAction Stop | Set-HPOVExternalRepository -Credential (Get-PSCredential -Username "Domain\MyUpdatedAccountName")
</pre>
Modify an existing repository with new credentials.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$UpdatedSslCertificate = Get-Content C:\Dir\UpdatedCert.cer -raw
Get-HPOVBaselineRepository -Name MyRepoName -ErrorAction Stop | Set-HPOVExternalRepository -Certificate $UpdatedSslCertificate
</pre>
Modify an existing repository with new Base64 SSL public certificate.



### Related Links

* [New-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVExternalRepository)
* [Remove-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVExternalRepository)
* [Update-HPOVExternalRepository](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVExternalRepository)


***
<div align=right><a href="#Top">Top</a></div>
