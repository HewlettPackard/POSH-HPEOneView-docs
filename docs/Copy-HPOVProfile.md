<a name="top"></a>
 <h4><a href="#1.20">Library Version 1.20</a></h4>
 <a name="1.20"></a>

### <u>HPE OneView 1.20 Library</u>

## Copy-HPOVProfile
<p>
Copy Server Profile

### SYNTAX
<p>
<pre><code>Copy-HPOVProfile [-SourceName] &lt;SourceName&gt;[ [-DestinationName] &lt;DestinationName&gt;][ [-assign] &lt;assign&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will copy a source Server Profile to a new instance  You can assign the copy to an existing Server Device, or specify 'unassigned'.


### Parameters

-SourceName &lt;SourceName&gt;<p>
Aliases [-sname]
The Name, URI or the Resource Object of the source server profile to be copied.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -DestinationName &lt;DestinationName&gt;<p>
Aliases [-dname]
The name of the destination server profile that will be created.  If omitted, the new name will have "Copy of " prefixed to the source name.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -assign &lt;assign&gt;<p>
The name, URI, or object of the target server to assign the new profile to.  If omitted, profile will be 'unassigned'

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>3</td></tr><tr><td>Default value</td><td>unassigned</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_
 Server Profile resource object
 _**System.String**_
 Server Profile Name or URI


### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_
 
Profile Create async task



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:\> Copy-HPOVProfile "Profile 1"
</pre>
Copy "Profile 1" to a new Server Profile that is unassigned and named "Copy of Profile 1".


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
PS C:\> Copy-HPOVProfile "Profile 1" "Profile 2"
</pre>
Copy "Profile 1" to a new Server Profile that is unassigned and named "Profile 2".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
PS C:\> Copy-HPOVProfile "Profile 1" "Profile 2" -assign "Encl1, Bay 9"
</pre>
Copy "Profile 1" to a new Server Profile that is assigned to "Encl1, Bay 9" named "Profile 2".


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
PS C:\> Get-HPOVProfile "Profile 1" | Copy-HPOVProfile
</pre>
Use the Get-HPOVProfile CMDLET and pipe to Copy-HPOVProfile, where the copied profile name will be "Copy of Profile 1" and unassigned.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
PS C:\> 11..16 | % { Copy-HPOVProfile "Profile Template" "Profile $_" "Encl1, bay $_" }
</pre>
Copy 5 Server Profiles from "Profile Template" that will be assigned to bays 11 - 16 of Encl1.



### Related Links

* [Get-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVProfile)
* [New-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVProfile)
* [New-HPOVProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVProfileAssign)
* [Remove-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVProfile)
* [Wait-HPOVTaskComplete](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Wait-HPOVTaskComplete)


***
<div align=right><a href="#Top">Top</a></div>
