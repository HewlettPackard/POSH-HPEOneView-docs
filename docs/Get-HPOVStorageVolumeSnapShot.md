<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVStorageVolumeSnapShot
<p>
Retrieve Storage Volume Snapshot resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVStorageVolumeSnapShot [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will display all of the avialable snapshots for a given Storage Volume or multiple Storage Volumes.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Volume]

Provide the Storage Volume resource object.

<table><tbody><tr><td>Aliases</td><td>Name, Volume</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 Storage Volume resource



### Return Values

_**System.Collections.ArrayList &lt;HPOneView.Storage.VolumeSnapshot&gt;**_

 

Multiple storage volume snapshot resources

 _**HPOneView.Storage.VolumeSnapshot [System.Management.Automation.PSCustomObject]**_

 

Formatted table view of storage volume snapshot resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolume | Get-HPOVStorageVolumeSnapShot
Appliance       Name                                       Parent Volume               State             Capacity
---------       ----                                       -------------               -----             --------
hpov.domain.com Vol1_20160211220746                        Vol1                        Configured (None) 10.00 GB
hpov.domain.com Vol1_20160224235647                        Vol1                        Configured (None) 10.00 GB
hpov.domain.com Vol1_20160224235716                        Vol1                        Configured (None) 10.00 GB
hpov.domain.com Shared 1_20160224232717                    Shared 1                    Configured (None) 1,000.00 GB
hpov.domain.com Shared 1_20160224235621                    Shared 1                    Configured (None) 1,000.00 GB
hpov.domain.com Shared 1 Snapshot Converted_20160225214317 Shared 1 Snapshot Converted Configured (None) 1,000.00 GB

</pre>
Return all storage volume snapshot resource objects from all available storage volume resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStorageVolume "Volume 1" | Get-HPOVStorageVolumeSnapShot
</pre>
Get available storage volume snapshots from a specific Storage Volume.



### Related Links

* [New-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeSnapshot)
* [Remove-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeSnapshot)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVStorageVolumeSnapShot
<p>
Retrieve Storage Volume Snapshot resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVStorageVolumeSnapShot [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will display all of the avialable snapshots for a given Storage Volume or multiple Storage Volumes.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Volume]

Provide the Storage Volume resource object.

<table><tbody><tr><td>Aliases</td><td>Name, Volume</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 Storage Volume resource



### Return Values

_**System.Collections.ArrayList &lt;HPOneView.Storage.VolumeSnapshot&gt;**_

 

Multiple storage volume snapshot resources

 _**HPOneView.Storage.VolumeSnapshot [System.Management.Automation.PSCustomObject]**_

 

Formatted table view of storage volume snapshot resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolume | Get-HPOVStorageVolumeSnapShot
Appliance       Name                                       Parent Volume               State             Capacity
---------       ----                                       -------------               -----             --------
hpov.domain.com Vol1_20160211220746                        Vol1                        Configured (None) 10.00 GB
hpov.domain.com Vol1_20160224235647                        Vol1                        Configured (None) 10.00 GB
hpov.domain.com Vol1_20160224235716                        Vol1                        Configured (None) 10.00 GB
hpov.domain.com Shared 1_20160224232717                    Shared 1                    Configured (None) 1,000.00 GB
hpov.domain.com Shared 1_20160224235621                    Shared 1                    Configured (None) 1,000.00 GB
hpov.domain.com Shared 1 Snapshot Converted_20160225214317 Shared 1 Snapshot Converted Configured (None) 1,000.00 GB

</pre>
Return all storage volume snapshot resource objects from all available storage volume resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStorageVolume "Volume 1" | Get-HPOVStorageVolumeSnapShot
</pre>
Get available storage volume snapshots from a specific Storage Volume.



### Related Links

* [New-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeSnapshot)
* [Remove-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeSnapshot)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVStorageVolumeSnapShot
<p>
Retrieve Storage Volume Snapshot resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVStorageVolumeSnapShot [-InputObject] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will display all of the avialable snapshots for a given Storage Volume or multiple Storage Volumes.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Volume]

Provide the Storage Volume resource object.

<table><tbody><tr><td>Aliases</td><td>Name, Volume</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 Storage Volume resource



### Return Values

_**System.Collections.ArrayList &lt;HPOneView.Storage.VolumeSnapshot&gt;**_

 

Multiple storage volume snapshot resources

 _**HPOneView.Storage.VolumeSnapshot [System.Management.Automation.PSCustomObject]**_

 

Formatted table view of storage volume snapshot resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolume | Get-HPOVStorageVolumeSnapShot
Appliance       Name                                       Parent Volume               State             Capacity
---------       ----                                       -------------               -----             --------
hpov.domain.com Vol1_20160211220746                        Vol1                        Configured (None) 10.00 GB
hpov.domain.com Vol1_20160224235647                        Vol1                        Configured (None) 10.00 GB
hpov.domain.com Vol1_20160224235716                        Vol1                        Configured (None) 10.00 GB
hpov.domain.com Shared 1_20160224232717                    Shared 1                    Configured (None) 1,000.00 GB
hpov.domain.com Shared 1_20160224235621                    Shared 1                    Configured (None) 1,000.00 GB
hpov.domain.com Shared 1 Snapshot Converted_20160225214317 Shared 1 Snapshot Converted Configured (None) 1,000.00 GB

</pre>
Return all storage volume snapshot resource objects from all available storage volume resources.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVStorageVolume "Volume 1" | Get-HPOVStorageVolumeSnapShot
</pre>
Get available storage volume snapshots from a specific Storage Volume.



### Related Links

* [New-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVStorageVolumeSnapshot)
* [Remove-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeSnapshot)


***
<div align=right><a href="#Top">Top</a></div>
