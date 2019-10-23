<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Save-HPOVBackup
<p>
Save existing backups on an appliance.

### SYNTAX
<p>
<pre><code>Save-HPOVBackup[ [-Location] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Save-HPOVBackup [-SaveRemoteOnly] &lt;SwitchParameter&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure (off-appliance) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

Use this cmdlet to save the created appliance backup files.  Use the -SaveRemoteOnly parameter to save the backup file(s) to the remote location if configured on the appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
Specify the directory or UNC path where to save the backup file(s) to.

<table><tbody><tr><td>Aliases</td><td>save</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SaveRemoteOnly &lt;SwitchParameter&gt;<p>
When appliance automatic backup is configured, use this parameter to specify the backup file(s) should be saved in the remote location, instead of the local PC.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async Task resource to monitor progress of the backup file saved to the remote location.

 _**System.IO.FileInfo**_

 

The saved backup file located on the PC.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Save-HPOVBackup
</pre>
Save the found backup file


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Save-HPOVBackup -Location \\Server\BackupShare\HPOneView
</pre>
Save the found backup file to the specified location.



### Related Links

* [Get-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBackup)
* [New-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVBackup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Save-HPOVBackup
<p>
Save existing backups on an appliance.

### SYNTAX
<p>
<pre><code>Save-HPOVBackup[ [-Location] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Save-HPOVBackup [-SaveRemoteOnly] &lt;SwitchParameter&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure (off-appliance) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

Use this cmdlet to save the created appliance backup files.  Use the -SaveRemoteOnly parameter to save the backup file(s) to the remote location if configured on the appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
Specify the directory or UNC path where to save the backup file(s) to.

<table><tbody><tr><td>Aliases</td><td>save</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SaveRemoteOnly &lt;SwitchParameter&gt;<p>
When appliance automatic backup is configured, use this parameter to specify the backup file(s) should be saved in the remote location, instead of the local PC.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async Task resource to monitor progress of the backup file saved to the remote location.

 _**System.IO.FileInfo**_

 

The saved backup file located on the PC.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Save-HPOVBackup
</pre>
Save the found backup file


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Save-HPOVBackup -Location \\Server\BackupShare\HPOneView
</pre>
Save the found backup file to the specified location.



### Related Links

* [Get-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBackup)
* [New-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVBackup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Save-HPOVBackup
<p>
Save existing backups on an appliance.

### SYNTAX
<p>
<pre><code>Save-HPOVBackup[ [-Location] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Save-HPOVBackup [-SaveRemoteOnly] &lt;SwitchParameter&gt;[ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure (off-appliance) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

Use this cmdlet to save the created appliance backup files.  Use the -SaveRemoteOnly parameter to save the backup file(s) to the remote location if configured on the appliance.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
Specify the directory or UNC path where to save the backup file(s) to.

<table><tbody><tr><td>Aliases</td><td>save</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SaveRemoteOnly &lt;SwitchParameter&gt;<p>
When appliance automatic backup is configured, use this parameter to specify the backup file(s) should be saved in the remote location, instead of the local PC.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Async Task resource to monitor progress of the backup file saved to the remote location.

 _**System.IO.FileInfo**_

 

The saved backup file located on the PC.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Save-HPOVBackup
</pre>
Save the found backup file


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Save-HPOVBackup -Location \\Server\BackupShare\HPOneView
</pre>
Save the found backup file to the specified location.



### Related Links

* [Get-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVBackup)
* [New-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVBackup)


***
<div align=right><a href="#Top">Top</a></div>
