<a name="top"></a>
 <h4><a href="#1.20">Library Version 1.20</a></h4>
 <a name="1.20"></a>

### <u>HPE OneView 1.20 Library</u>

## Get-HPOVProfileConnectionList
<p>
Retrieve Server Profile Connections

### SYNTAX
<p>
<pre><code>Get-HPOVProfileConnectionList[ [-name] &lt;name&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a formatted list of server profile connection IDs, include hardware address, device mapping, and boot settings.


### Parameters

-name &lt;name&gt;<p>
The name of the server profile resource to be returned.  All server profile resources will be returned if name is omitted.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_
 


### Return Values

_**System.Array**_
 
      Formatted table of Server Profile Connections.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:\> Get-HPOVProfileConnectionList "test"
serverProfile   portId    cid networkType macAddress        wwpn             boot      arrayTarget lun
-------------   --------  --- ----------- ----------        ----             ----      ----------- ---                     
test            Flb 1:1-a   1 Ethernet    36:37:6B:90:00:08 1000378079e00011 Primary                  
test            Flb 1:1-b   2 Ethernet    36:37:6B:90:00:06 1000378079e0000d Secondary                

</pre>
List Server Profile connections for Test.



### Related Links

* [Get-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVProfile)
* [New-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVProfile)


***
<div align=right><a href="#Top">Top</a></div>
