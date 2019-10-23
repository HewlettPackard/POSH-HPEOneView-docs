<a name="top"></a>
 <h4><a href="#1.20">Library Version 1.20</a></h4>
 <a name="1.20"></a>

### <u>HPE OneView 1.20 Library</u>

## Get-HPOVProfile
<p>
Retrieve Server Profile resource(s).

### SYNTAX
<p>
<pre><code>Get-HPOVProfile[ [-name] &lt;name&gt;][ [-Unassigned] &lt;Unassigned&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVProfile[ [-name] &lt;name&gt;][ [-Unassigned] &lt;Unassigned&gt;] [-export] &lt;export&gt; [-location] &lt;location&gt; [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Get-HPOVProfile[ [-name] &lt;name&gt;] [-List] &lt;List&gt;[ [-Unassigned] &lt;Unassigned&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This cmdlet will obtain a collection of Server Profile resources, or a specific Server Profile the specified name. It returns all aspects of the Server Profile.

This will also provide the ability to export Server Profile objects to their own JSON encoded file.  All appliance unique properties (minus the Server Hardware Type, Enclosure Group, and Connection Network assignment) are removed.  Connection layout, assigned addresses, networks, bandwidth, BIOS, Boot Order, Firmware settings will all be retained.  Assigned Address types will change from Virtual to UserDefined in order to retain their assignment.


### Parameters

-name &lt;name&gt;<p>
The name of the server profile resource to be returned.  All server profile resources will be returned if omitted.  Supports * wildcard character.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -List &lt;List&gt;<p>
Aliases [-report]
Display report list of Server Profiles

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Unassigned &lt;Unassigned&gt;<p>
Optional parameter that can be included with the List switch parameter to only display unassigned Server Profiles.  Can also be combined with the name parameter for Server Profile wildcard name search.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -export &lt;export&gt;<p>
Aliases [-x]
Switch used to export Server Profile object to JSON encoded file.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -location &lt;location&gt;<p>
Aliases [-save]
Location where to save the Server Profile

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_
 


### Return Values

_**System.Management.Automation.PSCustomObject**_
 
Single Server Profile

 _**System.Array**_
 
Multiple Server Profiles

 _**The matching server profile resources.**_
 

 The matching server profile resources.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:\> $profiles = Get-HPOVProfile
</pre>
Return all the server profiles managed by the appliance.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
PS C:\> $profile = Get-HPOVProfile "SA"
</pre>
Return the server profile resource with name "SA".


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
PS C:\> $profiles = Get-HPOVProfile profile*
</pre>
Return server profile resources that match 'profile*'.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
PS C:\> Get-HPOVProfile -list
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Copy of test 2         False             False Unassigned    Normal
Profile 11              True              True Encl1, bay 11 Normal
Profile 12             False             False Encl1, bay 12 Normal
Profile 13             False             False Encl1, bay 13 Normal
Profile 14             False             False Encl1, bay 14 Normal
Profile 15             False             False Encl1, bay 15 Normal
Profile 16             False             False Encl1, bay 16 Normal
Test 1                 False             False Unassigned    Normal
test 2                 False             False Encl1, bay 3  Normal
test 3                 False             False Unassigned    Normal

</pre>
Generate a list of all server profiles.


 <pre> -------------------------- EXAMPLE 5 --------------------------<p>
PS C:\> get-hpovprofile -name 'test 1' -list
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Test 1                 False             False Unassigned    Normal

</pre>
Generate a report of a specific server profile.


 <pre> -------------------------- EXAMPLE 6 --------------------------<p>
PS C:\> Get-HPOVProfile -list -unassigned
Profile Name   Managing BIOS Managing Firmware Assigned      State
------------   ------------- ----------------- --------      -----
Copy of test 2         False             False Unassigned    Normal
Test 1                 False             False Unassigned    Normal
test 3                 False             False Unassigned    Normal

</pre>
Generate a list of all Unassigned server profiles.


 <pre> -------------------------- EXAMPLE 7 --------------------------<p>
PS C:\> Get-HPOVProfile -export -location c:\profiles
</pre>
Save all Server Profile objects to their own backup file to C:\profiles.


 <pre> -------------------------- EXAMPLE 8 --------------------------<p>
PS C:\> Get-HPOVProfile -name Profile1 -export -location c:\profiles
</pre>
Save Profile1 Server Profile object to its own backup file in C:\profiles.



### Related Links

* [New-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVProfile)
* [Copy-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Copy-HPOVProfile)
* [Remove-HPOVProfile](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Remove-HPOVProfile)


***
<div align=right><a href="#Top">Top</a></div>
