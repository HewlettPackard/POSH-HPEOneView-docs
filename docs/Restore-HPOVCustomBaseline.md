<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Restore-HPOVCustomBaseline
<p>
Restore a Custom Baseline after Restore of a Backup File.

### SYNTAX
<p>
<pre><code>Restore-HPOVCustomBaseline [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to restore custom SPP Baselines that were created with component hotfixes on the appliance after a backup file restore procedure has completed.  It will search for any custom Baseline resources that are in the "Removed" state, and rebuild the baseline with the associated hotfixes.

The source baseline and associated hotfixes must be present within the Baseline repository.  Use the Add-HPOVBaseline to upload the starting Baseline and hotfixes after restoring the Appliance Backup file, then use this Cmdlet to rebuild the Custom Baseline.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 


### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The progress of in-progress or completion result



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Restore-HPOVCustomBaseline
</pre>
Restore all Custom Baselines that were previously created on all connected appliances.



### Related Links

* [New-HPOVCustomBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVCustomBaseline)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Restore-HPOVCustomBaseline
<p>
Restore a Custom Baseline after Restore of a Backup File.

### SYNTAX
<p>
<pre><code>Restore-HPOVCustomBaseline [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to restore custom SPP Baselines that were created with component hotfixes on the appliance after a backup file restore procedure has completed.  It will search for any custom Baseline resources that are in the "Removed" state, and rebuild the baseline with the associated hotfixes.

The source baseline and associated hotfixes must be present within the Baseline repository.  Use the Add-HPOVBaseline to upload the starting Baseline and hotfixes after restoring the Appliance Backup file, then use this Cmdlet to rebuild the Custom Baseline.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 


### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The progress of in-progress or completion result



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Restore-HPOVCustomBaseline
</pre>
Restore all Custom Baselines that were previously created on all connected appliances.



### Related Links

* [New-HPOVCustomBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVCustomBaseline)


***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Restore-HPOVCustomBaseline
<p>
Restore a Custom Baseline after Restore of a Backup File.

### SYNTAX
<p>
<pre><code>Restore-HPOVCustomBaseline [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
This Cmdlet provides the ability to restore custom SPP Baselines that were created with component hotfixes on the appliance after a backup file restore procedure has completed.  It will search for any custom Baseline resources that are in the "Removed" state, and rebuild the baseline with the associated hotfixes.

The source baseline and associated hotfixes must be present within the Baseline repository.  Use the Add-HPOVBaseline to upload the starting Baseline and hotfixes after restoring the Appliance Backup file, then use this Cmdlet to rebuild the Custom Baseline.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s). If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this Cmdlet.**_

 


### Return Values

_**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

The progress of in-progress or completion result



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Restore-HPOVCustomBaseline
</pre>
Restore all Custom Baselines that were previously created on all connected appliances.



### Related Links

* [New-HPOVCustomBaseline](https://github.com/HewlettPackard/POSH-HPOneView/wiki/New-HPOVCustomBaseline)


***
<div align=right><a href="#Top">Top</a></div>
