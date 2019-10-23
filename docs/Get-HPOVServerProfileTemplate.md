<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVServerProfileTemplate
<p>
Retrieve Server Profile Template resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVServerProfileTemplate[ [-Name] &lt;String&gt;][ [-ServerHardwareType] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVServerProfileTemplate[ [-Export] &lt;SwitchParameter&gt;][ [-Location] &lt;String&gt;][ [-Name] &lt;String&gt;][ [-ServerHardwareType] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVServerProfileTemplate[ [-Detailed] &lt;SwitchParameter&gt;][ [-Name] &lt;String&gt;][ [-ServerHardwareType] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will obtain a collection of Server Profile Template resources, or a specific Server Profile Template with the specified name. It 
returns all aspects of the Server Profile Template.
    
This will also provide the ability to export Server Profile Template objects to their own JSON encoded file.  All appliance unique properties (minus the Server Hardware Type, Enclosure Group, and Connection Network assignment) are removed.  Connection layout, assigned addresses, networks, bandwidth, BIOS, Boot Order, Firmware settings will all be retained.  Assigned Address types will change from Virtual to UserDefined in order to retain their assignment.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Detailed &lt;SwitchParameter&gt;<p>
Displays detailed information about the Server Profile Template in tabular format

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;SwitchParameter&gt;<p>
Aliases [-x]
Switch used to export Server Profile Template object to JSON encoded file.

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
Aliases [-save]
Location where to save the Server Profile Template file.

<table><tbody><tr><td>Aliases</td><td>save</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the specific Server Profile Template resource to retrieve

<table><tbody><tr><td>Aliases</td><td>profile</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerHardwareType &lt;String&gt;<p>
Provide the Server Hardware Type resource object or name to return Server Profile Templates designed for it.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None**_

 



### Return Values

_**HPOneView.ServerProfileTemplate [System.Management.Automation.PSCustomObject]**_

 

Server Profile template resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$templates = Get-HPOVServerProfileTemplate
</pre>
Return all the server profile  templates managed by the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$template = Get-HPOVServerProfileTemplate "SA"
</pre>
Return the server profile template resource with name "SA".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$profiletemplates = Get-HPOVServerProfileTemplate profile*
</pre>
Return server profile  template resources that match "profile*".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVServerProfileTemplate
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Copy of test 2         False             False Unassigned    Normal
Test 1                 False             False Unassigned    Normal
test 3                 False             False Unassigned    Normal
</pre>
Generate a list of all server profiles.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVServerProfileTemplate -name "test 1"
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Test 1                 False             False Unassigned    Normal
</pre>
Show a specific Server Profile Template, "test 1".


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVServerProfileTemplate -export -location c:\profiles
</pre>
Save all Server Profile Template objects to their own backup file to C:\profiles.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
Get-HPOVServerProfileTemplate -name Profile1 -export -location c:\profiles
</pre>
Save Profile1 Server Profile  template object to its own backup file in C:\pro



### Related Links

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVServerProfileTemplate
<p>
Retrieve Server Profile Template resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVServerProfileTemplate[ [-Name] &lt;String&gt;][ [-ServerHardwareType] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVServerProfileTemplate[ [-Export] &lt;SwitchParameter&gt;][ [-Location] &lt;String&gt;][ [-Name] &lt;String&gt;][ [-ServerHardwareType] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVServerProfileTemplate[ [-Detailed] &lt;SwitchParameter&gt;][ [-Name] &lt;String&gt;][ [-ServerHardwareType] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will obtain a collection of Server Profile Template resources, or a specific Server Profile Template with the specified name. It 
returns all aspects of the Server Profile Template.
    
This will also provide the ability to export Server Profile Template objects to their own JSON encoded file.  All appliance unique properties (minus the Server Hardware Type, Enclosure Group, and Connection Network assignment) are removed.  Connection layout, assigned addresses, networks, bandwidth, BIOS, Boot Order, Firmware settings will all be retained.  Assigned Address types will change from Virtual to UserDefined in order to retain their assignment.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Detailed &lt;SwitchParameter&gt;<p>
Displays detailed information about the Server Profile Template in tabular format

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;SwitchParameter&gt;<p>
Aliases [-x]
Switch used to export Server Profile Template object to JSON encoded file.

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
Aliases [-save]
Location where to save the Server Profile Template file.

<table><tbody><tr><td>Aliases</td><td>save</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the specific Server Profile Template resource to retrieve

<table><tbody><tr><td>Aliases</td><td>profile</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerHardwareType &lt;String&gt;<p>
Provide the Server Hardware Type resource object or name to return Server Profile Templates designed for it.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None**_

 



### Return Values

_**HPOneView.ServerProfileTemplate [System.Management.Automation.PSCustomObject]**_

 

Server Profile template resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$templates = Get-HPOVServerProfileTemplate
</pre>
Return all the server profile  templates managed by the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$template = Get-HPOVServerProfileTemplate "SA"
</pre>
Return the server profile template resource with name "SA".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$profiletemplates = Get-HPOVServerProfileTemplate profile*
</pre>
Return server profile  template resources that match "profile*".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVServerProfileTemplate
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Copy of test 2         False             False Unassigned    Normal
Test 1                 False             False Unassigned    Normal
test 3                 False             False Unassigned    Normal
</pre>
Generate a list of all server profiles.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVServerProfileTemplate -name "test 1"
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Test 1                 False             False Unassigned    Normal
</pre>
Show a specific Server Profile Template, "test 1".


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVServerProfileTemplate -export -location c:\profiles
</pre>
Save all Server Profile Template objects to their own backup file to C:\profiles.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
Get-HPOVServerProfileTemplate -name Profile1 -export -location c:\profiles
</pre>
Save Profile1 Server Profile  template object to its own backup file in C:\pro



### Related Links

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVServerProfileTemplate
<p>
Retrieve Server Profile Template resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVServerProfileTemplate[ [-Name] &lt;String&gt;][ [-ServerHardwareType] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVServerProfileTemplate[ [-Export] &lt;SwitchParameter&gt;][ [-Location] &lt;String&gt;][ [-Name] &lt;String&gt;][ [-ServerHardwareType] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVServerProfileTemplate[ [-Detailed] &lt;SwitchParameter&gt;][ [-Name] &lt;String&gt;][ [-ServerHardwareType] &lt;String&gt;][ [-Label] &lt;String&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will obtain a collection of Server Profile Template resources, or a specific Server Profile Template with the specified name. It 
returns all aspects of the Server Profile Template.
    
This will also provide the ability to export Server Profile Template objects to their own JSON encoded file.  All appliance unique properties (minus the Server Hardware Type, Enclosure Group, and Connection Network assignment) are removed.  Connection layout, assigned addresses, networks, bandwidth, BIOS, Boot Order, Firmware settings will all be retained.  Assigned Address types will change from Virtual to UserDefined in order to retain their assignment.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Detailed &lt;SwitchParameter&gt;<p>
Displays detailed information about the Server Profile Template in tabular format

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Export &lt;SwitchParameter&gt;<p>
Aliases [-x]
Switch used to export Server Profile Template object to JSON encoded file.

<table><tbody><tr><td>Aliases</td><td>x</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Location &lt;String&gt;<p>
Aliases [-save]
Location where to save the Server Profile Template file.

<table><tbody><tr><td>Aliases</td><td>save</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the specific Server Profile Template resource to retrieve

<table><tbody><tr><td>Aliases</td><td>profile</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerHardwareType &lt;String&gt;<p>
Provide the Server Hardware Type resource object or name to return Server Profile Templates designed for it.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None**_

 



### Return Values

_**HPOneView.ServerProfileTemplate [System.Management.Automation.PSCustomObject]**_

 

Server Profile template resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$templates = Get-HPOVServerProfileTemplate
</pre>
Return all the server profile  templates managed by the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$template = Get-HPOVServerProfileTemplate "SA"
</pre>
Return the server profile template resource with name "SA".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
$profiletemplates = Get-HPOVServerProfileTemplate profile*
</pre>
Return server profile  template resources that match "profile*".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVServerProfileTemplate
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Copy of test 2         False             False Unassigned    Normal
Test 1                 False             False Unassigned    Normal
test 3                 False             False Unassigned    Normal
</pre>
Generate a list of all server profiles.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
Get-HPOVServerProfileTemplate -name "test 1"
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Test 1                 False             False Unassigned    Normal
</pre>
Show a specific Server Profile Template, "test 1".


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVServerProfileTemplate -export -location c:\profiles
</pre>
Save all Server Profile Template objects to their own backup file to C:\profiles.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
Get-HPOVServerProfileTemplate -name Profile1 -export -location c:\profiles
</pre>
Save Profile1 Server Profile  template object to its own backup file in C:\pro



### Related Links

* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [New-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVServerProfileTemplate)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)


***
<div align=right><a href="#Top">Top</a></div>
