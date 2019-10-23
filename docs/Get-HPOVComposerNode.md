<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Get-HPOVComposerNode
<p>
Retrieve Synergy Composer node information.

### SYNTAX
<p>
<pre><code>Get-HPOVComposerNode[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of Synergy Composer node resources.  This includes status, state, model, firmware version, and role.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.ComposerNode [System.Management.Automation.PSCustomObject]**_

 

Single Synergy Compose node.

 _**System.Collections.ArrayList &lt;HPOneView.ComposerNode&gt;**_

 

Multiple Synergy Compose nodes.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVComposerNode
Appliance                              Name                       State Status Model            Version         Role
---------                              ----                       ----- ------ -----            -------         ----
zpo-s18r18s3-ov.vse.rdlabs.hpecorp.net CN75160607 appliance bay 1 OK    OK     Synergy Composer 3.00.00-0251673 Active
zpo-s18r18s3-ov.vse.rdlabs.hpecorp.net CN75140CPW appliance bay 1 OK    OK     Synergy Composer 3.00.00-0251673 Standby

</pre>
Return all Synergy Composer nodes



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Get-HPOVComposerNode
<p>
Retrieve Synergy Composer node information.

### SYNTAX
<p>
<pre><code>Get-HPOVComposerNode[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of Synergy Composer node resources.  This includes status, state, model, firmware version, and role.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.ComposerNode [System.Management.Automation.PSCustomObject]**_

 

Single Synergy Compose node.

 _**System.Collections.ArrayList &lt;HPOneView.ComposerNode&gt;**_

 

Multiple Synergy Compose nodes.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVComposerNode
Appliance                              Name                       State Status Model            Version         Role
---------                              ----                       ----- ------ -----            -------         ----
zpo-s18r18s3-ov.vse.rdlabs.hpecorp.net CN75160607 appliance bay 1 OK    OK     Synergy Composer 3.00.00-0251673 Active
zpo-s18r18s3-ov.vse.rdlabs.hpecorp.net CN75140CPW appliance bay 1 OK    OK     Synergy Composer 3.00.00-0251673 Standby

</pre>
Return all Synergy Composer nodes



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Get-HPOVComposerNode
<p>
Retrieve Synergy Composer node information.

### SYNTAX
<p>
<pre><code>Get-HPOVComposerNode[ [-ApplianceConnection] &lt;Object&gt;] [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Obtain a collection of Synergy Composer node resources.  This includes status, state, model, firmware version, and role.


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one or more HPOneView.Appliance.Connection object(s) or Name property value(s).

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>false</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td>(${Global:ConnectedSessions} | ? Default)</td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**None.  You cannot pipe objects to this cmdlet.**_

 



### Return Values

_**HPOneView.ComposerNode [System.Management.Automation.PSCustomObject]**_

 

Single Synergy Compose node.

 _**System.Collections.ArrayList &lt;HPOneView.ComposerNode&gt;**_

 

Multiple Synergy Compose nodes.



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Get-HPOVComposerNode
Appliance                              Name                       State Status Model            Version         Role
---------                              ----                       ----- ------ -----            -------         ----
zpo-s18r18s3-ov.vse.rdlabs.hpecorp.net CN75160607 appliance bay 1 OK    OK     Synergy Composer 3.00.00-0251673 Active
zpo-s18r18s3-ov.vse.rdlabs.hpecorp.net CN75140CPW appliance bay 1 OK    OK     Synergy Composer 3.00.00-0251673 Standby

</pre>
Return all Synergy Composer nodes



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
