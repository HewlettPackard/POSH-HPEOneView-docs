<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Show-HPOVApplianceSecurityModeCompatibilityReport
<p>
Generate or show security mode compatability report. 

### SYNTAX
<p>
<pre><code>Show-HPOVApplianceSecurityModeCompatibilityReport [-TargetSecurityMode] &lt;HPOneView.Appliance.SecurityMode&gt;[ [-UpdateReport] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
When you are considering switching the cryptography mode for your appliance, Hewlett Packard Enterprise recommends that you run the compatibility report to check for compatibility issues for a chosen cryptography mode. Compatibility reports contain information about the behavior of devices and external servers managed or configured by HPE OneView. The report lists the various resources (storage devices, network devices, servers, enclosures) managed by HPE OneView that are not compatible with the chosen cryptography mode. You can use the compatibility reports to:

	*  Determine the impact of the mode switch on various resources, such as, the appliance certificates, external servers and managed devices. 
	*  Understand the actions recommended to be taken before switching the cryptography mode of the appliance. Examples: 

		*  Re-importing a higher strength certificate signed by your certificate authority (CA).
		*  Configuring the managed device or external server to be compliant with the cryptography mode of HPE OneView.

	*  Determine the devices or class of devices that cannot be managed by HPE OneView in the target mode. Running this Cmdlet will generate a new compatibility report if one does not exist. Use the -UpdateReport switch to generate a new report.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetSecurityMode &lt;HPOneView.Appliance.SecurityMode&gt;<p>
Specify the target security mode to test resources from Get-HPOVApplianceAvailableSecurityMode.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UpdateReport &lt;SwitchParameter&gt;<p>
Specify to regenerate the report.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.SecurityMode**_

 Available security mode from Get-HPOVApplianceAvailableSecurityMode.



### Return Values

_**HPOneView.Appliance.SecurityModeCompatibilityReport**_

 

Security mode compatibility report.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$TargetSecurityMode = Get-HPOVApplianceAvailableSecurityMode -ModeName CNSA
Show-HPOVApplianceSecurityModeCompatibilityReport -TargetSecurityMode $TargetSecurityMode</pre>
Generate a compatibility report for changing the appliance mode to CNSA.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Show-HPOVApplianceSecurityModeCompatibilityReport
<p>
Generate or show security mode compatability report. 

### SYNTAX
<p>
<pre><code>Show-HPOVApplianceSecurityModeCompatibilityReport [-TargetSecurityMode] &lt;HPOneView.Appliance.SecurityMode&gt;[ [-UpdateReport] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
When you are considering switching the cryptography mode for your appliance, Hewlett Packard Enterprise recommends that you run the compatibility report to check for compatibility issues for a chosen cryptography mode. Compatibility reports contain information about the behavior of devices and external servers managed or configured by HPE OneView. The report lists the various resources (storage devices, network devices, servers, enclosures) managed by HPE OneView that are not compatible with the chosen cryptography mode. You can use the compatibility reports to:

	*  Determine the impact of the mode switch on various resources, such as, the appliance certificates, external servers and managed devices. 
	*  Understand the actions recommended to be taken before switching the cryptography mode of the appliance. Examples: 

		*  Re-importing a higher strength certificate signed by your certificate authority (CA).
		*  Configuring the managed device or external server to be compliant with the cryptography mode of HPE OneView.

	*  Determine the devices or class of devices that cannot be managed by HPE OneView in the target mode. Running this Cmdlet will generate a new compatibility report if one does not exist. Use the -UpdateReport switch to generate a new report.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetSecurityMode &lt;HPOneView.Appliance.SecurityMode&gt;<p>
Specify the target security mode to test resources from Get-HPOVApplianceAvailableSecurityMode.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UpdateReport &lt;SwitchParameter&gt;<p>
Specify to regenerate the report.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.SecurityMode**_

 Available security mode from Get-HPOVApplianceAvailableSecurityMode.



### Return Values

_**HPOneView.Appliance.SecurityModeCompatibilityReport**_

 

Security mode compatibility report.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$TargetSecurityMode = Get-HPOVApplianceAvailableSecurityMode -ModeName CNSA
Show-HPOVApplianceSecurityModeCompatibilityReport -TargetSecurityMode $TargetSecurityMode</pre>
Generate a compatibility report for changing the appliance mode to CNSA.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Show-HPOVApplianceSecurityModeCompatibilityReport
<p>
Generate or show security mode compatability report. 

### SYNTAX
<p>
<pre><code>Show-HPOVApplianceSecurityModeCompatibilityReport [-TargetSecurityMode] &lt;HPOneView.Appliance.SecurityMode&gt;[ [-UpdateReport] &lt;SwitchParameter&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
When you are considering switching the cryptography mode for your appliance, Hewlett Packard Enterprise recommends that you run the compatibility report to check for compatibility issues for a chosen cryptography mode. Compatibility reports contain information about the behavior of devices and external servers managed or configured by HPE OneView. The report lists the various resources (storage devices, network devices, servers, enclosures) managed by HPE OneView that are not compatible with the chosen cryptography mode. You can use the compatibility reports to:

	*  Determine the impact of the mode switch on various resources, such as, the appliance certificates, external servers and managed devices. 
	*  Understand the actions recommended to be taken before switching the cryptography mode of the appliance. Examples: 

		*  Re-importing a higher strength certificate signed by your certificate authority (CA).
		*  Configuring the managed device or external server to be compliant with the cryptography mode of HPE OneView.

	*  Determine the devices or class of devices that cannot be managed by HPE OneView in the target mode. Running this Cmdlet will generate a new compatibility report if one does not exist. Use the -UpdateReport switch to generate a new report.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -TargetSecurityMode &lt;HPOneView.Appliance.SecurityMode&gt;<p>
Specify the target security mode to test resources from Get-HPOVApplianceAvailableSecurityMode.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -UpdateReport &lt;SwitchParameter&gt;<p>
Specify to regenerate the report.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.SecurityMode**_

 Available security mode from Get-HPOVApplianceAvailableSecurityMode.



### Return Values

_**HPOneView.Appliance.SecurityModeCompatibilityReport**_

 

Security mode compatibility report.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$TargetSecurityMode = Get-HPOVApplianceAvailableSecurityMode -ModeName CNSA
Show-HPOVApplianceSecurityModeCompatibilityReport -TargetSecurityMode $TargetSecurityMode</pre>
Generate a compatibility report for changing the appliance mode to CNSA.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
