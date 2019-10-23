<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVServer
<p>
Retrieve Server Hardware resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVServer[ [-Name] &lt;String&gt;][ [-ServerName] &lt;String&gt;][ [-Status] &lt;String[]&gt;][ [-NoProfile] &lt;SwitchParameter&gt;][ [-InputObject] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-Count] &lt;int&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of server hardware resources, a specific server with the specified name, or server hardware resources without an assigned Server Profile.  Returned resources will display:

	* Device Name
	* Serial Number
	* Model
	* System ROM
	* iLO and its firmware
	* Server Profile
	* Status
	* Licensing


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;int&gt;<p>
Return no more than the provided value.  Combining other parameters to filter may not return the requested count value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-ServerHardwareType, -ServerProfileTemplate]
Provide the Server Hardware Type or Server Profile Template Object to filter for available server hardware.

<table><tbody><tr><td>Aliases</td><td>ServerHardwareType, ServerProfileTemplate</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the server hardware resource to be returned.  All server hardware resources will be returned if omitted.  Supports * wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NoProfile &lt;SwitchParameter&gt;<p>
Optional parameter that can be used with the report parameter to display Servers without a Server Profile assigned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerName &lt;String&gt;<p>
Specify the Server OS Name that is reported by the iLO.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Status &lt;String[]&gt;<p>
Filter resources based on their current status.  Allowed values:

	* Ok
	* Warning
	* Critical
	* Unknown
	* Disabled

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardwareType [System.Management.Automation.PSCustomObject]**_

 Server Hardware Type resource object.

 _**HPOneView.ServerProfileTemplate [System.Management.Automation.PSCustomObject]**_

 Server Profile Template resource object.



### Return Values

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 

Single Server Hardware resource

 _**System.Collections.ArrayList**_

 

Multiple Server Hardware resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer
Name           Status   Power   Serial Number  Model       ROM            iLO       Server Profile   License
----           ------   -----   -------------  -----       ---            ---       --------------   -------
172.18.6.15    Disabled Off     MXQ1000207     DL360p Gen8 P71 02/10/2014 iLO4 2.03 No Profile       OneViewNoiLO
172.18.6.16    Unknown  Unknown MXQ1000307     DL380p Gen8                          No Profile       OneViewNoiLO
172.18.6.31    Disabled Off     MXQ1000208     DL360 Gen9  P89 07/11/2014 iLO4 2.03 No Profile       OneViewNoiLO
172.18.6.32    Unknown  Unknown MXQ1020307     DL380p Gen8                          No Profile       OneViewNoiLO
Encl1, bay 1   OK       Off     SGH100X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 Server Profile 1 OneView
Encl1, bay 11  OK       Off     SGH100X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 Server Profile 2 OneView
Encl1, bay 12  Disabled Off     SGH101X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 13  Disabled Off     SGH102X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 14  Disabled Off     SGH103X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 15  Disabled Off     SGH104X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 16  Disabled Off     SGH105X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 2   OK       Off     SGH101X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 My Profile       OneView
Encl1, bay 3   OK       Off     SGH100X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 Server Profile 3 OneView
Encl1, bay 4   OK       Off     SGH101X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 Server Profile 4 OneView
Encl1, bay 5   OK       Off     SGH102X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 Server Profile 5 OneView
Encl1, bay 6   Disabled Off     SGH103X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 7   Disabled Off     SGH104X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 8   Disabled Off     SGH105X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 1   Disabled Off     SGH102X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 11  Disabled Off     SGH106X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 12  Disabled Off     SGH107X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 13  Disabled Off     SGH108X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 14  Disabled Off     SGH109X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 15  Disabled Off     SGH110X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 16  Disabled Off     SGH111X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 2   Disabled Off     SGH103X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 3   Disabled Off     SGH106X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 4   Disabled Off     SGH107X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 5   Disabled Off     SGH108X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 6   Disabled Off     SGH109X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 7   Disabled Off     SGH110X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 8   Disabled Off     SGH111X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView

