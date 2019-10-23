<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVEnclosure
<p>
Retrieve Enclosure resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVEnclosure [-Name] &lt;String&gt;[ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVEnclosure [-Name] &lt;String&gt;[ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-Report] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVEnclosure [-Name] &lt;String&gt;[ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [-exportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of enclosure hardware resources which have the specified name.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the enclosure hardware resource to be returned.  All enclosure hardware resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Report &lt;SwitchParameter&gt;<p>
Generate report of enclosure, including device bays, interconnect bays, and reported firmware for components.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases [-x, -export]
Full path and file name to save the output of Get-HPOVEnclosure.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Object**_

 

Enclosure Report

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 

The matching enclosure hardware resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$enclosures = Get-HPOVEnclosure
</pre>
Return all the enclosure hardware managed by this appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$enclosure = Get-HPOVEnclosure -Name "A"
</pre>
Return the enclosure hardware resource with name "A".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVEnclosure
Enclosure Name Serial Number Enclosure Model                Rack Name State      EG          Populated Bays
-------------- ------------- ---------------                --------- -----      --          --------------
Encl1          SGH100X6J1    BladeSystem c7000 Enclosure G2 Rack-173  Monitored  Default EG1 16/16
Encl2          SGH102X6J1    BladeSystem c7000 Enclosure G2 Rack-173  Monitored  Default EG1 9/16

</pre>
Display a brief list of the enclosures managed or monitored by the appliance.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVEnclosure -Name Encl1 -report
Enclosure Name Serial Number Enclosure Model                Rack Name FW Managed Baseline Name
-------------- ------------- ---------------                --------- ---------- -------------
Encl1          SGH100X6J1    BladeSystem c7000 Enclosure G2 Rack-173       False

Licensing
---------
OneView

OA Bay Role    IP Address  Firmware Version
------ ----    ----------  ----------------
        1 Active  172.18.1.11 4.01 April 01 2013
        2 Standby 172.18.1.12 4.01 April 01 2013

Server Name   Serial Number Model       System ROM     iLO Firmware Version  Server Profile Licensing
-----------   ------------- -----       ----------     --------------------  -------------- ---------
Encl1, bay 1  SGH100X5RN    BL660c Gen8 I32 05/30/2012 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 11 SGH106X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 11     OneView
Encl1, bay 12 SGH107X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 12     OneView
Encl1, bay 13 SGH108X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 13     OneView
Encl1, bay 14 SGH109X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 14     OneView
Encl1, bay 15 SGH110X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 15     OneView
Encl1, bay 16 SGH111X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 16     OneView
Encl1, bay 2  SGH101X5RN    BL660c Gen8 I32 05/30/2012 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 3  SGH100X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 test 2         OneView
Encl1, bay 4  SGH101X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 5  SGH102X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 6  SGH103X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 7  SGH104X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 8  SGH105X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView

Interconnect Name     Module                               Serial Number Firmware Version
-----------------     ------                               ------------- ----------------
Encl1, interconnect 1 HP VC FlexFabric 10Gb/24-Port Module WECFSED100    4.10
Encl1, interconnect 2 HP VC FlexFabric 10Gb/24-Port Module WECFSED101    4.10

        Interconnect Name     Logical Interconnect State      Status Consistency state
----- -----------------     -------------------- -----      ------ -----------------
        Encl1, interconnect 1 Encl1-LI             Configured OK     Consistent
        Encl1, interconnect 2 Encl1-LI             Configured OK     Consistent
        
        
</pre>
Generate a report of Encl1.



### Related Links

* [Add-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosure)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosure)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)
* [Update-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVEnclosure)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVEnclosure
<p>
Retrieve Enclosure resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVEnclosure [-Name] &lt;String&gt;[ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVEnclosure [-Name] &lt;String&gt;[ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-Report] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVEnclosure [-Name] &lt;String&gt;[ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [-exportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of enclosure hardware resources which have the specified name.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the enclosure hardware resource to be returned.  All enclosure hardware resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Report &lt;SwitchParameter&gt;<p>
Generate report of enclosure, including device bays, interconnect bays, and reported firmware for components.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases [-x, -export]
Full path and file name to save the output of Get-HPOVEnclosure.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Object**_

 

Enclosure Report

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 

The matching enclosure hardware resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$enclosures = Get-HPOVEnclosure
</pre>
Return all the enclosure hardware managed by this appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$enclosure = Get-HPOVEnclosure -Name "A"
</pre>
Return the enclosure hardware resource with name "A".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVEnclosure
Enclosure Name Serial Number Enclosure Model                Rack Name State      EG          Populated Bays
-------------- ------------- ---------------                --------- -----      --          --------------
Encl1          SGH100X6J1    BladeSystem c7000 Enclosure G2 Rack-173  Monitored  Default EG1 16/16
Encl2          SGH102X6J1    BladeSystem c7000 Enclosure G2 Rack-173  Monitored  Default EG1 9/16

</pre>
Display a brief list of the enclosures managed or monitored by the appliance.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVEnclosure -Name Encl1 -report
Enclosure Name Serial Number Enclosure Model                Rack Name FW Managed Baseline Name
-------------- ------------- ---------------                --------- ---------- -------------
Encl1          SGH100X6J1    BladeSystem c7000 Enclosure G2 Rack-173       False

Licensing
---------
OneView

OA Bay Role    IP Address  Firmware Version
------ ----    ----------  ----------------
        1 Active  172.18.1.11 4.01 April 01 2013
        2 Standby 172.18.1.12 4.01 April 01 2013

Server Name   Serial Number Model       System ROM     iLO Firmware Version  Server Profile Licensing
-----------   ------------- -----       ----------     --------------------  -------------- ---------
Encl1, bay 1  SGH100X5RN    BL660c Gen8 I32 05/30/2012 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 11 SGH106X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 11     OneView
Encl1, bay 12 SGH107X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 12     OneView
Encl1, bay 13 SGH108X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 13     OneView
Encl1, bay 14 SGH109X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 14     OneView
Encl1, bay 15 SGH110X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 15     OneView
Encl1, bay 16 SGH111X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 16     OneView
Encl1, bay 2  SGH101X5RN    BL660c Gen8 I32 05/30/2012 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 3  SGH100X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 test 2         OneView
Encl1, bay 4  SGH101X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 5  SGH102X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 6  SGH103X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 7  SGH104X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 8  SGH105X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView

Interconnect Name     Module                               Serial Number Firmware Version
-----------------     ------                               ------------- ----------------
Encl1, interconnect 1 HP VC FlexFabric 10Gb/24-Port Module WECFSED100    4.10
Encl1, interconnect 2 HP VC FlexFabric 10Gb/24-Port Module WECFSED101    4.10

        Interconnect Name     Logical Interconnect State      Status Consistency state
----- -----------------     -------------------- -----      ------ -----------------
        Encl1, interconnect 1 Encl1-LI             Configured OK     Consistent
        Encl1, interconnect 2 Encl1-LI             Configured OK     Consistent
        
        
</pre>
Generate a report of Encl1.



### Related Links

* [Add-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosure)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosure)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)
* [Update-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVEnclosure)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVEnclosure
<p>
Retrieve Enclosure resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVEnclosure [-Name] &lt;String&gt;[ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVEnclosure [-Name] &lt;String&gt;[ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;][ [-Report] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVEnclosure [-Name] &lt;String&gt;[ [-Scope] &lt;Object&gt;][ [-Label] &lt;String&gt;][ [-ApplianceConnection] &lt;Array&gt;] [-exportFile] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of enclosure hardware resources which have the specified name.


### Parameters

-ApplianceConnection &lt;Array&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the enclosure hardware resource to be returned.  All enclosure hardware resources will be returned if omitted.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Report &lt;SwitchParameter&gt;<p>
Generate report of enclosure, including device bays, interconnect bays, and reported firmware for components.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Scope &lt;Object&gt;<p>
Filter resources based on provided Scope membership.  By default, all resources for the accounts Active Permissions will be displayed.  Allowed values:

	* AllResources
	* AllResourcesInScope
	* HPOneView.Appliance.ScopeCollection
	* HPOneView.Appliance.ConnectionPermission

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>AllResourcesInScope</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -exportFile &lt;String&gt;<p>
Aliases [-x, -export]
Full path and file name to save the output of Get-HPOVEnclosure.

<table><tbody><tr><td>Aliases</td><td>x, export</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Object**_

 

Enclosure Report

 _**HPOneView.Enclosure [System.Management.Automation.PSCustomObject]**_

 

The matching enclosure hardware resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$enclosures = Get-HPOVEnclosure
</pre>
Return all the enclosure hardware managed by this appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$enclosure = Get-HPOVEnclosure -Name "A"
</pre>
Return the enclosure hardware resource with name "A".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Get-HPOVEnclosure
Enclosure Name Serial Number Enclosure Model                Rack Name State      EG          Populated Bays
-------------- ------------- ---------------                --------- -----      --          --------------
Encl1          SGH100X6J1    BladeSystem c7000 Enclosure G2 Rack-173  Monitored  Default EG1 16/16
Encl2          SGH102X6J1    BladeSystem c7000 Enclosure G2 Rack-173  Monitored  Default EG1 9/16

</pre>
Display a brief list of the enclosures managed or monitored by the appliance.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Get-HPOVEnclosure -Name Encl1 -report
Enclosure Name Serial Number Enclosure Model                Rack Name FW Managed Baseline Name
-------------- ------------- ---------------                --------- ---------- -------------
Encl1          SGH100X6J1    BladeSystem c7000 Enclosure G2 Rack-173       False

Licensing
---------
OneView

OA Bay Role    IP Address  Firmware Version
------ ----    ----------  ----------------
        1 Active  172.18.1.11 4.01 April 01 2013
        2 Standby 172.18.1.12 4.01 April 01 2013

Server Name   Serial Number Model       System ROM     iLO Firmware Version  Server Profile Licensing
-----------   ------------- -----       ----------     --------------------  -------------- ---------
Encl1, bay 1  SGH100X5RN    BL660c Gen8 I32 05/30/2012 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 11 SGH106X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 11     OneView
Encl1, bay 12 SGH107X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 12     OneView
Encl1, bay 13 SGH108X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 13     OneView
Encl1, bay 14 SGH109X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 14     OneView
Encl1, bay 15 SGH110X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 15     OneView
Encl1, bay 16 SGH111X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 Profile 16     OneView
Encl1, bay 2  SGH101X5RN    BL660c Gen8 I32 05/30/2012 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 3  SGH100X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 test 2         OneView
Encl1, bay 4  SGH101X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 5  SGH102X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 6  SGH103X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 7  SGH104X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView
Encl1, bay 8  SGH105X8RN    BL460c Gen8 I27 09/30/2011 iLO4 1.30 Jul 02 2013 No Profile     OneView

Interconnect Name     Module                               Serial Number Firmware Version
-----------------     ------                               ------------- ----------------
Encl1, interconnect 1 HP VC FlexFabric 10Gb/24-Port Module WECFSED100    4.10
Encl1, interconnect 2 HP VC FlexFabric 10Gb/24-Port Module WECFSED101    4.10

        Interconnect Name     Logical Interconnect State      Status Consistency state
----- -----------------     -------------------- -----      ------ -----------------
        Encl1, interconnect 1 Encl1-LI             Configured OK     Consistent
        Encl1, interconnect 2 Encl1-LI             Configured OK     Consistent
        
        
</pre>
Generate a report of Encl1.



### Related Links

* [Add-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVEnclosure)
* [Get-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosureGroup)
* [New-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVEnclosureGroup)
* [Remove-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosure)
* [Remove-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVEnclosureGroup)
* [Reset-HPOVEnclosureDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Reset-HPOVEnclosureDevice)
* [Set-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosure)
* [Set-HPOVEnclosureActiveFLM](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureActiveFLM)
* [Set-HPOVEnclosureGroup](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVEnclosureGroup)
* [Update-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Update-HPOVEnclosure)


***
<div align=right><a href="#Top">Top</a></div>
