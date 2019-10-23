<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## ConvertTo-HPOVPowerShellScript
<p>
Create PowerShell script from resource.

### SYNTAX
<p>
<pre><code>ConvertTo-HPOVPowerShellScript [-InputObject] &lt;Object&gt;[ [-Export] &lt;System.IO.FileInfo&gt;][ [-Append] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will assist administrators or scripters to help generate script code from specific resources.  The code generated is a starting point to be used for repeating similar tasks performed by the UI, or to incorporate into scripts or workflows.

The following resources are supported by this Cmdlet:

	* Baselines (Get-HPOVBaseline)
	* Appliance Address Pool Ranges (Get-HPOVAddressPoolRange)
	* Appliance Address Pool Subnets (Get-HPOVAddressPoolSubnet)
	* Appliance Date Time and Locale (Get-HPOVApplianceDateTime)
	* Appliance LDAP Directory (Get-HPOVLdapDirectory)
	* Appliance LDAP Directory Group (Get-HPOVLdapGroup)
	* Appliance SNMP configuration (Get-HPOVSnmpReadCommunity)
	* Appliance SNMPv3 Users (Get-HPOVSnmpV3User)
	* Appliance Email Notifications (Get-HPOVApplianceProxy)
	* Appliance Proxy (Get-HPOVApplianceProxy)
	* Appliance User (Get-HPOVUser)
	* Scopes (Get-HPOVScope)
	* Network (Get-HPOVNetwork)
	* Network Set (Get-HPOVNetworkSet)
	* SAN Manager (Get-HPOVSanNanager)
	* Storage System (Get-HPOVStorageSystem)
	* Storage Pool (Get-HPOVStoragePool)
	* Storage Volume Template (Get-HPOVStorageVolumeTemplate)
	* Storage Volume (Get-HPOVStorageVolume)
	* Logical Interconnect Group (Get-HPOVLogicalInterconnectGroup)
	* Logical Enclosure Group (Get-HPOVLogicalEnclosureGroup)
	* Logical Enclosure (Get-HPOVLogicalEnclosure)
	* Server Profile Template (Get-HPOVServerProfileTemplate)
	* Server Profile (Get-HPOVServerProfile)



### Parameters

-Append &lt;SwitchParameter&gt;<p>
Indicte if the export file should be appended.  By default, a new file will be created with new content.

<table><tbody><tr><td>Aliases</td><td>NoClobber</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;System.IO.FileInfo&gt;<p>
Location where to write UTF-8 file.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Resource object from supported Cmdlets.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**Various objects are supported.**_

 



### Return Values

_**System.String**_

 

String output of generated code.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile | ConvertTo-HPOVPowerShellScript
</pre>
Generate PowerShell script code for the returned server profile objects.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## ConvertTo-HPOVPowerShellScript
<p>
Create PowerShell script from resource.

### SYNTAX
<p>
<pre><code>ConvertTo-HPOVPowerShellScript [-InputObject] &lt;Object&gt;[ [-Export] &lt;System.IO.FileInfo&gt;][ [-Append] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will assist administrators or scripters to help generate script code from specific resources.  The code generated is a starting point to be used for repeating similar tasks performed by the UI, or to incorporate into scripts or workflows.

The following resources are supported by this Cmdlet:

	* Baselines (Get-HPOVBaseline)
	* Appliance Address Pool Ranges (Get-HPOVAddressPoolRange)
	* Appliance Address Pool Subnets (Get-HPOVAddressPoolSubnet)
	* Appliance Date Time and Locale (Get-HPOVApplianceDateTime)
	* Appliance LDAP Directory (Get-HPOVLdapDirectory)
	* Appliance LDAP Directory Group (Get-HPOVLdapGroup)
	* Appliance SNMP configuration (Get-HPOVSnmpReadCommunity)
	* Appliance SNMPv3 Users (Get-HPOVSnmpV3User)
	* Appliance Email Notifications (Get-HPOVApplianceProxy)
	* Appliance Proxy (Get-HPOVApplianceProxy)
	* Appliance User (Get-HPOVUser)
	* Scopes (Get-HPOVScope)
	* Network (Get-HPOVNetwork)
	* Network Set (Get-HPOVNetworkSet)
	* SAN Manager (Get-HPOVSanNanager)
	* Storage System (Get-HPOVStorageSystem)
	* Storage Pool (Get-HPOVStoragePool)
	* Storage Volume Template (Get-HPOVStorageVolumeTemplate)
	* Storage Volume (Get-HPOVStorageVolume)
	* Logical Interconnect Group (Get-HPOVLogicalInterconnectGroup)
	* Logical Enclosure Group (Get-HPOVLogicalEnclosureGroup)
	* Logical Enclosure (Get-HPOVLogicalEnclosure)
	* Server Profile Template (Get-HPOVServerProfileTemplate)
	* Server Profile (Get-HPOVServerProfile)



### Parameters

-Append &lt;SwitchParameter&gt;<p>
Indicte if the export file should be appended.  By default, a new file will be created with new content.

<table><tbody><tr><td>Aliases</td><td>NoClobber</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;System.IO.FileInfo&gt;<p>
Location where to write UTF-8 file.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Resource object from supported Cmdlets.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**Various objects are supported.**_

 



### Return Values

_**System.String**_

 

String output of generated code.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile | ConvertTo-HPOVPowerShellScript
</pre>
Generate PowerShell script code for the returned server profile objects.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## ConvertTo-HPOVPowerShellScript
<p>
Create PowerShell script from resource.

### SYNTAX
<p>
<pre><code>ConvertTo-HPOVPowerShellScript [-InputObject] &lt;Object&gt;[ [-Export] &lt;System.IO.FileInfo&gt;][ [-Append] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will assist administrators or scripters to help generate script code from specific resources.  The code generated is a starting point to be used for repeating similar tasks performed by the UI, or to incorporate into scripts or workflows.

The following resources are supported by this Cmdlet:
	* Baselines (Get-HPOVBaseline)
	* Appliance Address Pool Ranges (Get-HPOVAddressPoolRange)
	* Appliance Address Pool Subnets (Get-HPOVAddressPoolSubnet)
	* Appliance Date Time and Locale (Get-HPOVApplianceDateTime)
	* Appliance LDAP Directory (Get-HPOVLdapDirectory)
	* Appliance LDAP Directory Group (Get-HPOVLdapGroup)
	* Appliance SNMP configuration (Get-HPOVSnmpReadCommunity)
	* Appliance SNMPv3 Users (Get-HPOVSnmpV3User)
	* Appliance Email Notifications (Get-HPOVApplianceProxy)
	* Appliance Proxy (Get-HPOVApplianceProxy)
	* Appliance User (Get-HPOVUser)
	* Scopes (Get-HPOVScope)
	* Network (Get-HPOVNetwork)
	* Network Set (Get-HPOVNetworkSet)
	* SAN Manager (Get-HPOVSanNanager)
	* Storage System (Get-HPOVStorageSystem)
	* Storage Pool (Get-HPOVStoragePool)
	* Storage Volume Template (Get-HPOVStorageVolumeTemplate)
	* Storage Volume (Get-HPOVStorageVolume)
	* Logical Interconnect Group (Get-HPOVLogicalInterconnectGroup)
	* Logical Enclosure Group (Get-HPOVLogicalEnclosureGroup)
	* Logical Enclosure (Get-HPOVLogicalEnclosure)
	* Server Profile Template (Get-HPOVServerProfileTemplate)
	* Server Profile (Get-HPOVServerProfile)



### Parameters

-Append &lt;SwitchParameter&gt;<p>
Indicte if the export file should be appended.  By default, a new file will be created with new content.

<table><tbody><tr><td>Aliases</td><td>NoClobber</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;System.IO.FileInfo&gt;<p>
Location where to write UTF-8 file.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Resource object from supported Cmdlets.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**Various objects are supported.**_

 



### Return Values

_**System.String**_

 

String output of generated code.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile | ConvertTo-HPOVPowerShellScript
</pre>
Generate PowerShell script code for the returned server profile objects.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