</pre>
Return all the server hardware managed by this appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$bay1 = Get-HPOVServer -Name "Encl1, bay 1"
</pre>
Return the server hardware resource with name "Encl1, bay 1".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVServer -NoProfile
Name           Status   Power   Serial Number  Model       ROM            iLO       Server Profile License
----           ------   -----   -------------  -----       ---            ---       -------------- -------
172.18.6.15    Disabled Off     MXQ1000207     DL360p Gen8 P71 02/10/2014 iLO4 2.03 No Profile     OneViewNoiLO
172.18.6.16    Unknown  Unknown MXQ1000307     DL380p Gen8                          No Profile     OneViewNoiLO
172.18.6.31    Disabled Off     MXQ1000208     DL360 Gen9  P89 07/11/2014 iLO4 2.03 No Profile     OneViewNoiLO
172.18.6.32    Unknown  Unknown MXQ1020307     DL380p Gen8                          No Profile     OneViewNoiLO
Encl1, bay 12  Disabled Off     SGH101X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 13  Disabled Off     SGH102X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 14  Disabled Off     SGH103X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 15  Disabled Off     SGH104X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 16  Disabled Off     SGH105X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 6   Disabled Off     SGH103X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 7   Disabled Off     SGH104X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 8   Disabled Off     SGH105X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 1   Disabled Off     SGH102X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 11  Disabled Off     SGH106X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 12  Disabled Off     SGH107X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 13  Disabled Off     SGH108X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 14  Disabled Off     SGH109X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 15  Disabled Off     SGH110X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 16  Disabled Off     SGH111X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 2   Disabled Off     SGH103X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 3   Disabled Off     SGH106X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 4   Disabled Off     SGH107X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 5   Disabled Off     SGH108X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 6   Disabled Off     SGH109X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 7   Disabled Off     SGH110X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 8   Disabled Off     SGH111X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView

</pre>
Display all server hardware resources without an assigned Server Profile.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$sht = Get-HPOVServerHardwareType -Name "BL460c Gen9 1"
$AvailableServer = Get-HPOVServer -NoProfile -ServerHardwareType $sht | Select -first 1
</pre>
Return the first available server hardware of the Server Hardware Type requested.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$AvailableServer = Get-HPOVServerProfileTemplate -Name "My Template 1" | Get-HPOVServer -NoProfile | Select -first 1
</pre>
Return the first available server hardware designed for the specific Server Profile Template.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVServer -Status Warning, Critical
</pre>
Return only servers that are currently reporting Warning or Critical status.



### Related Links

* [Add-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVServer)
* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile)
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile)
* [Get-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerHardwareType)
* [Get-HPOVServerOneTimeBoot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerOneTimeBoot)
* [Get-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfile)
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
* [Remove-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServer)
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Restart-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restart-HPOVServer)
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerHardwareType)
* [Set-HPOVServerOneTimeBoot](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerOneTimeBoot)
* [Set-HPOVServerPower](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerPower)
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)
* [Start-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Start-HPOVServer)
* [Stop-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Stop-HPOVServer)
* [Update-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServer)
* [Update-HPOVServerHardwareLicenseIntent](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerHardwareLicenseIntent)
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVServer
<p>
Retrieve Server Hardware resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVServer[ [-Name] &lt;String&gt;][ [-ServerName] &lt;String&gt;][ [-Status] &lt;String[]&gt;][ [-NoProfile] &lt;SwitchParameter&gt;][ [-InputObject] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-Count] &lt;int&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of server hardware resources, a specific server with the specified name, or server hardware resources without an assigned Server Profile.  Returned resources will display:

	* Device Name
	* Serial Number
	* Model
	* System ROM
	* iLO and its firmware
	* Server Profile
	* Status
	* Licensing


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;int&gt;<p>
Return no more than the provided value.  Combining other parameters to filter may not return the requested count value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-ServerHardwareType, -ServerProfileTemplate]
Provide the Server Hardware Type or Server Profile Template Object to filter for available server hardware.

<table><tbody><tr><td>Aliases</td><td>ServerHardwareType, ServerProfileTemplate</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the server hardware resource to be returned.  All server hardware resources will be returned if omitted.  Supports * wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NoProfile &lt;SwitchParameter&gt;<p>
Optional parameter that can be used with the report parameter to display Servers without a Server Profile assigned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerName &lt;String&gt;<p>
Specify the Server OS Name that is reported by the iLO.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Status &lt;String[]&gt;<p>
Filter resources based on their current status.  Allowed values:

	* Ok
	* Warning
	* Critical
	* Unknown
	* Disabled

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardwareType [System.Management.Automation.PSCustomObject]**_

 Server Hardware Type resource object.

 _**HPOneView.ServerProfileTemplate [System.Management.Automation.PSCustomObject]**_

 Server Profile Template resource object.



