<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVStorageVolumeTemplatePolicy
<p>
Set Storage Volume Template Global Policy

### SYNTAX
<p>
<pre><code>Set-HPOVStorageVolumeTemplatePolicy[ [-Enable] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVStorageVolumeTemplatePolicy[ [-Disable] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
By default, Storage Volumes can be created without reference to a Storage Volume Template.  This cmdlet will allow the administrator to change the global policy setting.  Use with caution, as this will prevent copying Server Profiles that contain attached Storage Volumes.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disable &lt;SwitchParameter&gt;<p>
Switch to disable the policy

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enable &lt;SwitchParameter&gt;<p>
Switch to enable the policy

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**System.Boolean**_

 

Returned boolean value after changing policy



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolumeTemplatePolicy
Appliance               Name                          Value
---------               ----                          -----
MyAppliance.domain.com  StorageVolumeTemplateRequired true

Set-HPOVStorageVolumeTemplatePolicy -disable -ApplianceConnection $ConnectedSessions

Appliance               Name                          Value
---------               ----                          -----
MyAppliance.domain.com  StorageVolumeTemplateRequired false
MyAppliance2.domain.com StorageVolumeTemplateRequired false

</pre>
Get the Storage Volume Template Global Policy setting, then disable it for all connected appliances.



### Related Links

* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVStorageVolumeTemplatePolicy
<p>
Set Storage Volume Template Global Policy

### SYNTAX
<p>
<pre><code>Set-HPOVStorageVolumeTemplatePolicy[ [-Enable] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVStorageVolumeTemplatePolicy[ [-Disable] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
By default, Storage Volumes can be created without reference to a Storage Volume Template.  This cmdlet will allow the administrator to change the global policy setting.  Use with caution, as this will prevent copying Server Profiles that contain attached Storage Volumes.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disable &lt;SwitchParameter&gt;<p>
Switch to disable the policy

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enable &lt;SwitchParameter&gt;<p>
Switch to enable the policy

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**System.Boolean**_

 

Returned boolean value after changing policy



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolumeTemplatePolicy
Appliance               Name                          Value
---------               ----                          -----
MyAppliance.domain.com  StorageVolumeTemplateRequired true

Set-HPOVStorageVolumeTemplatePolicy -disable -ApplianceConnection $ConnectedSessions

Appliance               Name                          Value
---------               ----                          -----
MyAppliance.domain.com  StorageVolumeTemplateRequired false
MyAppliance2.domain.com StorageVolumeTemplateRequired false

</pre>
Get the Storage Volume Template Global Policy setting, then disable it for all connected appliances.



### Related Links

* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVStorageVolumeTemplatePolicy
<p>
Set Storage Volume Template Global Policy

### SYNTAX
<p>
<pre><code>Set-HPOVStorageVolumeTemplatePolicy[ [-Enable] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVStorageVolumeTemplatePolicy[ [-Disable] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Array&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
By default, Storage Volumes can be created without reference to a Storage Volume Template.  This cmdlet will allow the administrator to change the global policy setting.  Use with caution, as this will prevent copying Server Profiles that contain attached Storage Volumes.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Disable &lt;SwitchParameter&gt;<p>
Switch to disable the policy

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Enable &lt;SwitchParameter&gt;<p>
Switch to enable the policy

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**System.Boolean**_

 

Returned boolean value after changing policy



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVStorageVolumeTemplatePolicy
Appliance               Name                          Value
---------               ----                          -----
MyAppliance.domain.com  StorageVolumeTemplateRequired true

Set-HPOVStorageVolumeTemplatePolicy -disable -ApplianceConnection $ConnectedSessions

Appliance               Name                          Value
---------               ----                          -----
MyAppliance.domain.com  StorageVolumeTemplateRequired false
MyAppliance2.domain.com StorageVolumeTemplateRequired false

</pre>
Get the Storage Volume Template Global Policy setting, then disable it for all connected appliances.



### Related Links

* [Get-HPOVStorageVolumeTemplatePolicy](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVStorageVolumeTemplatePolicy)


***
<div align=right><a href="#Top">Top</a></div>
