<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Set-HPOVEulaStatus
<p>
Accept the EULA and set support access for the specified appliance.

### SYNTAX
<p>
<pre><code>Set-HPOVEulaStatus [-Appliance] &lt;Object&gt; [-SupportAccess] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Accept the EULA and set support access for the specified appliance.


### Parameters

-Appliance &lt;Object&gt;<p>
The FQDN or IP Address of an HPE OneView appliance or HPOneView.Applinace.Connection must be provided.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SupportAccess &lt;String&gt;<p>
Set to "yes" to allow HP suport access to the appliance, otherwise set to "no".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Version and current support access state



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVEulaStatus -Appliance appliance.contoso.com -supportAccess "yes"
</pre>
Connects to a specific appliance, accepting the EULA and enable Support Access.



### Related Links

* [Get-HPOVEulaStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEulaStatus)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Set-HPOVEulaStatus
<p>
Accept the EULA and set support access for the specified appliance.

### SYNTAX
<p>
<pre><code>Set-HPOVEulaStatus [-Appliance] &lt;Object&gt; [-SupportAccess] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Accept the EULA and set support access for the specified appliance.


### Parameters

-Appliance &lt;Object&gt;<p>
The FQDN or IP Address of an HPE OneView appliance or HPOneView.Applinace.Connection must be provided.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SupportAccess &lt;String&gt;<p>
Set to "yes" to allow HP suport access to the appliance, otherwise set to "no".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Version and current support access state



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVEulaStatus -Appliance appliance.contoso.com -supportAccess "yes"
</pre>
Connects to a specific appliance, accepting the EULA and enable Support Access.



### Related Links

* [Get-HPOVEulaStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEulaStatus)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Set-HPOVEulaStatus
<p>
Accept the EULA and set support access for the specified appliance.

### SYNTAX
<p>
<pre><code>Set-HPOVEulaStatus [-Appliance] &lt;Object&gt; [-SupportAccess] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Accept the EULA and set support access for the specified appliance.


### Parameters

-Appliance &lt;Object&gt;<p>
The FQDN or IP Address of an HPE OneView appliance or HPOneView.Applinace.Connection must be provided.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -SupportAccess &lt;String&gt;<p>
Set to "yes" to allow HP suport access to the appliance, otherwise set to "no".

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**System.Management.Automation.PSCustomObject**_

 

Version and current support access state



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Set-HPOVEulaStatus -Appliance appliance.contoso.com -supportAccess "yes"
</pre>
Connects to a specific appliance, accepting the EULA and enable Support Access.



### Related Links

* [Get-HPOVEulaStatus](https://github.com/HewlettPackard/POSH-HPOneView/wiki/Get-HPOVEulaStatus)


***
<div align=right><a href="#Top">Top</a></div>
