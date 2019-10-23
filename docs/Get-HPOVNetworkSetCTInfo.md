<a name="top"></a>
 <h4><a href="#1.20">Library Version 1.20</a></h4>
 <a name="1.20"></a>

### <u>HPE OneView 1.20 Library</u>

## Get-HPOVNetworkSetCTInfo
<p>
Helper function to retrieve the Connection Template for a specific Network Set or collection of Network Sets.

### SYNTAX
<p>
<pre><code>Get-HPOVNetworkSetCTInfo [-netsets] &lt;netsets&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Add the default connection information to the network set resource. 
Note that the connection information is already included in objects returned from New-HPOVNetworkSet or Get-HPOVNetworkSet; this call is normally only needed when the network resource has been returned from a call to Send-HPOVRequest.


### Parameters

-netsets &lt;netsets&gt;<p>
A collection of network set resources.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_
 


### Return Values

_**System.Management.Automation.PSCustomObject**_
 
   Single Network Set

 _**System.Array**_
 
Multiple Network Sets

 _**The network set resources with included default connection information.**_
 

 The network set resources with included default connection information.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:\> $netset = Send-HPOVRequest /rest/network-sets/fbfd5640-552e-4f2c-818d-7c7c60837665
PS C:\> Get-HPOVNetworkSetCTInfo $netset
</pre>
Get the network set resource & connection information for /rest/network-sets/fbfd5640-552e-4f2c-818d-7c7c60837665



### Related Links

* [Get-HPOVNetworkSet](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVNetworkSet)


***
<div align=right><a href="#Top">Top</a></div>
