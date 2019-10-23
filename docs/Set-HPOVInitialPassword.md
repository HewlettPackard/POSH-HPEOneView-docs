<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVInitialPassword
<p>
Change the initial password of the Administrator user account.

### SYNTAX
<p>
<pre><code>Set-HPOVInitialPassword [-OldPassword] &lt;String&gt; [-NewPassword] &lt;String&gt; [-Appliance] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Changes the initial default password of the Administrator local appliance account to the supplied new password during first time setup (FTS.)


### Parameters

-Appliance &lt;Object&gt;<p>
Specify Appliance FQDN, Name or IP Address.  If no valid Appliance Connection is found, a temporary connection is created for the specified appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NewPassword &lt;String&gt;<p>
New password for this account.  Will prompt for password if not supplied.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OldPassword &lt;String&gt;<p>
Current default password for this account.  Will prompt for password if not supplied.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**None.**_

 

None



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVInitialPassword -Appliance MyAppliance.domain.com
</pre>
Change the Administrator password, and prompted for both the original and new password.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVInitialPassword
<p>
Change the initial password of the Administrator user account.

### SYNTAX
<p>
<pre><code>Set-HPOVInitialPassword [-OldPassword] &lt;String&gt; [-NewPassword] &lt;String&gt; [-Appliance] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Changes the initial default password of the Administrator local appliance account to the supplied new password during first time setup (FTS.)


### Parameters

-Appliance &lt;Object&gt;<p>
Specify Appliance FQDN, Name or IP Address.  If no valid Appliance Connection is found, a temporary connection is created for the specified appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NewPassword &lt;String&gt;<p>
New password for this account.  Will prompt for password if not supplied.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OldPassword &lt;String&gt;<p>
Current default password for this account.  Will prompt for password if not supplied.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**None.**_

 

None



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVInitialPassword -Appliance MyAppliance.domain.com
</pre>
Change the Administrator password, and prompted for both the original and new password.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVInitialPassword
<p>
Change the initial password of the Administrator user account.

### SYNTAX
<p>
<pre><code>Set-HPOVInitialPassword [-OldPassword] &lt;String&gt; [-NewPassword] &lt;String&gt; [-Appliance] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Changes the initial default password of the Administrator local appliance account to the supplied new password during first time setup (FTS.)


### Parameters

-Appliance &lt;Object&gt;<p>
Specify Appliance FQDN, Name or IP Address.  If no valid Appliance Connection is found, a temporary connection is created for the specified appliance.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -NewPassword &lt;String&gt;<p>
New password for this account.  Will prompt for password if not supplied.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -OldPassword &lt;String&gt;<p>
Current default password for this account.  Will prompt for password if not supplied.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 


### Return Values

_**None.**_

 

None



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVInitialPassword -Appliance MyAppliance.domain.com
</pre>
Change the Administrator password, and prompted for both the original and new password.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
