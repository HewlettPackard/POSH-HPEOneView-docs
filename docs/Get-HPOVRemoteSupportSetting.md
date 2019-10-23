<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVRemoteSupportSetting
<p>
Get supported resource Remote Support settings.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupportSetting [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to retrieve a supported resources Remote Support settings, defined Parimary and Secondary contact, and authorized reseller or support partners.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Either a Server Hardware or Enclosure resource to get the configured Remote Support collection settings.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 Server hardware resource object.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Enclosure resource object.



### Return Values

_**HPOneView.Appliance.RemoteSupport.ResourceSetting [System.Management.Automation.PSCustomObject]**_

 

Remote Support Settings object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEnclosure -Name Encl1 | Get-HPOVRemoteSupportSetting Appliance              ResourceName SalesChannelPartner        SupportChannelPartner      PrimaryContact SecondaryContact ---------              ------------ -------------------        ---------------------      -------------- ---------------- MyAppliance.domain.com Encl1        Hewlett Packard Enterprise Hewlett Packard Enterprise Mark Jones
</pre>
Get the configured Remote Support collection settings for "Encl1" Enclosure resource.



 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServer -Name PROD* | Get-HPOVRemoteSupportSetting | ? supportEnabled -eq $false
</pre>
Return all PROD servers, and return only those where remote support is not enabled.




### Related Links

* [Set-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportSetting)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVRemoteSupportSetting
<p>
Get supported resource Remote Support settings.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupportSetting [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to retrieve a supported resources Remote Support settings, defined Parimary and Secondary contact, and authorized reseller or support partners.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Either a Server Hardware or Enclosure resource to get the configured Remote Support collection settings.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 Server hardware resource object.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Enclosure resource object.



### Return Values

_**HPOneView.Appliance.RemoteSupport.ResourceSetting [System.Management.Automation.PSCustomObject]**_

 

Remote Support Settings object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEnclosure -Name Encl1 | Get-HPOVRemoteSupportSetting Appliance              ResourceName SalesChannelPartner        SupportChannelPartner      PrimaryContact SecondaryContact ---------              ------------ -------------------        ---------------------      -------------- ---------------- MyAppliance.domain.com Encl1        Hewlett Packard Enterprise Hewlett Packard Enterprise Mark Jones
</pre>
Get the configured Remote Support collection settings for "Encl1" Enclosure resource.



 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServer -Name PROD* | Get-HPOVRemoteSupportSetting | ? supportEnabled -eq $false
</pre>
Return all PROD servers, and return only those where remote support is not enabled.




### Related Links

* [Set-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportSetting)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVRemoteSupportSetting
<p>
Get supported resource Remote Support settings.

### SYNTAX
<p>
<pre><code>Get-HPOVRemoteSupportSetting [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to retrieve a supported resources Remote Support settings, defined Parimary and Secondary contact, and authorized reseller or support partners.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Either a Server Hardware or Enclosure resource to get the configured Remote Support collection settings.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 Server hardware resource object.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 Enclosure resource object.



### Return Values

_**HPOneView.Appliance.RemoteSupport.ResourceSetting [System.Management.Automation.PSCustomObject]**_

 

Remote Support Settings object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVEnclosure -Name Encl1 | Get-HPOVRemoteSupportSetting Appliance              ResourceName SalesChannelPartner        SupportChannelPartner      PrimaryContact SecondaryContact ---------              ------------ -------------------        ---------------------      -------------- ---------------- MyAppliance.domain.com Encl1        Hewlett Packard Enterprise Hewlett Packard Enterprise Mark Jones
</pre>
Get the configured Remote Support collection settings for "Encl1" Enclosure resource.



 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVServer -Name PROD* | Get-HPOVRemoteSupportSetting | ? supportEnabled -eq $false
</pre>
Return all PROD servers, and return only those where remote support is not enabled.




### Related Links

* [Set-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportSetting)


***
<div align=right><a href="#Top">Top</a></div>
