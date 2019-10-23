<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVAddressPoolRange
<p>
Retrieve Address Pool Range information.

### SYNTAX
<p>
<pre><code>Get-HPOVAddressPoolRange [-Type] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVAddressPoolRange [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
THis Cmdlet will display configured Address Pool Ranges defined on an HPE OneView appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Pool]

Specify the type of Address Range Pool, or the Address Pool object fro Get-HPOVAddressPool.  Allowed values are:

	* IPv4
	* VMAC
	* VWWN
	* VSN
	* All

Default: All

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>all</td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;Object&gt;<p>
Aliases [-Pool]

Specify the type of Address Range Pool, or the Address Pool object fro Get-HPOVAddressPool.  Allowed values are:

	* IPv4
	* VMAC
	* VWWN
	* VSN
	* All

Default: All

<table><tbody><tr><td>Aliases</td><td>Pool</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>all</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.AddressPool [System.Management.Automation.PSCustomObject]**_

 Address Pool resource object.



### Return Values

_**HPOneView.Appliance.AddressPoolRange [System.Management.Automation.PSCustomObject]**_

 

Single Address Pool Range object.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.AddressPoolRange&gt;**_

 

Collection of Address Pool Range(s).



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
[PS] C:\> Get-HPOVAddressPoolRange
Name Enabled Category  Total   Allocated Available Reserved Start                   End
---- ------- --------  -----   --------- --------- -------- -----                   ---
VMAC True    Generated 1048576 2         1048574   0        62:79:84:50:00:00       62:79:84:5F:FF:FF
VWWN True    Generated 1048576 0         1048576   0        10:00:92:5a:1f:b0:00:00 10:00:92:5a:1f:bf:ff:ff
VSN  True    Generated 46656   1         46655     0        VCGBWAB000              VCGBWABZZZ
VMAC True    Generated 1048576 0         1048576   0        F6:38:E6:90:00:00       F6:38:E6:9F:FF:FF
VWWN True    Generated 1048576 0         1048576   0        10:00:ce:58:fa:50:00:00 10:00:ce:58:fa:5f:ff:ff
VSN  True    Generated 46656   0         46656     0        VCGA290000              VCGA290ZZZ

</pre>
Get all configured Address Pool Ranges from all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
[PS] C:\> Get-HPOVAddressPoolRange vmac
Name Enabled Category  Total   Allocated Available Reserved Start             End
---- ------- --------  -----   --------- --------- -------- -----             ---
VMAC True    Generated 1048576 2         1048574   0        62:79:84:50:00:00 62:79:84:5F:FF:FF
VMAC True    Generated 1048576 0         1048576   0        F6:38:E6:90:00:00 F6:38:E6:9F:FF:FF

</pre>
Get a specific Address Pool Range type (VMAC) from all connected appliances.



### Related Links

* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange)
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVAddressPoolRange
<p>
Retrieve Address Pool Range information.

### SYNTAX
<p>
<pre><code>Get-HPOVAddressPoolRange [-Type] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVAddressPoolRange [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
THis Cmdlet will display configured Address Pool Ranges defined on an HPE OneView appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Pool]

Specify the type of Address Range Pool, or the Address Pool object fro Get-HPOVAddressPool.  Allowed values are:

	* IPv4
	* VMAC
	* VWWN
	* VSN
	* All

Default: All

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>all</td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;Object&gt;<p>
Aliases [-Pool]

Specify the type of Address Range Pool, or the Address Pool object fro Get-HPOVAddressPool.  Allowed values are:

	* IPv4
	* VMAC
	* VWWN
	* VSN
	* All

Default: All

<table><tbody><tr><td>Aliases</td><td>Pool</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>all</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.AddressPool [System.Management.Automation.PSCustomObject]**_

 Address Pool resource object.



### Return Values

_**HPOneView.Appliance.AddressPoolRange [System.Management.Automation.PSCustomObject]**_

 

Single Address Pool Range object.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.AddressPoolRange&gt;**_

 

