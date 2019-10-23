<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVCommandTrace
<p>
Start an HPOV Library Verbose Trace.

### SYNTAX
<p>
<pre><code>Get-HPOVCommandTrace [-ScriptBlock] &lt;ScriptBlock&gt; [-Location] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will assist the user in setting up the PowerShell environment to generate and capture Verbose output from HPOV Library Cmdlets.  Once this Cmdlet has been executed, the prior HPOV Cmdlets can be executed, without the need of using the `-Cerbose` switch.

Cmdlet output will be captured using the built-in Microsoft PowerShell Start-Transcript provider.  A transcript trace file will be saved in either the current working directory, or specified using the `-Location` parameter.

Please know that this Cmdlet is currently not supported in the Windows PowerShell ISE, unless using PowerShell v5 or newer.


### Parameters

-Location &lt;String&gt;<p>
Specify the directory where the output file will be created.  A file with the following format will be created:

	"{Date}_HPOV_transcript.log", where date is derived from `Get-Date -UFormat %y%m%d%H%M`

Default Value: (PWD).Path

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(pwd).path</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScriptBlock &lt;ScriptBlock&gt;<p>
The command within a ScriptBlock to execute.  The Cmdlet will add the -Verbose switch end of the command.

<table><tbody><tr><td>Aliases</td><td>Command</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.ScriptBlock**_

 ScriptBlock of the command or commands to generate verbose output for.



### Return Values

_**System.IO.FileInfo**_

 

FileInfo object where the "{Date}_HPOV_transcript.log" file is generated.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVCommandTrace C:	emp
</pre>
Start a new library trace, which will create a file in the `C:	emp` directory.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVCommandTrace
<p>
Start an HPOV Library Verbose Trace.

### SYNTAX
<p>
<pre><code>Get-HPOVCommandTrace [-ScriptBlock] &lt;ScriptBlock&gt; [-Location] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will assist the user in setting up the PowerShell environment to generate and capture Verbose output from HPOV Library Cmdlets.  Once this Cmdlet has been executed, the prior HPOV Cmdlets can be executed, without the need of using the `-Cerbose` switch.

Cmdlet output will be captured using the built-in Microsoft PowerShell Start-Transcript provider.  A transcript trace file will be saved in either the current working directory, or specified using the `-Location` parameter.

Please know that this Cmdlet is currently not supported in the Windows PowerShell ISE, unless using PowerShell v5 or newer.


### Parameters

-Location &lt;String&gt;<p>
Specify the directory where the output file will be created.  A file with the following format will be created:

	"{Date}_HPOV_transcript.log", where date is derived from `Get-Date -UFormat %y%m%d%H%M`

Default Value: (PWD).Path

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(pwd).path</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScriptBlock &lt;ScriptBlock&gt;<p>
The command within a ScriptBlock to execute.  The Cmdlet will add the -Verbose switch end of the command.

<table><tbody><tr><td>Aliases</td><td>Command</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.ScriptBlock**_

 ScriptBlock of the command or commands to generate verbose output for.



### Return Values

_**System.IO.FileInfo**_

 

FileInfo object where the "{Date}_HPOV_transcript.log" file is generated.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVCommandTrace C:	emp
</pre>
Start a new library trace, which will create a file in the `C:	emp` directory.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVCommandTrace
<p>
Start an HPOV Library Verbose Trace.

### SYNTAX
<p>
<pre><code>Get-HPOVCommandTrace [-ScriptBlock] &lt;ScriptBlock&gt; [-Location] &lt;String&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet will assist the user in setting up the PowerShell environment to generate and capture Verbose output from HPOV Library Cmdlets.  Once this Cmdlet has been executed, the prior HPOV Cmdlets can be executed, without the need of using the `-Cerbose` switch.

Cmdlet output will be captured using the built-in Microsoft PowerShell Start-Transcript provider.  A transcript trace file will be saved in either the current working directory, or specified using the `-Location` parameter.

Please know that this Cmdlet is currently not supported in the Windows PowerShell ISE, unless using PowerShell v5 or newer.


### Parameters

-Location &lt;String&gt;<p>
Specify the directory where the output file will be created.  A file with the following format will be created:

	"{Date}_HPOV_transcript.log", where date is derived from `Get-Date -UFormat %y%m%d%H%M`

Default Value: (PWD).Path

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td>(pwd).path</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ScriptBlock &lt;ScriptBlock&gt;<p>
The command within a ScriptBlock to execute.  The Cmdlet will add the -Verbose switch end of the command.

<table><tbody><tr><td>Aliases</td><td>Command</td></tr><tr><td>Required?</td><td>True</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**System.Management.Automation.ScriptBlock**_

 ScriptBlock of the command or commands to generate verbose output for.



### Return Values

_**System.IO.FileInfo**_

 

FileInfo object where the "{Date}_HPOV_transcript.log" file is generated.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVCommandTrace C:	emp
</pre>
Start a new library trace, which will create a file in the `C:	emp` directory.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
