<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Install-HPOVUpdate
<p>
Install or stage an appliance update.

### SYNTAX
<p>
<pre><code>Install-HPOVUpdate [-File] &lt;String&gt; [-Eula] &lt;String&gt;[ [-DisplayReleaseNotes] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Install-HPOVUpdate [-File] &lt;String&gt;[ [-Stage] &lt;SwitchParameter&gt;][ [-DisplayReleaseNotes] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Install-HPOVUpdate[ [-InstallNow] &lt;SwitchParameter&gt;] [-Eula] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Install-HPOVUpdate[ [-ListPending] &lt;SwitchParameter&gt;][ [-DisplayReleaseNotes] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The Install-HPOVUpdate installs an appliance update package to upgrade the platform to the specified version.  Use the -Stage switch to stage an update on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisplayReleaseNotes &lt;SwitchParameter&gt;<p>
Display Release Notes of Update

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Eula &lt;String&gt;<p>
Will display EULA if no value is provided.  Pass "accept" to accept and not display EULA.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -File &lt;String&gt;<p>
Aliases [-f]
Appliance Update file to install.

<table><tbody><tr><td>Aliases</td><td>f</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InstallNow &lt;SwitchParameter&gt;<p>
Install pending update that was previously staged.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ListPending &lt;SwitchParameter&gt;<p>
Aliases [-list]
List any pending updates on the appliance that might have been staged.

<table><tbody><tr><td>Aliases</td><td>list</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Stage &lt;SwitchParameter&gt;<p>
Used to upload update to appliance and not apply update.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**Write-Progress**_

 

Will display a progress bar indicating the Appliance Update status

 _**System.Collections.ArrayList  (System.Management.Automation.PSCustomObject)**_

 

When performing stage and install (no switch options provided), the return will include the uploaded patch information from the appliance, and the completed upgrade message



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Install-HPOVUpdate -file C:\Path\update.bin
</pre>
Install the Update.bin package to the appliance.  User will be prompted to accept the upgrade EULA, and if a reboot is required also be prompted to confirm.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Install-HPOVUpdate -file C:\Path\update.bin -Stage -DisplayReleaseNotes
</pre>
Stage the update on the appliance, and display the Release Notes to the PowerShell console.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Install-HPOVUpdate -file C:\Path\update.bin -Stage
Install-HPOVUpdate -EULA Accept -InstallNow

</pre>
Stage the Update.bin package to the appliance. After update has been staged, install the update now on specified appliance.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Install-HPOVUpdate -ListPending -DisplayReleaseNotes
</pre>
List a pending, staged updates on the appliance, then display the Release Notes to the PowerShell console.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Install-HPOVUpdate
<p>
Install or stage an appliance update.

### SYNTAX
<p>
<pre><code>Install-HPOVUpdate [-File] &lt;String&gt; [-Eula] &lt;String&gt;[ [-DisplayReleaseNotes] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Install-HPOVUpdate [-File] &lt;String&gt;[ [-Stage] &lt;SwitchParameter&gt;][ [-DisplayReleaseNotes] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Install-HPOVUpdate[ [-InstallNow] &lt;SwitchParameter&gt;] [-Eula] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Install-HPOVUpdate[ [-ListPending] &lt;SwitchParameter&gt;][ [-DisplayReleaseNotes] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The Install-HPOVUpdate installs an appliance update package to upgrade the platform to the specified version.  Use the -Stage switch to stage an update on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisplayReleaseNotes &lt;SwitchParameter&gt;<p>
Display Release Notes of Update

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Eula &lt;String&gt;<p>
Will display EULA if no value is provided.  Pass "accept" to accept and not display EULA.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -File &lt;String&gt;<p>
Aliases [-f]
Appliance Update file to install.

<table><tbody><tr><td>Aliases</td><td>f</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InstallNow &lt;SwitchParameter&gt;<p>
Install pending update that was previously staged.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ListPending &lt;SwitchParameter&gt;<p>
Aliases [-list]
List any pending updates on the appliance that might have been staged.

<table><tbody><tr><td>Aliases</td><td>list</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Stage &lt;SwitchParameter&gt;<p>
Used to upload update to appliance and not apply update.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**Write-Progress**_

 

Will display a progress bar indicating the Appliance Update status

 _**System.Collections.ArrayList  (System.Management.Automation.PSCustomObject)**_

 

When performing stage and install (no switch options provided), the return will include the uploaded patch information from the appliance, and the completed upgrade message



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Install-HPOVUpdate -file C:\Path\update.bin
</pre>
Install the Update.bin package to the appliance.  User will be prompted to accept the upgrade EULA, and if a reboot is required also be prompted to confirm.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Install-HPOVUpdate -file C:\Path\update.bin -Stage -DisplayReleaseNotes
</pre>
Stage the update on the appliance, and display the Release Notes to the PowerShell console.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Install-HPOVUpdate -file C:\Path\update.bin -Stage
Install-HPOVUpdate -EULA Accept -InstallNow

</pre>
Stage the Update.bin package to the appliance. After update has been staged, install the update now on specified appliance.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Install-HPOVUpdate -ListPending -DisplayReleaseNotes
</pre>
List a pending, staged updates on the appliance, then display the Release Notes to the PowerShell console.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Install-HPOVUpdate
<p>
Install or stage an appliance update.

### SYNTAX
<p>
<pre><code>Install-HPOVUpdate [-File] &lt;String&gt; [-Eula] &lt;String&gt;[ [-DisplayReleaseNotes] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Install-HPOVUpdate [-File] &lt;String&gt;[ [-Stage] &lt;SwitchParameter&gt;][ [-DisplayReleaseNotes] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Install-HPOVUpdate[ [-InstallNow] &lt;SwitchParameter&gt;] [-Eula] &lt;String&gt; [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>
 <pre><code>Install-HPOVUpdate[ [-ListPending] &lt;SwitchParameter&gt;][ [-DisplayReleaseNotes] &lt;SwitchParameter&gt;] [-ApplianceConnection] &lt;Object&gt;[ [-WhatIf] &lt;SwitchParameter&gt;][ [-Confirm] &lt;SwitchParameter&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
The Install-HPOVUpdate installs an appliance update package to upgrade the platform to the specified version.  Use the -Stage switch to stage an update on the appliance.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Confirm &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>cf</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -DisplayReleaseNotes &lt;SwitchParameter&gt;<p>
Display Release Notes of Update

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Eula &lt;String&gt;<p>
Will display EULA if no value is provided.  Pass "accept" to accept and not display EULA.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -File &lt;String&gt;<p>
Aliases [-f]
Appliance Update file to install.

<table><tbody><tr><td>Aliases</td><td>f</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -InstallNow &lt;SwitchParameter&gt;<p>
Install pending update that was previously staged.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ListPending &lt;SwitchParameter&gt;<p>
Aliases [-list]
List any pending updates on the appliance that might have been staged.

<table><tbody><tr><td>Aliases</td><td>list</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Stage &lt;SwitchParameter&gt;<p>
Used to upload update to appliance and not apply update.

<table><tbody><tr><td>Aliases</td><td>None</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td>False</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -WhatIf &lt;SwitchParameter&gt;<p>


<table><tbody><tr><td>Aliases</td><td>wi</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>named</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**Write-Progress**_

 

Will display a progress bar indicating the Appliance Update status

 _**System.Collections.ArrayList  (System.Management.Automation.PSCustomObject)**_

 

When performing stage and install (no switch options provided), the return will include the uploaded patch information from the appliance, and the completed upgrade message



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Install-HPOVUpdate -file C:\Path\update.bin
</pre>
Install the Update.bin package to the appliance.  User will be prompted to accept the upgrade EULA, and if a reboot is required also be prompted to confirm.


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
Install-HPOVUpdate -file C:\Path\update.bin -Stage -DisplayReleaseNotes
</pre>
Stage the update on the appliance, and display the Release Notes to the PowerShell console.


 <pre> -------------------------- EXAMPLE 3 --------------------------<p>
Install-HPOVUpdate -file C:\Path\update.bin -Stage
Install-HPOVUpdate -EULA Accept -InstallNow

</pre>
Stage the Update.bin package to the appliance. After update has been staged, install the update now on specified appliance.


 <pre> -------------------------- EXAMPLE 4 --------------------------<p>
Install-HPOVUpdate -ListPending -DisplayReleaseNotes
</pre>
List a pending, staged updates on the appliance, then display the Release Notes to the PowerShell console.



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
