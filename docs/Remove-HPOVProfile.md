<a name="top"></a>
 <h4><a href="#1.20">Library Version 1.20</a></h4>
 <a name="1.20"></a>

### <u>HPE OneView 1.20 Library</u>

## Remove-HPOVProfile
<p>
Delete profile(s).

### SYNTAX
<p>
<pre><code>Remove-HPOVProfile [-profile] &lt;profile&gt;[ [-force] &lt;force&gt;][ [-WhatIf] &lt;WhatIf&gt;][ [-Confirm] &lt;Confirm&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Delete one or multiple profiles.


### Parameters

-profile &lt;profile&gt;<p>
The server profile object(s), name(s) or URI(s) to be removed.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -force &lt;force&gt;<p>
Set to force-delete the profile.  
For example, force-remove will successfully remove the profile, 
even when connectivity has been lost to the server or enclosure.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -WhatIf &lt;WhatIf&gt;<p>


<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Confirm &lt;Confirm&gt;<p>


<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.PSCustomObject**_
 Server Profile resource object
 _**System.String**_
 Server Profile Name or URI


### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_
 
A task resource that can be monitored for status of the profile deletion.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:\> $task = Remove-HPOVProfile -profile "Profile6"
PS C:\> Wait-HPOVTaskComplete $task.uri
		            
</pre>
Remove the profile specifed by name. Wait for remove to complete.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
PS C:\> $profile = Get-HPOVProfile -name "Profile2"
PS C:\> Remove-HPOVProfile $profile -confirm:$false

</pre>
Remove the profile specifed by $profile. Disable confirmation prompt.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
PS C:\> Get-HPOVProfile | Remove-HPOVProfile
</pre>
Search for all profiles and remove them from appliance.



### Related Links

* [Get-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVServer)
* [Add-HPOVServer](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Add-HPOVServer)
* [Get-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVProfile)
* [New-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVProfile)
* [New-HPOVProfileAssign](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVProfileAssign)
* [Copy-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVProfile)
* [Wait-HPOVTaskComplete](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Wait-HPOVTaskComplete)


***
<div align=right><a href="#Top">Top</a></div>
