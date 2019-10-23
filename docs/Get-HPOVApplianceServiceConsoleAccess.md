<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVApplianceServiceConsoleAccess
<p>
Get the appliance service console access configuration.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceServiceConsoleAccess[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView contains a technical feature that you can use to allow an authorized technical support to access your system, through the system console, to assess and troubleshoot problems that you have reported. This access is controlled by a password generated and provided by you to the authorized technical support. You can disable the access at any time while the system is running. Hewlett Packard Enterprise recommends that you enable service console access so that an authorized technical support can diagnose your system in the event of a system failure.

Minimum required privileges: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ServiceConsoleAccess**_

 

The current service console configuration status.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceServiceConsoleAccess
</pre>
Get the service console access status.



### Related Links

* [Disable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceServiceConsoleAccess)
* [Enable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceServiceConsoleAccess)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVApplianceServiceConsoleAccess
<p>
Get the appliance service console access configuration.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceServiceConsoleAccess[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView contains a technical feature that you can use to allow an authorized technical support to access your system, through the system console, to assess and troubleshoot problems that you have reported. This access is controlled by a password generated and provided by you to the authorized technical support. You can disable the access at any time while the system is running. Hewlett Packard Enterprise recommends that you enable service console access so that an authorized technical support can diagnose your system in the event of a system failure.

Minimum required privileges: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ServiceConsoleAccess**_

 

The current service console configuration status.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceServiceConsoleAccess
</pre>
Get the service console access status.



### Related Links

* [Disable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceServiceConsoleAccess)
* [Enable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceServiceConsoleAccess)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVApplianceServiceConsoleAccess
<p>
Get the appliance service console access configuration.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceServiceConsoleAccess[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView contains a technical feature that you can use to allow an authorized technical support to access your system, through the system console, to assess and troubleshoot problems that you have reported. This access is controlled by a password generated and provided by you to the authorized technical support. You can disable the access at any time while the system is running. Hewlett Packard Enterprise recommends that you enable service console access so that an authorized technical support can diagnose your system in the event of a system failure.

Minimum required privileges: Infrastructure administrator


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ServiceConsoleAccess**_

 

The current service console configuration status.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceServiceConsoleAccess
</pre>
Get the service console access status.



### Related Links

* [Disable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceServiceConsoleAccess)
* [Enable-HPOVApplianceServiceConsoleAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceServiceConsoleAccess)


***
<div align=right><a href="#Top">Top</a></div>
