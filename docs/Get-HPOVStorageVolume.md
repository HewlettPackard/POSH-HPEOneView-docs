<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVStorageVolume
<p>
Retrieve Storage Volume resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVStorageVolume[ [-Name] &lt;String&gt;][ [-StorageVolumeTemplate] &lt;Object&gt;][ [-Available] &lt;SwitchParameter&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVStorageVolume[ [-InputObject] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display all or a specific storage volume(s) created on the HPE OneView appliance.  A specific storage volume can be searched for by using the Name.  Use the List switch to display a report of the requested volume(s), including any assignments to Server Profiles.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Available &lt;SwitchParameter&gt;<p>
Use to display Storage Volumes that are available for attachment.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Provide a Server Profile object and all associated Storage Volumes will be returned.

<table><tbody><tr><td>Aliases</td><td>ServerProfile, ServerProfileTemplate</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-VolumeName]
 Specify the name of the Storage Volume to display.

<table><tbody><tr><td>Aliases</td><td>VolumeName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageVolumeTemplate &lt;Object&gt;<p>
Return a list of provisioned Storage Volumes by their associated Storage Volume Template.

<table><tbody><tr><td>Aliases</td><td>SVT</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Collections.ArrayList &lt;HPOneView.Storage.Volume&gt;**_

 

Multiple storage volume resources

 _**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 

Formatted table view of storage volume resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolume
</pre>
Return all storage volume resource objects.



### Related Links

* [Add-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageVolume)
* [ConvertTo-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVStorageVolume)
* [Get-HPOVStorageVolumeSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSet)
* [Get-HPOVStorageVolumeSnapShot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSnapShot)
* [Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate)
* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)
* [New-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolume)
* [New-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeSnapshot)
* [New-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeTemplate)
* [Remove-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolume)
* [Remove-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeSnapshot)
* [Remove-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolume)
* [Set-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVStorageVolume
<p>
Retrieve Storage Volume resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVStorageVolume[ [-Name] &lt;String&gt;][ [-StorageVolumeTemplate] &lt;Object&gt;][ [-Available] &lt;SwitchParameter&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVStorageVolume[ [-InputObject] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display all or a specific storage volume(s) created on the HPE OneView appliance.  A specific storage volume can be searched for by using the Name.  Use the List switch to display a report of the requested volume(s), including any assignments to Server Profiles.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Available &lt;SwitchParameter&gt;<p>
Use to display Storage Volumes that are available for attachment.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Provide a Server Profile object and all associated Storage Volumes will be returned.

<table><tbody><tr><td>Aliases</td><td>ServerProfile, ServerProfileTemplate</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-VolumeName]
 Specify the name of the Storage Volume to display.

<table><tbody><tr><td>Aliases</td><td>VolumeName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageVolumeTemplate &lt;Object&gt;<p>
Return a list of provisioned Storage Volumes by their associated Storage Volume Template.

<table><tbody><tr><td>Aliases</td><td>SVT</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Collections.ArrayList &lt;HPOneView.Storage.Volume&gt;**_

 

Multiple storage volume resources

 _**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 

Formatted table view of storage volume resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolume
</pre>
Return all storage volume resource objects.



### Related Links

* [Add-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageVolume)
* [ConvertTo-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVStorageVolume)
* [Get-HPOVStorageVolumeSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSet)
* [Get-HPOVStorageVolumeSnapShot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSnapShot)
* [Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate)
* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)
* [New-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolume)
* [New-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeSnapshot)
* [New-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeTemplate)
* [Remove-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolume)
* [Remove-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeSnapshot)
* [Remove-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolume)
* [Set-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVStorageVolume
<p>
Retrieve Storage Volume resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVStorageVolume[ [-Name] &lt;String&gt;][ [-StorageVolumeTemplate] &lt;Object&gt;][ [-Available] &lt;SwitchParameter&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVStorageVolume[ [-InputObject] &lt;Object&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will display all or a specific storage volume(s) created on the HPE OneView appliance.  A specific storage volume can be searched for by using the Name.  Use the List switch to display a report of the requested volume(s), including any assignments to Server Profiles.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Available &lt;SwitchParameter&gt;<p>
Use to display Storage Volumes that are available for attachment.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Provide a Server Profile object and all associated Storage Volumes will be returned.

<table><tbody><tr><td>Aliases</td><td>ServerProfile, ServerProfileTemplate</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-VolumeName]
 Specify the name of the Storage Volume to display.

<table><tbody><tr><td>Aliases</td><td>VolumeName</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageVolumeTemplate &lt;Object&gt;<p>
Return a list of provisioned Storage Volumes by their associated Storage Volume Template.

<table><tbody><tr><td>Aliases</td><td>SVT</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Collections.ArrayList &lt;HPOneView.Storage.Volume&gt;**_

 

Multiple storage volume resources

 _**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 

Formatted table view of storage volume resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolume
</pre>
Return all storage volume resource objects.



### Related Links

* [Add-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVStorageVolume)
* [ConvertTo-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVStorageVolume)
* [Get-HPOVStorageVolumeSnapShot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSnapShot)
* [Get-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplate)
* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)
* [New-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolume)
* [New-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeSnapshot)
* [New-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeTemplate)
* [Remove-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolume)
* [Remove-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeSnapshot)
* [Remove-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolume)
* [Set-HPOVStorageVolumeTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplate)
* [Set-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
