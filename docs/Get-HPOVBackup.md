<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVBackup
<p>
List appliance backups.

### SYNTAX
<p>
<pre><code>Get-HPOVBackup[ [-Before] &lt;DateTime&gt;][ [-After] &lt;DateTime&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure (off-appliance) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

Use this cmdlet to return any existing backups that have not been downloaded or offloaded on the appliance.


### Parameters

-After &lt;DateTime&gt;<p>
Specify the DateTime object of when to locate backups created after.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Before &lt;DateTime&gt;<p>
Specify the DateTime object of when to locate backups created before.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**The generated backup File if appliance is not setup for remote storage or the Force parameter is used.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVBackup
</pre>
This command will return any appliance backs present on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVBackup -Before [datetime]"2017/01/01"</pre>
This command will return applinace backups that were created before 2017/01/01.



### Related Links

* [New-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVBackup)
* [Save-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVBackup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVBackup
<p>
List appliance backups.

### SYNTAX
<p>
<pre><code>Get-HPOVBackup[ [-Before] &lt;DateTime&gt;][ [-After] &lt;DateTime&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure (off-appliance) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

Use this cmdlet to return any existing backups that have not been downloaded or offloaded on the appliance.


### Parameters

-After &lt;DateTime&gt;<p>
Specify the DateTime object of when to locate backups created after.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Before &lt;DateTime&gt;<p>
Specify the DateTime object of when to locate backups created before.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**The generated backup File if appliance is not setup for remote storage or the Force parameter is used.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVBackup
</pre>
This command will return any appliance backs present on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVBackup -Before [datetime]"2017/01/01"</pre>
This command will return applinace backups that were created before 2017/01/01.



### Related Links

* [New-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVBackup)
* [Save-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVBackup)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVBackup
<p>
List appliance backups.

### SYNTAX
<p>
<pre><code>Get-HPOVBackup[ [-Before] &lt;DateTime&gt;][ [-After] &lt;DateTime&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides the ability to save your configuration settings and management data to a backup file and enables you to use that backup to restore a corrupted appliance in the event of a catastrophic failure.

The backup process involves creating a backup file and then downloading that file so that you can store it to a safe and secure (off-appliance) location for future use. You can schedule automatic backup operations and designate a remote location for the backup file.

Use this cmdlet to return any existing backups that have not been downloaded or offloaded on the appliance.


### Parameters

-After &lt;DateTime&gt;<p>
Specify the DateTime object of when to locate backups created after.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Before &lt;DateTime&gt;<p>
Specify the DateTime object of when to locate backups created before.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**The generated backup File if appliance is not setup for remote storage or the Force parameter is used.**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVBackup
</pre>
This command will return any appliance backs present on the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVBackup -Before [datetime]"2017/01/01"</pre>
This command will return applinace backups that were created before 2017/01/01.



### Related Links

* [New-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVBackup)
* [Save-HPOVBackup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVBackup)


***
<div align=right><a href="#Top">Top</a></div>
