<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVRemoteSyslog
<p>
Get the configured remote syslog settings.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSyslog [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView.  This Cmdlet handles retrieving the remote syslog configuration.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.RemoteSyslog [System.Management.Automation.PSCustomObject]**_

 

If successful, returns Appliance Syslog settings

 _**System.Collections.ArrayList &lt;HPOneView.RemoteSyslog&gt;**_

 

Collection of Appliance Syslog settings



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRemoteSyslog
Appliance             Destination Port Enabled
---------             ----------- ---- -------
appliance1.domain.com                  False
appliance2.domain.com 10.150.20.1 514  True

</pre>
Get the current configuration from all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVRemoteSyslog -ApplianceConnection appliance1.domain.com
Appliance             Destination Port Enabled
---------             ----------- ---- -------
appliance1.domain.com                  False

</pre>
Get the current configuration from specified connected appliance.



### Related Links

* [Disable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSyslog)
* [Enable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSyslog)
* [Set-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSyslog)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVRemoteSyslog
<p>
Get the configured remote syslog settings.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSyslog [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView.  This Cmdlet handles retrieving the remote syslog configuration.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.RemoteSyslog [System.Management.Automation.PSCustomObject]**_

 

If successful, returns Appliance Syslog settings

 _**System.Collections.ArrayList &lt;HPOneView.RemoteSyslog&gt;**_

 

Collection of Appliance Syslog settings



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRemoteSyslog
Appliance             Destination Port Enabled
---------             ----------- ---- -------
appliance1.domain.com                  False
appliance2.domain.com 10.150.20.1 514  True

</pre>
Get the current configuration from all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVRemoteSyslog -ApplianceConnection appliance1.domain.com
Appliance             Destination Port Enabled
---------             ----------- ---- -------
appliance1.domain.com                  False

</pre>
Get the current configuration from specified connected appliance.



### Related Links

* [Disable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSyslog)
* [Enable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSyslog)
* [Set-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSyslog)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVRemoteSyslog
<p>
Get the configured remote syslog settings.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSyslog [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The remoteSyslog API provides the ability to configure remote logging on devices managed by OneView.  This Cmdlet handles retrieving the remote syslog configuration.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this Cmdlet.**_

 



### Return Values

_**HPOneView.RemoteSyslog [System.Management.Automation.PSCustomObject]**_

 

If successful, returns Appliance Syslog settings

 _**System.Collections.ArrayList &lt;HPOneView.RemoteSyslog&gt;**_

 

Collection of Appliance Syslog settings



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVRemoteSyslog
Appliance             Destination Port Enabled
---------             ----------- ---- -------
appliance1.domain.com                  False
appliance2.domain.com 10.150.20.1 514  True

</pre>
Get the current configuration from all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVRemoteSyslog -ApplianceConnection appliance1.domain.com
Appliance             Destination Port Enabled
---------             ----------- ---- -------
appliance1.domain.com                  False

</pre>
Get the current configuration from specified connected appliance.



### Related Links

* [Disable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Disable-HPOVRemoteSyslog)
* [Enable-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSyslog)
* [Set-HPOVRemoteSyslog](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSyslog)


***
<div align=right><a href="#Top">Top</a></div>
