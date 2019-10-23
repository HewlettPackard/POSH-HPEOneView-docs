<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVAutomaticBackupConfig
<p>
Configure automatic appliance backup.

### SYNTAX
<p>
<pre><code>Set-HPOVAutomaticBackupConfig [-Hostname] &lt;String&gt; [-Username] &lt;String&gt; [-Password] &lt;SecureString&gt; [-HostSSHKey] &lt;String&gt; [-Directory] &lt;String&gt; [-Protocol] &lt;String&gt; [-Interval] &lt;String&gt; [-Days] &lt;Array&gt; [-Time] &lt;String&gt;[ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVAutomaticBackupConfig[ [-Disabled] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Introduced in HPE OneView 3.0, an automatic appliance backup schedule can be configured.  The automatic backup process will generate the backup file, then transfer it to a host that supports SCP or SFTP.  The hosts public SSH key will be needed in order to successfuly configure.

During the configuration process, a test file will be created and stored on the host.  This file can be safely deleted once the async task has successfully completed.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Days &lt;Array&gt;<p>
If specifying a Weekly backup, provide the days in an Array.  Accepted values are:

	* SU or SUN or Sunday
	* MO or MON or Monday
	* TU or TUE or Tuesday
	* WE or WED or Wednesday
	* TH or THUR or Thursday
	* FR or FRI or Friday
	* SA or SAT or Saturday

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Directory &lt;String&gt;<p>
The remote directory on the host where the file will be saved to.  Omit to sepcify the root or default directory the user account is associated with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disabled &lt;SwitchParameter&gt;<p>
Disable the automatic backup schedule.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HostSSHKey &lt;String&gt;<p>
The SCP/SFTP hosts public key, in OpenSSH String format.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
The IP Address or FQDN of the target SCP or SFTP host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Interval &lt;String&gt;<p>
The frequency the backup will be generated.  Supported values are:

	* Daily
	* Weekly

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
The password of the user.

Specify the Logical Interconnect URI or Object the Support Dump will be generated for, from pipeline.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Protocol &lt;String&gt;<p>
The protocol to connect to the remote host with.  Supported values are:

	* SCP
	* SFTP

Default: SCP

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SCP</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Time &lt;String&gt;<p>
The time to execute, in 24hr clock.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
The username to authenticate to the SCP/SFTP host with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Appliance async task to monitor

 _**System.Collections.Arraylist &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple appliance async task to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$HostSSHKey = Get-Content C:\host.key
Set-HPOVAutomaticBackupConfig -Hostname scphost.domain.com -Username backupadmin -Password (ConvertTo-SecureString password -AsPlainText -Force) -HostSSHKey $HostSSHKey -Protocol SCP -Interval Weekly -Days "MON","WED","FRI" -Time 18:00

</pre>
This command will configure automatic appliance backup, based on a weekly Monday, Wednesday and Friday schedule to execute at 18:00 (6:00PM).


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$HostSSHKey = Get-Content C:\host.key
Set-HPOVAutomaticBackupConfig -Hostname scphost.domain.com -Username backupadmin -Password (ConvertTo-SecureString password -AsPlainText -Force) -HostSSHKey $HostSSHKey -Protocol SCP -Interval Weekly -Days "MON","WED","FRI" -Time 18:00
New-HPOVBackup

</pre>
This command will configure automatic appliance backup, based on a weekly Monday, Wednesday and Friday schedule to execute at 18:00 (6:00PM).  Then, a call to New-HPOVBackup will be made, which will generate and copy the backup file to the remote location configured.



### Related Links

* [Get-HPOVAutomaticBackupConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAutomaticBackupConfig)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVAutomaticBackupConfig
<p>
Configure automatic appliance backup.

### SYNTAX
<p>
<pre><code>Set-HPOVAutomaticBackupConfig [-Hostname] &lt;String&gt; [-Username] &lt;String&gt; [-Password] &lt;SecureString&gt; [-HostSSHKey] &lt;String&gt; [-Directory] &lt;String&gt; [-Protocol] &lt;String&gt; [-Interval] &lt;String&gt; [-Days] &lt;Array&gt; [-Time] &lt;String&gt;[ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVAutomaticBackupConfig[ [-Disabled] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Introduced in HPE OneView 3.0, an automatic appliance backup schedule can be configured.  The automatic backup process will generate the backup file, then transfer it to a host that supports SCP or SFTP.  The hosts public SSH key will be needed in order to successfuly configure.

During the configuration process, a test file will be created and stored on the host.  This file can be safely deleted once the async task has successfully completed.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Days &lt;Array&gt;<p>
If specifying a Weekly backup, provide the days in an Array.  Accepted values are:

	* SU or SUN or Sunday
	* MO or MON or Monday
	* TU or TUE or Tuesday
	* WE or WED or Wednesday
	* TH or THUR or Thursday
	* FR or FRI or Friday
	* SA or SAT or Saturday

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Directory &lt;String&gt;<p>
The remote directory on the host where the file will be saved to.  Omit to sepcify the root or default directory the user account is associated with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disabled &lt;SwitchParameter&gt;<p>
Disable the automatic backup schedule.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HostSSHKey &lt;String&gt;<p>
The SCP/SFTP hosts public key, in OpenSSH String format.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
The IP Address or FQDN of the target SCP or SFTP host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Interval &lt;String&gt;<p>
The frequency the backup will be generated.  Supported values are:

	* Daily
	* Weekly

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
The password of the user.

Specify the Logical Interconnect URI or Object the Support Dump will be generated for, from pipeline.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Protocol &lt;String&gt;<p>
The protocol to connect to the remote host with.  Supported values are:

	* SCP
	* SFTP

Default: SCP

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SCP</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Time &lt;String&gt;<p>
The time to execute, in 24hr clock.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
The username to authenticate to the SCP/SFTP host with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Appliance async task to monitor

 _**System.Collections.Arraylist &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple appliance async task to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$HostSSHKey = Get-Content C:\host.key
Set-HPOVAutomaticBackupConfig -Hostname scphost.domain.com -Username backupadmin -Password (ConvertTo-SecureString password -AsPlainText -Force) -HostSSHKey $HostSSHKey -Protocol SCP -Interval Weekly -Days "MON","WED","FRI" -Time 18:00

</pre>
This command will configure automatic appliance backup, based on a weekly Monday, Wednesday and Friday schedule to execute at 18:00 (6:00PM).


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$HostSSHKey = Get-Content C:\host.key
Set-HPOVAutomaticBackupConfig -Hostname scphost.domain.com -Username backupadmin -Password (ConvertTo-SecureString password -AsPlainText -Force) -HostSSHKey $HostSSHKey -Protocol SCP -Interval Weekly -Days "MON","WED","FRI" -Time 18:00
New-HPOVBackup

</pre>
This command will configure automatic appliance backup, based on a weekly Monday, Wednesday and Friday schedule to execute at 18:00 (6:00PM).  Then, a call to New-HPOVBackup will be made, which will generate and copy the backup file to the remote location configured.



### Related Links

* [Get-HPOVAutomaticBackupConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAutomaticBackupConfig)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVAutomaticBackupConfig
<p>
Configure automatic appliance backup.

### SYNTAX
<p>
<pre><code>Set-HPOVAutomaticBackupConfig [-Hostname] &lt;String&gt; [-Username] &lt;String&gt; [-Password] &lt;SecureString&gt; [-HostSSHKey] &lt;String&gt; [-Directory] &lt;String&gt; [-Protocol] &lt;String&gt; [-Interval] &lt;String&gt; [-Days] &lt;Array&gt; [-Time] &lt;String&gt;[ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVAutomaticBackupConfig[ [-Disabled] &lt;SwitchParameter&gt;][ [-Async] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Introduced in HPE OneView 3.0, an automatic appliance backup schedule can be configured.  The automatic backup process will generate the backup file, then transfer it to a host that supports SCP or SFTP.  The hosts public SSH key will be needed in order to successfuly configure.

During the configuration process, a test file will be created and stored on the host.  This file can be safely deleted once the async task has successfully completed.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Days &lt;Array&gt;<p>
If specifying a Weekly backup, provide the days in an Array.  Accepted values are:

	* SU or SUN or Sunday
	* MO or MON or Monday
	* TU or TUE or Tuesday
	* WE or WED or Wednesday
	* TH or THUR or Thursday
	* FR or FRI or Friday
	* SA or SAT or Saturday

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Directory &lt;String&gt;<p>
The remote directory on the host where the file will be saved to.  Omit to sepcify the root or default directory the user account is associated with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disabled &lt;SwitchParameter&gt;<p>
Disable the automatic backup schedule.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -HostSSHKey &lt;String&gt;<p>
The SCP/SFTP hosts public key, in OpenSSH String format.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Hostname &lt;String&gt;<p>
The IP Address or FQDN of the target SCP or SFTP host.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Interval &lt;String&gt;<p>
The frequency the backup will be generated.  Supported values are:

	* Daily
	* Weekly

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Password &lt;SecureString&gt;<p>
The password of the user.

Specify the Logical Interconnect URI or Object the Support Dump will be generated for, from pipeline.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Protocol &lt;String&gt;<p>
The protocol to connect to the remote host with.  Supported values are:

	* SCP
	* SFTP

Default: SCP

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SCP</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Time &lt;String&gt;<p>
The time to execute, in 24hr clock.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Username &lt;String&gt;<p>
The username to authenticate to the SCP/SFTP host with.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

Appliance async task to monitor

 _**System.Collections.Arraylist &lt;HPOneView.Appliance.TaskResource&gt;**_

 

Multiple appliance async task to monitor



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$HostSSHKey = Get-Content C:\host.key
Set-HPOVAutomaticBackupConfig -Hostname scphost.domain.com -Username backupadmin -Password (ConvertTo-SecureString password -AsPlainText -Force) -HostSSHKey $HostSSHKey -Protocol SCP -Interval Weekly -Days "MON","WED","FRI" -Time 18:00

</pre>
This command will configure automatic appliance backup, based on a weekly Monday, Wednesday and Friday schedule to execute at 18:00 (6:00PM).


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$HostSSHKey = Get-Content C:\host.key
Set-HPOVAutomaticBackupConfig -Hostname scphost.domain.com -Username backupadmin -Password (ConvertTo-SecureString password -AsPlainText -Force) -HostSSHKey $HostSSHKey -Protocol SCP -Interval Weekly -Days "MON","WED","FRI" -Time 18:00
New-HPOVBackup

</pre>
This command will configure automatic appliance backup, based on a weekly Monday, Wednesday and Friday schedule to execute at 18:00 (6:00PM).  Then, a call to New-HPOVBackup will be made, which will generate and copy the backup file to the remote location configured.



### Related Links

* [Get-HPOVAutomaticBackupConfig](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAutomaticBackupConfig)


***
<div align=right><a href="#Top">Top</a></div>
