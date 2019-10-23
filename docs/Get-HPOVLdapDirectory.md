<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVLdapDirectory
<p>
Get configured Authentication Directories

### SYNTAX
<p>
<pre><code>Get-HPOVLdapDirectory[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLdapDirectory[ [-Export] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will retrieve the configured authentication directory(ies) configured on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Aliases [-x]
Export the configured directories to individual files.

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The specific authentication directory name.

<table><tbody><tr><td>Aliases</td><td>directory, domain</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

 

Authentication Directory settings object

 _**System.Collections.ArrayList**_

 

Multiple Authentication Directory settings objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLdapDirectory
Appliance    Name    Type Root              Search Context         Directory Servers
---------    ----    ---- ----              --------------         -----------------
MyAppliance1 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1... {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance1 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2... {dc1.domain2.com:636, 10.1.2.1:636}
MyAppliance2 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1... {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance2 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2... {dc1.domain2.com:636, 10.1.2.1:636}

</pre>
View the configured authentication directories, for all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLdap -export -save c:\directory
</pre>
Export the Global Directory Configuration settings.



### Related Links

* [New-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapDirectory)
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVLdapDirectory
<p>
Get configured Authentication Directories

### SYNTAX
<p>
<pre><code>Get-HPOVLdapDirectory[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLdapDirectory[ [-Export] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will retrieve the configured authentication directory(ies) configured on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Aliases [-x]
Export the configured directories to individual files.

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The specific authentication directory name.

<table><tbody><tr><td>Aliases</td><td>directory, domain</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

 

Authentication Directory settings object

 _**System.Collections.ArrayList**_

 

Multiple Authentication Directory settings objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLdapDirectory
Appliance    Name    Type Root              Search Context         Directory Servers
---------    ----    ---- ----              --------------         -----------------
MyAppliance1 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1... {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance1 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2... {dc1.domain2.com:636, 10.1.2.1:636}
MyAppliance2 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1... {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance2 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2... {dc1.domain2.com:636, 10.1.2.1:636}

</pre>
View the configured authentication directories, for all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLdap -export -save c:\directory
</pre>
Export the Global Directory Configuration settings.



### Related Links

* [New-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapDirectory)
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVLdapDirectory
<p>
Get configured Authentication Directories

### SYNTAX
<p>
<pre><code>Get-HPOVLdapDirectory[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVLdapDirectory[ [-Export] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will retrieve the configured authentication directory(ies) configured on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions}

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;String&gt;<p>
Aliases [-x]
Export the configured directories to individual files.

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The specific authentication directory name.

<table><tbody><tr><td>Aliases</td><td>directory, domain</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AuthDirectory [System.Management.Automation.PSCustomObject]**_

 

Authentication Directory settings object

 _**System.Collections.ArrayList**_

 

Multiple Authentication Directory settings objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVLdapDirectory
Appliance    Name    Type Root              Search Context         Directory Servers
---------    ----    ---- ----              --------------         -----------------
MyAppliance1 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1... {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance1 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2... {dc1.domain2.com:636, 10.1.2.1:636}
MyAppliance2 domain1 AD   dc=domain1,dc=com ou=Admins,ou=domain1... {dc1.domain1.com:636, dc2.domain1.com:636}
MyAppliance2 domain2 AD   dc=domain2,dc=com ou=Admins,ou=domain2... {dc1.domain2.com:636, 10.1.2.1:636}

</pre>
View the configured authentication directories, for all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVLdap -export -save c:\directory
</pre>
Export the Global Directory Configuration settings.



### Related Links

* [New-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLdapDirectory)
* [Remove-HPOVLdapDirectory](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLdapDirectory)


***
<div align=right><a href="#Top">Top</a></div>