Collection of Address Pool Range(s).



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
[PS] C:\> Get-HPOVAddressPoolRange
Name Enabled Category  Total   Allocated Available Reserved Start                   End
---- ------- --------  -----   --------- --------- -------- -----                   ---
VMAC True    Generated 1048576 2         1048574   0        62:79:84:50:00:00       62:79:84:5F:FF:FF
VWWN True    Generated 1048576 0         1048576   0        10:00:92:5a:1f:b0:00:00 10:00:92:5a:1f:bf:ff:ff
VSN  True    Generated 46656   1         46655     0        VCGBWAB000              VCGBWABZZZ
VMAC True    Generated 1048576 0         1048576   0        F6:38:E6:90:00:00       F6:38:E6:9F:FF:FF
VWWN True    Generated 1048576 0         1048576   0        10:00:ce:58:fa:50:00:00 10:00:ce:58:fa:5f:ff:ff
VSN  True    Generated 46656   0         46656     0        VCGA290000              VCGA290ZZZ

</pre>
Get all configured Address Pool Ranges from all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
[PS] C:\> Get-HPOVAddressPoolRange vmac
Name Enabled Category  Total   Allocated Available Reserved Start             End
---- ------- --------  -----   --------- --------- -------- -----             ---
VMAC True    Generated 1048576 2         1048574   0        62:79:84:50:00:00 62:79:84:5F:FF:FF
VMAC True    Generated 1048576 0         1048576   0        F6:38:E6:90:00:00 F6:38:E6:9F:FF:FF

</pre>
Get a specific Address Pool Range type (VMAC) from all connected appliances.



### Related Links

* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange)
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVAddressPoolRange
<p>
Retrieve Address Pool Range information.

### SYNTAX
<p>
<pre><code>Get-HPOVAddressPoolRange [-Type] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVAddressPoolRange [-InputObject] &lt;Object&gt;[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
THis Cmdlet will display configured Address Pool Ranges defined on an HPE OneView appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InputObject &lt;Object&gt;<p>
Aliases [-Pool]

Specify the type of Address Range Pool, or the Address Pool object fro Get-HPOVAddressPool.  Allowed values are:

	* IPv4
	* VMAC
	* VWWN
	* VSN
	* All

Default: All

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>all</td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Type &lt;Object&gt;<p>
Aliases [-Pool]

Specify the type of Address Range Pool, or the Address Pool object fro Get-HPOVAddressPool.  Allowed values are:

	* IPv4
	* VMAC
	* VWWN
	* VSN
	* All

Default: All

<table><tbody><tr><td>Aliases</td><td>Pool</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>all</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Appliance.AddressPool [System.Management.Automation.PSCustomObject]**_

 Address Pool resource object.



### Return Values

_**HPOneView.Appliance.AddressPoolRange [System.Management.Automation.PSCustomObject]**_

 

Single Address Pool Range object.

 _**System.Collections.ArrayList &lt;HPOneView.Appliance.AddressPoolRange&gt;**_

 

Collection of Address Pool Range(s).



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
[PS] C:\> Get-HPOVAddressPoolRange
Name Enabled Category  Total   Allocated Available Reserved Start                   End
---- ------- --------  -----   --------- --------- -------- -----                   ---
VMAC True    Generated 1048576 2         1048574   0        62:79:84:50:00:00       62:79:84:5F:FF:FF
VWWN True    Generated 1048576 0         1048576   0        10:00:92:5a:1f:b0:00:00 10:00:92:5a:1f:bf:ff:ff
VSN  True    Generated 46656   1         46655     0        VCGBWAB000              VCGBWABZZZ
VMAC True    Generated 1048576 0         1048576   0        F6:38:E6:90:00:00       F6:38:E6:9F:FF:FF
VWWN True    Generated 1048576 0         1048576   0        10:00:ce:58:fa:50:00:00 10:00:ce:58:fa:5f:ff:ff
VSN  True    Generated 46656   0         46656     0        VCGA290000              VCGA290ZZZ

</pre>
Get all configured Address Pool Ranges from all connected appliances.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
[PS] C:\> Get-HPOVAddressPoolRange vmac
Name Enabled Category  Total   Allocated Available Reserved Start             End
---- ------- --------  -----   --------- --------- -------- -----             ---
VMAC True    Generated 1048576 2         1048574   0        62:79:84:50:00:00 62:79:84:5F:FF:FF
VMAC True    Generated 1048576 0         1048576   0        F6:38:E6:90:00:00 F6:38:E6:9F:FF:FF

</pre>
Get a specific Address Pool Range type (VMAC) from all connected appliances.



### Related Links

* [New-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVAddressPoolRange)
* [Remove-HPOVAddressPoolRange](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVAddressPoolRange)


***
<div align=right><a href="#Top">Top</a></div>
