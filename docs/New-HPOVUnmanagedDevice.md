<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVUnmanagedDevice
<p>
Create an Unmanaged Device.

### SYNTAX
<p>
<pre><code>New-HPOVUnmanagedDevice [-Name] &lt;String&gt; [-Model] &lt;String&gt; [-MaxPower] &lt;Int32&gt; [-Height] &lt;Int32&gt; [-MacAddress] &lt;String&gt; [-IPv4Address] &lt;String&gt; [-IPv6Address] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides administrators with the capability to define unmanaged devices to them place within Racks, in order to provide a more realistic and complete data center layout.  Creating a device does not provide the ability to manage it from HPE OneView.  The administrator will need to specify static characteristics of the device being added.  The unmanaged device can then be assigned into the appropriate rack manually.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Height &lt;Int32&gt;<p>
Rack Unit height of the Unmanaged Device.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Address &lt;String&gt;<p>
Provide the IPv4 Address value of the management interface.  This value does not provide a method for an HPE OneView appliance to communicate with the management interface.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Address &lt;String&gt;<p>
Provide the IPv6 Address value of the management interface.  This value does not provide a method for an HPE OneView appliance to communicate with the management interface.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MacAddress &lt;String&gt;<p>
Provide the management interface L2 address.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaxPower &lt;Int32&gt;<p>
The maximum power consumption of the Unmanaged Device.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Model &lt;String&gt;<p>
The device model.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Unmanaged Device.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**HPOneView.UnmanagedResource [System.Management.Automation.PSCustomObject]**_

 

Newly created Unmanaged Device resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVUnmanagedDevice -name "Unmanaged-SRVR1" -model "ProLiant DL380 G6" -height 2 -maxpower 750 -IPv4Address 10.154.1.10
</pre>
Create a new unmanaged server device.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVUnmanagedDevice -name "HPN5900CP1" -model "HPN 5900CP" -height 1 -maxpower 260 -IPv4Address 172.18.254.99 "MyAppliance.domain.com"
</pre>
Create a new unmanaged switch device.



### Related Links

* [Get-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUnmanagedDevice)
* [Remove-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUnmanagedDevice)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVUnmanagedDevice
<p>
Create an Unmanaged Device.

### SYNTAX
<p>
<pre><code>New-HPOVUnmanagedDevice [-Name] &lt;String&gt; [-Model] &lt;String&gt; [-MaxPower] &lt;Int32&gt; [-Height] &lt;Int32&gt; [-MacAddress] &lt;String&gt; [-IPv4Address] &lt;String&gt; [-IPv6Address] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides administrators with the capability to define unmanaged devices to them place within Racks, in order to provide a more realistic and complete data center layout.  Creating a device does not provide the ability to manage it from HPE OneView.  The administrator will need to specify static characteristics of the device being added.  The unmanaged device can then be assigned into the appropriate rack manually.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Height &lt;Int32&gt;<p>
Rack Unit height of the Unmanaged Device.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Address &lt;String&gt;<p>
Provide the IPv4 Address value of the management interface.  This value does not provide a method for an HPE OneView appliance to communicate with the management interface.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Address &lt;String&gt;<p>
Provide the IPv6 Address value of the management interface.  This value does not provide a method for an HPE OneView appliance to communicate with the management interface.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MacAddress &lt;String&gt;<p>
Provide the management interface L2 address.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaxPower &lt;Int32&gt;<p>
The maximum power consumption of the Unmanaged Device.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Model &lt;String&gt;<p>
The device model.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Unmanaged Device.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**HPOneView.UnmanagedResource [System.Management.Automation.PSCustomObject]**_

 

Newly created Unmanaged Device resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVUnmanagedDevice -name "Unmanaged-SRVR1" -model "ProLiant DL380 G6" -height 2 -maxpower 750 -IPv4Address 10.154.1.10
</pre>
Create a new unmanaged server device.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVUnmanagedDevice -name "HPN5900CP1" -model "HPN 5900CP" -height 1 -maxpower 260 -IPv4Address 172.18.254.99 "MyAppliance.domain.com"
</pre>
Create a new unmanaged switch device.



### Related Links

* [Get-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUnmanagedDevice)
* [Remove-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUnmanagedDevice)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVUnmanagedDevice
<p>
Create an Unmanaged Device.

### SYNTAX
<p>
<pre><code>New-HPOVUnmanagedDevice [-Name] &lt;String&gt; [-Model] &lt;String&gt; [-MaxPower] &lt;Int32&gt; [-Height] &lt;Int32&gt; [-MacAddress] &lt;String&gt; [-IPv4Address] &lt;String&gt; [-IPv6Address] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
HPE OneView provides administrators with the capability to define unmanaged devices to them place within Racks, in order to provide a more realistic and complete data center layout.  Creating a device does not provide the ability to manage it from HPE OneView.  The administrator will need to specify static characteristics of the device being added.  The unmanaged device can then be assigned into the appropriate rack manually.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Height &lt;Int32&gt;<p>
Rack Unit height of the Unmanaged Device.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>1</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv4Address &lt;String&gt;<p>
Provide the IPv4 Address value of the management interface.  This value does not provide a method for an HPE OneView appliance to communicate with the management interface.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -IPv6Address &lt;String&gt;<p>
Provide the IPv6 Address value of the management interface.  This value does not provide a method for an HPE OneView appliance to communicate with the management interface.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MacAddress &lt;String&gt;<p>
Provide the management interface L2 address.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -MaxPower &lt;Int32&gt;<p>
The maximum power consumption of the Unmanaged Device.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>0</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Model &lt;String&gt;<p>
The device model.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;String&gt;<p>
The name of the Unmanaged Device.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**HPOneView.UnmanagedResource [System.Management.Automation.PSCustomObject]**_

 

Newly created Unmanaged Device resource



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
New-HPOVUnmanagedDevice -name "Unmanaged-SRVR1" -model "ProLiant DL380 G6" -height 2 -maxpower 750 -IPv4Address 10.154.1.10
</pre>
Create a new unmanaged server device.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVUnmanagedDevice -name "HPN5900CP1" -model "HPN 5900CP" -height 1 -maxpower 260 -IPv4Address 172.18.254.99 "MyAppliance.domain.com"
</pre>
Create a new unmanaged switch device.



### Related Links

* [Get-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVUnmanagedDevice)
* [Remove-HPOVUnmanagedDevice](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVUnmanagedDevice)


***
<div align=right><a href="#Top">Top</a></div>
