<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVApplianceSshAccess
<p>
Get the current SSH console access state.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceSshAccess[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
You can configure the appliance to allow or deny remote access to the HPE OneView appliance using SSH.  This Cmdlet will return the current SSH console access state on the appliance.

Privileges: Infrastructure administrator


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

_**HPOneView.Appliance.SshAccess**_

 

The configured state of the appliance SSH console.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceSshAccess
</pre>
Get the current state of the appliance SSH console.



### Related Links

* [Disable-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceSshAccess)
* [Enable-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceSshAccess)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVApplianceSshAccess
<p>
Get the current SSH console access state.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceSshAccess[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
You can configure the appliance to allow or deny remote access to the HPE OneView appliance using SSH.  This Cmdlet will return the current SSH console access state on the appliance.

Privileges: Infrastructure administrator


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

_**HPOneView.Appliance.SshAccess**_

 

The configured state of the appliance SSH console.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceSshAccess
</pre>
Get the current state of the appliance SSH console.



### Related Links

* [Disable-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceSshAccess)
* [Enable-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceSshAccess)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVApplianceSshAccess
<p>
Get the current SSH console access state.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceSshAccess[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
You can configure the appliance to allow or deny remote access to the HPE OneView appliance using SSH.  This Cmdlet will return the current SSH console access state on the appliance.

Privileges: Infrastructure administrator


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

_**HPOneView.Appliance.SshAccess**_

 

The configured state of the appliance SSH console.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceSshAccess
</pre>
Get the current state of the appliance SSH console.



### Related Links

* [Disable-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVApplianceSshAccess)
* [Enable-HPOVApplianceSshAccess](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVApplianceSshAccess)


***
<div align=right><a href="#Top">Top</a></div>
