<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVAvailableDriveType
<p>
Return a collection of available D3940 disks.

### SYNTAX
<p>
<pre><code>Get-HPOVAvailableDriveType [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET will return a collection of available disk drives from a specified SAS Logical Interconnect or Drive Enclosure.  The object can then be used to define the drive selection criteria for New-HPOVServerProfileLogicalDisk using the -AvailableDriveType parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-appliance]
The name of the appliance or list of appliances to execute the command against.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
A SAS Logical Interconnect or D3940 Drive Enclosure resource.  If providing a SAS Logical Interconnect, the Cmdlet will automatically locate the available drive enclosures.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.SASLogicalInterconnect**_

 A SAS Logical Interconnect resource from Get-HPOVSasLogicalInterconnect Cmdlet.

 _**HPOneView.Storage.DiskEnclosure**_

 A D3940 Drive Enclosure from Get-HPOVSasLogicalInterconnect Cmdlet.



### Return Values

_**HPOneView.Storage.AvailableDriveType**_

 

A disk type object that defines available quantity of drives based on interface, media type and capacity, organized by SAS Logical Interconnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSasLogicalInterconnect | Get-HPOVAvailableDriveType
</pre>
Return all available disk drives from all SAS Logical Interconnects.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-HPOVAvailableDriveType
</pre>
Return all available disk drives from the specific SAS Logical Interconnect.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVDriveEnclosure -Name "EnclosureName, Bay 1" -ErrorAction Stop | Get-HPOVAvailableDriveType
</pre>
Return all available disk drives from the specific D3940 Drive Enclosure.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVAvailableDriveType
<p>
Return a collection of available D3940 disks.

### SYNTAX
<p>
<pre><code>Get-HPOVAvailableDriveType [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET will return a collection of available disk drives from a specified SAS Logical Interconnect or Drive Enclosure.  The object can then be used to define the drive selection criteria for New-HPOVServerProfileLogicalDisk using the -AvailableDriveType parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-appliance]
The name of the appliance or list of appliances to execute the command against.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
A SAS Logical Interconnect or D3940 Drive Enclosure resource.  If providing a SAS Logical Interconnect, the Cmdlet will automatically locate the available drive enclosures.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.SASLogicalInterconnect**_

 A SAS Logical Interconnect resource from Get-HPOVSasLogicalInterconnect Cmdlet.

 _**HPOneView.Storage.DiskEnclosure**_

 A D3940 Drive Enclosure from Get-HPOVSasLogicalInterconnect Cmdlet.



### Return Values

_**HPOneView.Storage.AvailableDriveType**_

 

A disk type object that defines available quantity of drives based on interface, media type and capacity, organized by SAS Logical Interconnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSasLogicalInterconnect | Get-HPOVAvailableDriveType
</pre>
Return all available disk drives from all SAS Logical Interconnects.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-HPOVAvailableDriveType
</pre>
Return all available disk drives from the specific SAS Logical Interconnect.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVDriveEnclosure -Name "EnclosureName, Bay 1" -ErrorAction Stop | Get-HPOVAvailableDriveType
</pre>
Return all available disk drives from the specific D3940 Drive Enclosure.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVAvailableDriveType
<p>
Return a collection of available D3940 disks.

### SYNTAX
<p>
<pre><code>Get-HPOVAvailableDriveType [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This helper CMDLET will return a collection of available disk drives from a specified SAS Logical Interconnect or Drive Enclosure.  The object can then be used to define the drive selection criteria for New-HPOVServerProfileLogicalDisk using the -AvailableDriveType parameter.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-appliance]
The name of the appliance or list of appliances to execute the command against.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
A SAS Logical Interconnect or D3940 Drive Enclosure resource.  If providing a SAS Logical Interconnect, the Cmdlet will automatically locate the available drive enclosures.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.SASLogicalInterconnect**_

 A SAS Logical Interconnect resource from Get-HPOVSasLogicalInterconnect Cmdlet.

 _**HPOneView.Storage.DiskEnclosure**_

 A D3940 Drive Enclosure from Get-HPOVSasLogicalInterconnect Cmdlet.



### Return Values

_**HPOneView.Storage.AvailableDriveType**_

 

A disk type object that defines available quantity of drives based on interface, media type and capacity, organized by SAS Logical Interconnect.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVSasLogicalInterconnect | Get-HPOVAvailableDriveType
</pre>
Return all available disk drives from all SAS Logical Interconnects.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVSasLogicalInterconnect -Name "LE1-Default SAS Synergy LIG-3" -ErrorAction Stop | Get-HPOVAvailableDriveType
</pre>
Return all available disk drives from the specific SAS Logical Interconnect.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVDriveEnclosure -Name "EnclosureName, Bay 1" -ErrorAction Stop | Get-HPOVAvailableDriveType
</pre>
Return all available disk drives from the specific D3940 Drive Enclosure.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
