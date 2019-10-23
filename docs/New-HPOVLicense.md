<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## New-HPOVLicense
<p>
Install license on the appliance

### SYNTAX
<p>
<pre><code>New-HPOVLicense [-LicenseKey] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLicense [-File] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will install licenses on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -File &lt;String&gt;<p>
A text file with each license key on a new line that will be installed on the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LicenseKey &lt;String&gt;<p>
Used for adding license keys one at a time, or if only a single license key needs to be added.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 License key in String Format, from Get-Content or an Array of String



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The License resource just added to the apliance



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$license = "FC9E D9MA H9PA GTVZ C7B5 HWWB Y9JL KHPL B89H MZVU DXAU 9CSM GHTG L762 2F25 HJF9 KJVT D5TM EFVW TZNJ FGTM NQ6G 2P2J 9G82 ZJKZ EWLR VW8A Y5A4 N2SK H1MQ XJJL LUQH ZUWD 9ATC NJ79 CEJC 5S86 FC4X EKSZ X4CP XZLU FSXS FKS6 KKCE 4NMU FPN5 N82E Z2RX 3QTM EFQC 29JK 29MC "ORDER_101613 E1Y94A HP_OV_3yr_24x7_Supp_Phys_1_Svr_Lic EONEJTCDT4FJ"_35HZP-CYMTH-W414S-2DGKZ-S6MPH"
New-HPOVlicense $license

</pre>
Install license on the appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVlicense -file c:\licenses.txt
Install licenses from a file.

GC C:\licenses.txt | New-HPOVlicense

</pre>
Install licenses read from a file by Get-Content.



### Related Links

* [Get-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLicense)
* [Remove-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLicense)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## New-HPOVLicense
<p>
Install license on the appliance

### SYNTAX
<p>
<pre><code>New-HPOVLicense [-LicenseKey] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLicense [-File] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will install licenses on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -File &lt;String&gt;<p>
A text file with each license key on a new line that will be installed on the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LicenseKey &lt;String&gt;<p>
Used for adding license keys one at a time, or if only a single license key needs to be added.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 License key in String Format, from Get-Content or an Array of String



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The License resource just added to the apliance



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$license = "FC9E D9MA H9PA GTVZ C7B5 HWWB Y9JL KHPL B89H MZVU DXAU 9CSM GHTG L762 2F25 HJF9 KJVT D5TM EFVW TZNJ FGTM NQ6G 2P2J 9G82 ZJKZ EWLR VW8A Y5A4 N2SK H1MQ XJJL LUQH ZUWD 9ATC NJ79 CEJC 5S86 FC4X EKSZ X4CP XZLU FSXS FKS6 KKCE 4NMU FPN5 N82E Z2RX 3QTM EFQC 29JK 29MC "ORDER_101613 E1Y94A HP_OV_3yr_24x7_Supp_Phys_1_Svr_Lic EONEJTCDT4FJ"_35HZP-CYMTH-W414S-2DGKZ-S6MPH"
New-HPOVlicense $license

</pre>
Install license on the appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVlicense -file c:\licenses.txt
Install licenses from a file.

GC C:\licenses.txt | New-HPOVlicense

</pre>
Install licenses read from a file by Get-Content.



### Related Links

* [Get-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLicense)
* [Remove-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLicense)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## New-HPOVLicense
<p>
Install license on the appliance

### SYNTAX
<p>
<pre><code>New-HPOVLicense [-LicenseKey] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVLicense [-File] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will install licenses on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -File &lt;String&gt;<p>
A text file with each license key on a new line that will be installed on the appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -LicenseKey &lt;String&gt;<p>
Used for adding license keys one at a time, or if only a single license key needs to be added.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.String**_

 License key in String Format, from Get-Content or an Array of String



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

The License resource just added to the apliance



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
$license = "FC9E D9MA H9PA GTVZ C7B5 HWWB Y9JL KHPL B89H MZVU DXAU 9CSM GHTG L762 2F25 HJF9 KJVT D5TM EFVW TZNJ FGTM NQ6G 2P2J 9G82 ZJKZ EWLR VW8A Y5A4 N2SK H1MQ XJJL LUQH ZUWD 9ATC NJ79 CEJC 5S86 FC4X EKSZ X4CP XZLU FSXS FKS6 KKCE 4NMU FPN5 N82E Z2RX 3QTM EFQC 29JK 29MC "ORDER_101613 E1Y94A HP_OV_3yr_24x7_Supp_Phys_1_Svr_Lic EONEJTCDT4FJ"_35HZP-CYMTH-W414S-2DGKZ-S6MPH"
New-HPOVlicense $license

</pre>
Install license on the appliance connection.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
New-HPOVlicense -file c:\licenses.txt
Install licenses from a file.

GC C:\licenses.txt | New-HPOVlicense

</pre>
Install licenses read from a file by Get-Content.



### Related Links

* [Get-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVLicense)
* [Remove-HPOVLicense](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVLicense)


***
<div align=right><a href="#Top">Top</a></div>
