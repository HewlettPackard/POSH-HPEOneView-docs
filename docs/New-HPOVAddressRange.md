<a name="top"></a>
 <h4><a href="#2.00">Library Version 2.00</a></h4>
 <h4><a href="#1.20">Library Version 1.20</a></h4>
 <a name="2.00"></a>

### <u>HPE OneView 2.00 Library</u>

## New-HPOVAddressRange
<p>
Create an Address Range.

### SYNTAX
<p>
<pre><code>New-HPOVAddressRange [-PoolType] &lt;String&gt; [-RangeType] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVAddressRange [-PoolType] &lt;String&gt; [-RangeType] &lt;String&gt; [-Start] &lt;String&gt; [-End] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will assist with creating a new Address Pool Range.  The support Address Pool Types are MAC Addresses (VMAC), Fibre Channel/FCoE World Wide Name (VWWN), and Server Serial Number (VSN).

When creating new Address Pool Ranges, the Generated Range Type will allocate 1,048,576 MAC or WWN addresses, whereas it will allocate 46,656 Serial Numbers.

If you specify a Custom Range Type, you must specify a range of addresses no smaller than 128, and no more than 1,048,576 per range.

Custom Address Ranges must adhere to the following format rules:

* The MAC Address must be IEEE Compliant, and the format must be XH:XX:XX:XX:XX:XX, where H must be 0, 2, 4, 6, 8, A, C or E.

    Example:  12:22:33:44:55:00

* The WWN Address must be IEEE compliant, and the format must be 10:00:XH:XX:XX:XX:XX:XX, where H must be 0, 2, 4, 6, 8, A, C or E.

    Example:  10:00:6C:9F:06:B0:00:00

* The Serial Number addresses must start with VCU, and cannot contain more than 10 characters total.

    Example:  VCU1234567


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -End &lt;String&gt;<p>
The ending address in the range.  Cannot overlap with other address ranges.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -PoolType &lt;String&gt;<p>
Specify the Pool Type the new Range will be assinged to.  Accepted values are:

* VMAC
* VWWN
* VSN

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -RangeType &lt;String&gt;<p>
The type of Address Range to create.  Accepted values are:

* Generated
* Custom

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>Generated</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Start &lt;String&gt;<p>
The starting address in the range.  Cannot overlap with other address ranges.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 


### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Newly created and assigned Address Pool Range resource object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:> New-HPOVAddressRange -PoolType vmac -RangeType Generated
</pre>
Create a new Appliance generated VMAC Pool Range.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
PS C:> New-HPOVAddressRange vwwn Custom 10:00:6C:9F:06:B0:00:00 10:00:6C:9F:06:BF:FF:FF
</pre>
Create a new VWWN Address Pool Range with the custom addresses, for the MyAppliance1.domain.com appliance connection.



### Related Links

* [Get-HPOVAddressPool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPool)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="1.20"></a>

### <u>HPE OneView 1.20 Library</u>

## New-HPOVAddressRange
<p>
Create an Address Range.

### SYNTAX
<p>
<pre><code>New-HPOVAddressRange [-PoolType] &lt;PoolType&gt; [-RangeType] &lt;RangeType&gt; [-Start] &lt;Start&gt; [-End] &lt;End&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVAddressRange [-PoolType] &lt;PoolType&gt; [-RangeType] &lt;RangeType&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will assist with creating a new Address Pool Range.  The support Address Pool Types are MAC Addresses (VMAC), Fibre Channel/FCoE World Wide Name (VWWN), and Server Serial Number (VSN).

When creating new Address Pool Ranges, the Generated Range Type will allocate 1,048,576 MAC or WWN addresses, whereas it will allocate 46,656 Serial Numbers.

If you specify a Custom Range Type, you must specify a range of addresses no smaller than 128, and no more than 1,048,576 per range.

Custom Address Ranges must adhere to the following format rules:

    • The MAC Address must be IEEE Compliant, and the format must be XH:XX:XX:XX:XX:XX,
      where H must be 0, 2, 4, 6, 8, A, C or E.

      Example:  12:22:33:44:55:00

    • The WWN Address must be IEEE compliant, and the format must be 10:00:XH:XX:XX:XX:XX:XX,
      where H must be 0, 2, 4, 6, 8, A, C or E.

      Example:  10:00:6C:9F:06:B0:00:00

    • The Serial Number addresses must start with VCU, and cannot contain more than 10 characters total.

      Example:  VCU1234567


### Parameters

-PoolType &lt;PoolType&gt;<p>
Specify the Pool Type the new Range will be assinged to.  Accepted values are:

    • VMAC
    • VWWN
    • VSN

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -RangeType &lt;RangeType&gt;<p>
The type of Address Range to create.  Accepted values are:

    • Generated
    • Custom

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>Generated</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Start &lt;Start&gt;<p>
The starting address in the range.  Cannot overlap with other address ranges.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -End &lt;End&gt;<p>
The ending address in the range.  Cannot overlap with other address ranges.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>4</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_
 


### Return Values

_**System.Management.Automation.PSCustomObject**_
 
    Newly created and assigned Address Pool Range resource object.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:> New-HPOVAddressRange -PoolType vmac -RangeType Generated
</pre>
Create a new Appliance generated VMAC Pool Range.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
PS C:> New-HPOVAddressRange vwwn Custom 10:00:6C:9F:06:B0:00:00 10:00:6C:9F:06:BF:FF:FF
</pre>
Create a new VWWN Address Pool Range with the custom addresses.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
PS C:> New-HPOVAddressRange vmac Custom 12:22:33:44:55:00 12:22:33:44:66:FF
type                 : Range
name                 : VMAC
prefix               :
enabled              : True
startAddress         : 12:22:33:44:55:00
endAddress           : 12:22:33:44:66:FF
freeIdCount          : 4608
rangeCategory        : CUSTOM
totalCount           : 4608
allocatedIdCount     : 0
defaultRange         : False
allocatorUri         : /rest/id-pools/vmac/ranges/814bbeba-5f36-4a5b-a606-d65189eb8a1a/allocator
collectorUri         : /rest/id-pools/vmac/ranges/814bbeba-5f36-4a5b-a606-d65189eb8a1a/collector
reservedIdCount      : 0
freeFragmentUri      : /rest/id-pools/vmac/ranges/814bbeba-5f36-4a5b-a606-d65189eb8a1a/free-fragments?start=0&count=-1
allocatedFragmentUri : /rest/id-pools/vmac/ranges/814bbeba-5f36-4a5b-a606-d65189eb8a1a/allocated-fragments?start=0&count=-1
uri                  : /rest/id-pools/vmac/ranges/814bbeba-5f36-4a5b-a606-d65189eb8a1a
category             : id-range-VMAC
eTag                 : fc0f67d3-642f-4545-806a-f2e8c9441536
created              : 2014-03-07 20:04:34.319
modified             : 2014-03-07 20:04:34.319

</pre>
Create a new VMAC Address Pool Range with the custom addresses, and the returned new Address Range resource object created.



### Related Links

* [Get-HPOVAddressPool](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAddressPool)


***
<div align=right><a href="#Top">Top</a></div>
