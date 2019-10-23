<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVServerProfileLogicalDiskController
<p>
Create Server Profile disk controller policy object.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileLogicalDiskController [-ControllerID] &lt;Object&gt; [-Mode] &lt;String&gt;[ [-Initialize] &lt;SwitchParameter&gt;][ [-WriteCache] &lt;String&gt;] [-LogicalDisk] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileLogicalDiskController [-ControllerID] &lt;Object&gt; [-Mode] &lt;String&gt;[ [-Initialize] &lt;SwitchParameter&gt;][ [-WriteCache] &lt;String&gt;][ [-ImportExistingConfiguration] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET will create a Logical Disk controller object to then be assigned to a Server Profile Template or Server Profile using the -LogicalDisk parameter.


### Parameters

-ControllerID &lt;Object&gt;<p>
Specify the Controller ID location.  Supported options for this parameter are
	 * Embedded
	 * Mezz 1
	 * Mezz 2
	 * Mezz 3
Please note that Mezz 1, Mezz 2 and Mezz 3 are only supported with HPE Synergy Compute nodes connected to the HPE Synergy D3940 disk shelf.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Embedded</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ImportExistingConfiguration &lt;SwitchParameter&gt;<p>
Specify to import any found Logical Disk configuration and add to the Server Profile as the Logical Disk policy.  This option is not available for Server Profile Templates.  Not supported when ControllerID is "Mezz 1", "Mezz 2", or "Mezz 3".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Initialize &lt;SwitchParameter&gt;<p>
Use this parameter to re-initialize the controller.  This will wipe any existing logical disk configured for the controller and deploy the new policy defined.  Not supported when ControllerID is "Mezz 1", "Mezz 2", or "Mezz 3".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalDisk &lt;Object&gt;<p>
A collection of Logical Disk objects from the New-HPOVServerProfileLogicalDisk Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Mode &lt;String&gt;<p>
The mode to configure the Smart Array Controller as.  Accepted values are:

	* HBA
	* RAID

When specifying HBA, you cannot attach a RAID Logical Disk to this policy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>RAID</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WriteCache &lt;String&gt;<p>
For Gen10 controllers, to enable, disable or unmanage controller write cache policy.  Allowed values:

	* Enabled
	* Disabled
	* Unmanaged

Default value: Unmanaged

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Unmanaged</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfile.LogicalDisk [System.Management.Automation.PSCustomObject]**_

 Logical Disk configuration policy from New-HPOVServerProfileLogicalDisk

 _**System.Collections.ArrayList &lt;HPOneView.ServerProfile.LogicalDisk&gt;**_

 Collection of Logical Disk configuration policy from New-HPOVServerProfileLogicalDisk



### Return Values

_**HPOneView.ServerProfile.Controller [System.Management.Automation.PSCustomObject]**_

 

Server Profile Controller configuration object

 _**System.Collections.ArrayList &lt;HPOneView.ServerProfile.Controller&gt;**_

 

Collection of Server Profile Controller configuration objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LogicalDisk = New-HPOVServerProfileLogicalDisk -Name "MyDisk" | New-HPOVServerProfileLogicalDiskController -Initialize
</pre>
Create a default Logical Disk and Controller configuration object policy.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVServerProfileLogicalDiskController -Mode HBA
</pre>
Create an HBA controller policy, which will then set the controller to JBOD mode.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$LogicalDisk1 = New-HPOVServerProfileLogicalDisk -Name "MyDisk"
$LogicalDisk2 = New-HPOVServerProfileLogicalDisk -Name "MyDisk2"
$Controller = New-HPOVServerProfileLogicalDiskController -Initialize -LogicalDisk $LogicalDisk1,$LogicalDisk2
</pre>
Create a default Logical Disk and Controller configuration object policy.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$LogicalDisk1 = New-HPOVServerProfileLogicalDisk -Name Boot -RAID RAID1 -MinDriveSize 300 -MaxDriveSize 300 -DriveType SAS -Bootable $True
$LogicalDisk2 = New-HPOVServerProfileLogicalDisk -Name Data -RAID RAID5 -NumberofDrives 5 -MinDriveSize 300 -MaxDriveSize 300 -DriveType SAS
$Controller = New-HPOVServerProfileLogicalDiskController -ControllerID "Mezz 1" -Mode RAID -LogicalDisk $LogicalDisk1,$LogicalDisk2
</pre>
Create a HPE Synergy D3940 RAID disk policy, with a bootable volume.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$AvailableDriveType = Get-HPOVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-HPOVAvailableDriveType  | ? { $_.Type -eq "SASHDD" -and $_.capacity -eq 900 }
$NewLogicalDisk = New-HPOVServerProfileLogicalDisk -Name "LD1_RAID5_900GB_SASHDD" -DriveSelectionBy DriveType -NumberofDrives 6 -RAID RAID5 -AvailableDriveType $AvailableDriveType
C:\> $Controller = New-HPOVServerProfileLogicalDiskController -ControllerID "Mezz 1" -Mode RAID -LogicalDisk $NewLogicalDisk
</pre>
Create a RAID5 Logical Disk for a Server Profile using D3940 storage, and a specific available drive type, 900GB capacity and SASHDD type, and assign it to a new Controller.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVServerProfileLogicalDiskController
<p>
Create Server Profile disk controller policy object.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileLogicalDiskController [-ControllerID] &lt;Object&gt; [-Mode] &lt;String&gt;[ [-Initialize] &lt;SwitchParameter&gt;][ [-WriteCache] &lt;String&gt;] [-LogicalDisk] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileLogicalDiskController [-ControllerID] &lt;Object&gt; [-Mode] &lt;String&gt;[ [-Initialize] &lt;SwitchParameter&gt;][ [-WriteCache] &lt;String&gt;][ [-ImportExistingConfiguration] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET will create a Logical Disk controller object to then be assigned to a Server Profile Template or Server Profile using the -LogicalDisk parameter.


### Parameters

-ControllerID &lt;Object&gt;<p>
Specify the Controller ID location.  Supported options for this parameter are
	 * Embedded
	 * Mezz 1
	 * Mezz 2
	 * Mezz 3
Please note that Mezz 1, Mezz 2 and Mezz 3 are only supported with HPE Synergy Compute nodes connected to the HPE Synergy D3940 disk shelf.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Embedded</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ImportExistingConfiguration &lt;SwitchParameter&gt;<p>
Specify to import any found Logical Disk configuration and add to the Server Profile as the Logical Disk policy.  This option is not available for Server Profile Templates.  Not supported when ControllerID is "Mezz 1", "Mezz 2", or "Mezz 3".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Initialize &lt;SwitchParameter&gt;<p>
Use this parameter to re-initialize the controller.  This will wipe any existing logical disk configured for the controller and deploy the new policy defined.  Not supported when ControllerID is "Mezz 1", "Mezz 2", or "Mezz 3".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalDisk &lt;Object&gt;<p>
A collection of Logical Disk objects from the New-HPOVServerProfileLogicalDisk Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Mode &lt;String&gt;<p>
The mode to configure the Smart Array Controller as.  Accepted values are:

	* HBA
	* RAID

When specifying HBA, you cannot attach a RAID Logical Disk to this policy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>RAID</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WriteCache &lt;String&gt;<p>
For Gen10 controllers, to enable, disable or unmanage controller write cache policy.  Allowed values:

	* Enabled
	* Disabled
	* Unmanaged

Default value: Unmanaged

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Unmanaged</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfile.LogicalDisk [System.Management.Automation.PSCustomObject]**_

 Logical Disk configuration policy from New-HPOVServerProfileLogicalDisk

 _**System.Collections.ArrayList &lt;HPOneView.ServerProfile.LogicalDisk&gt;**_

 Collection of Logical Disk configuration policy from New-HPOVServerProfileLogicalDisk



### Return Values

_**HPOneView.ServerProfile.Controller [System.Management.Automation.PSCustomObject]**_

 

Server Profile Controller configuration object

 _**System.Collections.ArrayList &lt;HPOneView.ServerProfile.Controller&gt;**_

 

Collection of Server Profile Controller configuration objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LogicalDisk = New-HPOVServerProfileLogicalDisk -Name "MyDisk" | New-HPOVServerProfileLogicalDiskController -Initialize
</pre>
Create a default Logical Disk and Controller configuration object policy.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVServerProfileLogicalDiskController -Mode HBA
</pre>
Create an HBA controller policy, which will then set the controller to JBOD mode.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$LogicalDisk1 = New-HPOVServerProfileLogicalDisk -Name "MyDisk"
$LogicalDisk2 = New-HPOVServerProfileLogicalDisk -Name "MyDisk2"
$Controller = New-HPOVServerProfileLogicalDiskController -Initialize -LogicalDisk $LogicalDisk1,$LogicalDisk2
</pre>
Create a default Logical Disk and Controller configuration object policy.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$LogicalDisk1 = New-HPOVServerProfileLogicalDisk -Name Boot -RAID RAID1 -MinDriveSize 300 -MaxDriveSize 300 -DriveType SAS -Bootable $True
$LogicalDisk2 = New-HPOVServerProfileLogicalDisk -Name Data -RAID RAID5 -NumberofDrives 5 -MinDriveSize 300 -MaxDriveSize 300 -DriveType SAS
$Controller = New-HPOVServerProfileLogicalDiskController -ControllerID "Mezz 1" -Mode RAID -LogicalDisk $LogicalDisk1,$LogicalDisk2
</pre>
Create a HPE Synergy D3940 RAID disk policy, with a bootable volume.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$AvailableDriveType = Get-HPOVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-HPOVAvailableDriveType  | ? { $_.Type -eq "SASHDD" -and $_.capacity -eq 900 }
$NewLogicalDisk = New-HPOVServerProfileLogicalDisk -Name "LD1_RAID5_900GB_SASHDD" -DriveSelectionBy DriveType -NumberofDrives 6 -RAID RAID5 -AvailableDriveType $AvailableDriveType
C:\> $Controller = New-HPOVServerProfileLogicalDiskController -ControllerID "Mezz 1" -Mode RAID -LogicalDisk $NewLogicalDisk
</pre>
Create a RAID5 Logical Disk for a Server Profile using D3940 storage, and a specific available drive type, 900GB capacity and SASHDD type, and assign it to a new Controller.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVServerProfileLogicalDiskController
<p>
Create Server Profile disk controller policy object.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileLogicalDiskController [-ControllerID] &lt;Object&gt; [-Mode] &lt;String&gt;[ [-Initialize] &lt;SwitchParameter&gt;][ [-WriteCache] &lt;String&gt;] [-LogicalDisk] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileLogicalDiskController [-ControllerID] &lt;Object&gt; [-Mode] &lt;String&gt;[ [-Initialize] &lt;SwitchParameter&gt;][ [-WriteCache] &lt;String&gt;][ [-ImportExistingConfiguration] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET will create a Logical Disk controller object to then be assigned to a Server Profile Template or Server Profile using the -LogicalDisk parameter.


### Parameters

-ControllerID &lt;Object&gt;<p>
Specify the Controller ID location.  Supported options for this parameter are
	 * Embedded
	 * Mezz 1
	 * Mezz 2
	 * Mezz 3
Please note that Mezz 1, Mezz 2 and Mezz 3 are only supported with HPE Synergy Compute nodes connected to the HPE Synergy D3940 disk shelf.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Embedded</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ImportExistingConfiguration &lt;SwitchParameter&gt;<p>
Specify to import any found Logical Disk configuration and add to the Server Profile as the Logical Disk policy.  This option is not available for Server Profile Templates.  Not supported when ControllerID is "Mezz 1", "Mezz 2", or "Mezz 3".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Initialize &lt;SwitchParameter&gt;<p>
Use this parameter to re-initialize the controller.  This will wipe any existing logical disk configured for the controller and deploy the new policy defined.  Not supported when ControllerID is "Mezz 1", "Mezz 2", or "Mezz 3".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LogicalDisk &lt;Object&gt;<p>
A collection of Logical Disk objects from the New-HPOVServerProfileLogicalDisk Cmdlet.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Mode &lt;String&gt;<p>
The mode to configure the Smart Array Controller as.  Accepted values are:

	* HBA
	* RAID

When specifying HBA, you cannot attach a RAID Logical Disk to this policy.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>RAID</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WriteCache &lt;String&gt;<p>
For Gen10 controllers, to enable, disable or unmanage controller write cache policy.  Allowed values:

	* Enabled
	* Disabled
	* Unmanaged

Default value: Unmanaged

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Unmanaged</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfile.LogicalDisk [System.Management.Automation.PSCustomObject]**_

 Logical Disk configuration policy from New-HPOVServerProfileLogicalDisk

 _**System.Collections.ArrayList &lt;HPOneView.ServerProfile.LogicalDisk&gt;**_

 Collection of Logical Disk configuration policy from New-HPOVServerProfileLogicalDisk



### Return Values

_**HPOneView.ServerProfile.Controller [System.Management.Automation.PSCustomObject]**_

 

Server Profile Controller configuration object

 _**System.Collections.ArrayList &lt;HPOneView.ServerProfile.Controller&gt;**_

 

Collection of Server Profile Controller configuration objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LogicalDisk = New-HPOVServerProfileLogicalDisk -Name "MyDisk" | New-HPOVServerProfileLogicalDiskController -Initialize
</pre>
Create a default Logical Disk and Controller configuration object policy.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVServerProfileLogicalDiskController -Mode HBA
</pre>
Create an HBA controller policy, which will then set the controller to JBOD mode.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$LogicalDisk1 = New-HPOVServerProfileLogicalDisk -Name "MyDisk"
$LogicalDisk2 = New-HPOVServerProfileLogicalDisk -Name "MyDisk2"
$Controller = New-HPOVServerProfileLogicalDiskController -Initialize -LogicalDisk $LogicalDisk1,$LogicalDisk2
</pre>
Create a default Logical Disk and Controller configuration object policy.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$LogicalDisk1 = New-HPOVServerProfileLogicalDisk -Name Boot -RAID RAID1 -MinDriveSize 300 -MaxDriveSize 300 -DriveType SAS -Bootable $True
$LogicalDisk2 = New-HPOVServerProfileLogicalDisk -Name Data -RAID RAID5 -NumberofDrives 5 -MinDriveSize 300 -MaxDriveSize 300 -DriveType SAS
$Controller = New-HPOVServerProfileLogicalDiskController -ControllerID "Mezz 1" -Mode RAID -LogicalDisk $LogicalDisk1,$LogicalDisk2
</pre>
Create a HPE Synergy D3940 RAID disk policy, with a bootable volume.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$AvailableDriveType = Get-HPOVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-HPOVAvailableDriveType  | ? { $_.Type -eq "SASHDD" -and $_.capacity -eq 900 }
$NewLogicalDisk = New-HPOVServerProfileLogicalDisk -Name "LD1_RAID5_900GB_SASHDD" -DriveSelectionBy DriveType -NumberofDrives 6 -RAID RAID5 -AvailableDriveType $AvailableDriveType
C:\> $Controller = New-HPOVServerProfileLogicalDiskController -ControllerID "Mezz 1" -Mode RAID -LogicalDisk $NewLogicalDisk
</pre>
Create a RAID5 Logical Disk for a Server Profile using D3940 storage, and a specific available drive type, 900GB capacity and SASHDD type, and assign it to a new Controller.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
