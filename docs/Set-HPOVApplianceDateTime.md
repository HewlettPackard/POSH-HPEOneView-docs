<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVApplianceDateTime
<p>
Update Appliance Date/Time Configuration.

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceDateTime[ [-SyncWithHost] &lt;SwitchParameter&gt;] [-Locale] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVApplianceDateTime [-NTPServers] &lt;Array&gt; [-PollingInterval] &lt;Int32&gt; [-Locale] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Update the appliance Date and Time configuration, including Locale, NTP Servers, and NTP Polling.

Using the -SyncWithHost parameter will set the NTPServers property to null.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Locale &lt;String&gt;<p>
Specify the language local for the appliance

	* en_US - US English
	* zh_CN - Simplified Chinese
	* ja_JP - Japanese

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NTPServers &lt;Array&gt;<p>
Parameter is deprecated.  Please use the Set-HPOVApplianceDateTime Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PollingInterval &lt;Int32&gt;<p>
The polling interval in seconds the NTP client will use to verify time drift.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SyncWithHost &lt;SwitchParameter&gt;<p>
Specify to configure the embedded hypervisor integration agent to sync time with the hypervisor host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVApplianceDateTime -NTPServers 10.55.1.1,10.54.1.1 -PollingInterval 60
</pre>
This example passes in updated values to set for the appliance networking configuration.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVApplianceDateTime -SyncWithHost
</pre>
This example passes in updated values to set for the appliance networking configuration.



### Related Links

* [Get-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceDateTime)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVApplianceDateTime
<p>
Update Appliance Date/Time Configuration.

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceDateTime[ [-SyncWithHost] &lt;SwitchParameter&gt;] [-Locale] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVApplianceDateTime [-NTPServers] &lt;Array&gt; [-PollingInterval] &lt;Int32&gt; [-Locale] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Update the appliance Date and Time configuration, including Locale, NTP Servers, and NTP Polling.

Using the -SyncWithHost parameter will set the NTPServers property to null.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Locale &lt;String&gt;<p>
Specify the language local for the appliance

	* en_US - US English
	* zh_CN - Simplified Chinese
	* ja_JP - Japanese

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NTPServers &lt;Array&gt;<p>
Parameter is deprecated.  Please use the Set-HPOVApplianceDateTime Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PollingInterval &lt;Int32&gt;<p>
The polling interval in seconds the NTP client will use to verify time drift.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SyncWithHost &lt;SwitchParameter&gt;<p>
Specify to configure the embedded hypervisor integration agent to sync time with the hypervisor host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVApplianceDateTime -NTPServers 10.55.1.1,10.54.1.1 -PollingInterval 60
</pre>
This example passes in updated values to set for the appliance networking configuration.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVApplianceDateTime -SyncWithHost
</pre>
This example passes in updated values to set for the appliance networking configuration.



### Related Links

* [Get-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceDateTime)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVApplianceDateTime
<p>
Update Appliance Date/Time Configuration.

### SYNTAX
<p>
<pre><code>Set-HPOVApplianceDateTime[ [-SyncWithHost] &lt;SwitchParameter&gt;] [-Locale] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVApplianceDateTime [-NTPServers] &lt;Array&gt; [-PollingInterval] &lt;Int32&gt; [-Locale] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Update the appliance Date and Time configuration, including Locale, NTP Servers, and NTP Polling.

Using the -SyncWithHost parameter will set the NTPServers property to null.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Locale &lt;String&gt;<p>
Specify the language local for the appliance

	* en_US - US English
	* zh_CN - Simplified Chinese
	* ja_JP - Japanese

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NTPServers &lt;Array&gt;<p>
Parameter is deprecated.  Please use the Set-HPOVApplianceDateTime Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PollingInterval &lt;Int32&gt;<p>
The polling interval in seconds the NTP client will use to verify time drift.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SyncWithHost &lt;SwitchParameter&gt;<p>
Specify to configure the embedded hypervisor integration agent to sync time with the hypervisor host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Asyncronous task resource to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVApplianceDateTime -NTPServers 10.55.1.1,10.54.1.1 -PollingInterval 60
</pre>
This example passes in updated values to set for the appliance networking configuration.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Set-HPOVApplianceDateTime -SyncWithHost
</pre>
This example passes in updated values to set for the appliance networking configuration.



### Related Links

* [Get-HPOVApplianceDateTime](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVApplianceDateTime)


***
<div align=right><a href="#Top">Top</a></div>
