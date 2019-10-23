<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVStorageVolumeSnapshot
<p>
Create new Storage Volume Snapshot resource.

### SYNTAX
<p>
<pre><code>New-HPOVStorageVolumeSnapshot [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Description] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will help create a Storage Volume Snapshot from an existing Storage Volume resource.  If a Snapshot Storage Pool has not been configured for the Storage Volume, the Snapshot cannot be created.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
The description for the Storage Volume Snapshot.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Volume]

Specify the Storage Volume object to create a snapshot for.

<table><tbody><tr><td>Aliases</td><td>Volume</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of Snapshot.  The parameter defaults to "{volumeName}_{timestamp}" variables provided by the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>{volumeName}_{timestamp}</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 Storage volume resource object



### Return Values

_**HPOneView.Applinace.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task to create storage volume snapshot

 _**System.Collections.ArrayList &lt;HPOneView.Applinace.TaskResource&gt;**_

 

Multiple async tasks



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolume "Volume 1" -ApplianceConnection hpov.domain.com | New-HPOVStorageVolumeSnapshot
</pre>
Create a new storage volume snapshot using the default values.



### Related Links

* [Get-HPOVStorageVolumeSnapShot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSnapShot)
* [Remove-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeSnapshot)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVStorageVolumeSnapshot
<p>
Create new Storage Volume Snapshot resource.

### SYNTAX
<p>
<pre><code>New-HPOVStorageVolumeSnapshot [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Description] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will help create a Storage Volume Snapshot from an existing Storage Volume resource.  If a Snapshot Storage Pool has not been configured for the Storage Volume, the Snapshot cannot be created.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
The description for the Storage Volume Snapshot.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Volume]

Specify the Storage Volume object to create a snapshot for.

<table><tbody><tr><td>Aliases</td><td>Volume</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of Snapshot.  The parameter defaults to "{volumeName}_{timestamp}" variables provided by the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>{volumeName}_{timestamp}</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 Storage volume resource object



### Return Values

_**HPOneView.Applinace.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task to create storage volume snapshot

 _**System.Collections.ArrayList &lt;HPOneView.Applinace.TaskResource&gt;**_

 

Multiple async tasks



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolume "Volume 1" -ApplianceConnection hpov.domain.com | New-HPOVStorageVolumeSnapshot
</pre>
Create a new storage volume snapshot using the default values.



### Related Links

* [Get-HPOVStorageVolumeSnapShot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSnapShot)
* [Remove-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeSnapshot)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVStorageVolumeSnapshot
<p>
Create new Storage Volume Snapshot resource.

### SYNTAX
<p>
<pre><code>New-HPOVStorageVolumeSnapshot [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Description] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will help create a Storage Volume Snapshot from an existing Storage Volume resource.  If a Snapshot Storage Pool has not been configured for the Storage Volume, the Snapshot cannot be created.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
The description for the Storage Volume Snapshot.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Volume]

Specify the Storage Volume object to create a snapshot for.

<table><tbody><tr><td>Aliases</td><td>Volume</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Name of Snapshot.  The parameter defaults to "{volumeName}_{timestamp}" variables provided by the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>{volumeName}_{timestamp}</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.Volume [System.Management.Automation.PSCustomObject]**_

 Storage volume resource object



### Return Values

_**HPOneView.Applinace.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async task to create storage volume snapshot

 _**System.Collections.ArrayList &lt;HPOneView.Applinace.TaskResource&gt;**_

 

Multiple async tasks



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolume "Volume 1" -ApplianceConnection hpov.domain.com | New-HPOVStorageVolumeSnapshot
</pre>
Create a new storage volume snapshot using the default values.



### Related Links

* [Get-HPOVStorageVolumeSnapShot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeSnapShot)
* [Remove-HPOVStorageVolumeSnapshot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVStorageVolumeSnapshot)


***
<div align=right><a href="#Top">Top</a></div>
