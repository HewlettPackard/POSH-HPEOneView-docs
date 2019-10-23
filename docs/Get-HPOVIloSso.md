<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVIloSso
<p>
Generate iLO SSO Token.

### SYNTAX
<p>
<pre><code>Get-HPOVIloSso [-InputObject] &lt;Object&gt;[ [-RemoteConsoleOnly] &lt;SwitchParameter&gt;][ [-IloRestSession] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVIloSso [-InputObject] &lt;Object&gt;[ [-IloRestSession] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain an iLO SSO Token URL to authenticate to an iLO.  If the server hardware is unsupported, the resulting URL will not use SSO and the iLO web interface will prompt for credentials. Note, this is not supported on G7 or earlier servers.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IloRestSession &lt;SwitchParameter&gt;<p>
Generate an HPRESTCmdlets compliant IloSession object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Server Hardware or Server Profile resource object from Get-HPOVServer or Get-HPOVServerProfile.

<table><tbody><tr><td>Aliases</td><td>Server</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RemoteConsoleOnly &lt;SwitchParameter&gt;<p>
Generate an SSO URL Token for accessing the Remote Console.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 Server Hardware resource object.

 _**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

 Server Profile resource object.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

SSO Url Object

 _**System.Array**_

 

Multiple SSO URL objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$SSOObjects = Get-HPOVServer | Get-HPOVIloSso
</pre>
Generate iLO SSO Objects for all managed server resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$SSOObject = Get-HPOVServer -Name "Enc1, bay 1" | Get-HPOVIloSso
</pre>
Generate iLO SSO Object for the specified managed server resource.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$SSOObject = Get-HPOVServerProfile -Name "My Server Profile" | Get-HPOVIloSso
</pre>
Generate iLO SSO Object for the specified managed server resource.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$IloSession = Get-HPOVServer -Name "Enc1, bay 1" | Get-HPOVIloSso -IloRestSession
</pre>
Generate iLO SSO Object that can then be used with the HPRESTCmdlets.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVIloSso
<p>
Generate iLO SSO Token.

### SYNTAX
<p>
<pre><code>Get-HPOVIloSso [-InputObject] &lt;Object&gt;[ [-RemoteConsoleOnly] &lt;SwitchParameter&gt;][ [-IloRestSession] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVIloSso [-InputObject] &lt;Object&gt;[ [-IloRestSession] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain an iLO SSO Token URL to authenticate to an iLO.  If the server hardware is unsupported, the resulting URL will not use SSO and the iLO web interface will prompt for credentials. Note, this is not supported on G7 or earlier servers.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IloRestSession &lt;SwitchParameter&gt;<p>
Generate an HPRESTCmdlets compliant IloSession object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Server Hardware or Server Profile resource object from Get-HPOVServer or Get-HPOVServerProfile.

<table><tbody><tr><td>Aliases</td><td>Server</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RemoteConsoleOnly &lt;SwitchParameter&gt;<p>
Generate an SSO URL Token for accessing the Remote Console.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 Server Hardware resource object.

 _**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

 Server Profile resource object.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

SSO Url Object

 _**System.Array**_

 

Multiple SSO URL objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$SSOObjects = Get-HPOVServer | Get-HPOVIloSso
</pre>
Generate iLO SSO Objects for all managed server resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$SSOObject = Get-HPOVServer -Name "Enc1, bay 1" | Get-HPOVIloSso
</pre>
Generate iLO SSO Object for the specified managed server resource.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$SSOObject = Get-HPOVServerProfile -Name "My Server Profile" | Get-HPOVIloSso
</pre>
Generate iLO SSO Object for the specified managed server resource.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$IloSession = Get-HPOVServer -Name "Enc1, bay 1" | Get-HPOVIloSso -IloRestSession
</pre>
Generate iLO SSO Object that can then be used with the HPRESTCmdlets.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVIloSso
<p>
Generate iLO SSO Token.

### SYNTAX
<p>
<pre><code>Get-HPOVIloSso [-InputObject] &lt;Object&gt;[ [-RemoteConsoleOnly] &lt;SwitchParameter&gt;][ [-IloRestSession] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVIloSso [-InputObject] &lt;Object&gt;[ [-IloRestSession] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain an iLO SSO Token URL to authenticate to an iLO.  If the server hardware is unsupported, the resulting URL will not use SSO and the iLO web interface will prompt for credentials. Note, this is not supported on G7 or earlier servers.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IloRestSession &lt;SwitchParameter&gt;<p>
Generate an HPRESTCmdlets compliant IloSession object.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The Server Hardware or Server Profile resource object from Get-HPOVServer or Get-HPOVServerProfile.

<table><tbody><tr><td>Aliases</td><td>Server</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RemoteConsoleOnly &lt;SwitchParameter&gt;<p>
Generate an SSO URL Token for accessing the Remote Console.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 Server Hardware resource object.

 _**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

 Server Profile resource object.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

SSO Url Object

 _**System.Array**_

 

Multiple SSO URL objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$SSOObjects = Get-HPOVServer | Get-HPOVIloSso
</pre>
Generate iLO SSO Objects for all managed server resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$SSOObject = Get-HPOVServer -Name "Enc1, bay 1" | Get-HPOVIloSso
</pre>
Generate iLO SSO Object for the specified managed server resource.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$SSOObject = Get-HPOVServerProfile -Name "My Server Profile" | Get-HPOVIloSso
</pre>
Generate iLO SSO Object for the specified managed server resource.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$IloSession = Get-HPOVServer -Name "Enc1, bay 1" | Get-HPOVIloSso -IloRestSession
</pre>
Generate iLO SSO Object that can then be used with the HPRESTCmdlets.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
