<a name="top"></a>
 <h4><a href="#1.20">Library Version 1.20</a></h4>
 <a name="1.20"></a>

### <u>HPE OneView 1.20 Library</u>

## Set-HPOVPrompt
<p>
(Deprecated) Modify the HPOneView POSH Prompt.

### SYNTAX
<p>
<pre><code>Set-HPOVPrompt [-Enable] &lt;Enable&gt;[ [-Global] &lt;Global&gt;][ [-WhatIf] &lt;WhatIf&gt;][ [-Confirm] &lt;Confirm&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Set-HPOVPrompt [-Disable] &lt;Disable&gt;[ [-Global] &lt;Global&gt;][ [-WhatIf] &lt;WhatIf&gt;][ [-Confirm] &lt;Confirm&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Deprecated in 1.20.0164 Release. Please use Show-HPOVAppliance to see what appliance you are connected to.


### Parameters

-Enable &lt;Enable&gt;<p>
Enable the default prompt display for the current user.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Disable &lt;Disable&gt;<p>
Disable the default prompt display for the current user.

<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Global &lt;Global&gt;<p>


<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -WhatIf &lt;WhatIf&gt;<p>


<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 -Confirm &lt;Confirm&gt;<p>


<table><tbody><tr><td>Aliases</td><td>None.</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>false</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.**_
 


### Return Values

_**None.**_
 


### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
[HPONEVIEW]: [Not Connected] PS C:\Users\User> Set-HPOVPrompt -Disable
PS C:\Users\User>

</pre>
Disable the HPOneView POSH Library prompt for the current user, and return to original value.



### Related Links

* [Show-HPOVAppliance](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Show-HPOVAppliance)


***
<div align=right><a href="#Top">Top</a></div>
