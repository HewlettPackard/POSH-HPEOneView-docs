<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVServerProfileLogicalDisk
<p>
Create Server Profile Logical Disk object.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileLogicalDisk [-Name] &lt;String&gt;[ [-RAID] &lt;String&gt;][ [-NumberofDrives] &lt;Int32&gt;][ [-DriveType] &lt;String&gt;][ [-StorageLocation] &lt;String&gt;][ [-Accelerator] &lt;String&gt;][ [-Bootable] &lt;Boolean&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileLogicalDisk [-Name] &lt;String&gt;[ [-RAID] &lt;String&gt;][ [-NumberofDrives] &lt;Int32&gt;][ [-DriveType] &lt;String&gt;][ [-DriveSelectionBy] &lt;String&gt;][ [-AvailableDriveType] &lt;HPOneView.Storage.AvailableDriveType&gt;][ [-StorageLocation] &lt;String&gt;] [-MinDriveSize] &lt;Int32&gt;[ [-MaxDriveSize] &lt;Int32&gt;][ [-EraseDataOnDelete] &lt;SwitchParameter&gt;][ [-Bootable] &lt;Boolean&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET will create a Logical Disk object to then be assigned to a Server Profile Template or Server Profile using the -LogicalDisk parameter.  The LogicalDisk configuration is supported with the embedded (or Slot 0) HPE SmartArray controller for DL and BL class systems only.


### Parameters

-Accelerator &lt;String&gt;<p>
For Gen10 Smart Array controllers only.  When using Auto for drive type allocation and supplied 'Enabled', the Accelorator policy will be set to 'ControllerCache'.  If drive allocation type is an 'SSD' drive, the accelorator policy will be set to 'IOBypass'.  Disabled will set the accelorator policy to 'None'.  Default is 'Unmanaged'.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Unmanaged</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AvailableDriveType &lt;HPOneView.Storage.AvailableDriveType&gt;<p>
A specific availabe drive type from Get-HPOVAvailableDriveType.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Bootable &lt;Boolean&gt;<p>
Indicates if the logical drive is bootable or not. Cannot be combined with an FC or FCoE Server Profile Connection that is also set as Bootable.  Parameter is not valid with defining Synergy JBOD SAS disk policies.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DriveSelectionBy &lt;String&gt;<p>
Use to specify how the drive selection will be used.  Allowed values:

	* DriveType - Use Get-HPOVAvailableDriveType to locate available drive types, quantity to which SAS Logical Interconnect or Drive Enclosure.
	* SizeAndTechnology - Use to define the attributes of the drive based on technology and min/max drive size.  The -DriveType and -MinDriveSize parameters are required.

Default: SizeAndTechnology

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SizeAndTechnology</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DriveType &lt;String&gt;<p>
Defines the interface type for drives that will be used to build the logical drive. Supported values depend on the local storage capabilities of the selected server hardware type.  Allowed value:

	* SAS
	*SATA
	*SASSSD
	*SATASSD
	*Auto
NOTE: Auto is not supported when attempting to create an HPE Synergy D3940 Logical or JBOD disk.  You must specify a disk technology type unless -DriveSelectionBy is changed to DriveType and -AvailableDriveType is used.  Allowed values are:

	* SAS
	* SATA
	* SASSSD
	* SATASSD
	* NVMeSas
	* NVMeSata
	* Auto


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EraseDataOnDelete &lt;SwitchParameter&gt;<p>
Indicates if the logical drive should be erased when it is deleted from or with the Server Profile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaxDriveSize &lt;Int32&gt;<p>
Only for HPE Synergy D3940.  If the parameter is not specified, the MinDriveSize parameter value will be used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MinDriveSize &lt;Int32&gt;<p>
Only for HPE Synergy D3940.  Specify the minimum size disk to request.  Required when -DriveSelectionBy is set to SizeAndTechnology.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Logical Disk name.  Must be unique within the Server Profile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NumberofDrives &lt;Int32&gt;<p>
The number of physical drives to be used to build the logical drive. The provided values must be consistent with the selected RAID level and cannot exceed the maximum supported number of drives for the selected server hardware type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>2</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RAID &lt;String&gt;<p>
The RAID level of the logical drive. Supported values depend on the local storage capabilities of the selected server hardware type.

Only RAID0 and RAID1 are supported for embedded BL disk policies.  RAID5, RAID6, RAID10 are supported with DL servers with SmartArray controller that supports the RAID type.  RAID0, RAID1ADM, RAID10, RAID5, and RAID6 are supported values with HPE Synergy D3940 disk shelf.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>RAID1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageLocation &lt;String&gt;<p>
Specify Internal for HPE Synergy Compute Nodes that have the Expanded Storage option connected to an available mezzanine SmartArray controller for NVMe drives.  DriveType parameter then must be set to NVMeSata or NVMeSAS.  Use External to specify storage will be allocated from the D3940 disk shelf.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>External</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.AvailableDriveType**_

 An available disk drive type from Get-HPOVAvailableDriveType Cmdlet.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Logical Disk configuration object

 _**System.Collections.ArrayList&lt;System.Management.Automation.PSCustomObject&gt;**_

 

Collection of Logical Disk configuration objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LogicalDisk = New-HPOVServerProfileLogicalDisk -Name "MyDisk"
</pre>
Create a default Logical Disk configuration object.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ld1 = New-HPOVServerProfileLogicalDisk -Name "Boot Disk" -RAID RAID1 -NumberofDrives 2 -Bootable $True
</pre>
Create a custom Logical Disk with the provided parameter values.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$ld1 = New-HPOVServerProfileLogicalDisk -Name "Boot Disk" -RAID RAID1 -NumberofDrives 2 -DriveType SAS -MinDriveSize 300 -Bootable $True
</pre>
Create a custom HPE Synergy D3940 bootable RAID Logical Disk with the provided parameter values.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$AvailableDriveType = Get-HPOVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-HPOVAvailableDriveType  | ? { $_.Type -eq "SASHDD" -and $_.capacity -eq 900 }
$NewLogicalDisk = New-HPOVServerProfileLogicalDisk -Name "LD1_RAID5_900GB_SASHDD" -DriveSelectionBy DriveType -NumberofDrives 6 -RAID RAID5 -AvailableDriveType $AvailableDriveType
</pre>
Create a RAID5 Logical Disk for a Server Profile using D3940 storage, and a specific available drive type, 900GB capacity and SASHDD type.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$JBODLogicalDisk = New-HPOVServerProfileLogicalDisk -Name "JBOD1_900GB_SASHDD" -NumberofDrives 6 -MinDriveSize 900 -DriveType SAS
</pre>
Create logical JBOD to then be attached to either a Gen10 Mixed Mode or Gen9 or newer HBA mode controller.



### Related Links

* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVServerProfileLogicalDisk
<p>
Create Server Profile Logical Disk object.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileLogicalDisk [-Name] &lt;String&gt;[ [-RAID] &lt;String&gt;][ [-NumberofDrives] &lt;Int32&gt;][ [-DriveType] &lt;String&gt;][ [-StorageLocation] &lt;String&gt;][ [-Accelerator] &lt;String&gt;][ [-Bootable] &lt;Boolean&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileLogicalDisk [-Name] &lt;String&gt;[ [-RAID] &lt;String&gt;][ [-NumberofDrives] &lt;Int32&gt;][ [-DriveType] &lt;String&gt;][ [-DriveSelectionBy] &lt;String&gt;][ [-AvailableDriveType] &lt;HPOneView.Storage.AvailableDriveType&gt;][ [-StorageLocation] &lt;String&gt;] [-MinDriveSize] &lt;Int32&gt;[ [-MaxDriveSize] &lt;Int32&gt;][ [-EraseDataOnDelete] &lt;SwitchParameter&gt;][ [-Bootable] &lt;Boolean&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET will create a Logical Disk object to then be assigned to a Server Profile Template or Server Profile using the -LogicalDisk parameter.  The LogicalDisk configuration is supported with the embedded (or Slot 0) HPE SmartArray controller for DL and BL class systems only.


### Parameters

-Accelerator &lt;String&gt;<p>
For Gen10 Smart Array controllers only.  When using Auto for drive type allocation and supplied 'Enabled', the Accelorator policy will be set to 'ControllerCache'.  If drive allocation type is an 'SSD' drive, the accelorator policy will be set to 'IOBypass'.  Disabled will set the accelorator policy to 'None'.  Default is 'Unmanaged'.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Unmanaged</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AvailableDriveType &lt;HPOneView.Storage.AvailableDriveType&gt;<p>
A specific availabe drive type from Get-HPOVAvailableDriveType.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Bootable &lt;Boolean&gt;<p>
Indicates if the logical drive is bootable or not. Cannot be combined with an FC or FCoE Server Profile Connection that is also set as Bootable.  Parameter is not valid with defining Synergy JBOD SAS disk policies.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DriveSelectionBy &lt;String&gt;<p>
Use to specify how the drive selection will be used.  Allowed values:

	* DriveType - Use Get-HPOVAvailableDriveType to locate available drive types, quantity to which SAS Logical Interconnect or Drive Enclosure.
	* SizeAndTechnology - Use to define the attributes of the drive based on technology and min/max drive size.  The -DriveType and -MinDriveSize parameters are required.

Default: SizeAndTechnology

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SizeAndTechnology</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DriveType &lt;String&gt;<p>
Defines the interface type for drives that will be used to build the logical drive. Supported values depend on the local storage capabilities of the selected server hardware type.  Allowed value:

	* SAS
	*SATA
	*SASSSD
	*SATASSD
	*Auto
NOTE: Auto is not supported when attempting to create an HPE Synergy D3940 Logical or JBOD disk.  You must specify a disk technology type unless -DriveSelectionBy is changed to DriveType and -AvailableDriveType is used.  Allowed values are:

	* SAS
	* SATA
	* SASSSD
	* SATASSD
	* NVMeSas
	* NVMeSata
	* Auto


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EraseDataOnDelete &lt;SwitchParameter&gt;<p>
Indicates if the logical drive should be erased when it is deleted from or with the Server Profile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaxDriveSize &lt;Int32&gt;<p>
Only for HPE Synergy D3940.  If the parameter is not specified, the MinDriveSize parameter value will be used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MinDriveSize &lt;Int32&gt;<p>
Only for HPE Synergy D3940.  Specify the minimum size disk to request.  Required when -DriveSelectionBy is set to SizeAndTechnology.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Logical Disk name.  Must be unique within the Server Profile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NumberofDrives &lt;Int32&gt;<p>
The number of physical drives to be used to build the logical drive. The provided values must be consistent with the selected RAID level and cannot exceed the maximum supported number of drives for the selected server hardware type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>2</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RAID &lt;String&gt;<p>
The RAID level of the logical drive. Supported values depend on the local storage capabilities of the selected server hardware type.

Only RAID0 and RAID1 are supported for embedded BL disk policies.  RAID5, RAID6, RAID10 are supported with DL servers with SmartArray controller that supports the RAID type.  RAID0, RAID1ADM, RAID10, RAID5, and RAID6 are supported values with HPE Synergy D3940 disk shelf.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>RAID1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageLocation &lt;String&gt;<p>
Specify Internal for HPE Synergy Compute Nodes that have the Expanded Storage option connected to an available mezzanine SmartArray controller for NVMe drives.  DriveType parameter then must be set to NVMeSata or NVMeSAS.  Use External to specify storage will be allocated from the D3940 disk shelf.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>External</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.AvailableDriveType**_

 An available disk drive type from Get-HPOVAvailableDriveType Cmdlet.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Logical Disk configuration object

 _**System.Collections.ArrayList&lt;System.Management.Automation.PSCustomObject&gt;**_

 

Collection of Logical Disk configuration objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LogicalDisk = New-HPOVServerProfileLogicalDisk -Name "MyDisk"
</pre>
Create a default Logical Disk configuration object.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ld1 = New-HPOVServerProfileLogicalDisk -Name "Boot Disk" -RAID RAID1 -NumberofDrives 2 -Bootable $True
</pre>
Create a custom Logical Disk with the provided parameter values.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$ld1 = New-HPOVServerProfileLogicalDisk -Name "Boot Disk" -RAID RAID1 -NumberofDrives 2 -DriveType SAS -MinDriveSize 300 -Bootable $True
</pre>
Create a custom HPE Synergy D3940 bootable RAID Logical Disk with the provided parameter values.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$AvailableDriveType = Get-HPOVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-HPOVAvailableDriveType  | ? { $_.Type -eq "SASHDD" -and $_.capacity -eq 900 }
$NewLogicalDisk = New-HPOVServerProfileLogicalDisk -Name "LD1_RAID5_900GB_SASHDD" -DriveSelectionBy DriveType -NumberofDrives 6 -RAID RAID5 -AvailableDriveType $AvailableDriveType
</pre>
Create a RAID5 Logical Disk for a Server Profile using D3940 storage, and a specific available drive type, 900GB capacity and SASHDD type.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$JBODLogicalDisk = New-HPOVServerProfileLogicalDisk -Name "JBOD1_900GB_SASHDD" -NumberofDrives 6 -MinDriveSize 900 -DriveType SAS
</pre>
Create logical JBOD to then be attached to either a Gen10 Mixed Mode or Gen9 or newer HBA mode controller.



### Related Links

* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVServerProfileLogicalDisk
<p>
Create Server Profile Logical Disk object.

### SYNTAX
<p>
<pre><code>New-HPOVServerProfileLogicalDisk [-Name] &lt;String&gt;[ [-RAID] &lt;String&gt;][ [-NumberofDrives] &lt;Int32&gt;][ [-DriveType] &lt;String&gt;][ [-StorageLocation] &lt;String&gt;][ [-Accelerator] &lt;String&gt;][ [-Bootable] &lt;Boolean&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVServerProfileLogicalDisk [-Name] &lt;String&gt;[ [-RAID] &lt;String&gt;][ [-NumberofDrives] &lt;Int32&gt;][ [-DriveType] &lt;String&gt;][ [-DriveSelectionBy] &lt;String&gt;][ [-AvailableDriveType] &lt;HPOneView.Storage.AvailableDriveType&gt;][ [-StorageLocation] &lt;String&gt;] [-MinDriveSize] &lt;Int32&gt;[ [-MaxDriveSize] &lt;Int32&gt;][ [-EraseDataOnDelete] &lt;SwitchParameter&gt;][ [-Bootable] &lt;Boolean&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET will create a Logical Disk object to then be assigned to a Server Profile Template or Server Profile using the -LogicalDisk parameter.  The LogicalDisk configuration is supported with the embedded (or Slot 0) HPE SmartArray controller for DL and BL class systems only.


### Parameters

-Accelerator &lt;String&gt;<p>
For Gen10 Smart Array controllers only.  When using Auto for drive type allocation and supplied 'Enabled', the Accelorator policy will be set to 'ControllerCache'.  If drive allocation type is an 'SSD' drive, the accelorator policy will be set to 'IOBypass'.  Disabled will set the accelorator policy to 'None'.  Default is 'Unmanaged'.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Unmanaged</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -AvailableDriveType &lt;HPOneView.Storage.AvailableDriveType&gt;<p>
A specific availabe drive type from Get-HPOVAvailableDriveType.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Bootable &lt;Boolean&gt;<p>
Indicates if the logical drive is bootable or not. Cannot be combined with an FC or FCoE Server Profile Connection that is also set as Bootable.  Parameter is not valid with defining Synergy JBOD SAS disk policies.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DriveSelectionBy &lt;String&gt;<p>
Use to specify how the drive selection will be used.  Allowed values:

	* DriveType - Use Get-HPOVAvailableDriveType to locate available drive types, quantity to which SAS Logical Interconnect or Drive Enclosure.
	* SizeAndTechnology - Use to define the attributes of the drive based on technology and min/max drive size.  The -DriveType and -MinDriveSize parameters are required.

Default: SizeAndTechnology

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>SizeAndTechnology</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DriveType &lt;String&gt;<p>
Defines the interface type for drives that will be used to build the logical drive. Supported values depend on the local storage capabilities of the selected server hardware type.  Allowed value:

	* SAS
	*SATA
	*SASSSD
	*SATASSD
	*Auto
NOTE: Auto is not supported when attempting to create an HPE Synergy D3940 Logical or JBOD disk.  You must specify a disk technology type unless -DriveSelectionBy is changed to DriveType and -AvailableDriveType is used.  Allowed values are:

	* SAS
	* SATA
	* SASSSD
	* SATASSD
	* NVMeSas
	* NVMeSata
	* Auto


<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>Auto</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -EraseDataOnDelete &lt;SwitchParameter&gt;<p>
Indicates if the logical drive should be erased when it is deleted from or with the Server Profile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaxDriveSize &lt;Int32&gt;<p>
Only for HPE Synergy D3940.  If the parameter is not specified, the MinDriveSize parameter value will be used.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MinDriveSize &lt;Int32&gt;<p>
Only for HPE Synergy D3940.  Specify the minimum size disk to request.  Required when -DriveSelectionBy is set to SizeAndTechnology.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Logical Disk name.  Must be unique within the Server Profile.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NumberofDrives &lt;Int32&gt;<p>
The number of physical drives to be used to build the logical drive. The provided values must be consistent with the selected RAID level and cannot exceed the maximum supported number of drives for the selected server hardware type.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>2</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RAID &lt;String&gt;<p>
The RAID level of the logical drive. Supported values depend on the local storage capabilities of the selected server hardware type.

Only RAID0 and RAID1 are supported for embedded BL disk policies.  RAID5, RAID6, RAID10 are supported with DL servers with SmartArray controller that supports the RAID type.  RAID0, RAID1ADM, RAID10, RAID5, and RAID6 are supported values with HPE Synergy D3940 disk shelf.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>RAID1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -StorageLocation &lt;String&gt;<p>
Specify Internal for HPE Synergy Compute Nodes that have the Expanded Storage option connected to an available mezzanine SmartArray controller for NVMe drives.  DriveType parameter then must be set to NVMeSata or NVMeSAS.  Use External to specify storage will be allocated from the D3940 disk shelf.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>External</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.AvailableDriveType**_

 An available disk drive type from Get-HPOVAvailableDriveType Cmdlet.



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Logical Disk configuration object

 _**System.Collections.ArrayList&lt;System.Management.Automation.PSCustomObject&gt;**_

 

Collection of Logical Disk configuration objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LogicalDisk = New-HPOVServerProfileLogicalDisk -Name "MyDisk"
</pre>
Create a default Logical Disk configuration object.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$ld1 = New-HPOVServerProfileLogicalDisk -Name "Boot Disk" -RAID RAID1 -NumberofDrives 2 -Bootable $True
</pre>
Create a custom Logical Disk with the provided parameter values.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$ld1 = New-HPOVServerProfileLogicalDisk -Name "Boot Disk" -RAID RAID1 -NumberofDrives 2 -DriveType SAS -MinDriveSize 300 -Bootable $True
</pre>
Create a custom HPE Synergy D3940 bootable RAID Logical Disk with the provided parameter values.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$AvailableDriveType = Get-HPOVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-HPOVAvailableDriveType  | ? { $_.Type -eq "SASHDD" -and $_.capacity -eq 900 }
$NewLogicalDisk = New-HPOVServerProfileLogicalDisk -Name "LD1_RAID5_900GB_SASHDD" -DriveSelectionBy DriveType -NumberofDrives 6 -RAID RAID5 -AvailableDriveType $AvailableDriveType
</pre>
Create a RAID5 Logical Disk for a Server Profile using D3940 storage, and a specific available drive type, 900GB capacity and SASHDD type.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$JBODLogicalDisk = New-HPOVServerProfileLogicalDisk -Name "JBOD1_900GB_SASHDD" -NumberofDrives 6 -MinDriveSize 900 -DriveType SAS
</pre>
Create logical JBOD to then be attached to either a Gen10 Mixed Mode or Gen9 or newer HBA mode controller.



### Related Links

* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController)


***
<div align=right><a href="#Top">Top</a></div>
