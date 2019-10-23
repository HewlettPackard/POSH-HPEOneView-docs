<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Disable-HPOVRemoteSupport
<p>
Disable Remote Support for a supported resource.

### SYNTAX
<p>
<pre><code>Disable-HPOVRemoteSupport [-InputObject] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will disable Remote Support for a compute or enclosure resource.  If Remote Support has been disabled globally on the appliance, this Cmdlet is uncessary.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The compute or enclosure resource to enable Remote Support for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer -Name Prod* | Disable-HPOVRemoteSupport
</pre>
Get the servers with their name matching "Prod" and disable Remote Support for those resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Enclosure = Get-HPOVEnclousre -Name Enclosure-1A
Disable-HPOVRemoteSupport -InputObject $Enclusre
</pre>
Get the specific enclosure reousrce and disable Remote Support.



### Related Links

* [Enable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSupport)
* [Get-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupport)
* [Get-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportContact)
* [Get-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDataCollectionSchedule)
* [Get-HPOVRemoteSupportDefaultSite](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDefaultSite)
* [Get-HPOVRemoteSupportEntitlementStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportEntitlementStatus)
* [Get-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportPartner)
* [Get-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportSetting)
* [New-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportContact)
* [New-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportPartner)
* [Remove-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportContact)
* [Remove-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportPartner)
* [Set-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupport)
* [Set-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDataCollectionSchedule)
* [Set-HPOVRemoteSupportDefaultSite](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDefaultSite)
* [Set-HPOVRemoteSupportPrimaryContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportPrimaryContact)
* [Set-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportSetting)
* [Start-HPOVRemoteSupportCollection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Start-HPOVRemoteSupportCollection)
* [Update-HPOVRemoteSupportEntitlement](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRemoteSupportEntitlement)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Disable-HPOVRemoteSupport
<p>
Disable Remote Support for a supported resource.

### SYNTAX
<p>
<pre><code>Disable-HPOVRemoteSupport [-InputObject] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will disable Remote Support for a compute or enclosure resource.  If Remote Support has been disabled globally on the appliance, this Cmdlet is uncessary.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The compute or enclosure resource to enable Remote Support for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer -Name Prod* | Disable-HPOVRemoteSupport
</pre>
Get the servers with their name matching "Prod" and disable Remote Support for those resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Enclosure = Get-HPOVEnclousre -Name Enclosure-1A
Disable-HPOVRemoteSupport -InputObject $Enclusre
</pre>
Get the specific enclosure reousrce and disable Remote Support.



### Related Links

* [Enable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSupport)
* [Get-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupport)
* [Get-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportContact)
* [Get-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDataCollectionSchedule)
* [Get-HPOVRemoteSupportDefaultSite](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDefaultSite)
* [Get-HPOVRemoteSupportEntitlementStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportEntitlementStatus)
* [Get-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportPartner)
* [Get-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportSetting)
* [New-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportContact)
* [New-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportPartner)
* [Remove-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportContact)
* [Remove-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportPartner)
* [Set-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupport)
* [Set-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDataCollectionSchedule)
* [Set-HPOVRemoteSupportDefaultSite](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDefaultSite)
* [Set-HPOVRemoteSupportPrimaryContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportPrimaryContact)
* [Set-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportSetting)
* [Start-HPOVRemoteSupportCollection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Start-HPOVRemoteSupportCollection)
* [Update-HPOVRemoteSupportEntitlement](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRemoteSupportEntitlement)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Disable-HPOVRemoteSupport
<p>
Disable Remote Support for a supported resource.

### SYNTAX
<p>
<pre><code>Disable-HPOVRemoteSupport [-InputObject] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will disable Remote Support for a compute or enclosure resource.  If Remote Support has been disabled globally on the appliance, this Cmdlet is uncessary.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
The compute or enclosure resource to enable Remote Support for.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 A Gen8 or newer generation server hardware resource object from Get-HPOVServer.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task Resource object for monitoring.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer -Name Prod* | Disable-HPOVRemoteSupport
</pre>
Get the servers with their name matching "Prod" and disable Remote Support for those resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$Enclosure = Get-HPOVEnclousre -Name Enclosure-1A
Disable-HPOVRemoteSupport -InputObject $Enclusre
</pre>
Get the specific enclosure reousrce and disable Remote Support.



### Related Links

* [Enable-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Enable-HPOVRemoteSupport)
* [Get-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupport)
* [Get-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportContact)
* [Get-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDataCollectionSchedule)
* [Get-HPOVRemoteSupportDefaultSite](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportDefaultSite)
* [Get-HPOVRemoteSupportEntitlementStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportEntitlementStatus)
* [Get-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportPartner)
* [Get-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVRemoteSupportSetting)
* [New-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportContact)
* [New-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVRemoteSupportPartner)
* [Remove-HPOVRemoteSupportContact](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportContact)
* [Remove-HPOVRemoteSupportPartner](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVRemoteSupportPartner)
* [Set-HPOVRemoteSupport](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupport)
* [Set-HPOVRemoteSupportDataCollectionSchedule](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDataCollectionSchedule)
* [Set-HPOVRemoteSupportDefaultSite](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportDefaultSite)
* [Set-HPOVRemoteSupportSetting](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVRemoteSupportSetting)
* [Start-HPOVRemoteSupportCollection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Start-HPOVRemoteSupportCollection)
* [Update-HPOVRemoteSupportEntitlement](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVRemoteSupportEntitlement)


***
<div align=right><a href="#Top">Top</a></div>