### Return Values

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 

Single Server Hardware resource

 _**System.Collections.ArrayList**_

 

Multiple Server Hardware resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer
Name           Status   Power   Serial Number  Model       ROM            iLO       Server Profile   License
----           ------   -----   -------------  -----       ---            ---       --------------   -------
172.18.6.15    Disabled Off     MXQ1000207     DL360p Gen8 P71 02/10/2014 iLO4 2.03 No Profile       OneViewNoiLO
172.18.6.16    Unknown  Unknown MXQ1000307     DL380p Gen8                          No Profile       OneViewNoiLO
172.18.6.31    Disabled Off     MXQ1000208     DL360 Gen9  P89 07/11/2014 iLO4 2.03 No Profile       OneViewNoiLO
172.18.6.32    Unknown  Unknown MXQ1020307     DL380p Gen8                          No Profile       OneViewNoiLO
Encl1, bay 1   OK       Off     SGH100X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 Server Profile 1 OneView
Encl1, bay 11  OK       Off     SGH100X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 Server Profile 2 OneView
Encl1, bay 12  Disabled Off     SGH101X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 13  Disabled Off     SGH102X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 14  Disabled Off     SGH103X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 15  Disabled Off     SGH104X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 16  Disabled Off     SGH105X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 2   OK       Off     SGH101X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 My Profile       OneView
Encl1, bay 3   OK       Off     SGH100X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 Server Profile 3 OneView
Encl1, bay 4   OK       Off     SGH101X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 Server Profile 4 OneView
Encl1, bay 5   OK       Off     SGH102X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 Server Profile 5 OneView
Encl1, bay 6   Disabled Off     SGH103X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 7   Disabled Off     SGH104X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 8   Disabled Off     SGH105X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 1   Disabled Off     SGH102X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 11  Disabled Off     SGH106X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 12  Disabled Off     SGH107X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 13  Disabled Off     SGH108X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 14  Disabled Off     SGH109X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 15  Disabled Off     SGH110X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 16  Disabled Off     SGH111X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 2   Disabled Off     SGH103X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 3   Disabled Off     SGH106X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 4   Disabled Off     SGH107X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 5   Disabled Off     SGH108X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 6   Disabled Off     SGH109X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 7   Disabled Off     SGH110X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 8   Disabled Off     SGH111X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView

</pre>
Return all the server hardware managed by this appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$bay1 = Get-HPOVServer -Name "Encl1, bay 1"
</pre>
Return the server hardware resource with name "Encl1, bay 1".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVServer -NoProfile
Name           Status   Power   Serial Number  Model       ROM            iLO       Server Profile License
----           ------   -----   -------------  -----       ---            ---       -------------- -------
172.18.6.15    Disabled Off     MXQ1000207     DL360p Gen8 P71 02/10/2014 iLO4 2.03 No Profile     OneViewNoiLO
172.18.6.16    Unknown  Unknown MXQ1000307     DL380p Gen8                          No Profile     OneViewNoiLO
172.18.6.31    Disabled Off     MXQ1000208     DL360 Gen9  P89 07/11/2014 iLO4 2.03 No Profile     OneViewNoiLO
172.18.6.32    Unknown  Unknown MXQ1020307     DL380p Gen8                          No Profile     OneViewNoiLO
Encl1, bay 12  Disabled Off     SGH101X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 13  Disabled Off     SGH102X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 14  Disabled Off     SGH103X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 15  Disabled Off     SGH104X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 16  Disabled Off     SGH105X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 6   Disabled Off     SGH103X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 7   Disabled Off     SGH104X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 8   Disabled Off     SGH105X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 1   Disabled Off     SGH102X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 11  Disabled Off     SGH106X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 12  Disabled Off     SGH107X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 13  Disabled Off     SGH108X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 14  Disabled Off     SGH109X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 15  Disabled Off     SGH110X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 16  Disabled Off     SGH111X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 2   Disabled Off     SGH103X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 3   Disabled Off     SGH106X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 4   Disabled Off     SGH107X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 5   Disabled Off     SGH108X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 6   Disabled Off     SGH109X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 7   Disabled Off     SGH110X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 8   Disabled Off     SGH111X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView

