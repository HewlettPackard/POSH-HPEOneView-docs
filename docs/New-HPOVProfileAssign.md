<a name="top"></a>
 <h4><a href="#1.20">Library Version 1.20</a></h4>
 <a name="1.20"></a>

### <u>HPE OneView 1.20 Library</u>

## New-HPOVProfileAssign
<p>
Unassign or Reassign an existing Server Profile.

### SYNTAX
<p>
<pre><code>New-HPOVProfileAssign [-Profile] &lt;Profile&gt; [-Server] &lt;Server&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>New-HPOVProfileAssign [-Profile] &lt;Profile&gt;[ [-Unassigned] &lt;Unassigned&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet is used to unassign or reassign an existing HP OneView Server Profile.


### Parameters

-Profile &lt;Profile&gt;<p>
The name of the server profile resource to modify assignment.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Server &lt;Server&gt;<p>
The server hardware resource where the new profile is to be applied.  This is normally retrieved with a 'Get-HPOVServer' call, and the Server state property should be "NoProfileApplied".  Can also be the Server Hardware name or URI.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Unassigned &lt;Unassigned&gt;<p>


<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_
 Server Profile resource object from Get-HPOVProfile.


### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_
 
If successful returns a task resource which may be polled to follow the progress of the profile creation.  Otherwise, a request validation error will be returned.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:\> $sp = Get-HPOVProfile 'Profile 1'
PS C:\> New-HPOVProfileAssign -Profile $sp -Server 'Encl1, Bay 10' | Wait-HPOVTaskComplete

</pre>
Get 'Profile 1' Server Profile and assign it to 'Encl1, Bay 10', then wait for the async task to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
PS C:\> Get-HPOVProfile 'Profile 1' | New-HPOVProfileAssign -unassign | Wait-HPOVTaskComplete
</pre>
Get 'Profile 1' Server Profile and unassign it, then wait for the async task to complete.



### Related Links

* [Get-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServer)
* [Get-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVProfile)
* [New-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVProfile)
* [Copy-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVProfile)
* [Remove-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVProfile)
* [Get-HPOVEnclosure](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEnclosure)
* [Get-HPOVServerHardwareType](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServerHardwareType)
* [New-HPOVProfileConnection](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVProfileConnection)
* [Get-HPOVProfileConnectionList](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVProfileConnectionList)
* [New-HPOVProfileAttachVolume](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVProfileAttachVolume)
* [Wait-HPOVTaskComplete](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Wait-HPOVTaskComplete)


***
<div align=right><a href="#Top">Top</a></div>
