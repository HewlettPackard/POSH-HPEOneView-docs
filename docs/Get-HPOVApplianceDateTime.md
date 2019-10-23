<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVApplianceDateTime
<p>
Get Appliance Date/Time Configuration.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceDateTime [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET displays the appliance or connected appliancces Date and Time configuration.  Part of this is the actual Date and Time of the appliance, Time Zone, NTP Servers, NTP polling, and Locale.

When queriying a Virtual Machine Appliance and the NTPServers property or field is Null, the appliance will retrieve its Date and Time from the Hypervisor Host.

When queriying a Synergy Composer appliance and the NTPServers property or field is Null, the appliance will retrieve its Date and Time from the System ROM.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ApplianceServerDateTime [System.Management.Automation.PSCustomObject]**_

 

Date/Time object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceDateTime
Appliance        Time                 Time Zone NTP Servers           NTP Polling
---------        ----                 --------- -----------           -----------
hpov1.domain.com 2/11/2016 2:12:46 PM UTC       {10.55.1.1,10.54.1.1}
hpov2.domain.com 2/11/2016 2:12:45 PM UTC       {}

</pre>
This example passes in updated values to set for the appliance networking configuration.



### Related Links

* [Set-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceDateTime)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVApplianceDateTime
<p>
Get Appliance Date/Time Configuration.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceDateTime [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET displays the appliance or connected appliancces Date and Time configuration.  Part of this is the actual Date and Time of the appliance, Time Zone, NTP Servers, NTP polling, and Locale.

When queriying a Virtual Machine Appliance and the NTPServers property or field is Null, the appliance will retrieve its Date and Time from the Hypervisor Host.

When queriying a Synergy Composer appliance and the NTPServers property or field is Null, the appliance will retrieve its Date and Time from the System ROM.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ApplianceServerDateTime [System.Management.Automation.PSCustomObject]**_

 

Date/Time object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceDateTime
Appliance        Time                 Time Zone NTP Servers           NTP Polling
---------        ----                 --------- -----------           -----------
hpov1.domain.com 2/11/2016 2:12:46 PM UTC       {10.55.1.1,10.54.1.1}
hpov2.domain.com 2/11/2016 2:12:45 PM UTC       {}

</pre>
This example passes in updated values to set for the appliance networking configuration.



### Related Links

* [Set-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceDateTime)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVApplianceDateTime
<p>
Get Appliance Date/Time Configuration.

### SYNTAX
<p>
<pre><code>Get-HPOVApplianceDateTime [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET displays the appliance or connected appliancces Date and Time configuration.  Part of this is the actual Date and Time of the appliance, Time Zone, NTP Servers, NTP polling, and Locale.

When queriying a Virtual Machine Appliance and the NTPServers property or field is Null, the appliance will retrieve its Date and Time from the Hypervisor Host.

When queriying a Synergy Composer appliance and the NTPServers property or field is Null, the appliance will retrieve its Date and Time from the System ROM.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.ApplianceServerDateTime [System.Management.Automation.PSCustomObject]**_

 

Date/Time object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVApplianceDateTime
Appliance        Time                 Time Zone NTP Servers           NTP Polling
---------        ----                 --------- -----------           -----------
hpov1.domain.com 2/11/2016 2:12:46 PM UTC       {10.55.1.1,10.54.1.1}
hpov2.domain.com 2/11/2016 2:12:45 PM UTC       {}

</pre>
This example passes in updated values to set for the appliance networking configuration.



### Related Links

* [Set-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVApplianceDateTime)


***
<div align=right><a href="#Top">Top</a></div>