</pre>
Display all server hardware resources without an assigned Server Profile.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$sht = Get-HPOVServerHardwareType -Name "BL460c Gen9 1"
$AvailableServer = Get-HPOVServer -NoProfile -ServerHardwareType $sht | Select -first 1
</pre>
Return the first available server hardware of the Server Hardware Type requested.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$AvailableServer = Get-HPOVServerProfileTemplate -Name "My Template 1" | Get-HPOVServer -NoProfile | Select -first 1
</pre>
Return the first available server hardware designed for the specific Server Profile Template.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
Get-HPOVServer -Status Warning, Critical
</pre>
Return only servers that are currently reporting Warning or Critical status.



### Related Links

* [Add-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVServer)
* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile)
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile)
* [Get-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerHardwareType)
* [Get-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfile)
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
* [Remove-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServer)
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Restart-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restart-HPOVServer)
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerHardwareType)
* [Set-HPOVServerPower](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerPower)
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)
* [Start-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Start-HPOVServer)
* [Stop-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Stop-HPOVServer)
* [Update-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServer)
* [Update-HPOVServerHardwareLicenseIntent](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerHardwareLicenseIntent)
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVServer
<p>
Retrieve Server Hardware resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVServer[ [-Name] &lt;String&gt;][ [-ServerName] &lt;String&gt;][ [-NoProfile] &lt;SwitchParameter&gt;][ [-InputObject] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-Count] &lt;int&gt;][ [-Scope] &lt;Object&gt;][ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of server hardware resources, a specific server with the specified name, or server hardware resources without an assigned Server Profile.  Returned resources will display:

	* Device Name
	* Serial Number
	* Model
	* System ROM
	* iLO and its firmware
	* Server Profile
	* Status
	* Licensing


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Count &lt;int&gt;<p>
Return no more than the provided value.  Combining other parameters to filter may not return the requested count value.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-ServerHardwareType, -ServerProfileTemplate]
Provide the Server Hardware Type or Server Profile Template Object to filter for available server hardware.

<table><tbody><tr><td>Aliases</td><td>ServerHardwareType, ServerProfileTemplate</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the server hardware resource to be returned.  All server hardware resources will be returned if omitted.  Supports * wildcard character.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NoProfile &lt;SwitchParameter&gt;<p>
Optional parameter that can be used with the report parameter to display Servers without a Server Profile assigned.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerName &lt;String&gt;<p>
Specify the Server OS Name that is reported by the iLO.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerHardwareType [System.Management.Automation.PSCustomObject]**_

 Server Hardware Type resource object.

 _**HPOneView.ServerProfileTemplate [System.Management.Automation.PSCustomObject]**_

 Server Profile Template resource object.



### Return Values

_**HPOneView.ServerHardware [System.Management.Automation.PSCustomObject]**_

 

Single Server Hardware resource

 _**System.Collections.ArrayList**_

 

Multiple Server Hardware resources



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVServer
Name           Status   Power   Serial Number  Model       ROM            iLO       Server Profile   License
----           ------   -----   -------------  -----       ---            ---       --------------   -------
172.18.6.15    Disabled Off     MXQ1000207     DL360p Gen8 P71 02/10/2014 iLO4 2.03 No Profile       OneViewNoiLO
172.18.6.16    Unknown  Unknown MXQ1000307     DL380p Gen8                          No Profile       OneViewNoiLO
172.18.6.31    Disabled Off     MXQ1000208     DL360 Gen9  P89 07/11/2014 iLO4 2.03 No Profile       OneViewNoiLO
172.18.6.32    Unknown  Unknown MXQ1020307     DL380p Gen8                          No Profile       OneViewNoiLO
Encl1, bay 1   OK       Off     SGH100X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 Server Profile 1 OneView
Encl1, bay 11  OK       Off     SGH100X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 Server Profile 2 OneView
Encl1, bay 12  Disabled Off     SGH101X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 13  Disabled Off     SGH102X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 14  Disabled Off     SGH103X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 15  Disabled Off     SGH104X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 16  Disabled Off     SGH105X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 2   OK       Off     SGH101X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 My Profile       OneView
Encl1, bay 3   OK       Off     SGH100X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 Server Profile 3 OneView
Encl1, bay 4   OK       Off     SGH101X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 Server Profile 4 OneView
Encl1, bay 5   OK       Off     SGH102X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 Server Profile 5 OneView
Encl1, bay 6   Disabled Off     SGH103X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 7   Disabled Off     SGH104X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl1, bay 8   Disabled Off     SGH105X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 1   Disabled Off     SGH102X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 11  Disabled Off     SGH106X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 12  Disabled Off     SGH107X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 13  Disabled Off     SGH108X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 14  Disabled Off     SGH109X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 15  Disabled Off     SGH110X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 16  Disabled Off     SGH111X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 2   Disabled Off     SGH103X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 3   Disabled Off     SGH106X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 4   Disabled Off     SGH107X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 5   Disabled Off     SGH108X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 6   Disabled Off     SGH109X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 7   Disabled Off     SGH110X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView
Encl2, bay 8   Disabled Off     SGH111X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile       OneView

