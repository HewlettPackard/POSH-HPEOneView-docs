<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVAutomaticBackupConfig
<p>
Retrieve automatic appliance backup configuration.

### SYNTAX
<p>
<pre><code>Get-HPOVAutomaticBackupConfig [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure (off-appliance) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

This Cmdlet will get the automatic backup configuration from the connected appliance(s).  Use Set-HPOVAutomaticBackupConfig to set a new automatic backup policy for the appliance(s).


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AutomaticBackupConfig [System.Management.Automation.PSCustomObject]**_

 

Appliance automatic backup configuration object.

 _**System.Collections.Arraylist &lt;HPOneView.Appliance.AutomaticBackupConfig&gt;**_

 

Multiple appliance automatic backup configuration objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAutomaticBackupConfig
Appliance Enabled Server             Protocol Directory Interval Days         Time
--------- ------- ------             -------- --------- -------- ----         ----
Appliance True    scphost.domain.com SCP                WEEKLY   {MO, WE, FR} 18:00

</pre>
Get the configured automatic backup setting of the appliance.



### Related Links

* [Set-HPOVAutomaticBackupConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAutomaticBackupConfig)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVAutomaticBackupConfig
<p>
Retrieve automatic appliance backup configuration.

### SYNTAX
<p>
<pre><code>Get-HPOVAutomaticBackupConfig [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure (off-appliance) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

This Cmdlet will get the automatic backup configuration from the connected appliance(s).  Use Set-HPOVAutomaticBackupConfig to set a new automatic backup policy for the appliance(s).


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AutomaticBackupConfig [System.Management.Automation.PSCustomObject]**_

 

Appliance automatic backup configuration object.

 _**System.Collections.Arraylist &lt;HPOneView.Appliance.AutomaticBackupConfig&gt;**_

 

Multiple appliance automatic backup configuration objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAutomaticBackupConfig
Appliance Enabled Server             Protocol Directory Interval Days         Time
--------- ------- ------             -------- --------- -------- ----         ----
Appliance True    scphost.domain.com SCP                WEEKLY   {MO, WE, FR} 18:00

</pre>
Get the configured automatic backup setting of the appliance.



### Related Links

* [Set-HPOVAutomaticBackupConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAutomaticBackupConfig)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVAutomaticBackupConfig
<p>
Retrieve automatic appliance backup configuration.

### SYNTAX
<p>
<pre><code>Get-HPOVAutomaticBackupConfig [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure (off-appliance) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

This Cmdlet will get the automatic backup configuration from the connected appliance(s).  Use Set-HPOVAutomaticBackupConfig to set a new automatic backup policy for the appliance(s).


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.AutomaticBackupConfig [System.Management.Automation.PSCustomObject]**_

 

Appliance automatic backup configuration object.

 _**System.Collections.Arraylist &lt;HPOneView.Appliance.AutomaticBackupConfig&gt;**_

 

Multiple appliance automatic backup configuration objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVAutomaticBackupConfig
Appliance Enabled Server             Protocol Directory Interval Days         Time
--------- ------- ------             -------- --------- -------- ----         ----
Appliance True    scphost.domain.com SCP                WEEKLY   {MO, WE, FR} 18:00

</pre>
Get the configured automatic backup setting of the appliance.



### Related Links

* [Set-HPOVAutomaticBackupConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAutomaticBackupConfig)


***
<div align=right><a href="#Top">Top</a></div>
