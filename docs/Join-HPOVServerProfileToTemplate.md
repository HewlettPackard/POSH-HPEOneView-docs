<a name="top"></a>
 <h4><a href="#5.00">Library Version 5.00</a></h4>
 <h4><a href="#4.20">Library Version 4.20</a></h4>
 <h4><a href="#4.10">Library Version 4.10</a></h4>
 <a name="5.00"></a>

### <u>HPE OneView 5.00 Library</u>

## Join-HPOVServerProfileToTemplate
<p>
Attach an existing server profile to a server profile template

### SYNTAX
<p>
<pre><code>Join-HPOVServerProfileToTemplate [-Template] &lt;Object&gt; [-ServerProfile] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Binds a server profile resource to the provided server profile template


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>$Global:ConnectedSessions</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfile &lt;Object&gt;<p>
Aliases [-Profile, -p]
A server profile name, URI, or resource object

<table><tbody><tr><td>Aliases</td><td>p, Profile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Template &lt;Object&gt;<p>
A server profile template name, URI, or resource object

<table><tbody><tr><td>Aliases</td><td>t</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

 A PSCustom object representing a server profile template resource retrieved from the HPE OneView appliance



### Return Values

_**System.Collections.ArrayList&lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of task resource objects

 _**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

An HPE OneView task resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Join-HPOVServerProfileToTemplate -template "MyTemplate" -profile "MyProfile" -appliance hpOneView.contoso.com
</pre>
Attaches the server profile template named MyTemplate to the server profile name MyProfile on the OneView appliance hpOneView.contoso.com


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$p = Get-HPOVServerProfile "myProfile"
Get-HPOVServerProfileTemplate "myTemplate" | Join-HPOVServerProfileToTemplate -profile $p -appliance hpOneView.contoso.com

</pre>
Attaches the server profile template named MyTemplate to the server profile name MyProfile on the OneView appliance hpOneView.contoso.com



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.20"></a>

### <u>HPE OneView 4.20 Library</u>

## Join-HPOVServerProfileToTemplate
<p>
Attach an existing server profile to a server profile template

### SYNTAX
<p>
<pre><code>Join-HPOVServerProfileToTemplate [-Template] &lt;Object&gt; [-ServerProfile] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Binds a server profile resource to the provided server profile template


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>$Global:ConnectedSessions</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfile &lt;Object&gt;<p>
Aliases [-Profile, -p]
A server profile name, URI, or resource object

<table><tbody><tr><td>Aliases</td><td>p, Profile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Template &lt;Object&gt;<p>
A server profile template name, URI, or resource object

<table><tbody><tr><td>Aliases</td><td>t</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

 A PSCustom object representing a server profile template resource retrieved from the HPE OneView appliance



### Return Values

_**System.Collections.ArrayList&lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of task resource objects

 _**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

An HPE OneView task resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Join-HPOVServerProfileToTemplate -template "MyTemplate" -profile "MyProfile" -appliance hpOneView.contoso.com
</pre>
Attaches the server profile template named MyTemplate to the server profile name MyProfile on the OneView appliance hpOneView.contoso.com


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$p = Get-HPOVServerProfile "myProfile"
Get-HPOVServerProfileTemplate "myTemplate" | Join-HPOVServerProfileToTemplate -profile $p -appliance hpOneView.contoso.com

</pre>
Attaches the server profile template named MyTemplate to the server profile name MyProfile on the OneView appliance hpOneView.contoso.com



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
 <a name="4.10"></a>

### <u>HPE OneView 4.10 Library</u>

## Join-HPOVServerProfileToTemplate
<p>
Attach an existing server profile to a server profile template

### SYNTAX
<p>
<pre><code>Join-HPOVServerProfileToTemplate [-Template] &lt;Object&gt; [-ServerProfile] &lt;Object&gt; [-ApplianceConnection] &lt;Object&gt; [&lt;CommonParameters&gt;]</code></pre>

### Detailed Description
<p>
Binds a server profile resource to the provided server profile template


### Parameters

-ApplianceConnection &lt;Object&gt;<p>
Aliases [-Appliance]

Specify one HPOneView.Appliance.Connection object or Name property value. If Resource object is provided via Pipeline, the ApplianceConnection property of the object will be used.

Default Value: ${Global:ConnectedSessions} | ? Default

<table><tbody><tr><td>Aliases</td><td>Appliance</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>2</td></tr><tr><td>Default value</td><td>$Global:ConnectedSessions</td></tr><tr><td>Accept pipeline input?</td><td>true (ByPropertyName)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -ServerProfile &lt;Object&gt;<p>
Aliases [-Profile, -p]
A server profile name, URI, or resource object

<table><tbody><tr><td>Aliases</td><td>p, Profile</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>1</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>false</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 -Template &lt;Object&gt;<p>
A server profile template name, URI, or resource object

<table><tbody><tr><td>Aliases</td><td>t</td></tr><tr><td>Required?</td><td>true</td></tr><tr><td>Position?</td><td>0</td></tr><tr><td>Default value</td><td></td></tr><tr><td>Accept pipeline input?</td><td>true (ByValue)</td></tr><tr><td>Accept wildcard characters?&nbsp;&nbsp;&nbsp; </td><td>False</td></tr></tbody></table>

 &lt;CommonParameters&gt;

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters (<a href="http://go.microsoft.com/fwlink/?LinkID=113216">http://go.microsoft.com/fwlink/?LinkID=113216</a>)<p>

### Input Types

_**HPOneView.ServerProfile [System.Management.Automation.PSCustomObject]**_

 A PSCustom object representing a server profile template resource retrieved from the HPE OneView appliance



### Return Values

_**System.Collections.ArrayList&lt;HPOneView.Appliance.TaskResource&gt;**_

 

Collection of task resource objects

 _**HPOneView.Appliance.TaskResource [System.Management.Automation.PSCustomObject]**_

 

An HPE OneView task resource object



### Examples

<pre> -------------------------- EXAMPLE 1 --------------------------<p>
Join-HPOVServerProfileToTemplate -template "MyTemplate" -profile "MyProfile" -appliance hpOneView.contoso.com
</pre>
Attaches the server profile template named MyTemplate to the server profile name MyProfile on the OneView appliance hpOneView.contoso.com


 <pre> -------------------------- EXAMPLE 2 --------------------------<p>
$p = Get-HPOVServerProfile "myProfile"
Get-HPOVServerProfileTemplate "myTemplate" | Join-HPOVServerProfileToTemplate -profile $p -appliance hpOneView.contoso.com

</pre>
Attaches the server profile template named MyTemplate to the server profile name MyProfile on the OneView appliance hpOneView.contoso.com



### Related Links



***
<div align=right><a href="#Top">Top</a></div>
