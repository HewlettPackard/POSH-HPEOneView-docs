<a name="top"></a>
 <h4><a href="#1.20">Library Version 1.20</a></h4>
 <a name="1.20"></a>

### <u>HPE OneView 1.20 Library</u>

## Set-HPOVAlertAssignToUser
<p>
Assign an alert to a user.

### SYNTAX
<p>
<pre><code>Set-HPOVAlertAssignToUser [-alertUri] &lt;alertUri&gt;[ [-assignedToUser] &lt;assignedToUser&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Assign the specifed alert to the specified user


### Parameters

-alertUri &lt;alertUri&gt;<p>
The alert to be modified

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -assignedToUser &lt;assignedToUser&gt;<p>
The user this alert is to be assigned to.  The alert will be assigned to no user if this parameter is omitted.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None. You cannot pipe objects to this cmdlet.**_
 


### Return Values

_**System.Management.Automation.PSCustomObject**_
 
The updated alert.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
PS C:\> Set-AlertAssignToUser /rest/alerts/11 John
</pre>
Assign alert to user John using the URI of the account.



### Related Links

* [Get-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVAlert)
* [Set-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Set-HPOVAlert)
* [Clear-HPOVAlert](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Clear-HPOVAlert)


***
<div align=right><a href="#Top">Top</a></div>
