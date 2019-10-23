<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Show-HPOVStorageSystemPerformancePolicy
<p>
Show available Nimble Performance Policies.

### SYNTAX
<p>
<pre><code>Show-HPOVStorageSystemPerformancePolicy [-InputObject] &lt;Object&gt;[ [-Name] &lt;string&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to show available Nimble Performance Policies in order to set a desired perforamnce policy value when provisioning a new volume or creating a new volume template.


### Parameters

-InputObject &lt;Object&gt;<p>
One or more storage systems from Get-HPOVStorageSystem.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;string&gt;<p>
Provide a name of the performance policy to return.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

 



### Return Values

_**HPOneView.Storage.PerformancePolicy**_

 

One or more available storage system performance policy objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Show-HPOVStorageSystemPerformancePolicy
</pre>
Default example



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Show-HPOVStorageSystemPerformancePolicy
<p>
Show available Nimble Performance Policies.

### SYNTAX
<p>
<pre><code>Show-HPOVStorageSystemPerformancePolicy [-InputObject] &lt;Object&gt;[ [-Name] &lt;string&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Use this Cmdlet to show available Nimble Performance Policies in order to set a desired perforamnce policy value when provisioning a new volume or creating a new volume template.


### Parameters

-InputObject &lt;Object&gt;<p>
One or more storage systems from Get-HPOVStorageSystem.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Name &lt;string&gt;<p>
Provide a name of the performance policy to return.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>False</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.Storage.System [System.Management.Automation.PSCustomObject]**_

 



### Return Values

_**HPOneView.Storage.PerformancePolicy**_

 

One or more available storage system performance policy objects.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Show-HPOVStorageSystemPerformancePolicy
</pre>
Default example



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
