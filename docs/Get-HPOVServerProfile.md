<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVServerProfile
<p>
Retrieve Server Profile resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVServerProfile [-Name] &lt;String&gt;[ [-NonCompliant] &lt;SwitchParameter&gt;][ [-Unassigned] &lt;SwitchParameter&gt;][ [-InputObject] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVServerProfile[ [-export] &lt;SwitchParameter&gt;] [-location] &lt;String&gt; [-Name] &lt;String&gt;[ [-Unassigned] &lt;SwitchParameter&gt;][ [-InputObject] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVServerProfile[ [-Detailed] &lt;SwitchParameter&gt;] [-Name] &lt;String&gt;[ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will obtain a collection of Server Profile resources, or a specific Server Profile the specified name. It returns all aspects of the Server Profile.
    
This will also provide the ability to export Server Profile objects to their own JSON encoded file.  All appliance unique properties (minus the Server Hardware Type, Enclosure Group, and Connection Network assignment) are removed.  Connection layout, assigned addresses, networks, bandwidth, BIOS, Boot Order, Firmware settings will all be retained.  Assigned Address types will change from Virtual to UserDefined in order to retain their assignment.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Detailed &lt;SwitchParameter&gt;<p>
Display detailed report list of Server Profiles

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Profile a Server Hardware or Server Profile Template resource, and the associated Server Hardware will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-profile]
The name of the server profile resource to be returned.  All server profile resources will be returned if omitted.  Supports * wildcard character.

<table><tbody><tr><td>Aliases</td><td>profile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NonCompliant &lt;SwitchParameter&gt;<p>
Return collection of Server Profiles that are not compliant with their template.  Will not return Server Profiles that have no Template association.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Unassigned &lt;SwitchParameter&gt;<p>
Optional parameter that can be included with the List switch parameter to only display unassigned Server Profiles.  Can also be combined with the name parameter for Server Profile wildcard name search.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -export &lt;SwitchParameter&gt;<p>
Aliases [-x]
Switch used to export Server Profile object to JSON encoded file.

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -location &lt;String&gt;<p>
Aliases [-save]
Location where to save the Server Profile

<table><tbody><tr><td>Aliases</td><td>save</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile 
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Copy of test 2         False             False Unassigned    Normal
Profile 11              True              True Encl1, bay 11 Normal
Profile 12             False             False Encl1, bay 12 Normal
Profile 13             False             False Encl1, bay 13 Normal
Profile 14             False             False Encl1, bay 14 Normal
Profile 15             False             False Encl1, bay 15 Normal
Profile 16             False             False Encl1, bay 16 Normal
Test 1                 False             False Unassigned    Normal
test 2                 False             False Encl1, bay 3  Normal
test 3                 False             False Unassigned    Normal
</pre>
Generate a list of all server profiles.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$profile = Get-HPOVServerProfile -Name "SA"
</pre>
Return the server profile resource with name "SA".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$profiles = Get-HPOVServerProfile -Name profile*
</pre>
Return server profile resources that match "profile*".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVServerProfile -name "test 1" -list
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Test 1                 False             False Unassigned    Normal
</pre>
Generate a report of a specific server profile.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVServerProfile -unassigned
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Copy of test 2         False             False Unassigned    Normal
Test 1                 False             False Unassigned    Normal
test 3                 False             False Unassigned    Normal
</pre>
Generate a list of all Unassigned server profiles.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVServerProfile -export -location c:\profiles
</pre>
Save all Server Profile objects to their own backup file to C:\profiles.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
Get-HPOVServerProfile -name Profile1 -export -location c:\profiles
</pre>
Save Profile1 Server Profile object to its own backup file in C:\profiles.



### Related Links

* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile)
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile)
* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList)
* [Get-HPOVServerProfileMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileMessage)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [Join-HPOVServerProfileToTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Join-HPOVServerProfileToTemplate)
* [New-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfile)
* [New-HPOVServerProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAssign)
* [New-HPOVServerProfileAttachVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAttachVolume)
* [New-HPOVServerProfileConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileConnection)
* [New-HPOVServerProfileLogicalDisk](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDisk)
* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVServerProfile
<p>
Retrieve Server Profile resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVServerProfile [-Name] &lt;String&gt;[ [-NonCompliant] &lt;SwitchParameter&gt;][ [-Unassigned] &lt;SwitchParameter&gt;][ [-InputObject] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVServerProfile[ [-export] &lt;SwitchParameter&gt;] [-location] &lt;String&gt; [-Name] &lt;String&gt;[ [-Unassigned] &lt;SwitchParameter&gt;][ [-InputObject] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVServerProfile[ [-Detailed] &lt;SwitchParameter&gt;] [-Name] &lt;String&gt;[ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will obtain a collection of Server Profile resources, or a specific Server Profile the specified name. It returns all aspects of the Server Profile.
    
This will also provide the ability to export Server Profile objects to their own JSON encoded file.  All appliance unique properties (minus the Server Hardware Type, Enclosure Group, and Connection Network assignment) are removed.  Connection layout, assigned addresses, networks, bandwidth, BIOS, Boot Order, Firmware settings will all be retained.  Assigned Address types will change from Virtual to UserDefined in order to retain their assignment.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Detailed &lt;SwitchParameter&gt;<p>
Display detailed report list of Server Profiles

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Profile a Server Hardware or Server Profile Template resource, and the associated Server Hardware will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-profile]
The name of the server profile resource to be returned.  All server profile resources will be returned if omitted.  Supports * wildcard character.

<table><tbody><tr><td>Aliases</td><td>profile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NonCompliant &lt;SwitchParameter&gt;<p>
Return collection of Server Profiles that are not compliant with their template.  Will not return Server Profiles that have no Template association.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Unassigned &lt;SwitchParameter&gt;<p>
Optional parameter that can be included with the List switch parameter to only display unassigned Server Profiles.  Can also be combined with the name parameter for Server Profile wildcard name search.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -export &lt;SwitchParameter&gt;<p>
Aliases [-x]
Switch used to export Server Profile object to JSON encoded file.

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -location &lt;String&gt;<p>
Aliases [-save]
Location where to save the Server Profile

<table><tbody><tr><td>Aliases</td><td>save</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile 
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Copy of test 2         False             False Unassigned    Normal
Profile 11              True              True Encl1, bay 11 Normal
Profile 12             False             False Encl1, bay 12 Normal
Profile 13             False             False Encl1, bay 13 Normal
Profile 14             False             False Encl1, bay 14 Normal
Profile 15             False             False Encl1, bay 15 Normal
Profile 16             False             False Encl1, bay 16 Normal
Test 1                 False             False Unassigned    Normal
test 2                 False             False Encl1, bay 3  Normal
test 3                 False             False Unassigned    Normal
</pre>
Generate a list of all server profiles.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$profile = Get-HPOVServerProfile -Name "SA"
</pre>
Return the server profile resource with name "SA".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$profiles = Get-HPOVServerProfile -Name profile*
</pre>
Return server profile resources that match "profile*".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVServerProfile -name "test 1" -list
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Test 1                 False             False Unassigned    Normal
</pre>
Generate a report of a specific server profile.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVServerProfile -unassigned
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Copy of test 2         False             False Unassigned    Normal
Test 1                 False             False Unassigned    Normal
test 3                 False             False Unassigned    Normal
</pre>
Generate a list of all Unassigned server profiles.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVServerProfile -export -location c:\profiles
</pre>
Save all Server Profile objects to their own backup file to C:\profiles.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
Get-HPOVServerProfile -name Profile1 -export -location c:\profiles
</pre>
Save Profile1 Server Profile object to its own backup file in C:\profiles.



### Related Links

* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile)
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile)
* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList)
* [Get-HPOVServerProfileMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileMessage)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [Join-HPOVServerProfileToTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Join-HPOVServerProfileToTemplate)
* [New-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfile)
* [New-HPOVServerProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAssign)
* [New-HPOVServerProfileAttachVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAttachVolume)
* [New-HPOVServerProfileConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileConnection)
* [New-HPOVServerProfileLogicalDisk](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDisk)
* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVServerProfile
<p>
Retrieve Server Profile resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVServerProfile [-Name] &lt;String&gt;[ [-NonCompliant] &lt;SwitchParameter&gt;][ [-Unassigned] &lt;SwitchParameter&gt;][ [-InputObject] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVServerProfile[ [-export] &lt;SwitchParameter&gt;] [-location] &lt;String&gt; [-Name] &lt;String&gt;[ [-Unassigned] &lt;SwitchParameter&gt;][ [-InputObject] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVServerProfile[ [-Detailed] &lt;SwitchParameter&gt;] [-Name] &lt;String&gt;[ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will obtain a collection of Server Profile resources, or a specific Server Profile the specified name. It returns all aspects of the Server Profile.
    
This will also provide the ability to export Server Profile objects to their own JSON encoded file.  All appliance unique properties (minus the Server Hardware Type, Enclosure Group, and Connection Network assignment) are removed.  Connection layout, assigned addresses, networks, bandwidth, BIOS, Boot Order, Firmware settings will all be retained.  Assigned Address types will change from Virtual to UserDefined in order to retain their assignment.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Detailed &lt;SwitchParameter&gt;<p>
Display detailed report list of Server Profiles

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Profile a Server Hardware or Server Profile Template resource, and the associated Server Hardware will be returned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
Aliases [-profile]
The name of the server profile resource to be returned.  All server profile resources will be returned if omitted.  Supports * wildcard character.

<table><tbody><tr><td>Aliases</td><td>profile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NonCompliant &lt;SwitchParameter&gt;<p>
Return collection of Server Profiles that are not compliant with their template.  Will not return Server Profiles that have no Template association.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Unassigned &lt;SwitchParameter&gt;<p>
Optional parameter that can be included with the List switch parameter to only display unassigned Server Profiles.  Can also be combined with the name parameter for Server Profile wildcard name search.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -export &lt;SwitchParameter&gt;<p>
Aliases [-x]
Switch used to export Server Profile object to JSON encoded file.

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -location &lt;String&gt;<p>
Aliases [-save]
Location where to save the Server Profile

<table><tbody><tr><td>Aliases</td><td>save</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 





### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServerProfile 
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Copy of test 2         False             False Unassigned    Normal
Profile 11              True              True Encl1, bay 11 Normal
Profile 12             False             False Encl1, bay 12 Normal
Profile 13             False             False Encl1, bay 13 Normal
Profile 14             False             False Encl1, bay 14 Normal
Profile 15             False             False Encl1, bay 15 Normal
Profile 16             False             False Encl1, bay 16 Normal
Test 1                 False             False Unassigned    Normal
test 2                 False             False Encl1, bay 3  Normal
test 3                 False             False Unassigned    Normal
</pre>
Generate a list of all server profiles.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$profile = Get-HPOVServerProfile -Name "SA"
</pre>
Return the server profile resource with name "SA".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$profiles = Get-HPOVServerProfile -Name profile*
</pre>
Return server profile resources that match "profile*".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVServerProfile -name "test 1" -list
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Test 1                 False             False Unassigned    Normal
</pre>
Generate a report of a specific server profile.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVServerProfile -unassigned
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Copy of test 2         False             False Unassigned    Normal
Test 1                 False             False Unassigned    Normal
test 3                 False             False Unassigned    Normal
</pre>
Generate a list of all Unassigned server profiles.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVServerProfile -export -location c:\profiles
</pre>
Save all Server Profile objects to their own backup file to C:\profiles.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
Get-HPOVServerProfile -name Profile1 -export -location c:\profiles
</pre>
Save Profile1 Server Profile object to its own backup file in C:\profiles.



### Related Links

* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile)
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile)
* [Get-HPOVServerProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileConnectionList)
* [Get-HPOVServerProfileMessage](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileMessage)
* [Get-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfileTemplate)
* [Join-HPOVServerProfileToTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Join-HPOVServerProfileToTemplate)
* [New-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfile)
* [New-HPOVServerProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAssign)
* [New-HPOVServerProfileAttachVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileAttachVolume)
* [New-HPOVServerProfileConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileConnection)
* [New-HPOVServerProfileLogicalDisk](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDisk)
* [New-HPOVServerProfileLogicalDiskController](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileLogicalDiskController)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile)


***
<div align=right><a href="#Top">Top</a></div>
