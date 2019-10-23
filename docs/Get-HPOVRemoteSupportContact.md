<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVRemoteSupportContact
<p>
Retrieve configured Remote Support contacts.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupportContact[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to get the configured Remote Support contacts defined on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Full ("Bob Smith") or partial ("Bob*") name of the contact.  When using partial names, please include the * (asterisk) wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The configured Remote Support Contact.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRemoteSupportContact
</pre>
List all configured Remote Support Contacts.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVRemoteSupportContact -Name "Bob*"
</pre>
List all contacts with the name Bob, using the * wildcard character.



### Related Links

* [New-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportContact)
* [Remove-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportContact)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVRemoteSupportContact
<p>
Retrieve configured Remote Support contacts.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupportContact[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to get the configured Remote Support contacts defined on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Full ("Bob Smith") or partial ("Bob*") name of the contact.  When using partial names, please include the * (asterisk) wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The configured Remote Support Contact.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRemoteSupportContact
</pre>
List all configured Remote Support Contacts.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVRemoteSupportContact -Name "Bob*"
</pre>
List all contacts with the name Bob, using the * wildcard character.



### Related Links

* [New-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportContact)
* [Remove-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportContact)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVRemoteSupportContact
<p>
Retrieve configured Remote Support contacts.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupportContact[ [-Name] &lt;String&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to get the configured Remote Support contacts defined on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Full ("Bob Smith") or partial ("Bob*") name of the contact.  When using partial names, please include the * (asterisk) wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The configured Remote Support Contact.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRemoteSupportContact
</pre>
List all configured Remote Support Contacts.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVRemoteSupportContact -Name "Bob*"
</pre>
List all contacts with the name Bob, using the * wildcard character.



### Related Links

* [New-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportContact)
* [Remove-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportContact)


***
<div align=right><a href="#Top">Top</a></div>
