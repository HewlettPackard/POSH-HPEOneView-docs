<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## ConvertTo-HPOVServerProfileTemplate
<p>
Create a Server Profile Template from Server Profile.

### SYNTAX
<p>
<pre><code>ConvertTo-HPOVServerProfileTemplate [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Description] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET will allow the user to "clone" or create a Server Profile Template from an existing Server Profile object.  Not all Server Profile features will be converted to a Server Profile Template.  For instance, the following features are not supported with a Server Profile Template:

	* Import existing local Smart Array Logical Disk configuration
	* Attach SAN Storage Volumes must be assigned a unique LUN ID

If the source Server Profile has the "Import existing logical drives" enabled, this setting will be disabled, and the Local Disk Configuration policy will be set to "disabled".

If any SAN Storage Volume attachments contain an "Auto" LUN value, it will be set to "Manual", with the LUN ID set to a unique value based on the Array Index value.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
The Server Profile description.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-source, -name, -ServerProfile]

A source Server Profile Object or Resource Name.

<table><tbody><tr><td>Aliases</td><td>source, ServerProfile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The Server Profile Template Name to assign.  If omitted, then a new name of "Copy of - {Original_Name}" will be defined.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

 A Server Profile resource object from Get-HPOVServerProfile.

 _**System.Collections.ArrayList**_

 Multiple HPOneView.ServerProfile [System.Management.Automation.PSCustomObject] objects.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject] objects.**_

 

Asyncronous task of the Server Profile Template creation request.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile MyProfile | ConvertTo-HPOVServerProfileTemplate -Name "Hypervisor Gold Template 1"
</pre>
Use Get-HPOVServerProfile to retrieve the "MyProfile" object, and pipe it to ConvertTo-HPOVServerProfileTemplate, creating a new Server Profile Template "Hyervisor Gold Template 1".



### Related Links

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## ConvertTo-HPOVServerProfileTemplate
<p>
Create a Server Profile Template from Server Profile.

### SYNTAX
<p>
<pre><code>ConvertTo-HPOVServerProfileTemplate [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Description] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET will allow the user to "clone" or create a Server Profile Template from an existing Server Profile object.  Not all Server Profile features will be converted to a Server Profile Template.  For instance, the following features are not supported with a Server Profile Template:

	* Import existing local Smart Array Logical Disk configuration
	* Attach SAN Storage Volumes must be assigned a unique LUN ID

If the source Server Profile has the "Import existing logical drives" enabled, this setting will be disabled, and the Local Disk Configuration policy will be set to "disabled".

If any SAN Storage Volume attachments contain an "Auto" LUN value, it will be set to "Manual", with the LUN ID set to a unique value based on the Array Index value.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
The Server Profile description.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-source, -name, -ServerProfile]

A source Server Profile Object or Resource Name.

<table><tbody><tr><td>Aliases</td><td>source, ServerProfile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The Server Profile Template Name to assign.  If omitted, then a new name of "Copy of - {Original_Name}" will be defined.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

 A Server Profile resource object from Get-HPOVServerProfile.

 _**System.Collections.ArrayList**_

 Multiple HPOneView.ServerProfile [System.Management.Automation.PSCustomObject] objects.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject] objects.**_

 

Asyncronous task of the Server Profile Template creation request.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile MyProfile | ConvertTo-HPOVServerProfileTemplate -Name "Hypervisor Gold Template 1"
</pre>
Use Get-HPOVServerProfile to retrieve the "MyProfile" object, and pipe it to ConvertTo-HPOVServerProfileTemplate, creating a new Server Profile Template "Hyervisor Gold Template 1".



### Related Links

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## ConvertTo-HPOVServerProfileTemplate
<p>
Create a Server Profile Template from Server Profile.

### SYNTAX
<p>
<pre><code>ConvertTo-HPOVServerProfileTemplate [-InputObject] &lt;Object&gt; [-Name] &lt;String&gt; [-Description] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt;[ [-Async] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This CMDLET will allow the user to "clone" or create a Server Profile Template from an existing Server Profile object.  Not all Server Profile features will be converted to a Server Profile Template.  For instance, the following features are not supported with a Server Profile Template:

	* Import existing local Smart Array Logical Disk configuration
	* Attach SAN Storage Volumes must be assigned a unique LUN ID

If the source Server Profile has the "Import existing logical drives" enabled, this setting will be disabled, and the Local Disk Configuration policy will be set to "disabled".

If any SAN Storage Volume attachments contain an "Auto" LUN value, it will be set to "Manual", with the LUN ID set to a unique value based on the Array Index value.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Async &lt;SwitchParameter&gt;<p>
Use this parameter to immediately return the async task.  By default, the Cmdlet will wait for the task to complete.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Description &lt;String&gt;<p>
The Server Profile description.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-source, -name, -ServerProfile]

A source Server Profile Object or Resource Name.

<table><tbody><tr><td>Aliases</td><td>source, ServerProfile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The Server Profile Template Name to assign.  If omitted, then a new name of "Copy of - {Original_Name}" will be defined.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

 A Server Profile resource object from Get-HPOVServerProfile.

 _**System.Collections.ArrayList**_

 Multiple HPOneView.ServerProfile [System.Management.Automation.PSCustomObject] objects.



### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject] objects.**_

 

Asyncronous task of the Server Profile Template creation request.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile MyProfile | ConvertTo-HPOVServerProfileTemplate -Name "Hypervisor Gold Template 1"
</pre>
Use Get-HPOVServerProfile to retrieve the "MyProfile" object, and pipe it to ConvertTo-HPOVServerProfileTemplate, creating a new Server Profile Template "Hyervisor Gold Template 1".



### Related Links

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)


***
<div align=right><a href="#Top">Top</a></div>
