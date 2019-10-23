<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVUnmanagedDevice
<p>
Get Unmanaged Devices.

### SYNTAX
<p>
<pre><code>Get-HPOVUnmanagedDevice [-Name] &lt;String&gt;[ [-List] &lt;SwitchParameter&gt;][ [-Label] &lt;String&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides administrators with the capability to define unmanaged devices to them place within Racks, in order to provide a more realistic and complete data center layout.  This cmdlet will retrieve all or a specified Unmanaged Device.  A report switch is provided to display the output in an easier to read format.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -List &lt;SwitchParameter&gt;<p>
Deprecated parameter.  CMDLET now defaults to Format-Table output.

<table><tbody><tr><td>Aliases</td><td>report</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Unmanaged Device.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.UnmanagedResource [System.Management.Automation.PSCustomObject]**_

 

Single Unmanaged Device resource object

 _**System.Collections.ArrayList**_

 

Multiple Unmanaged Device resource objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVUnmanagedDevice
</pre>
Get all unmanaged devices.



### Related Links

* [New-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUnmanagedDevice)
* [Remove-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUnmanagedDevice)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVUnmanagedDevice
<p>
Get Unmanaged Devices.

### SYNTAX
<p>
<pre><code>Get-HPOVUnmanagedDevice [-Name] &lt;String&gt;[ [-List] &lt;SwitchParameter&gt;][ [-Label] &lt;String&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides administrators with the capability to define unmanaged devices to them place within Racks, in order to provide a more realistic and complete data center layout.  This cmdlet will retrieve all or a specified Unmanaged Device.  A report switch is provided to display the output in an easier to read format.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -List &lt;SwitchParameter&gt;<p>
Deprecated parameter.  CMDLET now defaults to Format-Table output.

<table><tbody><tr><td>Aliases</td><td>report</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Unmanaged Device.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.UnmanagedResource [System.Management.Automation.PSCustomObject]**_

 

Single Unmanaged Device resource object

 _**System.Collections.ArrayList**_

 

Multiple Unmanaged Device resource objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVUnmanagedDevice
</pre>
Get all unmanaged devices.



### Related Links

* [New-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUnmanagedDevice)
* [Remove-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUnmanagedDevice)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVUnmanagedDevice
<p>
Get Unmanaged Devices.

### SYNTAX
<p>
<pre><code>Get-HPOVUnmanagedDevice [-Name] &lt;String&gt;[ [-List] &lt;SwitchParameter&gt;][ [-Label] &lt;String&gt;] [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides administrators with the capability to define unmanaged devices to them place within Racks, in order to provide a more realistic and complete data center layout.  This cmdlet will retrieve all or a specified Unmanaged Device.  A report switch is provided to display the output in an easier to read format.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Label &lt;String&gt;<p>
Specify the label associated with resources.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -List &lt;SwitchParameter&gt;<p>
Deprecated parameter.  CMDLET now defaults to Format-Table output.

<table><tbody><tr><td>Aliases</td><td>report</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Unmanaged Device.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.UnmanagedResource [System.Management.Automation.PSCustomObject]**_

 

Single Unmanaged Device resource object

 _**System.Collections.ArrayList**_

 

Multiple Unmanaged Device resource objects



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVUnmanagedDevice
</pre>
Get all unmanaged devices.



### Related Links

* [New-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVUnmanagedDevice)
* [Remove-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUnmanagedDevice)


***
<div align=right><a href="#Top">Top</a></div>
