<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVRestore
<p>
Upload appliance backup file to restore its configuration.

### SYNTAX
<p>
<pre><code>New-HPOVRestore [-FileName] &lt;String&gt; [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Using this cmdlet will initiate a restore of the appliance to the backup file specified.  Starts a restore operation from the backup file already uploaded to the appliance. Only one restore operation can run at a time. There is no way to cancel a restore once it has been started. The restore operation is destructive. Any configuration changes not included in the backup file will be lost. The appliance will raise alerts for any inconsistencies detected after the restore. If an unrecoverable error is detected during the restore, then the appliance will be set to the factory reset mode.

Restoring from a backup is a disruptive action:

	* The appliance restarts and users cannot log in to the appliance during the restore process. All users are
  logged out and their work is lost.
	* To prevent duplicate identifiers on the network, server hardware configurations are cleared if an associated
  server profile is not in the backup.
	* Server profiles that have been modified since the backup was taken are flagged with this message: "Server
  profile settings conflict with the server hardware configuration". To reapply the server profile
  configuration and restore network connectivity, you must unassign all flagged server profiles and then
  individually reassign the server profiles to the server hardware.
	* To prevent unintentional assignment of duplicate addresses or identifiers, all address and identifier ranges
  are disabled after the post-restore process completes. The appliance automatically re-creates replacement
  address and identifier ranges.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FileName &lt;String&gt;<p>
Aliases [-File]

The full path and file name of the appliance configuration backup file.

<table><tbody><tr><td>Aliases</td><td>File</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The restore process object.  This is not an Async Task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVRestore "C:\Users\me\Documents\appliance_backup_2013-11-01_110203.bkp"
</pre>
Upload a backup file to restore in the appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVRestore
<p>
Upload appliance backup file to restore its configuration.

### SYNTAX
<p>
<pre><code>New-HPOVRestore [-FileName] &lt;String&gt; [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Using this cmdlet will initiate a restore of the appliance to the backup file specified.  Starts a restore operation from the backup file already uploaded to the appliance. Only one restore operation can run at a time. There is no way to cancel a restore once it has been started. The restore operation is destructive. Any configuration changes not included in the backup file will be lost. The appliance will raise alerts for any inconsistencies detected after the restore. If an unrecoverable error is detected during the restore, then the appliance will be set to the factory reset mode.

Restoring from a backup is a disruptive action:

	* The appliance restarts and users cannot log in to the appliance during the restore process. All users are
  logged out and their work is lost.
	* To prevent duplicate identifiers on the network, server hardware configurations are cleared if an associated
  server profile is not in the backup.
	* Server profiles that have been modified since the backup was taken are flagged with this message: "Server
  profile settings conflict with the server hardware configuration". To reapply the server profile
  configuration and restore network connectivity, you must unassign all flagged server profiles and then
  individually reassign the server profiles to the server hardware.
	* To prevent unintentional assignment of duplicate addresses or identifiers, all address and identifier ranges
  are disabled after the post-restore process completes. The appliance automatically re-creates replacement
  address and identifier ranges.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FileName &lt;String&gt;<p>
Aliases [-File]

The full path and file name of the appliance configuration backup file.

<table><tbody><tr><td>Aliases</td><td>File</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The restore process object.  This is not an Async Task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVRestore "C:\Users\me\Documents\appliance_backup_2013-11-01_110203.bkp"
</pre>
Upload a backup file to restore in the appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVRestore
<p>
Upload appliance backup file to restore its configuration.

### SYNTAX
<p>
<pre><code>New-HPOVRestore [-FileName] &lt;String&gt; [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Using this cmdlet will initiate a restore of the appliance to the backup file specified.  Starts a restore operation from the backup file already uploaded to the appliance. Only one restore operation can run at a time. There is no way to cancel a restore once it has been started. The restore operation is destructive. Any configuration changes not included in the backup file will be lost. The appliance will raise alerts for any inconsistencies detected after the restore. If an unrecoverable error is detected during the restore, then the appliance will be set to the factory reset mode.

Restoring from a backup is a disruptive action:

	* The appliance restarts and users cannot log in to the appliance during the restore process. All users are
  logged out and their work is lost.
	* To prevent duplicate identifiers on the network, server hardware configurations are cleared if an associated
  server profile is not in the backup.
	* Server profiles that have been modified since the backup was taken are flagged with this message: "Server
  profile settings conflict with the server hardware configuration". To reapply the server profile
  configuration and restore network connectivity, you must unassign all flagged server profiles and then
  individually reassign the server profiles to the server hardware.
	* To prevent unintentional assignment of duplicate addresses or identifiers, all address and identifier ranges
  are disabled after the post-restore process completes. The appliance automatically re-creates replacement
  address and identifier ranges.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -FileName &lt;String&gt;<p>
Aliases [-File]

The full path and file name of the appliance configuration backup file.

<table><tbody><tr><td>Aliases</td><td>File</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The restore process object.  This is not an Async Task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVRestore "C:\Users\me\Documents\appliance_backup_2013-11-01_110203.bkp"
</pre>
Upload a backup file to restore in the appliance.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
