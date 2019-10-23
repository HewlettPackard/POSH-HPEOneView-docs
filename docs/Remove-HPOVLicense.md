<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Remove-HPOVLicense
<p>
REmove installed licenses on the appliance.

### SYNTAX
<p>
<pre><code>Remove-HPOVLicense [-InputObject] &lt;HPOneView.Appliance.License&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will remove licenses installed on the appliance.  Removing installed licenses is only support via Windows PowerShell, Python or the HPE OneView REST API.  However, if a license key is currently assigned to a resource, the license key cannot be removed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Appliance.License&gt;<p>
Aliases [-uri, -name, -License]

Provide the License URI or object to remove.

<table><tbody><tr><td>Aliases</td><td>uri, name, license, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.License**_

 HPE OneView License object



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Success message

 _**System.Management.Automation.ErrorRecord**_

 

Error message of in-use license key



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LicenseKeys = Get-HPOVlicense
Remove-HPOVLicense -InputObject $LicenseKeys[0]

</pre>
Get all installed licenses saving them to $LicenseKeys, then calling Remove-HPOVLicense to remove the first key in the variable.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVlicense | Remove-HPOVLicense
</pre>
Get all installed licenses and remove them.



### Related Links

* [Get-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLicense)
* [New-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLicense)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Remove-HPOVLicense
<p>
REmove installed licenses on the appliance.

### SYNTAX
<p>
<pre><code>Remove-HPOVLicense [-InputObject] &lt;HPOneView.Appliance.License&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will remove licenses installed on the appliance.  Removing installed licenses is only support via Windows PowerShell, Python or the HPE OneView REST API.  However, if a license key is currently assigned to a resource, the license key cannot be removed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Appliance.License&gt;<p>
Aliases [-uri, -name, -License]

Provide the License URI or object to remove.

<table><tbody><tr><td>Aliases</td><td>uri, name, license, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.License**_

 HPE OneView License object



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Success message

 _**System.Management.Automation.ErrorRecord**_

 

Error message of in-use license key



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LicenseKeys = Get-HPOVlicense
Remove-HPOVLicense -InputObject $LicenseKeys[0]

</pre>
Get all installed licenses saving them to $LicenseKeys, then calling Remove-HPOVLicense to remove the first key in the variable.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVlicense | Remove-HPOVLicense
</pre>
Get all installed licenses and remove them.



### Related Links

* [Get-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLicense)
* [New-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLicense)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Remove-HPOVLicense
<p>
REmove installed licenses on the appliance.

### SYNTAX
<p>
<pre><code>Remove-HPOVLicense [-InputObject] &lt;HPOneView.Appliance.License&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will remove licenses installed on the appliance.  Removing installed licenses is only support via Windows PowerShell, Python or the HPE OneView REST API.  However, if a license key is currently assigned to a resource, the license key cannot be removed.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;HPOneView.Appliance.License&gt;<p>
Aliases [-uri, -name, -License]

Provide the License URI or object to remove.

<table><tbody><tr><td>Aliases</td><td>uri, name, license, Resource</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.License**_

 HPE OneView License object



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Success message

 _**System.Management.Automation.ErrorRecord**_

 

Error message of in-use license key



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$LicenseKeys = Get-HPOVlicense
Remove-HPOVLicense -InputObject $LicenseKeys[0]

</pre>
Get all installed licenses saving them to $LicenseKeys, then calling Remove-HPOVLicense to remove the first key in the variable.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Get-HPOVlicense | Remove-HPOVLicense
</pre>
Get all installed licenses and remove them.



### Related Links

* [Get-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLicense)
* [New-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVLicense)


***
<div align=right><a href="#Top">Top</a></div>