</pre>
Return all the server hardware managed by this appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$bay1 = Get-HPOVServer -Name "Encl1, bay 1"
</pre>
Return the server hardware resource with name "Encl1, bay 1".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVServer -NoProfile
Name           Status   Power   Serial Number  Model       ROM            iLO       Server Profile License
----           ------   -----   -------------  -----       ---            ---       -------------- -------
172.18.6.15    Disabled Off     MXQ1000207     DL360p Gen8 P71 02/10/2014 iLO4 2.03 No Profile     OneViewNoiLO
172.18.6.16    Unknown  Unknown MXQ1000307     DL380p Gen8                          No Profile     OneViewNoiLO
172.18.6.31    Disabled Off     MXQ1000208     DL360 Gen9  P89 07/11/2014 iLO4 2.03 No Profile     OneViewNoiLO
172.18.6.32    Unknown  Unknown MXQ1020307     DL380p Gen8                          No Profile     OneViewNoiLO
Encl1, bay 12  Disabled Off     SGH101X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 13  Disabled Off     SGH102X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 14  Disabled Off     SGH103X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 15  Disabled Off     SGH104X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 16  Disabled Off     SGH105X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 6   Disabled Off     SGH103X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 7   Disabled Off     SGH104X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl1, bay 8   Disabled Off     SGH105X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 1   Disabled Off     SGH102X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 11  Disabled Off     SGH106X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 12  Disabled Off     SGH107X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 13  Disabled Off     SGH108X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 14  Disabled Off     SGH109X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 15  Disabled Off     SGH110X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 16  Disabled Off     SGH111X5RN     BL460c Gen9 I36 08/26/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 2   Disabled Off     SGH103X7RN     BL660c Gen9 I32 08/03/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 3   Disabled Off     SGH106X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 4   Disabled Off     SGH107X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 5   Disabled Off     SGH108X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 6   Disabled Off     SGH109X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 7   Disabled Off     SGH110X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView
Encl2, bay 8   Disabled Off     SGH111X8RN     BL460c Gen8 I31 08/02/2014 iLO4 2.03 No Profile     OneView

</pre>
Display all server hardware resources without an assigned Server Profile.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
$sht = Get-HPOVServerHardwareType -Name "BL460c Gen9 1"
$AvailableServer = Get-HPOVServer -NoProfile -ServerHardwareType $sht | Select -first 1
</pre>
Return the first available server hardware of the Server Hardware Type requested.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
$AvailableServer = Get-HPOVServerProfileTemplate -Name "My Template 1" | Get-HPOVServer -NoProfile | Select -first 1
</pre>
Return the first available server hardware designed for the specific Server Profile Template.



### Related Links

* [Add-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVServer)
* [Convert-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfile)
* [Convert-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Convert-HPOVServerProfileTemplate)
* [ConvertTo-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/ConvertTo-HPOVServerProfileTemplate)
* [Copy-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVServerProfile)
* [Get-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerHardwareType)
* [Get-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerProfile)
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
* [Remove-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServer)
* [Remove-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfile)
* [Remove-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVServerProfileTemplate)
* [Restart-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Restart-HPOVServer)
* [Save-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfile)
* [Save-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Save-HPOVServerProfileTemplate)
* [Set-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerHardwareType)
* [Set-HPOVServerPower](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerPower)
* [Set-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfile)
* [Set-HPOVServerProfileTemplate](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVServerProfileTemplate)
* [Start-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Start-HPOVServer)
* [Stop-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Stop-HPOVServer)
* [Update-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServer)
* [Update-HPOVServerHardwareLicenseIntent](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerHardwareLicenseIntent)
* [Update-HPOVServerProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVServerProfile)


***
<div align=right><a href="#Top">Top</a></div>
